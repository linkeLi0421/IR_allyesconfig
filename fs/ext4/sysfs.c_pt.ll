; ModuleID = '/llk/IR_all_yes/fs/ext4/sysfs.c_pt.bc'
source_filename = "../fs/ext4/sysfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.2 }
%union.anon.2 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.sysfs_ops = type { ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.ext4_attr = type { %struct.attribute, i16, i16, i16, %union.anon.79 }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%union.anon.79 = type { i32 }
%struct.ext4_sb_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, i32, i64, %struct.atomic64_t, %struct.kuid_t, %struct.kgid_t, i16, i16, i32, i32, i32, i32, i32, i32, [4 x i32], i32, i32, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, ptr, ptr, %struct.kobject, %struct.completion, ptr, ptr, ptr, i32, %struct.mutex, %struct.list_head, %struct.ext4_orphan_info, i32, i32, i32, ptr, [3 x ptr], i32, i32, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.work_struct, %struct.atomic_t, %struct.rb_root, %struct.rwlock_t, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x %struct.atomic64_t], [4 x %struct.atomic64_t], [4 x %struct.atomic64_t], %struct.atomic_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, i32, i64, i32, i32, ptr, i32, ptr, %struct.timer_list, ptr, i32, ptr, i32, ptr, i32, %struct.shrinker, %struct.list_head, i32, %struct.ext4_es_stats, ptr, ptr, [120 x i8], %struct.spinlock, [1 x %struct.ext4_journal_trigger], %struct.ratelimit_state, %struct.ratelimit_state, %struct.ratelimit_state, %struct.atomic_t, %struct.atomic_t, %struct.fscrypt_dummy_policy, %struct.percpu_rw_semaphore, ptr, i64, i32, i32, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i64, ptr, i64, i32, i32, i32, i64, ptr, i64, %struct.work_struct, %struct.atomic_t, [2 x %struct.list_head], [2 x %struct.list_head], i32, %struct.spinlock, ptr, %struct.ext4_fc_stats, i32, i32, %struct.ext4_fc_replay_state, [8 x i8] }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ext4_orphan_info = type { i32, i32, ptr }
%struct.rb_root = type { ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.atomic64_t = type { i64 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.list_head = type { ptr, ptr }
%struct.ext4_es_stats = type { i32, %struct.percpu_counter, %struct.percpu_counter, i64, i64, %struct.percpu_counter, %struct.percpu_counter }
%struct.ext4_journal_trigger = type { %struct.jbd2_buffer_trigger_type, ptr }
%struct.jbd2_buffer_trigger_type = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.fscrypt_dummy_policy = type { ptr }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.rcuwait = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.ext4_fc_stats = type { [10 x i32], i32, i32, i32, i32, i32, i64 }
%struct.ext4_fc_replay_state = type { i32, i32, i32, i32, i32, ptr, i32, i32, i32, ptr, i32, i32 }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.uuid_t = type { [16 x i8] }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.71, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.72, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.73, ptr, %struct.address_space, %struct.list_head, %union.anon.74, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.71 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.72 = type { %struct.callback_head }
%union.anon.73 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.74 = type { ptr }
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
%struct.disk_stats = type { [4 x i64], [4 x i32], [4 x i32], [4 x i32], i32, [2 x %struct.local_t] }
%struct.local_t = type { %struct.atomic_t }
%struct.ext4_super_block = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i16, i16, i32, i16, i16, i32, i32, i32, [16 x i8], [16 x i8], [64 x i8], i32, i8, i8, i16, [16 x i8], i32, i32, i32, [4 x i32], i8, i8, i16, i32, i32, i32, [17 x i32], i32, i32, i32, i16, i16, i32, i16, i16, i64, i32, i8, i8, i8, i8, i64, i32, i32, i64, i32, i32, i32, i32, i64, [32 x i8], i32, i32, i32, i32, i64, [32 x i8], [64 x i8], i32, i32, i32, [2 x i32], [4 x i8], [16 x i8], i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, [94 x i32], i32 }
%struct.journal_s = type { i32, i32, i32, %struct.mutex, ptr, ptr, i32, %struct.rwlock_t, i32, %struct.mutex, ptr, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.mutex, [64 x ptr], %struct.shrinker, %struct.percpu_counter, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i64, [56 x i8], ptr, i32, %struct.atomic_t, %struct.spinlock, ptr, i32, i32, i32, i32, [16 x i8], ptr, i32, i32, i32, %struct.timer_list, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, i32, i32, i32, i64, i32, i32, ptr, ptr, ptr, %struct.spinlock, ptr, %struct.transaction_stats_s, i32, ptr, ptr, i32, %struct.lockdep_map, ptr, ptr }
%struct.transaction_stats_s = type { i32, i32, %struct.transaction_run_stats_s }
%struct.transaction_run_stats_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"errors_count\00", [19 x i8] zeroinitializer }, align 32
@ext4_sb_ktype = internal global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr @ext4_sb_release, ptr @ext4_attr_ops, ptr null, ptr @ext4_groups, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ext4_root = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@ext4_proc_root = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"options\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"es_shrinker_info\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fc_info\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mb_groups\00", [22 x i8] zeroinitializer }, align 32
@ext4_mb_seq_groups_ops = external dso_local constant %struct.seq_operations, align 4
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mb_stats\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mb_structs_summary\00", [45 x i8] zeroinitializer }, align 32
@ext4_mb_seq_structs_summary_ops = external dso_local constant %struct.seq_operations, align 4
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ext4\00", [27 x i8] zeroinitializer }, align 32
@fs_kobj = external dso_local local_unnamed_addr global ptr, align 4
@ext4_feat = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@ext4_feat_ktype = internal global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr @kfree, ptr @ext4_attr_ops, ptr null, ptr @ext4_feat_groups, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"features\00", [23 x i8] zeroinitializer }, align 32
@proc_dirname = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fs/ext4\00", [24 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@ext4_attr_ops = internal constant { %struct.sysfs_ops, [24 x i8] } { %struct.sysfs_ops { ptr @ext4_attr_show, ptr @ext4_attr_store }, [24 x i8] zeroinitializer }, align 32
@ext4_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @ext4_group, ptr null], [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llu\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%lu\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%.*s\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"supported\0A\00", [21 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%lld\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"<none>\0A\00", [24 x i8] zeroinitializer }, align 32
@__func__.trigger_test_error = private unnamed_addr constant [19 x i8] c"trigger_test_error\00", align 1
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%.*s\00", [27 x i8] zeroinitializer }, align 32
@ext4_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ext4_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@ext4_attrs = internal global { [45 x ptr], [44 x i8] } { [45 x ptr] [ptr @ext4_attr_delayed_allocation_blocks, ptr @ext4_attr_session_write_kbytes, ptr @ext4_attr_lifetime_write_kbytes, ptr @ext4_attr_reserved_clusters, ptr @ext4_attr_sra_exceeded_retry_limit, ptr @ext4_attr_inode_readahead_blks, ptr @ext4_attr_inode_goal, ptr @ext4_attr_mb_stats, ptr @ext4_attr_mb_max_to_scan, ptr @ext4_attr_mb_min_to_scan, ptr @ext4_attr_mb_order2_req, ptr @ext4_attr_mb_stream_req, ptr @ext4_attr_mb_group_prealloc, ptr @ext4_attr_mb_max_inode_prealloc, ptr @ext4_attr_mb_max_linear_groups, ptr @ext4_attr_max_writeback_mb_bump, ptr @ext4_attr_extent_max_zeroout_kb, ptr @ext4_attr_trigger_fs_error, ptr @ext4_attr_err_ratelimit_interval_ms, ptr @ext4_attr_err_ratelimit_burst, ptr @ext4_attr_warning_ratelimit_interval_ms, ptr @ext4_attr_warning_ratelimit_burst, ptr @ext4_attr_msg_ratelimit_interval_ms, ptr @ext4_attr_msg_ratelimit_burst, ptr @ext4_attr_errors_count, ptr @ext4_attr_warning_count, ptr @ext4_attr_msg_count, ptr @ext4_attr_first_error_ino, ptr @ext4_attr_last_error_ino, ptr @ext4_attr_first_error_block, ptr @ext4_attr_last_error_block, ptr @ext4_attr_first_error_line, ptr @ext4_attr_last_error_line, ptr @ext4_attr_first_error_func, ptr @ext4_attr_last_error_func, ptr @ext4_attr_first_error_errcode, ptr @ext4_attr_last_error_errcode, ptr @ext4_attr_first_error_time, ptr @ext4_attr_last_error_time, ptr @ext4_attr_journal_task, ptr @ext4_attr_simulate_fail, ptr @ext4_attr_mb_prefetch, ptr @ext4_attr_mb_prefetch_limit, ptr @ext4_attr_last_trim_minblks, ptr null], [44 x i8] zeroinitializer }, align 32
@ext4_attr_delayed_allocation_blocks = internal global { %struct.ext4_attr, [32 x i8] } { %struct.ext4_attr { %struct.attribute { ptr @.str.20, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i16 1, i16 0, i16 0, %union.anon.79 zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@ext4_attr_session_write_kbytes = internal global { %struct.ext4_attr, [32 x i8] } { %struct.ext4_attr { %struct.attribute { ptr @.str.21, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i16 2, i16 0, i16 0, %union.anon.79 zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@ext4_attr_lifetime_write_kbytes = internal global { %struct.ext4_attr, [32 x i8] } { %struct.ext4_attr { %struct.attribute { ptr @.str.22, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i16 3, i16 0, i16 0, %union.anon.79 zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@ext4_attr_reserved_clusters = internal global { %struct.ext4_attr, [32 x i8] } { %struct.ext4_attr { %struct.attribute { ptr @.str.23, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i16 4, i16 0, i16 0, %union.anon.79 zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@ext4_attr_sra_exceeded_retry_limit = internal global { %struct.ext4_attr, [32 x i8] } { %struct.ext4_attr { %struct.attribute { ptr @.str.24, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i16 5, i16 0, i16 0, %union.anon.79 zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@ext4_attr_inode_readahead_blks = internal global { %struct.ext4_attr, [32 x i8] } { %struct.ext4_attr { %struct.attribute { ptr @.str.25, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i16 6, i16 1, i16 0, %union.anon.79 { i32 140 } }, [32 x i8] zeroinitializer }, align 32
@ext4_attr_inode_goal = internal global { %struct.ext4_attr, [32 x i8] } { %struct.ext4_attr { %struct.attribute { ptr @.str.26, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i16 11, i16 1, i16 0, %union.anon.79 { i32 144 } }, [32 x i8] zeroinitializer }, align 32
@ext4_attr_mb_stats = internal global { %struct.ext4_attr, [32 x i8] } { %struct.ext4_attr { %struct.attribute { ptr @.str.6, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i16 11, i16 1, i16 0, %union.anon.79 { i32 1112 } }, [32 x i8] zeroinitializer }, align 32
@ext4_attr_mb_max_to_scan = internal global { %struct.ext4_attr, [32 x i8] } { %struct.ext4_attr { %struct.attribute { ptr @.str.27, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i16 11, i16 1, i16 0, %union.anon.79 { i32 1104 } }, [32 x i8] zeroinitializer }, align 32
@ext4_attr_mb_min_to_scan = internal global { %struct.ext4_attr, [32 x i8] } { %struct.ext4_attr { %struct.attribute { ptr @.str.28, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i16 11, i16 1, i16 0, %union.anon.79 { i32 1108 } }, [32 x i8] zeroinitializer }, align 32
@ext4_attr_mb_order2_req = internal global { %struct.ext4_attr, [32 x i8] } { %struct.ext4_attr { %struct.attribute { ptr @.str.29, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i16 11, i16 1, i16 0, %union.anon.79 { i32 1116 } }, [32 x i8] zeroinitializer }, align 32
@ext4_attr_mb_stream_req = internal global { %struct.ext4_attr, [32 x i8] } { %struct.ext4_attr { %struct.attribute { ptr @.str.30, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i16 11, i16 1, i16 0, %union.anon.79 { i32 1100 } }, [32 x i8] zeroinitializer }, align 32
@ext4_attr_mb_group_prealloc = internal global { %struct.ext4_attr, [32 x i8] } { %struct.ext4_attr { %struct.attribute { ptr @.str.31, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i16 11, i16 1, i16 0, %union.anon.79 { i32 1120 } }, [32 x i8] zeroinitializer }, align 32
@ext4_attr_mb_max_inode_prealloc = internal global { %struct.ext4_attr, [32 x i8] } { %struct.ext4_attr { %struct.attribute { ptr @.str.32, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i16 11, i16 1, i16 0, %union.anon.79 { i32 1124 } }, [32 x i8] zeroinitializer }, align 32
@ext4_attr_mb_max_linear_groups = internal global { %struct.ext4_attr, [32 x i8] } { %struct.ext4_attr { %struct.attribute { ptr @.str.33, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i16 11, i16 1, i16 0, %union.anon.79 { i32 1096 } }, [32 x i8] zeroinitializer }, align 32
@ext4_attr_extent_max_zeroout_kb = internal global { %struct.ext4_attr, [32 x i8] } { %struct.ext4_attr { %struct.attribute { ptr @.str.36, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i16 11, i16 1, i16 0, %union.anon.79 { i32 1336 } }, [32 x i8] zeroinitializer }, align 32
@ext4_attr_trigger_fs_error = internal global { %struct.ext4_attr, [32 x i8] } { %struct.ext4_attr { %struct.attribute { ptr @.str.37, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i16 7, i16 0, i16 0, %union.anon.79 zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@ext4_attr_err_ratelimit_interval_ms = internal global { %struct.ext4_attr, [32 x i8] } { %struct.ext4_attr { %struct.attribute { ptr @.str.38, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i16 11, i16 1, i16 0, %union.anon.79 { i32 2020 } }, [32 x i8] zeroinitializer }, align 32
@ext4_attr_err_ratelimit_burst = internal global { %struct.ext4_attr, [32 x i8] } { %struct.ext4_attr { %struct.attribute { ptr @.str.39, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i16 11, i16 1, i16 0, %union.anon.79 { i32 2024 } }, [32 x i8] zeroinitializer }, align 32
@ext4_attr_warning_ratelimit_interval_ms = internal global { %struct.ext4_attr, [32 x i8] } { %struct.ext4_attr { %struct.attribute { ptr @.str.40, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i16 11, i16 1, i16 0, %union.anon.79 { i32 2088 } }, [32 x i8] zeroinitializer }, align 32
@ext4_attr_warning_ratelimit_burst = internal global { %struct.ext4_attr, [32 x i8] } { %struct.ext4_attr { %struct.attribute { ptr @.str.41, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i16 11, i16 1, i16 0, %union.anon.79 { i32 2092 } }, [32 x i8] zeroinitializer }, align 32
@ext4_attr_msg_ratelimit_interval_ms = internal global { %struct.ext4_attr, [32 x i8] } { %struct.ext4_attr { %struct.attribute { ptr @.str.42, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i16 11, i16 1, i16 0, %union.anon.79 { i32 2156 } }, [32 x i8] zeroinitializer }, align 32
@ext4_attr_msg_ratelimit_burst = internal global { %struct.ext4_attr, [32 x i8] } { %struct.ext4_attr { %struct.attribute { ptr @.str.43, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i16 11, i16 1, i16 0, %union.anon.79 { i32 2160 } }, [32 x i8] zeroinitializer }, align 32
@ext4_attr_errors_count = internal global { %struct.ext4_attr, [32 x i8] } { %struct.ext4_attr { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i16 11, i16 2, i16 0, %union.anon.79 { i32 404 } }, [32 x i8] zeroinitializer }, align 32
@ext4_attr_warning_count = internal global { %struct.ext4_attr, [32 x i8] } { %struct.ext4_attr { %struct.attribute { ptr @.str.44, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i16 16, i16 1, i16 0, %union.anon.79 { i32 2180 } }, [32 x i8] zeroinitializer }, align 32
@ext4_attr_msg_count = internal global { %struct.ext4_attr, [32 x i8] } { %struct.ext4_attr { %struct.attribute { ptr @.str.45, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i16 16, i16 1, i16 0, %union.anon.79 { i32 2184 } }, [32 x i8] zeroinitializer }, align 32
@ext4_attr_first_error_ino = internal global { %struct.ext4_attr, [32 x i8] } { %struct.ext4_attr { %struct.attribute { ptr @.str.46, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i16 11, i16 2, i16 0, %union.anon.79 { i32 412 } }, [32 x i8] zeroinitializer }, align 32
@ext4_attr_last_error_ino = internal global { %struct.ext4_attr, [32 x i8] } { %struct.ext4_attr { %struct.attribute { ptr @.str.47, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i16 11, i16 2, i16 0, %union.anon.79 { i32 464 } }, [32 x i8] zeroinitializer }, align 32
@ext4_attr_first_error_block = internal global { %struct.ext4_attr, [32 x i8] } { %struct.ext4_attr { %struct.attribute { ptr @.str.48, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i16 13, i16 2, i16 0, %union.anon.79 { i32 416 } }, [32 x i8] zeroinitializer }, align 32
@ext4_attr_last_error_block = internal global { %struct.ext4_attr, [32 x i8] } { %struct.ext4_attr { %struct.attribute { ptr @.str.49, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i16 13, i16 2, i16 0, %union.anon.79 { i32 472 } }, [32 x i8] zeroinitializer }, align 32
@ext4_attr_first_error_line = internal global { %struct.ext4_attr, [32 x i8] } { %struct.ext4_attr { %struct.attribute { ptr @.str.50, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i16 11, i16 2, i16 0, %union.anon.79 { i32 456 } }, [32 x i8] zeroinitializer }, align 32
@ext4_attr_last_error_line = internal global { %struct.ext4_attr, [32 x i8] } { %struct.ext4_attr { %struct.attribute { ptr @.str.51, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i16 11, i16 2, i16 0, %union.anon.79 { i32 468 } }, [32 x i8] zeroinitializer }, align 32
@ext4_attr_first_error_func = internal global { %struct.ext4_attr, [32 x i8] } { %struct.ext4_attr { %struct.attribute { ptr @.str.52, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i16 15, i16 2, i16 32, %union.anon.79 { i32 424 } }, [32 x i8] zeroinitializer }, align 32
@ext4_attr_last_error_func = internal global { %struct.ext4_attr, [32 x i8] } { %struct.ext4_attr { %struct.attribute { ptr @.str.53, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i16 15, i16 2, i16 32, %union.anon.79 { i32 480 } }, [32 x i8] zeroinitializer }, align 32
@ext4_attr_first_error_errcode = internal global { %struct.ext4_attr, [32 x i8] } { %struct.ext4_attr { %struct.attribute { ptr @.str.54, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i16 14, i16 2, i16 0, %union.anon.79 { i32 634 } }, [32 x i8] zeroinitializer }, align 32
@ext4_attr_last_error_errcode = internal global { %struct.ext4_attr, [32 x i8] } { %struct.ext4_attr { %struct.attribute { ptr @.str.55, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i16 14, i16 2, i16 0, %union.anon.79 { i32 635 } }, [32 x i8] zeroinitializer }, align 32
@ext4_attr_first_error_time = internal global { %struct.ext4_attr, [32 x i8] } { %struct.ext4_attr { %struct.attribute { ptr @.str.56, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i16 8, i16 0, i16 0, %union.anon.79 zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@ext4_attr_last_error_time = internal global { %struct.ext4_attr, [32 x i8] } { %struct.ext4_attr { %struct.attribute { ptr @.str.57, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i16 9, i16 0, i16 0, %union.anon.79 zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@ext4_attr_journal_task = internal global { %struct.ext4_attr, [32 x i8] } { %struct.ext4_attr { %struct.attribute { ptr @.str.58, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i16 17, i16 0, i16 0, %union.anon.79 zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@ext4_attr_simulate_fail = internal global { %struct.ext4_attr, [32 x i8] } { %struct.ext4_attr { %struct.attribute { ptr @.str.59, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i16 12, i16 1, i16 0, %union.anon.79 { i32 2368 } }, [32 x i8] zeroinitializer }, align 32
@ext4_attr_mb_prefetch = internal global { %struct.ext4_attr, [32 x i8] } { %struct.ext4_attr { %struct.attribute { ptr @.str.60, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i16 11, i16 1, i16 0, %union.anon.79 { i32 1140 } }, [32 x i8] zeroinitializer }, align 32
@ext4_attr_mb_prefetch_limit = internal global { %struct.ext4_attr, [32 x i8] } { %struct.ext4_attr { %struct.attribute { ptr @.str.61, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i16 11, i16 1, i16 0, %union.anon.79 { i32 1144 } }, [32 x i8] zeroinitializer }, align 32
@ext4_attr_last_trim_minblks = internal global { %struct.ext4_attr, [32 x i8] } { %struct.ext4_attr { %struct.attribute { ptr @.str.62, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i16 12, i16 1, i16 0, %union.anon.79 { i32 1416 } }, [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"delayed_allocation_blocks\00", [38 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"session_write_kbytes\00", [43 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lifetime_write_kbytes\00", [42 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"reserved_clusters\00", [46 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sra_exceeded_retry_limit\00", [39 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"inode_readahead_blks\00", [43 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"inode_goal\00", [21 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mb_max_to_scan\00", [17 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mb_min_to_scan\00", [17 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mb_order2_req\00", [18 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mb_stream_req\00", [18 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mb_group_prealloc\00", [46 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mb_max_inode_prealloc\00", [42 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mb_max_linear_groups\00", [43 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"max_writeback_mb_bump\00", [42 x i8] zeroinitializer }, align 32
@old_bump_val = internal global { i32, [28 x i8] } { i32 128, [28 x i8] zeroinitializer }, align 32
@ext4_attr_max_writeback_mb_bump = internal global { { %struct.attribute, i16, i16, i16, { ptr } }, [32 x i8] } { { %struct.attribute, i16, i16, i16, { ptr } } { %struct.attribute { ptr @.str.34, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i16 11, i16 0, i16 0, { ptr } { ptr @old_bump_val } }, [32 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"extent_max_zeroout_kb\00", [42 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"trigger_fs_error\00", [47 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"err_ratelimit_interval_ms\00", [38 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"err_ratelimit_burst\00", [44 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"warning_ratelimit_interval_ms\00", [34 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"warning_ratelimit_burst\00", [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"msg_ratelimit_interval_ms\00", [38 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"msg_ratelimit_burst\00", [44 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"warning_count\00", [18 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"msg_count\00", [22 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"first_error_ino\00", [16 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"last_error_ino\00", [17 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"first_error_block\00", [46 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"last_error_block\00", [47 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"first_error_line\00", [47 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"last_error_line\00", [16 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"first_error_func\00", [47 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"last_error_func\00", [16 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"first_error_errcode\00", [44 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"last_error_errcode\00", [45 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"first_error_time\00", [47 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"last_error_time\00", [16 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"journal_task\00", [19 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"simulate_fail\00", [18 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mb_prefetch\00", [20 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mb_prefetch_limit\00", [46 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"last_trim_minblks\00", [46 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ext4_feat_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @ext4_feat_group, ptr null], [24 x i8] zeroinitializer }, align 32
@ext4_feat_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ext4_feat_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@ext4_feat_attrs = internal global { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @ext4_attr_lazy_itable_init, ptr @ext4_attr_batched_discard, ptr @ext4_attr_meta_bg_resize, ptr @ext4_attr_encryption, ptr @ext4_attr_test_dummy_encryption_v2, ptr @ext4_attr_casefold, ptr @ext4_attr_verity, ptr @ext4_attr_metadata_csum_seed, ptr @ext4_attr_fast_commit, ptr @ext4_attr_encrypted_casefold, ptr null], [52 x i8] zeroinitializer }, align 32
@ext4_attr_lazy_itable_init = internal global { %struct.ext4_attr, [32 x i8] } { %struct.ext4_attr { %struct.attribute { ptr @.str.63, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i16 10, i16 0, i16 0, %union.anon.79 zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@ext4_attr_batched_discard = internal global { %struct.ext4_attr, [32 x i8] } { %struct.ext4_attr { %struct.attribute { ptr @.str.64, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i16 10, i16 0, i16 0, %union.anon.79 zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@ext4_attr_meta_bg_resize = internal global { %struct.ext4_attr, [32 x i8] } { %struct.ext4_attr { %struct.attribute { ptr @.str.65, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i16 10, i16 0, i16 0, %union.anon.79 zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@ext4_attr_encryption = internal global { %struct.ext4_attr, [32 x i8] } { %struct.ext4_attr { %struct.attribute { ptr @.str.66, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i16 10, i16 0, i16 0, %union.anon.79 zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@ext4_attr_test_dummy_encryption_v2 = internal global { %struct.ext4_attr, [32 x i8] } { %struct.ext4_attr { %struct.attribute { ptr @.str.67, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i16 10, i16 0, i16 0, %union.anon.79 zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@ext4_attr_casefold = internal global { %struct.ext4_attr, [32 x i8] } { %struct.ext4_attr { %struct.attribute { ptr @.str.68, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i16 10, i16 0, i16 0, %union.anon.79 zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@ext4_attr_verity = internal global { %struct.ext4_attr, [32 x i8] } { %struct.ext4_attr { %struct.attribute { ptr @.str.69, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i16 10, i16 0, i16 0, %union.anon.79 zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@ext4_attr_metadata_csum_seed = internal global { %struct.ext4_attr, [32 x i8] } { %struct.ext4_attr { %struct.attribute { ptr @.str.70, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i16 10, i16 0, i16 0, %union.anon.79 zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@ext4_attr_fast_commit = internal global { %struct.ext4_attr, [32 x i8] } { %struct.ext4_attr { %struct.attribute { ptr @.str.71, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i16 10, i16 0, i16 0, %union.anon.79 zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@ext4_attr_encrypted_casefold = internal global { %struct.ext4_attr, [32 x i8] } { %struct.ext4_attr { %struct.attribute { ptr @.str.72, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i16 10, i16 0, i16 0, %union.anon.79 zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lazy_itable_init\00", [47 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"batched_discard\00", [16 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"meta_bg_resize\00", [17 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"encryption\00", [21 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"test_dummy_encryption_v2\00", [39 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"casefold\00", [23 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"verity\00", [25 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"metadata_csum_seed\00", [45 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fast_commit\00", [20 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"encrypted_casefold\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.73 = internal global [18 x i64] [i64 16, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17]
@__sancov_gen_cov_switch_values.74 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.75 = internal global [7 x i64] [i64 5, i64 32, i64 4, i64 6, i64 7, i64 11, i64 12]
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 513, i32 35 }
@___asan_gen_.79 = private unnamed_addr constant [14 x i8] c"ext4_sb_ktype\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 499, i32 25 }
@___asan_gen_.82 = private unnamed_addr constant [10 x i8] c"ext4_root\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 516, i32 24 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 527, i32 8 }
@___asan_gen_.88 = private unnamed_addr constant [15 x i8] c"ext4_proc_root\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 49, i32 31 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 537, i32 27 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 539, i32 27 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 542, i32 27 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 544, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 546, i32 27 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 548, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 567, i32 37 }
@___asan_gen_.112 = private unnamed_addr constant [10 x i8] c"ext4_feat\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 518, i32 24 }
@___asan_gen_.115 = private unnamed_addr constant [16 x i8] c"ext4_feat_ktype\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 505, i32 25 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 578, i32 19 }
@___asan_gen_.121 = private unnamed_addr constant [13 x i8] c"proc_dirname\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 48, i32 19 }
@___asan_gen_.124 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.128 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 87, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant [14 x i8] c"ext4_attr_ops\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 494, i32 31 }
@___asan_gen_.133 = private unnamed_addr constant [12 x i8] c"ext4_groups\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 379, i32 26 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 399, i32 27 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 407, i32 26 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 426, i32 26 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 431, i32 26 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 434, i32 26 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 362, i32 25 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 133, i32 26 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 126, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant [11 x i8] c"ext4_group\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 302, i32 1 }
@___asan_gen_.166 = private unnamed_addr constant [11 x i8] c"ext4_attrs\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 253, i32 26 }
@___asan_gen_.169 = private unnamed_addr constant [36 x i8] c"ext4_attr_delayed_allocation_blocks\00", align 1
@___asan_gen_.172 = private unnamed_addr constant [31 x i8] c"ext4_attr_session_write_kbytes\00", align 1
@___asan_gen_.175 = private unnamed_addr constant [32 x i8] c"ext4_attr_lifetime_write_kbytes\00", align 1
@___asan_gen_.178 = private unnamed_addr constant [28 x i8] c"ext4_attr_reserved_clusters\00", align 1
@___asan_gen_.181 = private unnamed_addr constant [35 x i8] c"ext4_attr_sra_exceeded_retry_limit\00", align 1
@___asan_gen_.184 = private unnamed_addr constant [31 x i8] c"ext4_attr_inode_readahead_blks\00", align 1
@___asan_gen_.187 = private unnamed_addr constant [21 x i8] c"ext4_attr_inode_goal\00", align 1
@___asan_gen_.190 = private unnamed_addr constant [19 x i8] c"ext4_attr_mb_stats\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 211, i32 1 }
@___asan_gen_.193 = private unnamed_addr constant [25 x i8] c"ext4_attr_mb_max_to_scan\00", align 1
@___asan_gen_.196 = private unnamed_addr constant [25 x i8] c"ext4_attr_mb_min_to_scan\00", align 1
@___asan_gen_.199 = private unnamed_addr constant [24 x i8] c"ext4_attr_mb_order2_req\00", align 1
@___asan_gen_.202 = private unnamed_addr constant [24 x i8] c"ext4_attr_mb_stream_req\00", align 1
@___asan_gen_.205 = private unnamed_addr constant [28 x i8] c"ext4_attr_mb_group_prealloc\00", align 1
@___asan_gen_.208 = private unnamed_addr constant [32 x i8] c"ext4_attr_mb_max_inode_prealloc\00", align 1
@___asan_gen_.211 = private unnamed_addr constant [31 x i8] c"ext4_attr_mb_max_linear_groups\00", align 1
@___asan_gen_.214 = private unnamed_addr constant [32 x i8] c"ext4_attr_extent_max_zeroout_kb\00", align 1
@___asan_gen_.217 = private unnamed_addr constant [27 x i8] c"ext4_attr_trigger_fs_error\00", align 1
@___asan_gen_.220 = private unnamed_addr constant [36 x i8] c"ext4_attr_err_ratelimit_interval_ms\00", align 1
@___asan_gen_.223 = private unnamed_addr constant [30 x i8] c"ext4_attr_err_ratelimit_burst\00", align 1
@___asan_gen_.226 = private unnamed_addr constant [40 x i8] c"ext4_attr_warning_ratelimit_interval_ms\00", align 1
@___asan_gen_.229 = private unnamed_addr constant [34 x i8] c"ext4_attr_warning_ratelimit_burst\00", align 1
@___asan_gen_.232 = private unnamed_addr constant [36 x i8] c"ext4_attr_msg_ratelimit_interval_ms\00", align 1
@___asan_gen_.235 = private unnamed_addr constant [30 x i8] c"ext4_attr_msg_ratelimit_burst\00", align 1
@___asan_gen_.238 = private unnamed_addr constant [23 x i8] c"ext4_attr_errors_count\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 232, i32 1 }
@___asan_gen_.241 = private unnamed_addr constant [24 x i8] c"ext4_attr_warning_count\00", align 1
@___asan_gen_.244 = private unnamed_addr constant [20 x i8] c"ext4_attr_msg_count\00", align 1
@___asan_gen_.247 = private unnamed_addr constant [26 x i8] c"ext4_attr_first_error_ino\00", align 1
@___asan_gen_.250 = private unnamed_addr constant [25 x i8] c"ext4_attr_last_error_ino\00", align 1
@___asan_gen_.253 = private unnamed_addr constant [28 x i8] c"ext4_attr_first_error_block\00", align 1
@___asan_gen_.256 = private unnamed_addr constant [27 x i8] c"ext4_attr_last_error_block\00", align 1
@___asan_gen_.259 = private unnamed_addr constant [27 x i8] c"ext4_attr_first_error_line\00", align 1
@___asan_gen_.262 = private unnamed_addr constant [26 x i8] c"ext4_attr_last_error_line\00", align 1
@___asan_gen_.265 = private unnamed_addr constant [27 x i8] c"ext4_attr_first_error_func\00", align 1
@___asan_gen_.268 = private unnamed_addr constant [26 x i8] c"ext4_attr_last_error_func\00", align 1
@___asan_gen_.271 = private unnamed_addr constant [30 x i8] c"ext4_attr_first_error_errcode\00", align 1
@___asan_gen_.274 = private unnamed_addr constant [29 x i8] c"ext4_attr_last_error_errcode\00", align 1
@___asan_gen_.277 = private unnamed_addr constant [27 x i8] c"ext4_attr_first_error_time\00", align 1
@___asan_gen_.280 = private unnamed_addr constant [26 x i8] c"ext4_attr_last_error_time\00", align 1
@___asan_gen_.283 = private unnamed_addr constant [23 x i8] c"ext4_attr_journal_task\00", align 1
@___asan_gen_.286 = private unnamed_addr constant [24 x i8] c"ext4_attr_simulate_fail\00", align 1
@___asan_gen_.289 = private unnamed_addr constant [22 x i8] c"ext4_attr_mb_prefetch\00", align 1
@___asan_gen_.292 = private unnamed_addr constant [28 x i8] c"ext4_attr_mb_prefetch_limit\00", align 1
@___asan_gen_.295 = private unnamed_addr constant [28 x i8] c"ext4_attr_last_trim_minblks\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 202, i32 1 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 203, i32 1 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 204, i32 1 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 205, i32 1 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 206, i32 1 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 208, i32 1 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 210, i32 1 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 212, i32 1 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 213, i32 1 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 214, i32 1 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 215, i32 1 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 216, i32 1 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 217, i32 1 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 218, i32 1 }
@___asan_gen_.343 = private unnamed_addr constant [13 x i8] c"old_bump_val\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 250, i32 21 }
@___asan_gen_.346 = private unnamed_addr constant [32 x i8] c"ext4_attr_max_writeback_mb_bump\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 251, i32 1 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 219, i32 1 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 220, i32 1 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 221, i32 1 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 222, i32 1 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 223, i32 1 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 224, i32 1 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 225, i32 1 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 226, i32 1 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 230, i32 1 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 231, i32 1 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 235, i32 1 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 236, i32 1 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 237, i32 1 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 238, i32 1 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 239, i32 1 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 240, i32 1 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 241, i32 1 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 242, i32 1 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 233, i32 1 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 234, i32 1 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 243, i32 1 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 244, i32 1 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 245, i32 1 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 228, i32 1 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 246, i32 1 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 247, i32 1 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 248, i32 1 }
@___asan_gen_.430 = private unnamed_addr constant [17 x i8] c"ext4_feat_groups\00", align 1
@___asan_gen_.433 = private unnamed_addr constant [16 x i8] c"ext4_feat_group\00", align 1
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 345, i32 1 }
@___asan_gen_.436 = private unnamed_addr constant [16 x i8] c"ext4_feat_attrs\00", align 1
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 324, i32 26 }
@___asan_gen_.439 = private unnamed_addr constant [27 x i8] c"ext4_attr_lazy_itable_init\00", align 1
@___asan_gen_.442 = private unnamed_addr constant [26 x i8] c"ext4_attr_batched_discard\00", align 1
@___asan_gen_.445 = private unnamed_addr constant [25 x i8] c"ext4_attr_meta_bg_resize\00", align 1
@___asan_gen_.448 = private unnamed_addr constant [21 x i8] c"ext4_attr_encryption\00", align 1
@___asan_gen_.451 = private unnamed_addr constant [35 x i8] c"ext4_attr_test_dummy_encryption_v2\00", align 1
@___asan_gen_.454 = private unnamed_addr constant [19 x i8] c"ext4_attr_casefold\00", align 1
@___asan_gen_.457 = private unnamed_addr constant [17 x i8] c"ext4_attr_verity\00", align 1
@___asan_gen_.460 = private unnamed_addr constant [29 x i8] c"ext4_attr_metadata_csum_seed\00", align 1
@___asan_gen_.463 = private unnamed_addr constant [22 x i8] c"ext4_attr_fast_commit\00", align 1
@___asan_gen_.466 = private unnamed_addr constant [29 x i8] c"ext4_attr_encrypted_casefold\00", align 1
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 305, i32 1 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 306, i32 1 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 307, i32 1 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 309, i32 1 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 310, i32 1 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 313, i32 1 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 316, i32 1 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 318, i32 1 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 319, i32 1 }
@___asan_gen_.496 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.497 = private constant [19 x i8] c"../fs/ext4/sysfs.c\00", align 1
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 321, i32 1 }
@llvm.compiler.used = appending global [141 x ptr] [ptr @.str, ptr @ext4_sb_ktype, ptr @ext4_root, ptr @.str.1, ptr @ext4_proc_root, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @ext4_feat, ptr @ext4_feat_ktype, ptr @.str.9, ptr @proc_dirname, ptr @init_completion.__key, ptr @.str.10, ptr @ext4_attr_ops, ptr @ext4_groups, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @ext4_group, ptr @ext4_attrs, ptr @ext4_attr_delayed_allocation_blocks, ptr @ext4_attr_session_write_kbytes, ptr @ext4_attr_lifetime_write_kbytes, ptr @ext4_attr_reserved_clusters, ptr @ext4_attr_sra_exceeded_retry_limit, ptr @ext4_attr_inode_readahead_blks, ptr @ext4_attr_inode_goal, ptr @ext4_attr_mb_stats, ptr @ext4_attr_mb_max_to_scan, ptr @ext4_attr_mb_min_to_scan, ptr @ext4_attr_mb_order2_req, ptr @ext4_attr_mb_stream_req, ptr @ext4_attr_mb_group_prealloc, ptr @ext4_attr_mb_max_inode_prealloc, ptr @ext4_attr_mb_max_linear_groups, ptr @ext4_attr_extent_max_zeroout_kb, ptr @ext4_attr_trigger_fs_error, ptr @ext4_attr_err_ratelimit_interval_ms, ptr @ext4_attr_err_ratelimit_burst, ptr @ext4_attr_warning_ratelimit_interval_ms, ptr @ext4_attr_warning_ratelimit_burst, ptr @ext4_attr_msg_ratelimit_interval_ms, ptr @ext4_attr_msg_ratelimit_burst, ptr @ext4_attr_errors_count, ptr @ext4_attr_warning_count, ptr @ext4_attr_msg_count, ptr @ext4_attr_first_error_ino, ptr @ext4_attr_last_error_ino, ptr @ext4_attr_first_error_block, ptr @ext4_attr_last_error_block, ptr @ext4_attr_first_error_line, ptr @ext4_attr_last_error_line, ptr @ext4_attr_first_error_func, ptr @ext4_attr_last_error_func, ptr @ext4_attr_first_error_errcode, ptr @ext4_attr_last_error_errcode, ptr @ext4_attr_first_error_time, ptr @ext4_attr_last_error_time, ptr @ext4_attr_journal_task, ptr @ext4_attr_simulate_fail, ptr @ext4_attr_mb_prefetch, ptr @ext4_attr_mb_prefetch_limit, ptr @ext4_attr_last_trim_minblks, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @old_bump_val, ptr @ext4_attr_max_writeback_mb_bump, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @ext4_feat_groups, ptr @ext4_feat_group, ptr @ext4_feat_attrs, ptr @ext4_attr_lazy_itable_init, ptr @ext4_attr_batched_discard, ptr @ext4_attr_meta_bg_resize, ptr @ext4_attr_encryption, ptr @ext4_attr_test_dummy_encryption_v2, ptr @ext4_attr_casefold, ptr @ext4_attr_verity, ptr @ext4_attr_metadata_csum_seed, ptr @ext4_attr_fast_commit, ptr @ext4_attr_encrypted_casefold, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72], section "llvm.metadata"
@0 = internal global [141 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_sb_ktype to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_root to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_proc_root to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_feat to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_feat_ktype to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_dirname to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_attr_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_attrs to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_attr_delayed_allocation_blocks to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_attr_session_write_kbytes to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_attr_lifetime_write_kbytes to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_attr_reserved_clusters to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_attr_sra_exceeded_retry_limit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_attr_inode_readahead_blks to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_attr_inode_goal to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_attr_mb_stats to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_attr_mb_max_to_scan to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_attr_mb_min_to_scan to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_attr_mb_order2_req to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_attr_mb_stream_req to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_attr_mb_group_prealloc to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_attr_mb_max_inode_prealloc to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_attr_mb_max_linear_groups to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_attr_extent_max_zeroout_kb to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_attr_trigger_fs_error to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_attr_err_ratelimit_interval_ms to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_attr_err_ratelimit_burst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_attr_warning_ratelimit_interval_ms to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_attr_warning_ratelimit_burst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_attr_msg_ratelimit_interval_ms to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_attr_msg_ratelimit_burst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_attr_errors_count to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_attr_warning_count to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_attr_msg_count to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_attr_first_error_ino to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_attr_last_error_ino to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_attr_first_error_block to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_attr_last_error_block to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_attr_first_error_line to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_attr_last_error_line to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_attr_first_error_func to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_attr_last_error_func to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_attr_first_error_errcode to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_attr_last_error_errcode to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_attr_first_error_time to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_attr_last_error_time to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_attr_journal_task to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_attr_simulate_fail to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_attr_mb_prefetch to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_attr_mb_prefetch_limit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_attr_last_trim_minblks to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @old_bump_val to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_attr_max_writeback_mb_bump to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_feat_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_feat_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_feat_attrs to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_attr_lazy_itable_init to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_attr_batched_discard to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_attr_meta_bg_resize to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_attr_encryption to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_attr_test_dummy_encryption_v2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_attr_casefold to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_attr_verity to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_attr_metadata_csum_seed to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_attr_fast_commit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_attr_encrypted_casefold to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ext4_notify_error_sysfs(ptr noundef %sbi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %s_kobj = getelementptr inbounds %struct.ext4_sb_info, ptr %sbi, i32 0, i32 43
  tail call void @sysfs_notify(ptr noundef %s_kobj, ptr noundef null, ptr noundef nonnull @.str) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_notify(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_register_sysfs(ptr noundef %sb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_kobj_unregister = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %s_kobj_unregister to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %s_kobj_unregister, align 4
  %wait.i = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 44, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @init_completion.__key) #7
  %s_kobj = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 43
  %3 = load ptr, ptr @ext4_root, align 4
  %s_id = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 39
  %call1 = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %s_kobj, ptr noundef nonnull @ext4_sb_ktype, ptr noundef %3, ptr noundef nonnull @.str.1, ptr noundef %s_id) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kobject_put(ptr noundef %s_kobj) #7
  tail call void @wait_for_completion(ptr noundef %s_kobj_unregister) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr @ext4_proc_root, align 4
  %tobool4.not = icmp eq ptr %4, null
  br i1 %tobool4.not, label %if.end.if.end9_crit_edge, label %if.then5

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call8 = tail call ptr @proc_mkdir(ptr noundef %s_id, ptr noundef nonnull %4) #7
  %s_proc = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 42
  %5 = ptrtoint ptr %s_proc to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call8, ptr %s_proc, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.end.if.end9_crit_edge
  %s_proc10 = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 42
  %6 = ptrtoint ptr %s_proc10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_proc10, align 4
  %tobool11.not = icmp eq ptr %7, null
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %if.then12

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %call14 = tail call ptr @proc_create_single_data(ptr noundef nonnull @.str.2, i16 noundef zeroext 292, ptr noundef nonnull %7, ptr noundef nonnull @ext4_seq_options_show, ptr noundef %sb) #7
  %8 = ptrtoint ptr %s_proc10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_proc10, align 4
  %call16 = tail call ptr @proc_create_single_data(ptr noundef nonnull @.str.3, i16 noundef zeroext 292, ptr noundef %9, ptr noundef nonnull @ext4_seq_es_shrinker_info_show, ptr noundef %sb) #7
  %10 = ptrtoint ptr %s_proc10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_proc10, align 4
  %call18 = tail call ptr @proc_create_single_data(ptr noundef nonnull @.str.4, i16 noundef zeroext 292, ptr noundef %11, ptr noundef nonnull @ext4_fc_info_show, ptr noundef %sb) #7
  %12 = ptrtoint ptr %s_proc10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_proc10, align 4
  %call20 = tail call ptr @proc_create_seq_private(ptr noundef nonnull @.str.5, i16 noundef zeroext 292, ptr noundef %13, ptr noundef nonnull @ext4_mb_seq_groups_ops, i32 noundef 0, ptr noundef %sb) #7
  %14 = ptrtoint ptr %s_proc10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_proc10, align 4
  %call22 = tail call ptr @proc_create_single_data(ptr noundef nonnull @.str.6, i16 noundef zeroext 292, ptr noundef %15, ptr noundef nonnull @ext4_seq_mb_stats_show, ptr noundef %sb) #7
  %16 = ptrtoint ptr %s_proc10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_proc10, align 4
  %call24 = tail call ptr @proc_create_seq_private(ptr noundef nonnull @.str.7, i16 noundef zeroext 292, ptr noundef %17, ptr noundef nonnull @ext4_mb_seq_structs_summary_ops, i32 noundef 0, ptr noundef %sb) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end9.cleanup_crit_edge, %if.then
  ret i32 %call1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_init_and_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_mkdir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_single_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_seq_options_show(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_seq_es_shrinker_info_show(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_fc_info_show(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_seq_private(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_seq_mb_stats_show(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ext4_unregister_sysfs(ptr noundef %sb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_proc = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 42
  %2 = ptrtoint ptr %s_proc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_proc, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %s_id = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 39
  %4 = load ptr, ptr @ext4_proc_root, align 4
  %call1 = tail call i32 @remove_proc_subtree(ptr noundef %s_id, ptr noundef %4) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %s_kobj = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 43
  tail call void @kobject_del(ptr noundef %s_kobj) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remove_proc_subtree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_init_sysfs() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fs_kobj to i32))
  %0 = load ptr, ptr @fs_kobj, align 4
  %call = tail call ptr @kobject_create_and_add(ptr noundef nonnull @.str.8, ptr noundef %0) #7
  store ptr %call, ptr @ext4_root, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 136) #10
  store ptr %call7.i.i, ptr @ext4_feat, align 4
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.root_err_crit_edge, label %if.end4

if.end.root_err_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %root_err

if.end4:                                          ; preds = %if.end
  %2 = load ptr, ptr @ext4_root, align 4
  %call5 = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @ext4_feat_ktype, ptr noundef %2, ptr noundef nonnull @.str.9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %feat_err

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call ptr @proc_mkdir(ptr noundef nonnull @proc_dirname, ptr noundef null) #7
  store ptr %call9, ptr @ext4_proc_root, align 4
  br label %cleanup

feat_err:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %3 = load ptr, ptr @ext4_feat, align 4
  tail call void @kobject_put(ptr noundef %3) #7
  store ptr null, ptr @ext4_feat, align 4
  br label %root_err

root_err:                                         ; preds = %feat_err, %if.end.root_err_crit_edge
  %ret.0 = phi i32 [ %call5, %feat_err ], [ -12, %if.end.root_err_crit_edge ]
  %4 = load ptr, ptr @ext4_root, align 4
  tail call void @kobject_put(ptr noundef %4) #7
  store ptr null, ptr @ext4_root, align 4
  br label %cleanup

cleanup:                                          ; preds = %root_err, %if.end8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %root_err ], [ 0, %if.end8 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_create_and_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ext4_exit_sysfs() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ext4_feat, align 4
  tail call void @kobject_put(ptr noundef %0) #7
  store ptr null, ptr @ext4_feat, align 4
  %1 = load ptr, ptr @ext4_root, align 4
  tail call void @kobject_put(ptr noundef %1) #7
  store ptr null, ptr @ext4_root, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @proc_dirname, ptr noundef null) #7
  store ptr null, ptr @ext4_proc_root, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ext4_sb_release(ptr noundef %kobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %s_kobj_unregister = getelementptr i8, ptr %kobj, i32 136
  tail call void @complete(ptr noundef %s_kobj_unregister) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ext4_attr_show(ptr noundef %kobj, ptr nocapture noundef readonly %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %attr_ptr.i = getelementptr inbounds %struct.ext4_attr, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %attr_ptr.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %attr_ptr.i, align 2
  %conv.i = sext i16 %1 to i32
  %2 = zext i32 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %conv.i, label %entry.calc_ptr.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb3.i
  ]

entry.calc_ptr.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %calc_ptr.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %u.i = getelementptr inbounds %struct.ext4_attr, ptr %attr, i32 0, i32 4
  %3 = ptrtoint ptr %u.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %u.i, align 4
  br label %calc_ptr.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %kobj, i32 -544
  %u2.i = getelementptr inbounds %struct.ext4_attr, ptr %attr, i32 0, i32 4
  %5 = ptrtoint ptr %u2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %u2.i, align 4
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 %6
  br label %calc_ptr.exit

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %s_es.i = getelementptr i8, ptr %kobj, i32 -476
  %7 = ptrtoint ptr %s_es.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_es.i, align 4
  %u4.i = getelementptr inbounds %struct.ext4_attr, ptr %attr, i32 0, i32 4
  %9 = ptrtoint ptr %u4.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %u4.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %8, i32 %10
  br label %calc_ptr.exit

calc_ptr.exit:                                    ; preds = %sw.bb3.i, %sw.bb1.i, %sw.bb.i, %entry.calc_ptr.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr5.i, %sw.bb3.i ], [ %add.ptr.i, %sw.bb1.i ], [ %4, %sw.bb.i ], [ null, %entry.calc_ptr.exit_crit_edge ]
  %attr_id = getelementptr inbounds %struct.ext4_attr, ptr %attr, i32 0, i32 1
  %11 = ptrtoint ptr %attr_id to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %attr_id, align 4
  %conv = sext i16 %12 to i32
  %13 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %conv, label %calc_ptr.exit.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb6
    i32 3, label %sw.bb8
    i32 4, label %sw.bb10
    i32 5, label %sw.bb13
    i32 6, label %calc_ptr.exit.sw.bb16_crit_edge
    i32 11, label %calc_ptr.exit.sw.bb16_crit_edge149
    i32 12, label %sw.bb23
    i32 14, label %sw.bb28
    i32 13, label %sw.bb34
    i32 15, label %sw.bb47
    i32 16, label %sw.bb53
    i32 10, label %sw.bb59
    i32 8, label %sw.bb61
    i32 9, label %sw.bb64
    i32 17, label %sw.bb68
  ]

calc_ptr.exit.sw.bb16_crit_edge149:               ; preds = %calc_ptr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb16

calc_ptr.exit.sw.bb16_crit_edge:                  ; preds = %calc_ptr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb16

calc_ptr.exit.cleanup_crit_edge:                  ; preds = %calc_ptr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %calc_ptr.exit
  call void @__sanitizer_cov_trace_pc() #9
  %s_dirtyclusters_counter = getelementptr i8, ptr %kobj, i32 -152
  %call.i117 = tail call i64 @__percpu_counter_sum(ptr noundef %s_dirtyclusters_counter) #7
  %s_cluster_bits = getelementptr i8, ptr %kobj, i32 -496
  %14 = ptrtoint ptr %s_cluster_bits to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %s_cluster_bits, align 16
  %sh_prom = zext i32 %15 to i64
  %shl = shl i64 %call.i117, %sh_prom
  %call5 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.11, i64 noundef %shl) #7
  br label %cleanup

sw.bb6:                                           ; preds = %calc_ptr.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %16 = load i32, ptr @nr_cpu_ids, align 4
  %call10.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call10.i, i32 %16)
  %cmp11.i = icmp ult i32 %call10.i, %16
  br i1 %cmp11.i, label %do.body.lr.ph.i, label %sw.bb6.session_write_kbytes_show.exit_crit_edge

sw.bb6.session_write_kbytes_show.exit_crit_edge:  ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  br label %session_write_kbytes_show.exit

do.body.lr.ph.i:                                  ; preds = %sw.bb6
  %s_buddy_cache.i = getelementptr i8, ptr %kobj, i32 364
  %17 = ptrtoint ptr %s_buddy_cache.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_buddy_cache.i, align 4
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i_sb.i, align 4
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %20, i32 0, i32 26
  %21 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %s_bdev.i, align 4
  %bd_stats.i = getelementptr inbounds %struct.block_device, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %bd_stats.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bd_stats.i, align 8
  %25 = ptrtoint ptr %24 to i32
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.lr.ph.i
  %call13.i = phi i32 [ %call10.i, %do.body.lr.ph.i ], [ %call.i118, %do.body.i.do.body.i_crit_edge ]
  %res.012.i = phi i32 [ 0, %do.body.lr.ph.i ], [ %add3.i, %do.body.i.do.body.i_crit_edge ]
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call13.i
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %27, %25
  %28 = inttoptr i32 %add.i to ptr
  %arrayidx2.i = getelementptr %struct.disk_stats, ptr %28, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx2.i, align 4
  %add3.i = add i32 %30, %res.012.i
  %call.i118 = tail call i32 @cpumask_next(i32 noundef %call13.i, ptr noundef nonnull @__cpu_possible_mask) #11
  %cmp.i = icmp ult i32 %call.i118, %16
  br i1 %cmp.i, label %do.body.i.do.body.i_crit_edge, label %do.body.i.session_write_kbytes_show.exit_crit_edge

do.body.i.session_write_kbytes_show.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %session_write_kbytes_show.exit

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

session_write_kbytes_show.exit:                   ; preds = %do.body.i.session_write_kbytes_show.exit_crit_edge, %sw.bb6.session_write_kbytes_show.exit_crit_edge
  %res.0.lcssa.i = phi i32 [ 0, %sw.bb6.session_write_kbytes_show.exit_crit_edge ], [ %add3.i, %do.body.i.session_write_kbytes_show.exit_crit_edge ]
  %s_sectors_written_start.i = getelementptr i8, ptr %kobj, i32 780
  %31 = ptrtoint ptr %s_sectors_written_start.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %s_sectors_written_start.i, align 4
  %sub.i = sub i32 %res.0.lcssa.i, %32
  %shr.i = lshr i32 %sub.i, 1
  %call5.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.13, i32 noundef %shr.i) #7
  br label %cleanup

sw.bb8:                                           ; preds = %calc_ptr.exit
  %s_buddy_cache.i119 = getelementptr i8, ptr %kobj, i32 364
  %33 = ptrtoint ptr %s_buddy_cache.i119 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %s_buddy_cache.i119, align 4
  %i_sb.i120 = getelementptr inbounds %struct.inode, ptr %34, i32 0, i32 8
  %35 = ptrtoint ptr %i_sb.i120 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i_sb.i120, align 4
  %s_kbytes_written.i = getelementptr i8, ptr %kobj, i32 784
  %37 = ptrtoint ptr %s_kbytes_written.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %s_kbytes_written.i, align 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %39 = load i32, ptr @nr_cpu_ids, align 4
  %call13.i121 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call13.i121, i32 %39)
  %cmp14.i = icmp ult i32 %call13.i121, %39
  br i1 %cmp14.i, label %do.body.lr.ph.i124, label %sw.bb8.lifetime_write_kbytes_show.exit_crit_edge

sw.bb8.lifetime_write_kbytes_show.exit_crit_edge: ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #9
  br label %lifetime_write_kbytes_show.exit

do.body.lr.ph.i124:                               ; preds = %sw.bb8
  %s_bdev.i122 = getelementptr inbounds %struct.super_block, ptr %36, i32 0, i32 26
  %40 = ptrtoint ptr %s_bdev.i122 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %s_bdev.i122, align 4
  %bd_stats.i123 = getelementptr inbounds %struct.block_device, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %bd_stats.i123 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bd_stats.i123, align 8
  %44 = ptrtoint ptr %43 to i32
  br label %do.body.i131

do.body.i131:                                     ; preds = %do.body.i131.do.body.i131_crit_edge, %do.body.lr.ph.i124
  %call16.i = phi i32 [ %call13.i121, %do.body.lr.ph.i124 ], [ %call.i129, %do.body.i131.do.body.i131_crit_edge ]
  %res.015.i = phi i32 [ 0, %do.body.lr.ph.i124 ], [ %add3.i128, %do.body.i131.do.body.i131_crit_edge ]
  %arrayidx.i125 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call16.i
  %45 = ptrtoint ptr %arrayidx.i125 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.i125, align 4
  %add.i126 = add i32 %46, %44
  %47 = inttoptr i32 %add.i126 to ptr
  %arrayidx2.i127 = getelementptr %struct.disk_stats, ptr %47, i32 0, i32 1, i32 1
  %48 = ptrtoint ptr %arrayidx2.i127 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx2.i127, align 4
  %add3.i128 = add i32 %49, %res.015.i
  %call.i129 = tail call i32 @cpumask_next(i32 noundef %call16.i, ptr noundef nonnull @__cpu_possible_mask) #11
  %cmp.i130 = icmp ult i32 %call.i129, %39
  br i1 %cmp.i130, label %do.body.i131.do.body.i131_crit_edge, label %do.body.i131.lifetime_write_kbytes_show.exit_crit_edge

do.body.i131.lifetime_write_kbytes_show.exit_crit_edge: ; preds = %do.body.i131
  call void @__sanitizer_cov_trace_pc() #9
  br label %lifetime_write_kbytes_show.exit

do.body.i131.do.body.i131_crit_edge:              ; preds = %do.body.i131
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i131

lifetime_write_kbytes_show.exit:                  ; preds = %do.body.i131.lifetime_write_kbytes_show.exit_crit_edge, %sw.bb8.lifetime_write_kbytes_show.exit_crit_edge
  %res.0.lcssa.i132 = phi i32 [ 0, %sw.bb8.lifetime_write_kbytes_show.exit_crit_edge ], [ %add3.i128, %do.body.i131.lifetime_write_kbytes_show.exit_crit_edge ]
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %36, i32 0, i32 33
  %50 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_sectors_written_start.i133 = getelementptr inbounds %struct.ext4_sb_info, ptr %51, i32 0, i32 109
  %52 = ptrtoint ptr %s_sectors_written_start.i133 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %s_sectors_written_start.i133, align 4
  %sub.i134 = sub i32 %res.0.lcssa.i132, %53
  %shr.i135 = lshr i32 %sub.i134, 1
  %conv.i136 = zext i32 %shr.i135 to i64
  %add6.i = add i64 %38, %conv.i136
  %call7.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.11, i64 noundef %add6.i) #7
  br label %cleanup

sw.bb10:                                          ; preds = %calc_ptr.exit
  call void @__sanitizer_cov_trace_pc() #9
  %s_resv_clusters = getelementptr i8, ptr %kobj, i32 -440
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %s_resv_clusters, i32 noundef 8) #7
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %s_resv_clusters) #7
  %call12 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.11, i64 noundef %call.i) #7
  br label %cleanup

sw.bb13:                                          ; preds = %calc_ptr.exit
  call void @__sanitizer_cov_trace_pc() #9
  %s_sra_exceeded_retry_limit = getelementptr i8, ptr %kobj, i32 -80
  %call.i137 = tail call i64 @__percpu_counter_sum(ptr noundef %s_sra_exceeded_retry_limit) #7
  %call15 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.11, i64 noundef %call.i137) #7
  br label %cleanup

sw.bb16:                                          ; preds = %calc_ptr.exit.sw.bb16_crit_edge, %calc_ptr.exit.sw.bb16_crit_edge149
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %sw.bb16.cleanup_crit_edge, label %if.end

sw.bb16.cleanup_crit_edge:                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %1)
  %cmp = icmp eq i16 %1, 2
  %54 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %retval.0.i, align 4
  br i1 %cmp, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #7
  %call21 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.12, i32 noundef %56) #7
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call22 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.12, i32 noundef %55) #7
  br label %cleanup

sw.bb23:                                          ; preds = %calc_ptr.exit
  %tobool24.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool24.not, label %sw.bb23.cleanup_crit_edge, label %if.end26

sw.bb23.cleanup_crit_edge:                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end26:                                         ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #9
  %57 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %retval.0.i, align 4
  %call27 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.13, i32 noundef %58) #7
  br label %cleanup

sw.bb28:                                          ; preds = %calc_ptr.exit
  %tobool29.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool29.not, label %sw.bb28.cleanup_crit_edge, label %if.end31

sw.bb28.cleanup_crit_edge:                        ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end31:                                         ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #9
  %59 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %retval.0.i, align 1
  %conv32 = zext i8 %60 to i32
  %call33 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.12, i32 noundef %conv32) #7
  br label %cleanup

sw.bb34:                                          ; preds = %calc_ptr.exit
  %tobool35.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool35.not, label %sw.bb34.cleanup_crit_edge, label %if.end37

sw.bb34.cleanup_crit_edge:                        ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end37:                                         ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %1)
  %cmp40 = icmp eq i16 %1, 2
  %61 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %retval.0.i, align 8
  br i1 %cmp40, label %if.then42, label %if.else45

if.then42:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  %63 = tail call i64 @llvm.bswap.i64(i64 %62) #7
  %call44 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.11, i64 noundef %63) #7
  br label %cleanup

if.else45:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  %call46 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.11, i64 noundef %62) #7
  br label %cleanup

sw.bb47:                                          ; preds = %calc_ptr.exit
  %tobool48.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool48.not, label %sw.bb47.cleanup_crit_edge, label %if.end50

sw.bb47.cleanup_crit_edge:                        ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end50:                                         ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #9
  %attr_size = getelementptr inbounds %struct.ext4_attr, ptr %attr, i32 0, i32 3
  %64 = ptrtoint ptr %attr_size to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %attr_size, align 4
  %conv51 = zext i16 %65 to i32
  %call52 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.14, i32 noundef %conv51, ptr noundef nonnull %retval.0.i) #7
  br label %cleanup

sw.bb53:                                          ; preds = %calc_ptr.exit
  %tobool54.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool54.not, label %sw.bb53.cleanup_crit_edge, label %if.end56

sw.bb53.cleanup_crit_edge:                        ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end56:                                         ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i116 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %retval.0.i, i32 noundef 4) #7
  %66 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %retval.0.i, align 4
  %call58 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.15, i32 noundef %67) #7
  br label %cleanup

sw.bb59:                                          ; preds = %calc_ptr.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call60 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.16) #7
  br label %cleanup

sw.bb61:                                          ; preds = %calc_ptr.exit
  call void @__sanitizer_cov_trace_pc() #9
  %s_es = getelementptr i8, ptr %kobj, i32 -476
  %68 = ptrtoint ptr %s_es to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %s_es, align 4
  %s_first_error_time = getelementptr inbounds %struct.ext4_super_block, ptr %69, i32 0, i32 70
  %70 = ptrtoint ptr %s_first_error_time to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %s_first_error_time, align 8
  %s_first_error_time_hi = getelementptr inbounds %struct.ext4_super_block, ptr %69, i32 0, i32 94
  %72 = ptrtoint ptr %s_first_error_time_hi to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %s_first_error_time_hi, align 8
  %conv.i138 = zext i8 %73 to i64
  %shl.i = shl nuw nsw i64 %conv.i138, 32
  %74 = tail call i32 @llvm.bswap.i32(i32 %71) #7
  %conv1.i = zext i32 %74 to i64
  %add.i139 = or i64 %shl.i, %conv1.i
  %call.i140 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.17, i64 noundef %add.i139) #7
  br label %cleanup

sw.bb64:                                          ; preds = %calc_ptr.exit
  call void @__sanitizer_cov_trace_pc() #9
  %s_es65 = getelementptr i8, ptr %kobj, i32 -476
  %75 = ptrtoint ptr %s_es65 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %s_es65, align 4
  %s_last_error_time = getelementptr inbounds %struct.ext4_super_block, ptr %76, i32 0, i32 75
  %77 = ptrtoint ptr %s_last_error_time to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %s_last_error_time, align 4
  %s_last_error_time_hi = getelementptr inbounds %struct.ext4_super_block, ptr %76, i32 0, i32 95
  %79 = ptrtoint ptr %s_last_error_time_hi to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %s_last_error_time_hi, align 1
  %conv.i141 = zext i8 %80 to i64
  %shl.i142 = shl nuw nsw i64 %conv.i141, 32
  %81 = tail call i32 @llvm.bswap.i32(i32 %78) #7
  %conv1.i143 = zext i32 %81 to i64
  %add.i144 = or i64 %shl.i142, %conv1.i143
  %call.i145 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.17, i64 noundef %add.i144) #7
  br label %cleanup

sw.bb68:                                          ; preds = %calc_ptr.exit
  %s_journal.i = getelementptr i8, ptr %kobj, i32 200
  %82 = ptrtoint ptr %s_journal.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %s_journal.i, align 8
  %tobool.not.i = icmp eq ptr %83, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %sw.bb68
  call void @__sanitizer_cov_trace_pc() #9
  %call.i146 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.18) #7
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb68
  call void @__sanitizer_cov_trace_pc() #9
  %j_task.i = getelementptr inbounds %struct.journal_s, ptr %83, i32 0, i32 46
  %84 = ptrtoint ptr %j_task.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %j_task.i, align 4
  %call.i.i147 = tail call i32 @__task_pid_nr_ns(ptr noundef %85, i32 noundef 0, ptr noundef null) #7
  %call3.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.15, i32 noundef %call.i.i147) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.then.i, %sw.bb64, %sw.bb61, %sw.bb59, %if.end56, %sw.bb53.cleanup_crit_edge, %if.end50, %sw.bb47.cleanup_crit_edge, %if.else45, %if.then42, %sw.bb34.cleanup_crit_edge, %if.end31, %sw.bb28.cleanup_crit_edge, %if.end26, %sw.bb23.cleanup_crit_edge, %if.else, %if.then19, %sw.bb16.cleanup_crit_edge, %sw.bb13, %sw.bb10, %lifetime_write_kbytes_show.exit, %session_write_kbytes_show.exit, %sw.bb, %calc_ptr.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i145, %sw.bb64 ], [ %call.i140, %sw.bb61 ], [ %call60, %sw.bb59 ], [ %call58, %if.end56 ], [ %call52, %if.end50 ], [ %call44, %if.then42 ], [ %call46, %if.else45 ], [ %call33, %if.end31 ], [ %call27, %if.end26 ], [ %call21, %if.then19 ], [ %call22, %if.else ], [ %call15, %sw.bb13 ], [ %call12, %sw.bb10 ], [ %call7.i, %lifetime_write_kbytes_show.exit ], [ %call5.i, %session_write_kbytes_show.exit ], [ %call5, %sw.bb ], [ 0, %sw.bb16.cleanup_crit_edge ], [ 0, %sw.bb23.cleanup_crit_edge ], [ 0, %sw.bb28.cleanup_crit_edge ], [ 0, %sw.bb34.cleanup_crit_edge ], [ 0, %sw.bb47.cleanup_crit_edge ], [ 0, %sw.bb53.cleanup_crit_edge ], [ 0, %calc_ptr.exit.cleanup_crit_edge ], [ %call3.i, %if.end.i ], [ %call.i146, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ext4_attr_store(ptr noundef %kobj, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %t.i = alloca i32, align 4
  %val.i = alloca i64, align 8
  %t = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %attr_ptr.i = getelementptr inbounds %struct.ext4_attr, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %attr_ptr.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %attr_ptr.i, align 2
  %conv.i = sext i16 %1 to i32
  %2 = zext i32 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %conv.i, label %entry.calc_ptr.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb3.i
  ]

entry.calc_ptr.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %calc_ptr.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %u.i = getelementptr inbounds %struct.ext4_attr, ptr %attr, i32 0, i32 4
  %3 = ptrtoint ptr %u.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %u.i, align 4
  br label %calc_ptr.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %kobj, i32 -544
  %u2.i = getelementptr inbounds %struct.ext4_attr, ptr %attr, i32 0, i32 4
  %5 = ptrtoint ptr %u2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %u2.i, align 4
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 %6
  br label %calc_ptr.exit

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %s_es.i = getelementptr i8, ptr %kobj, i32 -476
  %7 = ptrtoint ptr %s_es.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_es.i, align 4
  %u4.i = getelementptr inbounds %struct.ext4_attr, ptr %attr, i32 0, i32 4
  %9 = ptrtoint ptr %u4.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %u4.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %8, i32 %10
  br label %calc_ptr.exit

calc_ptr.exit:                                    ; preds = %sw.bb3.i, %sw.bb1.i, %sw.bb.i, %entry.calc_ptr.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr5.i, %sw.bb3.i ], [ %add.ptr.i, %sw.bb1.i ], [ %4, %sw.bb.i ], [ null, %entry.calc_ptr.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t) #7
  %11 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %t, align 4, !annotation !237
  %attr_id = getelementptr inbounds %struct.ext4_attr, ptr %attr, i32 0, i32 1
  %12 = ptrtoint ptr %attr_id to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %attr_id, align 4
  %conv = sext i16 %13 to i32
  %14 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %conv, label %calc_ptr.exit.cleanup_crit_edge [
    i32 4, label %sw.bb
    i32 11, label %sw.bb5
    i32 12, label %sw.bb15
    i32 6, label %sw.bb24
    i32 7, label %sw.bb26
  ]

calc_ptr.exit.cleanup_crit_edge:                  ; preds = %calc_ptr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %calc_ptr.exit
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %val.i) #7
  %15 = ptrtoint ptr %val.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 -1, ptr %val.i, align 8, !annotation !237
  %s_es.i52 = getelementptr i8, ptr %kobj, i32 -476
  %16 = ptrtoint ptr %s_es.i52 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_es.i52, align 4
  %s_feature_incompat.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %17, i32 0, i32 29
  %18 = ptrtoint ptr %s_feature_incompat.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %s_feature_incompat.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %tobool.not.i.i = icmp sgt i32 %19, -1
  br i1 %tobool.not.i.i, label %sw.bb.ext4_blocks_count.exit.i_crit_edge, label %cond.true.i.i

sw.bb.ext4_blocks_count.exit.i_crit_edge:         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %ext4_blocks_count.exit.i

cond.true.i.i:                                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %s_blocks_count_hi.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %17, i32 0, i32 50
  %20 = ptrtoint ptr %s_blocks_count_hi.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %s_blocks_count_hi.i.i, align 8
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #7
  %conv.i.i = zext i32 %22 to i64
  %shl.i.i = shl nuw i64 %conv.i.i, 32
  br label %ext4_blocks_count.exit.i

ext4_blocks_count.exit.i:                         ; preds = %cond.true.i.i, %sw.bb.ext4_blocks_count.exit.i_crit_edge
  %cond.i.i = phi i64 [ %shl.i.i, %cond.true.i.i ], [ 0, %sw.bb.ext4_blocks_count.exit.i_crit_edge ]
  %s_blocks_count_lo.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %17, i32 0, i32 1
  %23 = ptrtoint ptr %s_blocks_count_lo.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %s_blocks_count_lo.i.i, align 4
  %s_cluster_bits.i = getelementptr i8, ptr %kobj, i32 -496
  %25 = ptrtoint ptr %s_cluster_bits.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %s_cluster_bits.i, align 16
  %call1.i = tail call ptr @skip_spaces(ptr noundef %buf) #7
  %call2.i = call i32 @kstrtoull(ptr noundef %call1.i, i32 noundef 0, ptr noundef nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %ext4_blocks_count.exit.i.reserved_clusters_store.exit_crit_edge

ext4_blocks_count.exit.i.reserved_clusters_store.exit_crit_edge: ; preds = %ext4_blocks_count.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reserved_clusters_store.exit

lor.lhs.false.i:                                  ; preds = %ext4_blocks_count.exit.i
  %27 = call i32 @llvm.bswap.i32(i32 %24) #7
  %conv1.i.i = zext i32 %27 to i64
  %or.i.i = or i64 %cond.i.i, %conv1.i.i
  %sh_prom.i = zext i32 %26 to i64
  %shr.i = lshr i64 %or.i.i, %sh_prom.i
  %28 = ptrtoint ptr %val.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %val.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %29, i64 %shr.i)
  %cmp.not.i = icmp ult i64 %29, %shr.i
  br i1 %cmp.not.i, label %if.end.i, label %lor.lhs.false.i.reserved_clusters_store.exit_crit_edge

lor.lhs.false.i.reserved_clusters_store.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reserved_clusters_store.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  %s_resv_clusters.i = getelementptr i8, ptr %kobj, i32 -440
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %s_resv_clusters.i, i32 noundef 8) #7
  call void @generic_atomic64_set(ptr noundef %s_resv_clusters.i, i64 noundef %29) #7
  br label %reserved_clusters_store.exit

reserved_clusters_store.exit:                     ; preds = %if.end.i, %lor.lhs.false.i.reserved_clusters_store.exit_crit_edge, %ext4_blocks_count.exit.i.reserved_clusters_store.exit_crit_edge
  %retval.0.i53 = phi i32 [ %len, %if.end.i ], [ -22, %lor.lhs.false.i.reserved_clusters_store.exit_crit_edge ], [ -22, %ext4_blocks_count.exit.i.reserved_clusters_store.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val.i) #7
  br label %cleanup

sw.bb5:                                           ; preds = %calc_ptr.exit
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %sw.bb5.cleanup_crit_edge, label %if.end

sw.bb5.cleanup_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %sw.bb5
  %call6 = tail call ptr @skip_spaces(ptr noundef %buf) #7
  %call.i = call i32 @_kstrtoul(ptr noundef %call6, i32 noundef 0, ptr noundef nonnull %t) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not = icmp eq i32 %call.i, 0
  br i1 %tobool8.not, label %if.end10, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %attr_ptr.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %attr_ptr.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %31)
  %cmp = icmp eq i16 %31, 2
  %32 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %t, align 4
  %34 = call i32 @llvm.bswap.i32(i32 %33)
  %storemerge = select i1 %cmp, i32 %34, i32 %33
  %35 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %storemerge, ptr %retval.0.i, align 4
  br label %cleanup

sw.bb15:                                          ; preds = %calc_ptr.exit
  %tobool16.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool16.not, label %sw.bb15.cleanup_crit_edge, label %if.end18

sw.bb15.cleanup_crit_edge:                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end18:                                         ; preds = %sw.bb15
  %call19 = tail call ptr @skip_spaces(ptr noundef %buf) #7
  %call.i54 = call i32 @_kstrtoul(ptr noundef %call19, i32 noundef 0, ptr noundef nonnull %t) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54)
  %tobool21.not = icmp eq i32 %call.i54, 0
  br i1 %tobool21.not, label %if.end23, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %t, align 4
  %38 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %retval.0.i, align 4
  br label %cleanup

sw.bb24:                                          ; preds = %calc_ptr.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i) #7
  %39 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %t.i, align 4, !annotation !237
  %call.i55 = tail call ptr @skip_spaces(ptr noundef %buf) #7
  %call.i.i = call i32 @_kstrtoul(ptr noundef %call.i55, i32 noundef 0, ptr noundef nonnull %t.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i56 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i56, label %if.end.i57, label %sw.bb24.inode_readahead_blks_store.exit_crit_edge

sw.bb24.inode_readahead_blks_store.exit_crit_edge: ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #9
  br label %inode_readahead_blks_store.exit

if.end.i57:                                       ; preds = %sw.bb24
  %40 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %t.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool2.not.i = icmp eq i32 %41, 0
  br i1 %tobool2.not.i, label %if.end.i57.if.end5.i_crit_edge, label %land.lhs.true.i

if.end.i57.if.end5.i_crit_edge:                   ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i

land.lhs.true.i:                                  ; preds = %if.end.i57
  %42 = call i32 @llvm.ctpop.i32(i32 %41) #7, !range !238
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %42)
  %cmp1.i.i = icmp ugt i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %41)
  %cmp.i = icmp ugt i32 %41, 1073741824
  %or.cond.i = or i1 %cmp.i, %cmp1.i.i
  br i1 %or.cond.i, label %land.lhs.true.i.inode_readahead_blks_store.exit_crit_edge, label %land.lhs.true.i.if.end5.i_crit_edge

land.lhs.true.i.if.end5.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i

land.lhs.true.i.inode_readahead_blks_store.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %inode_readahead_blks_store.exit

if.end5.i:                                        ; preds = %land.lhs.true.i.if.end5.i_crit_edge, %if.end.i57.if.end5.i_crit_edge
  %s_inode_readahead_blks.i = getelementptr i8, ptr %kobj, i32 -404
  %43 = ptrtoint ptr %s_inode_readahead_blks.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %41, ptr %s_inode_readahead_blks.i, align 4
  br label %inode_readahead_blks_store.exit

inode_readahead_blks_store.exit:                  ; preds = %if.end5.i, %land.lhs.true.i.inode_readahead_blks_store.exit_crit_edge, %sw.bb24.inode_readahead_blks_store.exit_crit_edge
  %retval.0.i58 = phi i32 [ %len, %if.end5.i ], [ %call.i.i, %sw.bb24.inode_readahead_blks_store.exit_crit_edge ], [ -22, %land.lhs.true.i.inode_readahead_blks_store.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i) #7
  br label %cleanup

sw.bb26:                                          ; preds = %calc_ptr.exit
  %call.i59 = tail call zeroext i1 @capable(i32 noundef 21) #7
  br i1 %call.i59, label %if.end.i61, label %sw.bb26.cleanup_crit_edge

sw.bb26.cleanup_crit_edge:                        ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i61:                                       ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not.i60 = icmp eq i32 %len, 0
  br i1 %tobool.not.i60, label %if.end.i61.cleanup_crit_edge, label %land.lhs.true.i63

if.end.i61.cleanup_crit_edge:                     ; preds = %if.end.i61
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.i63:                                ; preds = %if.end.i61
  %sub.i = add i32 %len, -1
  %arrayidx.i = getelementptr i8, ptr %buf, i32 %sub.i
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %45)
  %cmp.i62 = icmp eq i8 %45, 10
  br i1 %cmp.i62, label %if.end3.i, label %land.lhs.true.i63.if.then5.i_crit_edge

land.lhs.true.i63.if.then5.i_crit_edge:           ; preds = %land.lhs.true.i63
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5.i

if.end3.i:                                        ; preds = %land.lhs.true.i63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %tobool4.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool4.not.i, label %if.end3.i.cleanup_crit_edge, label %if.end3.i.if.then5.i_crit_edge

if.end3.i.if.then5.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5.i

if.end3.i.cleanup_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then5.i:                                       ; preds = %if.end3.i.if.then5.i_crit_edge, %land.lhs.true.i63.if.then5.i_crit_edge
  %len.018.i = phi i32 [ %sub.i, %if.end3.i.if.then5.i_crit_edge ], [ %len, %land.lhs.true.i63.if.then5.i_crit_edge ]
  %s_sb.i = getelementptr i8, ptr %kobj, i32 192
  %46 = ptrtoint ptr %s_sb.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %s_sb.i, align 32
  tail call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %47, ptr noundef nonnull @__func__.trigger_test_error, i32 noundef 126, i1 noundef zeroext false, i32 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.19, i32 noundef %len.018.i, ptr noundef %buf) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then5.i, %if.end3.i.cleanup_crit_edge, %if.end.i61.cleanup_crit_edge, %sw.bb26.cleanup_crit_edge, %inode_readahead_blks_store.exit, %if.end23, %if.end18.cleanup_crit_edge, %sw.bb15.cleanup_crit_edge, %if.end10, %if.end.cleanup_crit_edge, %sw.bb5.cleanup_crit_edge, %reserved_clusters_store.exit, %calc_ptr.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i58, %inode_readahead_blks_store.exit ], [ %len, %if.end23 ], [ %len, %if.end10 ], [ %retval.0.i53, %reserved_clusters_store.exit ], [ 0, %sw.bb5.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ 0, %sw.bb15.cleanup_crit_edge ], [ %call.i54, %if.end18.cleanup_crit_edge ], [ 0, %calc_ptr.exit.cleanup_crit_edge ], [ -1, %sw.bb26.cleanup_crit_edge ], [ %len, %if.then5.i ], [ 1, %if.end3.i.cleanup_crit_edge ], [ 0, %if.end.i61.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__percpu_counter_sum(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__task_pid_nr_ns(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skip_spaces(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoull(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_error(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 141)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 141)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !52, !54, !55, !57, !59, !60, !62, !63, !65, !66, !68, !69, !71, !72, !74, !75, !77, !78, !80, !82, !83, !85, !86, !88, !89, !91, !92, !94, !95, !97, !98, !100, !101, !103, !104, !106, !108, !109, !111, !112, !114, !115, !117, !118, !120, !121, !123, !124, !126, !127, !129, !130, !132, !134, !135, !137, !138, !140, !141, !143, !144, !146, !147, !149, !150, !152, !153, !155, !156, !158, !159, !161, !162, !164, !165, !167, !168, !170, !171, !173, !174, !176, !177, !179, !180, !182, !183, !185, !186, !188, !189, !191, !193, !194, !196, !198, !199, !201, !202, !204, !205, !207, !208, !210, !211, !213, !214, !216, !217, !219, !220, !222, !223, !225, !226}
!llvm.module.flags = !{!228, !229, !230, !231, !232, !233, !234, !235}
!llvm.ident = !{!236}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ext4/sysfs.c", i32 513, i32 35}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/ext4/sysfs.c", i32 527, i32 8}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/ext4/sysfs.c", i32 537, i32 27}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/ext4/sysfs.c", i32 539, i32 27}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/ext4/sysfs.c", i32 542, i32 27}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/ext4/sysfs.c", i32 544, i32 3}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/ext4/sysfs.c", i32 546, i32 27}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/ext4/sysfs.c", i32 548, i32 3}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/ext4/sysfs.c", i32 567, i32 37}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/ext4/sysfs.c", i32 578, i32 19}
!20 = !{ptr @ext4_proc_root, !21, !"ext4_proc_root", i1 false, i1 false}
!21 = !{!"../fs/ext4/sysfs.c", i32 49, i32 31}
!22 = !{ptr @ext4_root, !23, !"ext4_root", i1 false, i1 false}
!23 = !{!"../fs/ext4/sysfs.c", i32 516, i32 24}
!24 = !{ptr @ext4_feat, !25, !"ext4_feat", i1 false, i1 false}
!25 = !{!"../fs/ext4/sysfs.c", i32 518, i32 24}
!26 = !{ptr @init_completion.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../include/linux/completion.h", i32 87, i32 2}
!28 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @ext4_sb_ktype, !30, !"ext4_sb_ktype", i1 false, i1 false}
!30 = !{!"../fs/ext4/sysfs.c", i32 499, i32 25}
!31 = !{ptr @ext4_attr_ops, !32, !"ext4_attr_ops", i1 false, i1 false}
!32 = !{!"../fs/ext4/sysfs.c", i32 494, i32 31}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/ext4/sysfs.c", i32 379, i32 26}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/ext4/sysfs.c", i32 399, i32 27}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/ext4/sysfs.c", i32 407, i32 26}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/ext4/sysfs.c", i32 426, i32 26}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/ext4/sysfs.c", i32 431, i32 26}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/ext4/sysfs.c", i32 434, i32 26}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/ext4/sysfs.c", i32 362, i32 25}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/ext4/sysfs.c", i32 133, i32 26}
!49 = !{ptr @__func__.trigger_test_error, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/ext4/sysfs.c", i32 126, i32 3}
!51 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @ext4_groups, !53, !"ext4_groups", i1 false, i1 false}
!53 = !{!"../fs/ext4/sysfs.c", i32 302, i32 1}
!54 = !{ptr @ext4_group, !53, !"ext4_group", i1 false, i1 false}
!55 = !{ptr @ext4_attrs, !56, !"ext4_attrs", i1 false, i1 false}
!56 = !{!"../fs/ext4/sysfs.c", i32 253, i32 26}
!57 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/ext4/sysfs.c", i32 202, i32 1}
!59 = !{ptr @ext4_attr_delayed_allocation_blocks, !58, !"ext4_attr_delayed_allocation_blocks", i1 false, i1 false}
!60 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/ext4/sysfs.c", i32 203, i32 1}
!62 = !{ptr @ext4_attr_session_write_kbytes, !61, !"ext4_attr_session_write_kbytes", i1 false, i1 false}
!63 = !{ptr @.str.22, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/ext4/sysfs.c", i32 204, i32 1}
!65 = !{ptr @ext4_attr_lifetime_write_kbytes, !64, !"ext4_attr_lifetime_write_kbytes", i1 false, i1 false}
!66 = !{ptr @.str.23, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/ext4/sysfs.c", i32 205, i32 1}
!68 = !{ptr @ext4_attr_reserved_clusters, !67, !"ext4_attr_reserved_clusters", i1 false, i1 false}
!69 = !{ptr @.str.24, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/ext4/sysfs.c", i32 206, i32 1}
!71 = !{ptr @ext4_attr_sra_exceeded_retry_limit, !70, !"ext4_attr_sra_exceeded_retry_limit", i1 false, i1 false}
!72 = !{ptr @.str.25, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/ext4/sysfs.c", i32 208, i32 1}
!74 = !{ptr @ext4_attr_inode_readahead_blks, !73, !"ext4_attr_inode_readahead_blks", i1 false, i1 false}
!75 = !{ptr @.str.26, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/ext4/sysfs.c", i32 210, i32 1}
!77 = !{ptr @ext4_attr_inode_goal, !76, !"ext4_attr_inode_goal", i1 false, i1 false}
!78 = !{ptr @ext4_attr_mb_stats, !79, !"ext4_attr_mb_stats", i1 false, i1 false}
!79 = !{!"../fs/ext4/sysfs.c", i32 211, i32 1}
!80 = !{ptr @.str.27, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../fs/ext4/sysfs.c", i32 212, i32 1}
!82 = !{ptr @ext4_attr_mb_max_to_scan, !81, !"ext4_attr_mb_max_to_scan", i1 false, i1 false}
!83 = !{ptr @.str.28, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../fs/ext4/sysfs.c", i32 213, i32 1}
!85 = !{ptr @ext4_attr_mb_min_to_scan, !84, !"ext4_attr_mb_min_to_scan", i1 false, i1 false}
!86 = !{ptr @.str.29, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../fs/ext4/sysfs.c", i32 214, i32 1}
!88 = !{ptr @ext4_attr_mb_order2_req, !87, !"ext4_attr_mb_order2_req", i1 false, i1 false}
!89 = !{ptr @.str.30, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../fs/ext4/sysfs.c", i32 215, i32 1}
!91 = !{ptr @ext4_attr_mb_stream_req, !90, !"ext4_attr_mb_stream_req", i1 false, i1 false}
!92 = !{ptr @.str.31, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../fs/ext4/sysfs.c", i32 216, i32 1}
!94 = !{ptr @ext4_attr_mb_group_prealloc, !93, !"ext4_attr_mb_group_prealloc", i1 false, i1 false}
!95 = !{ptr @.str.32, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../fs/ext4/sysfs.c", i32 217, i32 1}
!97 = !{ptr @ext4_attr_mb_max_inode_prealloc, !96, !"ext4_attr_mb_max_inode_prealloc", i1 false, i1 false}
!98 = !{ptr @.str.33, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../fs/ext4/sysfs.c", i32 218, i32 1}
!100 = !{ptr @ext4_attr_mb_max_linear_groups, !99, !"ext4_attr_mb_max_linear_groups", i1 false, i1 false}
!101 = !{ptr @.str.34, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../fs/ext4/sysfs.c", i32 251, i32 1}
!103 = !{ptr @ext4_attr_max_writeback_mb_bump, !102, !"ext4_attr_max_writeback_mb_bump", i1 false, i1 false}
!104 = !{ptr @old_bump_val, !105, !"old_bump_val", i1 false, i1 false}
!105 = !{!"../fs/ext4/sysfs.c", i32 250, i32 21}
!106 = !{ptr @.str.36, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../fs/ext4/sysfs.c", i32 219, i32 1}
!108 = !{ptr @ext4_attr_extent_max_zeroout_kb, !107, !"ext4_attr_extent_max_zeroout_kb", i1 false, i1 false}
!109 = !{ptr @.str.37, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../fs/ext4/sysfs.c", i32 220, i32 1}
!111 = !{ptr @ext4_attr_trigger_fs_error, !110, !"ext4_attr_trigger_fs_error", i1 false, i1 false}
!112 = !{ptr @.str.38, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../fs/ext4/sysfs.c", i32 221, i32 1}
!114 = !{ptr @ext4_attr_err_ratelimit_interval_ms, !113, !"ext4_attr_err_ratelimit_interval_ms", i1 false, i1 false}
!115 = !{ptr @.str.39, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../fs/ext4/sysfs.c", i32 222, i32 1}
!117 = !{ptr @ext4_attr_err_ratelimit_burst, !116, !"ext4_attr_err_ratelimit_burst", i1 false, i1 false}
!118 = !{ptr @.str.40, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../fs/ext4/sysfs.c", i32 223, i32 1}
!120 = !{ptr @ext4_attr_warning_ratelimit_interval_ms, !119, !"ext4_attr_warning_ratelimit_interval_ms", i1 false, i1 false}
!121 = !{ptr @.str.41, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../fs/ext4/sysfs.c", i32 224, i32 1}
!123 = !{ptr @ext4_attr_warning_ratelimit_burst, !122, !"ext4_attr_warning_ratelimit_burst", i1 false, i1 false}
!124 = !{ptr @.str.42, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../fs/ext4/sysfs.c", i32 225, i32 1}
!126 = !{ptr @ext4_attr_msg_ratelimit_interval_ms, !125, !"ext4_attr_msg_ratelimit_interval_ms", i1 false, i1 false}
!127 = !{ptr @.str.43, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../fs/ext4/sysfs.c", i32 226, i32 1}
!129 = !{ptr @ext4_attr_msg_ratelimit_burst, !128, !"ext4_attr_msg_ratelimit_burst", i1 false, i1 false}
!130 = !{ptr @ext4_attr_errors_count, !131, !"ext4_attr_errors_count", i1 false, i1 false}
!131 = !{!"../fs/ext4/sysfs.c", i32 232, i32 1}
!132 = !{ptr @.str.44, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../fs/ext4/sysfs.c", i32 230, i32 1}
!134 = !{ptr @ext4_attr_warning_count, !133, !"ext4_attr_warning_count", i1 false, i1 false}
!135 = !{ptr @.str.45, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../fs/ext4/sysfs.c", i32 231, i32 1}
!137 = !{ptr @ext4_attr_msg_count, !136, !"ext4_attr_msg_count", i1 false, i1 false}
!138 = !{ptr @.str.46, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../fs/ext4/sysfs.c", i32 235, i32 1}
!140 = !{ptr @ext4_attr_first_error_ino, !139, !"ext4_attr_first_error_ino", i1 false, i1 false}
!141 = !{ptr @.str.47, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../fs/ext4/sysfs.c", i32 236, i32 1}
!143 = !{ptr @ext4_attr_last_error_ino, !142, !"ext4_attr_last_error_ino", i1 false, i1 false}
!144 = !{ptr @.str.48, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../fs/ext4/sysfs.c", i32 237, i32 1}
!146 = !{ptr @ext4_attr_first_error_block, !145, !"ext4_attr_first_error_block", i1 false, i1 false}
!147 = !{ptr @.str.49, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../fs/ext4/sysfs.c", i32 238, i32 1}
!149 = !{ptr @ext4_attr_last_error_block, !148, !"ext4_attr_last_error_block", i1 false, i1 false}
!150 = !{ptr @.str.50, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../fs/ext4/sysfs.c", i32 239, i32 1}
!152 = !{ptr @ext4_attr_first_error_line, !151, !"ext4_attr_first_error_line", i1 false, i1 false}
!153 = !{ptr @.str.51, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../fs/ext4/sysfs.c", i32 240, i32 1}
!155 = !{ptr @ext4_attr_last_error_line, !154, !"ext4_attr_last_error_line", i1 false, i1 false}
!156 = !{ptr @.str.52, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../fs/ext4/sysfs.c", i32 241, i32 1}
!158 = !{ptr @ext4_attr_first_error_func, !157, !"ext4_attr_first_error_func", i1 false, i1 false}
!159 = !{ptr @.str.53, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../fs/ext4/sysfs.c", i32 242, i32 1}
!161 = !{ptr @ext4_attr_last_error_func, !160, !"ext4_attr_last_error_func", i1 false, i1 false}
!162 = !{ptr @.str.54, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../fs/ext4/sysfs.c", i32 233, i32 1}
!164 = !{ptr @ext4_attr_first_error_errcode, !163, !"ext4_attr_first_error_errcode", i1 false, i1 false}
!165 = !{ptr @.str.55, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../fs/ext4/sysfs.c", i32 234, i32 1}
!167 = !{ptr @ext4_attr_last_error_errcode, !166, !"ext4_attr_last_error_errcode", i1 false, i1 false}
!168 = !{ptr @.str.56, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../fs/ext4/sysfs.c", i32 243, i32 1}
!170 = !{ptr @ext4_attr_first_error_time, !169, !"ext4_attr_first_error_time", i1 false, i1 false}
!171 = !{ptr @.str.57, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../fs/ext4/sysfs.c", i32 244, i32 1}
!173 = !{ptr @ext4_attr_last_error_time, !172, !"ext4_attr_last_error_time", i1 false, i1 false}
!174 = !{ptr @.str.58, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../fs/ext4/sysfs.c", i32 245, i32 1}
!176 = !{ptr @ext4_attr_journal_task, !175, !"ext4_attr_journal_task", i1 false, i1 false}
!177 = !{ptr @.str.59, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../fs/ext4/sysfs.c", i32 228, i32 1}
!179 = !{ptr @ext4_attr_simulate_fail, !178, !"ext4_attr_simulate_fail", i1 false, i1 false}
!180 = !{ptr @.str.60, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../fs/ext4/sysfs.c", i32 246, i32 1}
!182 = !{ptr @ext4_attr_mb_prefetch, !181, !"ext4_attr_mb_prefetch", i1 false, i1 false}
!183 = !{ptr @.str.61, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../fs/ext4/sysfs.c", i32 247, i32 1}
!185 = !{ptr @ext4_attr_mb_prefetch_limit, !184, !"ext4_attr_mb_prefetch_limit", i1 false, i1 false}
!186 = !{ptr @.str.62, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../fs/ext4/sysfs.c", i32 248, i32 1}
!188 = !{ptr @ext4_attr_last_trim_minblks, !187, !"ext4_attr_last_trim_minblks", i1 false, i1 false}
!189 = !{ptr @ext4_feat_ktype, !190, !"ext4_feat_ktype", i1 false, i1 false}
!190 = !{!"../fs/ext4/sysfs.c", i32 505, i32 25}
!191 = !{ptr @ext4_feat_groups, !192, !"ext4_feat_groups", i1 false, i1 false}
!192 = !{!"../fs/ext4/sysfs.c", i32 345, i32 1}
!193 = !{ptr @ext4_feat_group, !192, !"ext4_feat_group", i1 false, i1 false}
!194 = !{ptr @ext4_feat_attrs, !195, !"ext4_feat_attrs", i1 false, i1 false}
!195 = !{!"../fs/ext4/sysfs.c", i32 324, i32 26}
!196 = !{ptr @.str.63, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../fs/ext4/sysfs.c", i32 305, i32 1}
!198 = !{ptr @ext4_attr_lazy_itable_init, !197, !"ext4_attr_lazy_itable_init", i1 false, i1 false}
!199 = !{ptr @.str.64, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../fs/ext4/sysfs.c", i32 306, i32 1}
!201 = !{ptr @ext4_attr_batched_discard, !200, !"ext4_attr_batched_discard", i1 false, i1 false}
!202 = !{ptr @.str.65, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../fs/ext4/sysfs.c", i32 307, i32 1}
!204 = !{ptr @ext4_attr_meta_bg_resize, !203, !"ext4_attr_meta_bg_resize", i1 false, i1 false}
!205 = !{ptr @.str.66, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../fs/ext4/sysfs.c", i32 309, i32 1}
!207 = !{ptr @ext4_attr_encryption, !206, !"ext4_attr_encryption", i1 false, i1 false}
!208 = !{ptr @.str.67, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../fs/ext4/sysfs.c", i32 310, i32 1}
!210 = !{ptr @ext4_attr_test_dummy_encryption_v2, !209, !"ext4_attr_test_dummy_encryption_v2", i1 false, i1 false}
!211 = !{ptr @.str.68, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../fs/ext4/sysfs.c", i32 313, i32 1}
!213 = !{ptr @ext4_attr_casefold, !212, !"ext4_attr_casefold", i1 false, i1 false}
!214 = !{ptr @.str.69, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../fs/ext4/sysfs.c", i32 316, i32 1}
!216 = !{ptr @ext4_attr_verity, !215, !"ext4_attr_verity", i1 false, i1 false}
!217 = !{ptr @.str.70, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../fs/ext4/sysfs.c", i32 318, i32 1}
!219 = !{ptr @ext4_attr_metadata_csum_seed, !218, !"ext4_attr_metadata_csum_seed", i1 false, i1 false}
!220 = !{ptr @.str.71, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../fs/ext4/sysfs.c", i32 319, i32 1}
!222 = !{ptr @ext4_attr_fast_commit, !221, !"ext4_attr_fast_commit", i1 false, i1 false}
!223 = !{ptr @.str.72, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../fs/ext4/sysfs.c", i32 321, i32 1}
!225 = !{ptr @ext4_attr_encrypted_casefold, !224, !"ext4_attr_encrypted_casefold", i1 false, i1 false}
!226 = !{ptr @proc_dirname, !227, !"proc_dirname", i1 false, i1 false}
!227 = !{!"../fs/ext4/sysfs.c", i32 48, i32 19}
!228 = !{i32 1, !"wchar_size", i32 2}
!229 = !{i32 1, !"min_enum_size", i32 4}
!230 = !{i32 8, !"branch-target-enforcement", i32 0}
!231 = !{i32 8, !"sign-return-address", i32 0}
!232 = !{i32 8, !"sign-return-address-all", i32 0}
!233 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!234 = !{i32 7, !"uwtable", i32 1}
!235 = !{i32 7, !"frame-pointer", i32 2}
!236 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!237 = !{!"auto-init"}
!238 = !{i32 0, i32 33}
