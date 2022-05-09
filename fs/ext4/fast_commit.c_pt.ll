; ModuleID = '/llk/IR_all_yes/fs/ext4/fast_commit.c_pt.bc'
source_filename = "../fs/ext4/fast_commit.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.74 }
%struct.atomic_t = type { i32 }
%union.anon.74 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.78, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.79, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.80, ptr, %struct.address_space, %struct.list_head, %union.anon.81, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.78 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.79 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.80 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.81 = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ext4_sb_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, i32, i64, %struct.atomic64_t, %struct.kuid_t, %struct.kgid_t, i16, i16, i32, i32, i32, i32, i32, i32, [4 x i32], i32, i32, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, ptr, ptr, %struct.kobject, %struct.completion, ptr, ptr, ptr, i32, %struct.mutex, %struct.list_head, %struct.ext4_orphan_info, i32, i32, i32, ptr, [3 x ptr], i32, i32, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.work_struct, %struct.atomic_t, %struct.rb_root, %struct.rwlock_t, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x %struct.atomic64_t], [4 x %struct.atomic64_t], [4 x %struct.atomic64_t], %struct.atomic_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, i32, i64, i32, i32, ptr, i32, ptr, %struct.timer_list, ptr, i32, ptr, i32, ptr, i32, %struct.shrinker, %struct.list_head, i32, %struct.ext4_es_stats, ptr, ptr, [120 x i8], %struct.spinlock, [1 x %struct.ext4_journal_trigger], %struct.ratelimit_state, %struct.ratelimit_state, %struct.ratelimit_state, %struct.atomic_t, %struct.atomic_t, %struct.fscrypt_dummy_policy, %struct.percpu_rw_semaphore, ptr, i64, i32, i32, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i64, ptr, i64, i32, i32, i32, i64, ptr, i64, %struct.work_struct, %struct.atomic_t, [2 x %struct.list_head], [2 x %struct.list_head], i32, %struct.spinlock, ptr, %struct.ext4_fc_stats, i32, i32, %struct.ext4_fc_replay_state, [8 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ext4_orphan_info = type { i32, i32, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ext4_es_stats = type { i32, %struct.percpu_counter, %struct.percpu_counter, i64, i64, %struct.percpu_counter, %struct.percpu_counter }
%struct.ext4_journal_trigger = type { %struct.jbd2_buffer_trigger_type, ptr }
%struct.jbd2_buffer_trigger_type = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.fscrypt_dummy_policy = type { ptr }
%struct.ext4_fc_stats = type { [10 x i32], i32, i32, i32, i32, i32, i64 }
%struct.ext4_fc_replay_state = type { i32, i32, i32, i32, i32, ptr, i32, i32, i32, ptr, i32, i32 }
%struct.wait_bit_queue_entry = type { %struct.wait_bit_key, %struct.wait_queue_entry }
%struct.wait_bit_key = type { ptr, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.transaction_s = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, i32, i32, i32, %struct.transaction_chp_stats_s, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, i32, i64, i8, i32, %struct.list_head }
%struct.transaction_chp_stats_s = type { i32, i32, i32, i32 }
%struct.journal_s = type { i32, i32, i32, %struct.mutex, ptr, ptr, i32, %struct.rwlock_t, i32, %struct.mutex, ptr, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.mutex, [64 x ptr], %struct.shrinker, %struct.percpu_counter, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i64, [56 x i8], ptr, i32, %struct.atomic_t, %struct.spinlock, ptr, i32, i32, i32, i32, [16 x i8], ptr, i32, i32, i32, %struct.timer_list, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, i32, i32, i32, i64, i32, i32, ptr, ptr, ptr, %struct.spinlock, ptr, %struct.transaction_stats_s, i32, ptr, ptr, i32, %struct.lockdep_map, ptr, ptr }
%struct.transaction_stats_s = type { i32, i32, %struct.transaction_run_stats_s }
%struct.transaction_run_stats_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.__track_dentry_update_args = type { ptr, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.76, %struct.list_head, %struct.list_head, %union.anon.77 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.spinlock, i32 }
%union.anon.76 = type { %struct.list_head }
%union.anon.77 = type { %struct.hlist_node }
%struct.ext4_fc_dentry_update = type { i32, i32, i32, %struct.qstr, [36 x i8], %struct.list_head }
%struct.anon.88 = type { %struct.shash_desc, [4 x i8], [4 x i8] }
%struct.shash_desc = type { ptr, [4 x i8], [0 x ptr] }
%struct.ext4_fc_tl = type { i16, i16 }
%struct.ext4_fc_tail = type { i32, i32 }
%struct.ext4_fc_head = type { i32, i32 }
%struct.blk_plug = type { ptr, ptr, i16, i16, i8, i8, i8, %struct.list_head }
%struct.ext4_fc_alloc_region = type { i32, i64, i32, i32 }
%struct.ext4_iloc = type { ptr, i32, i32 }
%struct.ext4_map_blocks = type { i64, i32, i32, i32 }
%struct.dentry_info_args = type { i32, i32, i32, i32, ptr }
%struct.ext4_extent = type { i32, i16, i16, i32 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.ext4_inode = type { i16, i16, i32, i32, i32, i32, i32, i16, i16, i32, i32, %union.anon.89, [15 x i32], i32, i32, i32, i32, %union.anon.93, i16, i16, i32, i32, i32, i32, i32, i32, i32 }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32 }
%union.anon.93 = type { %struct.anon.95 }
%struct.anon.95 = type { i16, i16, i16, i16, i32 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.ext4_fc_add_range = type { i32, [12 x i8] }
%struct.ext4_fc_del_range = type { i32, i32, i32 }
%struct.ext4_fc_inode = type { i32, [0 x i8] }
%struct.ext4_fc_dentry_info = type { i32, i32, [0 x i8] }
%struct.ext4_ext_path = type { i64, i16, i16, ptr, ptr, ptr, ptr }
%struct.anon.3 = type { i32, i32 }

@ext4_fc_init_inode.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&ei->i_fc_wait\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fs/ext4/fast_commit.c\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"fc stats:\0A%ld commits\0A%ld ineligible\0A%ld numblks\0A%lluus avg_commit_time\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Ineligible reasons:\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\22%s\22:\09%d\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ext4_fc_dentry_update\00", [42 x i8] zeroinitializer }, align 32
@ext4_fc_dentry_cachep = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@__tracepoint_ext4_fc_track_unlink = external dso_local global %struct.tracepoint, align 4
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/trace/events/ext4.h\00", [36 x i8] zeroinitializer }, align 32
@trace_ext4_fc_track_unlink.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_ext4_fc_track_link = external dso_local global %struct.tracepoint, align 4
@trace_ext4_fc_track_link.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ext4_fc_track_create = external dso_local global %struct.tracepoint, align 4
@trace_ext4_fc_track_create.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ext4_fc_track_inode = external dso_local global %struct.tracepoint, align 4
@trace_ext4_fc_track_inode.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ext4_fc_track_range = external dso_local global %struct.tracepoint, align 4
@trace_ext4_fc_track_range.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ext4_fc_commit_start = external dso_local global %struct.tracepoint, align 4
@trace_ext4_fc_commit_start.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.ext4_fc_update_stats = private unnamed_addr constant [21 x i8] c"ext4_fc_update_stats\00", align 1
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Fast commit ended with status = %d\00", [61 x i8] zeroinitializer }, align 32
@__tracepoint_ext4_fc_commit_stop = external dso_local global %struct.tracepoint, align 4
@trace_ext4_fc_commit_stop.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/buffer_head.h\00", [36 x i8] zeroinitializer }, align 32
@__func__.ext4_fc_write_inode_data = private unnamed_addr constant [25 x i8] c"ext4_fc_write_inode_data\00", align 1
@.str.11 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: will try writing %d to %d for inode %ld\0A\00", [51 x i8] zeroinitializer }, align 32
@__func__.ext4_fc_replay = private unnamed_addr constant [15 x i8] c"ext4_fc_replay\00", align 1
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Replay stops\0A\00", [18 x i8] zeroinitializer }, align 32
@ext4_fc_replay._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @__func__.ext4_fc_replay, ptr @.str.1, i32 2056, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014Dropping fc block %d because max_replay set\0A\00", [49 x i8] zeroinitializer }, align 32
@ext4_fc_replay._entry_ptr = internal global ptr @ext4_fc_replay._entry, section ".printk_index", align 4
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Replay phase, tag:%s\0A\00", [42 x i8] zeroinitializer }, align 32
@__func__.ext4_fc_replay_scan = private unnamed_addr constant [20 x i8] c"ext4_fc_replay_scan\00", align 1
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Scan phase, tag:%s, blk %lld\0A\00", [34 x i8] zeroinitializer }, align 32
@__tracepoint_ext4_fc_replay_scan = external dso_local global %struct.tracepoint, align 4
@trace_ext4_fc_replay_scan.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.ext4_fc_set_bitmaps_and_counters = private unnamed_addr constant [33 x i8] c"ext4_fc_set_bitmaps_and_counters\00", align 1
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Inode %d not found.\00", [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ADD_ENTRY\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DEL_ENTRY\00", [22 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ADD_RANGE\00", [22 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CREAT_DENTRY\00", [19 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DEL_RANGE\00", [22 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"INODE\00", [26 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PAD\00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TAIL\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HEAD\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ERROR\00", [26 x i8] zeroinitializer }, align 32
@__func__.ext4_fc_replay_link = private unnamed_addr constant [20 x i8] c"ext4_fc_replay_link\00", align 1
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Inode not found.\00", [47 x i8] zeroinitializer }, align 32
@__func__.ext4_fc_replay_link_internal = private unnamed_addr constant [29 x i8] c"ext4_fc_replay_link_internal\00", align 1
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Dir with inode %d not found.\00", [35 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to obtain dentry\00", [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Inode dentry not created.\00", [38 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Failed to link\0A\00", [16 x i8] zeroinitializer }, align 32
@__func__.ext4_fc_replay_unlink = private unnamed_addr constant [22 x i8] c"ext4_fc_replay_unlink\00", align 1
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Inode %d not found\00", [45 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Dir with inode  %d not found\00", [35 x i8] zeroinitializer }, align 32
@__func__.ext4_fc_replay_add_range = private unnamed_addr constant [25 x i8] c"ext4_fc_replay_add_range\00", align 1
@.str.34 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"ADD_RANGE, lblk %d, pblk %lld, len %d, unwritten %d, inode %ld\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Converting from %ld to %d %lld\00", [33 x i8] zeroinitializer }, align 32
@__func__.ext4_fc_replay_create = private unnamed_addr constant [22 x i8] c"ext4_fc_replay_create\00", align 1
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"inode %d not found.\00", [44 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Dir %d not found.\00", [46 x i8] zeroinitializer }, align 32
@__func__.ext4_fc_replay_del_range = private unnamed_addr constant [25 x i8] c"ext4_fc_replay_del_range\00", align 1
@.str.38 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"DEL_RANGE, inode %ld, lblk %d, len %d\0A\00", [57 x i8] zeroinitializer }, align 32
@__func__.ext4_fc_replay_inode = private unnamed_addr constant [21 x i8] c"ext4_fc_replay_inode\00", align 1
@__tracepoint_ext4_fc_replay = external dso_local global %struct.tracepoint, align 4
@trace_ext4_fc_replay.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ext4_fc_stats = external dso_local global %struct.tracepoint, align 4
@trace_ext4_fc_stats.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.39 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Extended attributes changed\00", [36 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Cross rename\00", [19 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Journal flag changed\00", [43 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Insufficient memory\00", [44 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Swap boot\00", [22 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Resize\00", [25 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Dir renamed\00", [20 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Falloc range op\00", [16 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Data journalling\00", [47 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"FC Commit Failed\00", [47 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967182]
@__sancov_gen_cov_switch_values.49 = internal global [11 x i64] [i64 9, i64 16, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.50 = internal global [11 x i64] [i64 9, i64 16, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967279]
@___asan_gen_.52 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 202, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 329, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 2156, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 2160, i32 16 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 2162, i32 19 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 2170, i32 26 }
@___asan_gen_.73 = private unnamed_addr constant [22 x i8] c"ext4_fc_dentry_cachep\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 169, i32 27 }
@___asan_gen_.80 = private unnamed_addr constant [31 x i8] c"../include/trace/events/ext4.h\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 2789, i32 1 }
@___asan_gen_.83 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 108, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 1095, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant [31 x i8] c"../include/linux/buffer_head.h\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 366, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 839, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 2049, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 2056, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 2073, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 1954, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 1825, i32 4 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 161, i32 10 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 163, i32 10 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 165, i32 10 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 167, i32 10 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 169, i32 10 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 171, i32 10 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 173, i32 10 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 175, i32 10 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 177, i32 10 }
@___asan_gen_.140 = private unnamed_addr constant [25 x i8] c"../fs/ext4/fast_commit.h\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 179, i32 10 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 1390, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 1329, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 1336, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 1343, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 1356, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 1297, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 1304, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 1664, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 1725, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 1552, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 1565, i32 4 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 1776, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 2134, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 2135, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 2136, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 2137, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 2138, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 2139, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 2140, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 2141, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 2142, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.206 = private constant [25 x i8] c"../fs/ext4/fast_commit.c\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 2143, i32 2 }
@llvm.compiler.used = appending global [53 x ptr] [ptr @ext4_fc_replay._entry, ptr @ext4_fc_replay._entry_ptr, ptr @ext4_fc_init_inode.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @ext4_fc_dentry_cachep, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48], section "llvm.metadata"
@0 = internal global [52 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_fc_init_inode.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_fc_dentry_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_fc_replay._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ext4_fc_init_inode(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %i_fc_lblk_start.i = getelementptr i8, ptr %inode, i32 -264
  %0 = ptrtoint ptr %i_fc_lblk_start.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %i_fc_lblk_start.i, align 8
  %i_fc_lblk_len.i = getelementptr i8, ptr %inode, i32 -260
  %1 = ptrtoint ptr %i_fc_lblk_len.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %i_fc_lblk_len.i, align 4
  %i_state_flags.i = getelementptr i8, ptr %inode, i32 -384
  tail call void @_clear_bit(i32 noundef 11, ptr noundef %i_state_flags.i) #14
  %i_fc_list = getelementptr i8, ptr %inode, i32 -272
  %2 = ptrtoint ptr %i_fc_list to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %i_fc_list, ptr %i_fc_list, align 4
  %prev.i = getelementptr i8, ptr %inode, i32 -268
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %i_fc_list, ptr %prev.i, align 4
  %i_fc_wait = getelementptr i8, ptr %inode, i32 -252
  tail call void @__init_waitqueue_head(ptr noundef %i_fc_wait, ptr noundef nonnull @.str, ptr noundef nonnull @ext4_fc_init_inode.__key) #14
  %i_fc_updates = getelementptr i8, ptr %inode, i32 -256
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_fc_updates, i32 noundef 4) #14
  %4 = ptrtoint ptr %i_fc_updates to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 0, ptr %i_fc_updates, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ext4_fc_start_update(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt2 = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %s_mount_opt2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_mount_opt2, align 16
  %and = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %s_mount_state = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 25
  %6 = ptrtoint ptr %s_mount_state to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %s_mount_state, align 8
  %8 = and i16 %7, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool4.not = icmp eq i16 %8, 0
  br i1 %tobool4.not, label %restart.preheader, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

restart.preheader:                                ; preds = %lor.lhs.false
  %i_state_flags.i = getelementptr i8, ptr %inode, i32 -384
  %9 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i2628 = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 33
  %11 = ptrtoint ptr %s_fs_info.i2628 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_fs_info.i2628, align 16
  %s_fc_lock29 = getelementptr inbounds %struct.ext4_sb_info, ptr %12, i32 0, i32 163
  tail call void @_raw_spin_lock(ptr noundef %s_fc_lock29) #14
  %i_fc_list = getelementptr i8, ptr %inode, i32 -272
  %13 = ptrtoint ptr %i_fc_list to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %i_fc_list, align 4
  %cmp.i.not30 = icmp eq ptr %14, %i_fc_list
  br i1 %cmp.i.not30, label %restart.preheader.out_crit_edge, label %restart.preheader.if.end10_crit_edge

restart.preheader.if.end10_crit_edge:             ; preds = %restart.preheader
  br label %if.end10

restart.preheader.out_crit_edge:                  ; preds = %restart.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end10:                                         ; preds = %if.then13.if.end10_crit_edge, %restart.preheader.if.end10_crit_edge
  %15 = ptrtoint ptr %i_state_flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %i_state_flags.i, align 4
  %17 = and i32 %16, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool12.not = icmp eq i32 %17, 0
  br i1 %tobool12.not, label %if.end10.out_crit_edge, label %if.then13

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then13:                                        ; preds = %if.end10
  tail call fastcc void @ext4_fc_wait_committing_inode(ptr noundef %inode)
  %18 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i26 = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 33
  %20 = ptrtoint ptr %s_fs_info.i26 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %s_fs_info.i26, align 16
  %s_fc_lock = getelementptr inbounds %struct.ext4_sb_info, ptr %21, i32 0, i32 163
  tail call void @_raw_spin_lock(ptr noundef %s_fc_lock) #14
  %22 = ptrtoint ptr %i_fc_list to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %i_fc_list, align 4
  %cmp.i.not = icmp eq ptr %23, %i_fc_list
  br i1 %cmp.i.not, label %if.then13.out_crit_edge, label %if.then13.if.end10_crit_edge

if.then13.if.end10_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

if.then13.out_crit_edge:                          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

out:                                              ; preds = %if.then13.out_crit_edge, %if.end10.out_crit_edge, %restart.preheader.out_crit_edge
  %i_fc_updates = getelementptr i8, ptr %inode, i32 -256
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_fc_updates, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %i_fc_updates, i32 1, i32 3, i32 1) #14
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_fc_updates, ptr %i_fc_updates, i32 1, ptr elementtype(i32) %i_fc_updates) #14, !srcloc !164
  %25 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i27 = getelementptr inbounds %struct.super_block, ptr %26, i32 0, i32 33
  %27 = ptrtoint ptr %s_fs_info.i27 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %s_fs_info.i27, align 16
  %s_fc_lock17 = getelementptr inbounds %struct.ext4_sb_info, ptr %28, i32 0, i32 163
  tail call void @_raw_spin_unlock(ptr noundef %s_fc_lock17) #14
  br label %cleanup

cleanup:                                          ; preds = %out, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ext4_fc_wait_committing_inode(ptr noundef %inode) unnamed_addr #0 align 64 {
entry:
  %wait = alloca %struct.wait_bit_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %wait) #14
  %0 = getelementptr inbounds %struct.wait_bit_key, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_bit_key, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %wait, i32 0, i32 1
  %3 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %wait, i32 0, i32 1, i32 1
  %4 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %wait, i32 0, i32 1, i32 2
  %5 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %wait, i32 0, i32 1, i32 3
  %6 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %wait, i32 0, i32 1, i32 3, i32 1
  %i_state_flags = getelementptr i8, ptr %inode, i32 -384
  %7 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %i_state_flags, ptr %wait, align 4
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 11, ptr %0, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %1, align 4
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %2, align 4
  %11 = tail call i32 @llvm.read_register.i32(metadata !154) #14
  %and.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %3, align 4
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @wake_bit_function, ptr %4, align 4
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %5, ptr %5, align 4
  %18 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %5, ptr %6, align 4
  %call8 = call ptr @bit_waitqueue(ptr noundef %i_state_flags, i32 noundef 11) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %19 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not = icmp eq i32 %19, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.rhs:                                         ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %20 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %21, i32 0, i32 33
  %22 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_fs_info.i, align 16
  %dep_map = getelementptr inbounds %struct.ext4_sb_info, ptr %23, i32 0, i32 163, i32 0, i32 0, i32 4
  %call.i = call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !165

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 224, i32 noundef 9, ptr noundef null) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  call void @prepare_to_wait(ptr noundef %call8, ptr noundef %2, i32 noundef 2) #14
  %i_sb36 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %24 = ptrtoint ptr %i_sb36 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i_sb36, align 4
  %s_fs_info.i45 = getelementptr inbounds %struct.super_block, ptr %25, i32 0, i32 33
  %26 = ptrtoint ptr %s_fs_info.i45 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %s_fs_info.i45, align 16
  %s_fc_lock38 = getelementptr inbounds %struct.ext4_sb_info, ptr %27, i32 0, i32 163
  call void @_raw_spin_unlock(ptr noundef %s_fc_lock38) #14
  call void @schedule() #14
  call void @finish_wait(ptr noundef %call8, ptr noundef %2) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %wait) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ext4_fc_stop_update(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt2 = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %s_mount_opt2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_mount_opt2, align 16
  %and = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %s_mount_state = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 25
  %6 = ptrtoint ptr %s_mount_state to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %s_mount_state, align 8
  %8 = and i16 %7, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool4.not = icmp eq i16 %8, 0
  br i1 %tobool4.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %i_fc_updates = getelementptr i8, ptr %inode, i32 -256
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_fc_updates, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !166
  tail call void @llvm.prefetch.p0(ptr %i_fc_updates, i32 1, i32 3, i32 1) #14
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_fc_updates, ptr %i_fc_updates, i32 1, ptr elementtype(i32) %i_fc_updates) #14, !srcloc !167
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %9, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !168
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %i_fc_wait = getelementptr i8, ptr %inode, i32 -252
  tail call void @__wake_up(ptr noundef %i_fc_wait, i32 noundef 3, i32 noundef 0, ptr noundef null) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ext4_fc_del(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt2 = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %s_mount_opt2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_mount_opt2, align 16
  %and = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %s_mount_state = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 25
  %6 = ptrtoint ptr %s_mount_state to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %s_mount_state, align 8
  %8 = and i16 %7, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool4.not = icmp eq i16 %8, 0
  br i1 %tobool4.not, label %restart.preheader, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

restart.preheader:                                ; preds = %lor.lhs.false
  %9 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i3136 = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 33
  %11 = ptrtoint ptr %s_fs_info.i3136 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_fs_info.i3136, align 16
  %s_fc_lock37 = getelementptr inbounds %struct.ext4_sb_info, ptr %12, i32 0, i32 163
  tail call void @_raw_spin_lock(ptr noundef %s_fc_lock37) #14
  %i_fc_list = getelementptr i8, ptr %inode, i32 -272
  %13 = ptrtoint ptr %i_fc_list to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %i_fc_list, align 4
  %cmp.i.not38 = icmp eq ptr %14, %i_fc_list
  br i1 %cmp.i.not38, label %restart.preheader.cleanup.sink.split_crit_edge, label %if.end13.lr.ph

restart.preheader.cleanup.sink.split_crit_edge:   ; preds = %restart.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

if.end13.lr.ph:                                   ; preds = %restart.preheader
  %i_state_flags.i = getelementptr i8, ptr %inode, i32 -384
  br label %if.end13

if.end13:                                         ; preds = %if.then16.if.end13_crit_edge, %if.end13.lr.ph
  %15 = ptrtoint ptr %i_state_flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %i_state_flags.i, align 4
  %17 = and i32 %16, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool15.not = icmp eq i32 %17, 0
  br i1 %tobool15.not, label %if.end17, label %if.then16

if.then16:                                        ; preds = %if.end13
  tail call fastcc void @ext4_fc_wait_committing_inode(ptr noundef %inode)
  %18 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i31 = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 33
  %20 = ptrtoint ptr %s_fs_info.i31 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %s_fs_info.i31, align 16
  %s_fc_lock = getelementptr inbounds %struct.ext4_sb_info, ptr %21, i32 0, i32 163
  tail call void @_raw_spin_lock(ptr noundef %s_fc_lock) #14
  %22 = ptrtoint ptr %i_fc_list to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %i_fc_list, align 4
  %cmp.i.not = icmp eq ptr %23, %i_fc_list
  br i1 %cmp.i.not, label %if.then16.cleanup.sink.split_crit_edge, label %if.then16.if.end13_crit_edge

if.then16.if.end13_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

if.then16.cleanup.sink.split_crit_edge:           ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

if.end17:                                         ; preds = %if.end13
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %i_fc_list) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.end17.list_del_init.exit_crit_edge

if.end17.list_del_init.exit_crit_edge:            ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr i8, ptr %inode, i32 -268
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i, align 4
  %26 = ptrtoint ptr %i_fc_list to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i_fc_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev1.i.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %25, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end17.list_del_init.exit_crit_edge
  %30 = ptrtoint ptr %i_fc_list to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %i_fc_list, ptr %i_fc_list, align 4
  %prev.i3.i = getelementptr i8, ptr %inode, i32 -268
  %31 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %i_fc_list, ptr %prev.i3.i, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %list_del_init.exit, %if.then16.cleanup.sink.split_crit_edge, %restart.preheader.cleanup.sink.split_crit_edge
  %32 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i33 = getelementptr inbounds %struct.super_block, ptr %33, i32 0, i32 33
  %34 = ptrtoint ptr %s_fs_info.i33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %s_fs_info.i33, align 16
  %s_fc_lock21 = getelementptr inbounds %struct.ext4_sb_info, ptr %35, i32 0, i32 163
  tail call void @_raw_spin_unlock(ptr noundef %s_fc_lock21) #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ext4_fc_mark_ineligible(ptr nocapture noundef readonly %sb, i32 noundef %reason, ptr noundef readonly %handle) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt2 = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %s_mount_opt2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_mount_opt2, align 16
  %and = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %s_mount_state = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 25
  %4 = ptrtoint ptr %s_mount_state to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %s_mount_state, align 8
  %6 = and i16 %5, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool4.not = icmp eq i16 %6, 0
  br i1 %tobool4.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %s_mount_flags.i = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 19
  tail call void @_set_bit(i32 noundef 2, ptr noundef %s_mount_flags.i) #14
  %tobool5.not = icmp eq ptr %handle, null
  %cmp.i = icmp ugt ptr %handle, inttoptr (i32 -4096 to ptr)
  %or.cond = or i1 %tobool5.not, %cmp.i
  br i1 %or.cond, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %handle, align 4
  %t_tid = getelementptr inbounds %struct.transaction_s, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %t_tid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %t_tid, align 4
  br label %if.end15

if.else:                                          ; preds = %if.end
  %s_journal = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 47
  %11 = ptrtoint ptr %s_journal to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_journal, align 8
  %j_state_lock = getelementptr inbounds %struct.journal_s, ptr %12, i32 0, i32 7
  tail call void @_raw_read_lock(ptr noundef %j_state_lock) #14
  %13 = ptrtoint ptr %s_journal to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_journal, align 8
  %j_running_transaction = getelementptr inbounds %struct.journal_s, ptr %14, i32 0, i32 10
  %15 = ptrtoint ptr %j_running_transaction to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %j_running_transaction, align 8
  %tobool9.not = icmp eq ptr %16, null
  br i1 %tobool9.not, label %if.else.cond.end_crit_edge, label %cond.true

if.else.cond.end_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

cond.true:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %t_tid12 = getelementptr inbounds %struct.transaction_s, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %t_tid12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %t_tid12, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.else.cond.end_crit_edge
  %cond = phi i32 [ %18, %cond.true ], [ 0, %if.else.cond.end_crit_edge ]
  %j_state_lock14 = getelementptr inbounds %struct.journal_s, ptr %14, i32 0, i32 7
  tail call void @_raw_read_unlock(ptr noundef %j_state_lock14) #14
  br label %if.end15

if.end15:                                         ; preds = %cond.end, %if.then7
  %tid.0 = phi i32 [ %cond, %cond.end ], [ %10, %if.then7 ]
  %s_fc_lock = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 163
  tail call void @_raw_spin_lock(ptr noundef %s_fc_lock) #14
  %s_fc_ineligible_tid = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 166
  %19 = ptrtoint ptr %s_fc_ineligible_tid to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %s_fc_ineligible_tid, align 64
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %tid.0)
  %cmp = icmp ult i32 %20, %tid.0
  br i1 %cmp, label %if.then17, label %if.end15.if.end19_crit_edge

if.end15.if.end19_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  %21 = ptrtoint ptr %s_fc_ineligible_tid to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %tid.0, ptr %s_fc_ineligible_tid, align 64
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end15.if.end19_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %s_fc_lock) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %reason)
  %cmp21 = icmp sgt i32 %reason, 9
  br i1 %cmp21, label %do.end, label %if.end19.if.end37_crit_edge, !prof !165

if.end19.if.end37_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end37

do.end:                                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 329, i32 noundef 9, ptr noundef null) #14
  br label %if.end37

if.end37:                                         ; preds = %do.end, %if.end19.if.end37_crit_edge
  %s_fc_stats = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 165
  %arrayidx = getelementptr [10 x i32], ptr %s_fc_stats, i32 0, i32 %reason
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx, align 4
  %inc = add i32 %23, 1
  store i32 %inc, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__ext4_fc_track_unlink(ptr nocapture noundef readonly %handle, ptr noundef %inode, ptr noundef %dentry) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct.__track_dentry_update_args, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %args) #14
  %0 = getelementptr inbounds %struct.__track_dentry_update_args, ptr %args, i32 0, i32 1
  %1 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dentry, ptr %args, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 5, ptr %0, align 4
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_mount_opt2.i = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 18
  %7 = ptrtoint ptr %s_mount_opt2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_mount_opt2.i, align 16
  %and.i = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.ext4_fc_track_template.exit_crit_edge, label %lor.lhs.false.i

entry.ext4_fc_track_template.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %ext4_fc_track_template.exit

lor.lhs.false.i:                                  ; preds = %entry
  %s_mount_state.i = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 25
  %9 = ptrtoint ptr %s_mount_state.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %s_mount_state.i, align 8
  %11 = and i16 %10, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool4.not.i = icmp eq i16 %11, 0
  br i1 %tobool4.not.i, label %if.end.i, label %lor.lhs.false.i.ext4_fc_track_template.exit_crit_edge

lor.lhs.false.i.ext4_fc_track_template.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ext4_fc_track_template.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %s_mount_flags.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 19
  %12 = ptrtoint ptr %s_mount_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %s_mount_flags.i.i, align 4
  %14 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool7.not.i = icmp eq i32 %14, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end.i.ext4_fc_track_template.exit_crit_edge

if.end.i.ext4_fc_track_template.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ext4_fc_track_template.exit

if.end9.i:                                        ; preds = %if.end.i
  %15 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %handle, align 4
  %t_tid.i = getelementptr inbounds %struct.transaction_s, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %t_tid.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %t_tid.i, align 4
  %i_fc_lock.i = getelementptr i8, ptr %inode, i32 -200
  tail call void @mutex_lock_nested(ptr noundef %i_fc_lock.i, i32 noundef 0) #14
  %i_sync_tid.i = getelementptr i8, ptr %inode, i32 1152
  %19 = ptrtoint ptr %i_sync_tid.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %i_sync_tid.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp.i = icmp eq i32 %18, %20
  br i1 %cmp.i, label %if.end9.i.if.end13.i_crit_edge, label %if.else.i

if.end9.i.if.end13.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13.i

if.else.i:                                        ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #16
  %i_fc_lblk_start.i.i = getelementptr i8, ptr %inode, i32 -264
  %21 = ptrtoint ptr %i_fc_lblk_start.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %i_fc_lblk_start.i.i, align 8
  %i_fc_lblk_len.i.i = getelementptr i8, ptr %inode, i32 -260
  %22 = ptrtoint ptr %i_fc_lblk_len.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %i_fc_lblk_len.i.i, align 4
  %23 = ptrtoint ptr %i_sync_tid.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %18, ptr %i_sync_tid.i, align 8
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.else.i, %if.end9.i.if.end13.i_crit_edge
  %call15.i = call fastcc i32 @__track_dentry_update(ptr noundef %inode, ptr noundef nonnull %args, i1 noundef zeroext %cmp.i) #14, !callees !169
  tail call void @mutex_unlock(ptr noundef %i_fc_lock.i) #14
  br label %ext4_fc_track_template.exit

ext4_fc_track_template.exit:                      ; preds = %if.end13.i, %if.end.i.ext4_fc_track_template.exit_crit_edge, %lor.lhs.false.i.ext4_fc_track_template.exit_crit_edge, %entry.ext4_fc_track_template.exit_crit_edge
  %retval.0.i = phi i32 [ -95, %lor.lhs.false.i.ext4_fc_track_template.exit_crit_edge ], [ -95, %entry.ext4_fc_track_template.exit_crit_edge ], [ -22, %if.end.i.ext4_fc_track_template.exit_crit_edge ], [ %call15.i, %if.end13.i ]
  tail call fastcc void @trace_ext4_fc_track_unlink(ptr noundef %inode, ptr noundef %dentry, i32 noundef %retval.0.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %args) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__track_dentry_update(ptr noundef %inode, ptr nocapture noundef readonly %arg, i1 noundef zeroext %update) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arg, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %i_fc_lock = getelementptr i8, ptr %inode, i32 -200
  tail call void @mutex_unlock(ptr noundef %i_fc_lock) #14
  %6 = load ptr, ptr @ext4_fc_dentry_cachep, align 4
  %call2 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %6, i32 noundef 3136) #14
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_sb, align 4
  tail call void @ext4_fc_mark_ineligible(ptr noundef %8, i32 noundef 3, ptr noundef null)
  br label %cleanup

if.end:                                           ; preds = %entry
  %op = getelementptr inbounds %struct.__track_dentry_update_args, ptr %arg, i32 0, i32 1
  %9 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %op, align 4
  %11 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %call2, align 8
  %d_parent = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %d_parent, align 8
  %d_inode = getelementptr inbounds %struct.dentry, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %d_inode, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %i_ino, align 8
  %fcd_parent = getelementptr inbounds %struct.ext4_fc_dentry_update, ptr %call2, i32 0, i32 1
  %18 = ptrtoint ptr %fcd_parent to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %fcd_parent, align 4
  %i_ino5 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %19 = ptrtoint ptr %i_ino5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %i_ino5, align 8
  %fcd_ino = getelementptr inbounds %struct.ext4_fc_dentry_update, ptr %call2, i32 0, i32 2
  %21 = ptrtoint ptr %fcd_ino to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %fcd_ino, align 8
  %d_name = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %d_name, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %23)
  %cmp = icmp ugt i32 %23, 36
  br i1 %cmp, label %if.end8.i, label %if.else

if.end8.i:                                        ; preds = %if.end
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %23, i32 noundef 3136) #17
  %name = getelementptr inbounds %struct.ext4_fc_dentry_update, ptr %call2, i32 0, i32 3, i32 1
  %24 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call9.i, ptr %name, align 8
  %tobool12.not = icmp eq ptr %call9.i, null
  br i1 %tobool12.not, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  %25 = load ptr, ptr @ext4_fc_dentry_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %25, ptr noundef nonnull %call2) #14
  %26 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i_sb, align 4
  tail call void @ext4_fc_mark_ineligible(ptr noundef %27, i32 noundef 3, ptr noundef null)
  br label %cleanup

if.end16:                                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  %name20 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4, i32 1
  %28 = ptrtoint ptr %name20 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %name20, align 8
  %30 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %d_name, align 8
  %32 = call ptr @memcpy(ptr %call9.i, ptr %29, i32 %31)
  br label %if.end31

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %fcd_iname = getelementptr inbounds %struct.ext4_fc_dentry_update, ptr %call2, i32 0, i32 4
  %name24 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4, i32 1
  %33 = ptrtoint ptr %name24 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %name24, align 8
  %35 = call ptr @memcpy(ptr %fcd_iname, ptr %34, i32 %23)
  %name30 = getelementptr inbounds %struct.ext4_fc_dentry_update, ptr %call2, i32 0, i32 3, i32 1
  %36 = ptrtoint ptr %name30 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %fcd_iname, ptr %name30, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.end16
  %37 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %d_name, align 8
  %fcd_name34 = getelementptr inbounds %struct.ext4_fc_dentry_update, ptr %call2, i32 0, i32 3
  %39 = ptrtoint ptr %fcd_name34 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %fcd_name34, align 8
  %s_fc_lock = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 163
  tail call void @_raw_spin_lock(ptr noundef %s_fc_lock) #14
  %s_journal = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 47
  %40 = ptrtoint ptr %s_journal to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %s_journal, align 8
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 8
  %44 = and i32 %43, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %45 = icmp eq i32 %44, 0
  %fcd_list43 = getelementptr inbounds %struct.ext4_fc_dentry_update, ptr %call2, i32 0, i32 5
  br i1 %45, label %if.else42, label %if.then41

if.then41:                                        ; preds = %if.end31
  %arrayidx = getelementptr %struct.ext4_sb_info, ptr %5, i32 0, i32 161, i32 1
  %prev.i = getelementptr %struct.ext4_sb_info, ptr %5, i32 0, i32 161, i32 1, i32 1
  %46 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %fcd_list43, ptr noundef %47, ptr noundef %arrayidx) #14
  br i1 %call.i.i, label %if.then41.if.end46.sink.split_crit_edge, label %if.then41.if.end46_crit_edge

if.then41.if.end46_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end46

if.then41.if.end46.sink.split_crit_edge:          ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end46.sink.split

if.else42:                                        ; preds = %if.end31
  %s_fc_dentry_q44 = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 161
  %prev.i86 = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 161, i32 0, i32 1
  %48 = ptrtoint ptr %prev.i86 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev.i86, align 4
  %call.i.i87 = tail call zeroext i1 @__list_add_valid(ptr noundef %fcd_list43, ptr noundef %49, ptr noundef %s_fc_dentry_q44) #14
  br i1 %call.i.i87, label %if.else42.if.end46.sink.split_crit_edge, label %if.else42.if.end46_crit_edge

if.else42.if.end46_crit_edge:                     ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end46

if.else42.if.end46.sink.split_crit_edge:          ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end46.sink.split

if.end46.sink.split:                              ; preds = %if.else42.if.end46.sink.split_crit_edge, %if.then41.if.end46.sink.split_crit_edge
  %prev.i86.sink = phi ptr [ %prev.i, %if.then41.if.end46.sink.split_crit_edge ], [ %prev.i86, %if.else42.if.end46.sink.split_crit_edge ]
  %s_fc_dentry_q44.sink = phi ptr [ %arrayidx, %if.then41.if.end46.sink.split_crit_edge ], [ %s_fc_dentry_q44, %if.else42.if.end46.sink.split_crit_edge ]
  %.sink91 = phi ptr [ %47, %if.then41.if.end46.sink.split_crit_edge ], [ %49, %if.else42.if.end46.sink.split_crit_edge ]
  %50 = ptrtoint ptr %prev.i86.sink to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %fcd_list43, ptr %prev.i86.sink, align 4
  %51 = ptrtoint ptr %fcd_list43 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %s_fc_dentry_q44.sink, ptr %fcd_list43, align 4
  %prev3.i.i88 = getelementptr inbounds %struct.ext4_fc_dentry_update, ptr %call2, i32 0, i32 5, i32 1
  %52 = ptrtoint ptr %prev3.i.i88 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %.sink91, ptr %prev3.i.i88, align 8
  %53 = ptrtoint ptr %.sink91 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %fcd_list43, ptr %.sink91, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.end46.sink.split, %if.else42.if.end46_crit_edge, %if.then41.if.end46_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %s_fc_lock) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %if.then13, %if.then
  %retval.0 = phi i32 [ 0, %if.end46 ], [ -12, %if.then13 ], [ -12, %if.then ]
  tail call void @mutex_lock_nested(ptr noundef %i_fc_lock, i32 noundef 0) #14
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ext4_fc_track_unlink(ptr noundef %inode, ptr noundef %dentry, i32 noundef %ret) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_fc_track_unlink, i32 0, i32 1), ptr blockaddress(@trace_ext4_fc_track_unlink, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !170

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !154) #14
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !171

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !154) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !172
  %call42 = tail call i32 @__traceiter_ext4_fc_track_unlink(ptr noundef null, ptr noundef %inode, ptr noundef %dentry, i32 noundef %ret) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !173
  %13 = tail call i32 @llvm.read_register.i32(metadata !154) #14
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !154) #14
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !171

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !154) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !174
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_fc_track_unlink, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_fc_track_unlink, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ext4_fc_track_unlink.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_ext4_fc_track_unlink.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 2789, ptr noundef nonnull @.str.7) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !175
  %31 = tail call i32 @llvm.read_register.i32(metadata !154) #14
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ext4_fc_track_unlink(ptr nocapture noundef readonly %handle, ptr noundef %dentry) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  tail call void @__ext4_fc_track_unlink(ptr noundef %handle, ptr noundef %1, ptr noundef %dentry)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__ext4_fc_track_link(ptr nocapture noundef readonly %handle, ptr noundef %inode, ptr noundef %dentry) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct.__track_dentry_update_args, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %args) #14
  %0 = getelementptr inbounds %struct.__track_dentry_update_args, ptr %args, i32 0, i32 1
  %1 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dentry, ptr %args, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4, ptr %0, align 4
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_mount_opt2.i = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 18
  %7 = ptrtoint ptr %s_mount_opt2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_mount_opt2.i, align 16
  %and.i = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.ext4_fc_track_template.exit_crit_edge, label %lor.lhs.false.i

entry.ext4_fc_track_template.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %ext4_fc_track_template.exit

lor.lhs.false.i:                                  ; preds = %entry
  %s_mount_state.i = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 25
  %9 = ptrtoint ptr %s_mount_state.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %s_mount_state.i, align 8
  %11 = and i16 %10, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool4.not.i = icmp eq i16 %11, 0
  br i1 %tobool4.not.i, label %if.end.i, label %lor.lhs.false.i.ext4_fc_track_template.exit_crit_edge

lor.lhs.false.i.ext4_fc_track_template.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ext4_fc_track_template.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %s_mount_flags.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 19
  %12 = ptrtoint ptr %s_mount_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %s_mount_flags.i.i, align 4
  %14 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool7.not.i = icmp eq i32 %14, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end.i.ext4_fc_track_template.exit_crit_edge

if.end.i.ext4_fc_track_template.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ext4_fc_track_template.exit

if.end9.i:                                        ; preds = %if.end.i
  %15 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %handle, align 4
  %t_tid.i = getelementptr inbounds %struct.transaction_s, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %t_tid.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %t_tid.i, align 4
  %i_fc_lock.i = getelementptr i8, ptr %inode, i32 -200
  tail call void @mutex_lock_nested(ptr noundef %i_fc_lock.i, i32 noundef 0) #14
  %i_sync_tid.i = getelementptr i8, ptr %inode, i32 1152
  %19 = ptrtoint ptr %i_sync_tid.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %i_sync_tid.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp.i = icmp eq i32 %18, %20
  br i1 %cmp.i, label %if.end9.i.if.end13.i_crit_edge, label %if.else.i

if.end9.i.if.end13.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13.i

if.else.i:                                        ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #16
  %i_fc_lblk_start.i.i = getelementptr i8, ptr %inode, i32 -264
  %21 = ptrtoint ptr %i_fc_lblk_start.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %i_fc_lblk_start.i.i, align 8
  %i_fc_lblk_len.i.i = getelementptr i8, ptr %inode, i32 -260
  %22 = ptrtoint ptr %i_fc_lblk_len.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %i_fc_lblk_len.i.i, align 4
  %23 = ptrtoint ptr %i_sync_tid.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %18, ptr %i_sync_tid.i, align 8
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.else.i, %if.end9.i.if.end13.i_crit_edge
  %call15.i = call fastcc i32 @__track_dentry_update(ptr noundef %inode, ptr noundef nonnull %args, i1 noundef zeroext %cmp.i) #14, !callees !169
  tail call void @mutex_unlock(ptr noundef %i_fc_lock.i) #14
  br label %ext4_fc_track_template.exit

ext4_fc_track_template.exit:                      ; preds = %if.end13.i, %if.end.i.ext4_fc_track_template.exit_crit_edge, %lor.lhs.false.i.ext4_fc_track_template.exit_crit_edge, %entry.ext4_fc_track_template.exit_crit_edge
  %retval.0.i = phi i32 [ -95, %lor.lhs.false.i.ext4_fc_track_template.exit_crit_edge ], [ -95, %entry.ext4_fc_track_template.exit_crit_edge ], [ -22, %if.end.i.ext4_fc_track_template.exit_crit_edge ], [ %call15.i, %if.end13.i ]
  tail call fastcc void @trace_ext4_fc_track_link(ptr noundef %inode, ptr noundef %dentry, i32 noundef %retval.0.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %args) #14
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ext4_fc_track_link(ptr noundef %inode, ptr noundef %dentry, i32 noundef %ret) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_fc_track_link, i32 0, i32 1), ptr blockaddress(@trace_ext4_fc_track_link, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !170

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !154) #14
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !171

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !154) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !176
  %call42 = tail call i32 @__traceiter_ext4_fc_track_link(ptr noundef null, ptr noundef %inode, ptr noundef %dentry, i32 noundef %ret) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !177
  %13 = tail call i32 @llvm.read_register.i32(metadata !154) #14
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !154) #14
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !171

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !154) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !174
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_fc_track_link, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_fc_track_link, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ext4_fc_track_link.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_ext4_fc_track_link.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 2788, ptr noundef nonnull @.str.7) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !175
  %31 = tail call i32 @llvm.read_register.i32(metadata !154) #14
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ext4_fc_track_link(ptr nocapture noundef readonly %handle, ptr noundef %dentry) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  tail call void @__ext4_fc_track_link(ptr noundef %handle, ptr noundef %1, ptr noundef %dentry)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__ext4_fc_track_create(ptr nocapture noundef readonly %handle, ptr noundef %inode, ptr noundef %dentry) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct.__track_dentry_update_args, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %args) #14
  %0 = getelementptr inbounds %struct.__track_dentry_update_args, ptr %args, i32 0, i32 1
  %1 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dentry, ptr %args, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 3, ptr %0, align 4
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_mount_opt2.i = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 18
  %7 = ptrtoint ptr %s_mount_opt2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_mount_opt2.i, align 16
  %and.i = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.ext4_fc_track_template.exit_crit_edge, label %lor.lhs.false.i

entry.ext4_fc_track_template.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %ext4_fc_track_template.exit

lor.lhs.false.i:                                  ; preds = %entry
  %s_mount_state.i = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 25
  %9 = ptrtoint ptr %s_mount_state.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %s_mount_state.i, align 8
  %11 = and i16 %10, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool4.not.i = icmp eq i16 %11, 0
  br i1 %tobool4.not.i, label %if.end.i, label %lor.lhs.false.i.ext4_fc_track_template.exit_crit_edge

lor.lhs.false.i.ext4_fc_track_template.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ext4_fc_track_template.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %s_mount_flags.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 19
  %12 = ptrtoint ptr %s_mount_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %s_mount_flags.i.i, align 4
  %14 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool7.not.i = icmp eq i32 %14, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end.i.ext4_fc_track_template.exit_crit_edge

if.end.i.ext4_fc_track_template.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ext4_fc_track_template.exit

if.end9.i:                                        ; preds = %if.end.i
  %15 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %handle, align 4
  %t_tid.i = getelementptr inbounds %struct.transaction_s, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %t_tid.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %t_tid.i, align 4
  %i_fc_lock.i = getelementptr i8, ptr %inode, i32 -200
  tail call void @mutex_lock_nested(ptr noundef %i_fc_lock.i, i32 noundef 0) #14
  %i_sync_tid.i = getelementptr i8, ptr %inode, i32 1152
  %19 = ptrtoint ptr %i_sync_tid.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %i_sync_tid.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp.i = icmp eq i32 %18, %20
  br i1 %cmp.i, label %if.end9.i.if.end13.i_crit_edge, label %if.else.i

if.end9.i.if.end13.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13.i

if.else.i:                                        ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #16
  %i_fc_lblk_start.i.i = getelementptr i8, ptr %inode, i32 -264
  %21 = ptrtoint ptr %i_fc_lblk_start.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %i_fc_lblk_start.i.i, align 8
  %i_fc_lblk_len.i.i = getelementptr i8, ptr %inode, i32 -260
  %22 = ptrtoint ptr %i_fc_lblk_len.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %i_fc_lblk_len.i.i, align 4
  %23 = ptrtoint ptr %i_sync_tid.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %18, ptr %i_sync_tid.i, align 8
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.else.i, %if.end9.i.if.end13.i_crit_edge
  %call15.i = call fastcc i32 @__track_dentry_update(ptr noundef %inode, ptr noundef nonnull %args, i1 noundef zeroext %cmp.i) #14, !callees !169
  tail call void @mutex_unlock(ptr noundef %i_fc_lock.i) #14
  br label %ext4_fc_track_template.exit

ext4_fc_track_template.exit:                      ; preds = %if.end13.i, %if.end.i.ext4_fc_track_template.exit_crit_edge, %lor.lhs.false.i.ext4_fc_track_template.exit_crit_edge, %entry.ext4_fc_track_template.exit_crit_edge
  %retval.0.i = phi i32 [ -95, %lor.lhs.false.i.ext4_fc_track_template.exit_crit_edge ], [ -95, %entry.ext4_fc_track_template.exit_crit_edge ], [ -22, %if.end.i.ext4_fc_track_template.exit_crit_edge ], [ %call15.i, %if.end13.i ]
  tail call fastcc void @trace_ext4_fc_track_create(ptr noundef %inode, ptr noundef %dentry, i32 noundef %retval.0.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %args) #14
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ext4_fc_track_create(ptr noundef %inode, ptr noundef %dentry, i32 noundef %ret) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_fc_track_create, i32 0, i32 1), ptr blockaddress(@trace_ext4_fc_track_create, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !170

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !154) #14
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !171

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !154) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !178
  %call42 = tail call i32 @__traceiter_ext4_fc_track_create(ptr noundef null, ptr noundef %inode, ptr noundef %dentry, i32 noundef %ret) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !179
  %13 = tail call i32 @llvm.read_register.i32(metadata !154) #14
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !154) #14
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !171

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !154) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !174
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_fc_track_create, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_fc_track_create, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ext4_fc_track_create.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_ext4_fc_track_create.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 2787, ptr noundef nonnull @.str.7) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !175
  %31 = tail call i32 @llvm.read_register.i32(metadata !154) #14
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ext4_fc_track_create(ptr nocapture noundef readonly %handle, ptr noundef %dentry) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  tail call void @__ext4_fc_track_create(ptr noundef %handle, ptr noundef %1, ptr noundef %dentry)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ext4_fc_track_inode(ptr noundef %handle, ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %inode, align 8
  %2 = and i16 %1, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %2)
  %cmp = icmp eq i16 %2, 16384
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @ext4_inode_journal_mode(ptr noundef %inode) #14
  %and.i = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb.i, align 4
  br i1 %tobool.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @ext4_fc_mark_ineligible(ptr noundef %4, i32 noundef 8, ptr noundef %handle)
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_mount_opt2.i = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 18
  %7 = ptrtoint ptr %s_mount_opt2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_mount_opt2.i, align 16
  %and.i10 = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i10)
  %tobool.not.i = icmp eq i32 %and.i10, 0
  br i1 %tobool.not.i, label %if.end3.ext4_fc_track_template.exit_crit_edge, label %lor.lhs.false.i

if.end3.ext4_fc_track_template.exit_crit_edge:    ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %ext4_fc_track_template.exit

lor.lhs.false.i:                                  ; preds = %if.end3
  %s_mount_state.i = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 25
  %9 = ptrtoint ptr %s_mount_state.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %s_mount_state.i, align 8
  %11 = and i16 %10, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool4.not.i = icmp eq i16 %11, 0
  br i1 %tobool4.not.i, label %if.end.i, label %lor.lhs.false.i.ext4_fc_track_template.exit_crit_edge

lor.lhs.false.i.ext4_fc_track_template.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ext4_fc_track_template.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %s_mount_flags.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 19
  %12 = ptrtoint ptr %s_mount_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %s_mount_flags.i.i, align 4
  %14 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool7.not.i = icmp eq i32 %14, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end.i.ext4_fc_track_template.exit_crit_edge

if.end.i.ext4_fc_track_template.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ext4_fc_track_template.exit

if.end9.i:                                        ; preds = %if.end.i
  %15 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %handle, align 4
  %t_tid.i = getelementptr inbounds %struct.transaction_s, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %t_tid.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %t_tid.i, align 4
  %i_fc_lock.i = getelementptr i8, ptr %inode, i32 -200
  tail call void @mutex_lock_nested(ptr noundef %i_fc_lock.i, i32 noundef 0) #14
  %i_sync_tid.i = getelementptr i8, ptr %inode, i32 1152
  %19 = ptrtoint ptr %i_sync_tid.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %i_sync_tid.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp.i = icmp eq i32 %18, %20
  br i1 %cmp.i, label %if.end9.i.__track_inode.exit_crit_edge, label %if.end.i11

if.end9.i.__track_inode.exit_crit_edge:           ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__track_inode.exit

if.end.i11:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #16
  %i_fc_lblk_start.i.i = getelementptr i8, ptr %inode, i32 -264
  %21 = ptrtoint ptr %i_fc_lblk_start.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %i_fc_lblk_start.i.i, align 8
  %i_fc_lblk_len.i.i = getelementptr i8, ptr %inode, i32 -260
  %22 = ptrtoint ptr %i_sync_tid.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %18, ptr %i_sync_tid.i, align 8
  %23 = ptrtoint ptr %i_fc_lblk_len.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %i_fc_lblk_len.i.i, align 4
  br label %__track_inode.exit

__track_inode.exit:                               ; preds = %if.end.i11, %if.end9.i.__track_inode.exit_crit_edge
  %retval.0.i12 = phi i32 [ 0, %if.end.i11 ], [ -17, %if.end9.i.__track_inode.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %i_fc_lock.i) #14
  %s_fc_lock.i = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 163
  tail call void @_raw_spin_lock(ptr noundef %s_fc_lock.i) #14
  %i_fc_list.i = getelementptr i8, ptr %inode, i32 -272
  %24 = ptrtoint ptr %i_fc_list.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %i_fc_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %25, %i_fc_list.i
  br i1 %cmp.i.not.i, label %if.then25.i, label %__track_inode.exit.if.end39.i_crit_edge

__track_inode.exit.if.end39.i_crit_edge:          ; preds = %__track_inode.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39.i

if.then25.i:                                      ; preds = %__track_inode.exit
  %s_journal.i = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 47
  %26 = ptrtoint ptr %s_journal.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %s_journal.i, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 8
  %30 = and i32 %29, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %31 = icmp eq i32 %30, 0
  %arrayidx.i = getelementptr %struct.ext4_sb_info, ptr %6, i32 0, i32 160, i32 1
  %s_fc_q37.i = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 160
  %cond.i = select i1 %31, ptr %s_fc_q37.i, ptr %arrayidx.i
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %cond.i, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %i_fc_list.i, ptr noundef %33, ptr noundef %cond.i) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then25.i.if.end39.i_crit_edge

if.then25.i.if.end39.i_crit_edge:                 ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39.i

if.end.i.i.i:                                     ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #16
  %34 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %i_fc_list.i, ptr %prev.i.i, align 4
  %35 = ptrtoint ptr %i_fc_list.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %cond.i, ptr %i_fc_list.i, align 4
  %prev3.i.i.i = getelementptr i8, ptr %inode, i32 -268
  %36 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev3.i.i.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %i_fc_list.i, ptr %33, align 4
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.end.i.i.i, %if.then25.i.if.end39.i_crit_edge, %__track_inode.exit.if.end39.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %s_fc_lock.i) #14
  br label %ext4_fc_track_template.exit

ext4_fc_track_template.exit:                      ; preds = %if.end39.i, %if.end.i.ext4_fc_track_template.exit_crit_edge, %lor.lhs.false.i.ext4_fc_track_template.exit_crit_edge, %if.end3.ext4_fc_track_template.exit_crit_edge
  %retval.0.i = phi i32 [ %retval.0.i12, %if.end39.i ], [ -95, %lor.lhs.false.i.ext4_fc_track_template.exit_crit_edge ], [ -95, %if.end3.ext4_fc_track_template.exit_crit_edge ], [ -22, %if.end.i.ext4_fc_track_template.exit_crit_edge ]
  tail call fastcc void @trace_ext4_fc_track_inode(ptr noundef %inode, i32 noundef %retval.0.i)
  br label %cleanup

cleanup:                                          ; preds = %ext4_fc_track_template.exit, %if.then2, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ext4_fc_track_inode(ptr noundef %inode, i32 noundef %ret) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_fc_track_inode, i32 0, i32 1), ptr blockaddress(@trace_ext4_fc_track_inode, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !170

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !154) #14
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !171

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !154) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !180
  %call42 = tail call i32 @__traceiter_ext4_fc_track_inode(ptr noundef null, ptr noundef %inode, i32 noundef %ret) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !181
  %13 = tail call i32 @llvm.read_register.i32(metadata !154) #14
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !154) #14
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !171

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !154) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !174
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_fc_track_inode, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_fc_track_inode, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ext4_fc_track_inode.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_ext4_fc_track_inode.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 2811, ptr noundef nonnull @.str.7) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !175
  %31 = tail call i32 @llvm.read_register.i32(metadata !154) #14
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ext4_fc_track_range(ptr nocapture noundef readonly %handle, ptr noundef %inode, i32 noundef %start, i32 noundef %end) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %inode, align 8
  %2 = and i16 %1, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %2)
  %cmp = icmp eq i16 %2, 16384
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_mount_opt2.i = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 18
  %7 = ptrtoint ptr %s_mount_opt2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_mount_opt2.i, align 16
  %and.i = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.ext4_fc_track_template.exit_crit_edge, label %lor.lhs.false.i

if.end.ext4_fc_track_template.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %ext4_fc_track_template.exit

lor.lhs.false.i:                                  ; preds = %if.end
  %s_mount_state.i = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 25
  %9 = ptrtoint ptr %s_mount_state.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %s_mount_state.i, align 8
  %11 = and i16 %10, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool4.not.i = icmp eq i16 %11, 0
  br i1 %tobool4.not.i, label %if.end.i, label %lor.lhs.false.i.ext4_fc_track_template.exit_crit_edge

lor.lhs.false.i.ext4_fc_track_template.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ext4_fc_track_template.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %s_mount_flags.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 19
  %12 = ptrtoint ptr %s_mount_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %s_mount_flags.i.i, align 4
  %14 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool7.not.i = icmp eq i32 %14, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end.i.ext4_fc_track_template.exit_crit_edge

if.end.i.ext4_fc_track_template.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ext4_fc_track_template.exit

if.end9.i:                                        ; preds = %if.end.i
  %15 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %handle, align 4
  %t_tid.i = getelementptr inbounds %struct.transaction_s, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %t_tid.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %t_tid.i, align 4
  %i_fc_lock.i = getelementptr i8, ptr %inode, i32 -200
  tail call void @mutex_lock_nested(ptr noundef %i_fc_lock.i, i32 noundef 0) #14
  %i_sync_tid.i = getelementptr i8, ptr %inode, i32 1152
  %19 = ptrtoint ptr %i_sync_tid.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %i_sync_tid.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp.i = icmp eq i32 %18, %20
  br i1 %cmp.i, label %if.end13.i, label %if.end13.i.thread

if.end13.i:                                       ; preds = %if.end9.i
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %21 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %i_ino.i, align 8
  %23 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i10 = getelementptr inbounds %struct.super_block, ptr %24, i32 0, i32 33
  %25 = ptrtoint ptr %s_fs_info.i.i10 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %s_fs_info.i.i10, align 16
  %s_first_ino.i = getelementptr inbounds %struct.ext4_sb_info, ptr %26, i32 0, i32 30
  %27 = ptrtoint ptr %s_first_ino.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %s_first_ino.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %28)
  %cmp.i11 = icmp ult i32 %22, %28
  br i1 %cmp.i11, label %if.end13.i.__track_range.exit_crit_edge, label %land.lhs.true.i

if.end13.i.__track_range.exit_crit_edge:          ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__track_range.exit

if.end13.i.thread:                                ; preds = %if.end9.i
  %i_fc_lblk_start.i.i = getelementptr i8, ptr %inode, i32 -264
  %29 = ptrtoint ptr %i_fc_lblk_start.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %i_fc_lblk_start.i.i, align 8
  %i_fc_lblk_len.i.i = getelementptr i8, ptr %inode, i32 -260
  %30 = ptrtoint ptr %i_fc_lblk_len.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %i_fc_lblk_len.i.i, align 4
  %31 = ptrtoint ptr %i_sync_tid.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %18, ptr %i_sync_tid.i, align 8
  %i_ino.i18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %32 = ptrtoint ptr %i_ino.i18 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %i_ino.i18, align 8
  %34 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i1019 = getelementptr inbounds %struct.super_block, ptr %35, i32 0, i32 33
  %36 = ptrtoint ptr %s_fs_info.i.i1019 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %s_fs_info.i.i1019, align 16
  %s_first_ino.i20 = getelementptr inbounds %struct.ext4_sb_info, ptr %37, i32 0, i32 30
  %38 = ptrtoint ptr %s_first_ino.i20 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %s_first_ino.i20, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %39)
  %cmp.i1121 = icmp ult i32 %33, %39
  br i1 %cmp.i1121, label %if.end13.i.thread.__track_range.exit_crit_edge, label %if.end13.i.thread.if.else.i13_crit_edge

if.end13.i.thread.if.else.i13_crit_edge:          ; preds = %if.end13.i.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i13

if.end13.i.thread.__track_range.exit_crit_edge:   ; preds = %if.end13.i.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %__track_range.exit

land.lhs.true.i:                                  ; preds = %if.end13.i
  %i_fc_lblk_start.i = getelementptr i8, ptr %inode, i32 -264
  %i_fc_lblk_len.i = getelementptr i8, ptr %inode, i32 -260
  %40 = ptrtoint ptr %i_fc_lblk_len.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %i_fc_lblk_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp2.not.i = icmp eq i32 %41, 0
  br i1 %cmp2.not.i, label %land.lhs.true.i.if.else.i13_crit_edge, label %if.then3.i

land.lhs.true.i.if.else.i13_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i13

if.then3.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  %42 = ptrtoint ptr %i_fc_lblk_start.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %i_fc_lblk_start.i, align 8
  %44 = tail call i32 @llvm.umin.i32(i32 %43, i32 %start) #14
  %45 = ptrtoint ptr %i_fc_lblk_start.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %i_fc_lblk_start.i, align 8
  %add.i = add i32 %41, -1
  %sub.i = add i32 %add.i, %43
  %46 = tail call i32 @llvm.umax.i32(i32 %sub.i, i32 %end) #14
  %sub16.i = sub i32 1, %44
  %add17.i = add i32 %sub16.i, %46
  %47 = ptrtoint ptr %i_fc_lblk_len.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %add17.i, ptr %i_fc_lblk_len.i, align 4
  br label %__track_range.exit

if.else.i13:                                      ; preds = %land.lhs.true.i.if.else.i13_crit_edge, %if.end13.i.thread.if.else.i13_crit_edge
  %i_fc_lblk_start.i23 = phi ptr [ %i_fc_lblk_start.i, %land.lhs.true.i.if.else.i13_crit_edge ], [ %i_fc_lblk_start.i.i, %if.end13.i.thread.if.else.i13_crit_edge ]
  %48 = ptrtoint ptr %i_fc_lblk_start.i23 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %start, ptr %i_fc_lblk_start.i23, align 8
  %sub23.i = sub i32 1, %start
  %add24.i = add i32 %sub23.i, %end
  %i_fc_lblk_len25.i = getelementptr i8, ptr %inode, i32 -260
  %49 = ptrtoint ptr %i_fc_lblk_len25.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %add24.i, ptr %i_fc_lblk_len25.i, align 4
  br label %__track_range.exit

__track_range.exit:                               ; preds = %if.else.i13, %if.then3.i, %if.end13.i.thread.__track_range.exit_crit_edge, %if.end13.i.__track_range.exit_crit_edge
  %retval.0.i14 = phi i32 [ -125, %if.end13.i.__track_range.exit_crit_edge ], [ 0, %if.else.i13 ], [ 0, %if.then3.i ], [ -125, %if.end13.i.thread.__track_range.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %i_fc_lock.i) #14
  %s_fc_lock.i = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 163
  tail call void @_raw_spin_lock(ptr noundef %s_fc_lock.i) #14
  %i_fc_list.i = getelementptr i8, ptr %inode, i32 -272
  %50 = ptrtoint ptr %i_fc_list.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile ptr, ptr %i_fc_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %51, %i_fc_list.i
  br i1 %cmp.i.not.i, label %if.then25.i, label %__track_range.exit.if.end39.i_crit_edge

__track_range.exit.if.end39.i_crit_edge:          ; preds = %__track_range.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39.i

if.then25.i:                                      ; preds = %__track_range.exit
  %s_journal.i = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 47
  %52 = ptrtoint ptr %s_journal.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %s_journal.i, align 8
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 8
  %56 = and i32 %55, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %57 = icmp eq i32 %56, 0
  %arrayidx.i = getelementptr %struct.ext4_sb_info, ptr %6, i32 0, i32 160, i32 1
  %s_fc_q37.i = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 160
  %cond.i = select i1 %57, ptr %s_fc_q37.i, ptr %arrayidx.i
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %cond.i, i32 0, i32 1
  %58 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %i_fc_list.i, ptr noundef %59, ptr noundef %cond.i) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then25.i.if.end39.i_crit_edge

if.then25.i.if.end39.i_crit_edge:                 ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39.i

if.end.i.i.i:                                     ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #16
  %60 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %i_fc_list.i, ptr %prev.i.i, align 4
  %61 = ptrtoint ptr %i_fc_list.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %cond.i, ptr %i_fc_list.i, align 4
  %prev3.i.i.i = getelementptr i8, ptr %inode, i32 -268
  %62 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %59, ptr %prev3.i.i.i, align 4
  %63 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %i_fc_list.i, ptr %59, align 4
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.end.i.i.i, %if.then25.i.if.end39.i_crit_edge, %__track_range.exit.if.end39.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %s_fc_lock.i) #14
  br label %ext4_fc_track_template.exit

ext4_fc_track_template.exit:                      ; preds = %if.end39.i, %if.end.i.ext4_fc_track_template.exit_crit_edge, %lor.lhs.false.i.ext4_fc_track_template.exit_crit_edge, %if.end.ext4_fc_track_template.exit_crit_edge
  %retval.0.i = phi i32 [ %retval.0.i14, %if.end39.i ], [ -95, %lor.lhs.false.i.ext4_fc_track_template.exit_crit_edge ], [ -95, %if.end.ext4_fc_track_template.exit_crit_edge ], [ -22, %if.end.i.ext4_fc_track_template.exit_crit_edge ]
  tail call fastcc void @trace_ext4_fc_track_range(ptr noundef %inode, i32 noundef %start, i32 noundef %end, i32 noundef %retval.0.i)
  br label %cleanup

cleanup:                                          ; preds = %ext4_fc_track_template.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ext4_fc_track_range(ptr noundef %inode, i32 noundef %start, i32 noundef %end, i32 noundef %ret) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_fc_track_range, i32 0, i32 1), ptr blockaddress(@trace_ext4_fc_track_range, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !170

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !154) #14
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !171

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !154) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !182
  %call42 = tail call i32 @__traceiter_ext4_fc_track_range(ptr noundef null, ptr noundef %inode, i32 noundef %start, i32 noundef %end, i32 noundef %ret) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !183
  %13 = tail call i32 @llvm.read_register.i32(metadata !154) #14
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !154) #14
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !171

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !154) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !174
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_fc_track_range, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_fc_track_range, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ext4_fc_track_range.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_ext4_fc_track_range.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 2838, ptr noundef nonnull @.str.7) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !175
  %31 = tail call i32 @llvm.read_register.i32(metadata !154) #14
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_fc_commit(ptr noundef %journal, i32 noundef %commit_tid) local_unnamed_addr #0 align 64 {
entry:
  %desc.i.i36.i.i = alloca %struct.anon.88, align 8
  %desc.i.i.i.i = alloca %struct.anon.88, align 8
  %crc.addr.i.i = alloca i32, align 4
  %tl.i.i = alloca %struct.ext4_fc_tl, align 4
  %tail.i.i = alloca %struct.ext4_fc_tail, align 4
  %wait.i.i = alloca %struct.wait_queue_entry, align 4
  %head.i = alloca %struct.ext4_fc_head, align 4
  %plug.i = alloca %struct.blk_plug, align 4
  %crc.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %j_private = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 69
  %0 = ptrtoint ptr %j_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %j_private, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %j_blocksize = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 33
  %4 = ptrtoint ptr %j_blocksize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %j_blocksize, align 8
  %s_fc_subtid = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 159
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %s_fc_subtid, i32 noundef 4) #14
  %6 = ptrtoint ptr %s_fc_subtid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %s_fc_subtid, align 4
  tail call fastcc void @trace_ext4_fc_commit_start(ptr noundef %1)
  %call2 = tail call i64 @ktime_get() #14
  %8 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt2 = getelementptr inbounds %struct.ext4_sb_info, ptr %9, i32 0, i32 18
  %10 = ptrtoint ptr %s_mount_opt2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_mount_opt2, align 16
  %and = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %restart_fc.preheader

restart_fc.preheader:                             ; preds = %entry
  %j_commit_sequence = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 43
  br label %restart_fc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call4 = tail call i32 @jbd2_complete_transaction(ptr noundef %journal, i32 noundef %commit_tid) #14
  br label %cleanup

restart_fc:                                       ; preds = %land.lhs.true.restart_fc_crit_edge, %restart_fc.preheader
  %call5 = tail call i32 @jbd2_fc_begin_commit(ptr noundef %journal, i32 noundef %commit_tid) #14
  %12 = zext i32 %call5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call5, label %if.then14 [
    i32 -114, label %if.then6
    i32 0, label %if.end17
  ]

if.then6:                                         ; preds = %restart_fc
  %call.i.i83 = tail call zeroext i1 @__kasan_check_read(ptr noundef %s_fc_subtid, i32 noundef 4) #14
  %13 = ptrtoint ptr %s_fc_subtid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %s_fc_subtid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %7)
  %cmp9.not = icmp sgt i32 %14, %7
  br i1 %cmp9.not, label %if.then6.if.end12_crit_edge, label %land.lhs.true

if.then6.if.end12_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

land.lhs.true:                                    ; preds = %if.then6
  %15 = ptrtoint ptr %j_commit_sequence to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %j_commit_sequence, align 4
  %cmp10 = icmp ult i32 %16, %commit_tid
  br i1 %cmp10, label %land.lhs.true.restart_fc_crit_edge, label %land.lhs.true.if.end12_crit_edge

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

land.lhs.true.restart_fc_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %restart_fc

if.end12:                                         ; preds = %land.lhs.true.if.end12_crit_edge, %if.then6.if.end12_crit_edge
  %17 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_fs_info.i, align 16
  tail call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ext4_fc_update_stats, i32 noundef 1095, ptr noundef nonnull @.str.9, i32 noundef 2) #14
  %fc_skipped_commits.i = getelementptr inbounds %struct.ext4_sb_info, ptr %18, i32 0, i32 165, i32 4
  %19 = ptrtoint ptr %fc_skipped_commits.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fc_skipped_commits.i, align 4
  %inc18.i = add i32 %20, 1
  store i32 %inc18.i, ptr %fc_skipped_commits.i, align 4
  tail call fastcc void @trace_ext4_fc_commit_stop(ptr noundef %1, i32 noundef 0, i32 noundef 2) #14
  br label %cleanup

if.then14:                                        ; preds = %restart_fc
  call void @__sanitizer_cov_trace_pc() #16
  %21 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %s_fs_info.i, align 16
  tail call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ext4_fc_update_stats, i32 noundef 1095, ptr noundef nonnull @.str.9, i32 noundef 3) #14
  %fc_failed_commits.i = getelementptr inbounds %struct.ext4_sb_info, ptr %22, i32 0, i32 165, i32 3
  %23 = ptrtoint ptr %fc_failed_commits.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fc_failed_commits.i, align 8
  %inc14.i = add i32 %24, 1
  store i32 %inc14.i, ptr %fc_failed_commits.i, align 8
  %fc_ineligible_commits.i = getelementptr inbounds %struct.ext4_sb_info, ptr %22, i32 0, i32 165, i32 2
  %25 = ptrtoint ptr %fc_ineligible_commits.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %fc_ineligible_commits.i, align 4
  %inc16.i = add i32 %26, 1
  store i32 %inc16.i, ptr %fc_ineligible_commits.i, align 4
  tail call fastcc void @trace_ext4_fc_commit_stop(ptr noundef %1, i32 noundef 0, i32 noundef 3) #14
  %call15 = tail call i32 @jbd2_complete_transaction(ptr noundef %journal, i32 noundef %commit_tid) #14
  br label %cleanup

if.end17:                                         ; preds = %restart_fc
  %27 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_flags.i = getelementptr inbounds %struct.ext4_sb_info, ptr %28, i32 0, i32 19
  %29 = ptrtoint ptr %s_mount_flags.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %s_mount_flags.i, align 4
  %31 = and i32 %30, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool19.not = icmp eq i32 %31, 0
  br i1 %tobool19.not, label %if.end21, label %fallback

if.end21:                                         ; preds = %if.end17
  %s_fc_bytes = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 162
  %32 = ptrtoint ptr %s_fc_bytes to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %s_fc_bytes, align 64
  %34 = ptrtoint ptr %j_private to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %j_private, align 4
  %s_fs_info.i.i88 = getelementptr inbounds %struct.super_block, ptr %35, i32 0, i32 33
  %36 = ptrtoint ptr %s_fs_info.i.i88 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %s_fs_info.i.i88, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head.i) #14
  %38 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %head.i, align 4, !annotation !184
  %39 = getelementptr inbounds %struct.ext4_fc_head, ptr %head.i, i32 0, i32 1
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -1, ptr %39, align 4, !annotation !184
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %plug.i) #14
  %41 = call ptr @memset(ptr %plug.i, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %crc.i) #14
  %42 = ptrtoint ptr %crc.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %crc.i, align 4
  %s_fc_lock.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %37, i32 0, i32 163
  tail call void @_raw_spin_lock(ptr noundef %s_fc_lock.i.i) #14
  %s_fc_q.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %37, i32 0, i32 160
  %43 = ptrtoint ptr %s_fc_q.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pn49.i.i = load ptr, ptr %s_fc_q.i.i, align 8
  %cmp.not50.i.i = icmp eq ptr %.pn49.i.i, %s_fc_q.i.i
  br i1 %cmp.not50.i.i, label %if.end21.if.end.i_crit_edge, label %for.body.lr.ph.i.i

if.end21.if.end.i_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

for.body.lr.ph.i.i:                               ; preds = %if.end21
  %44 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i.i, i32 0, i32 1
  %45 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i.i, i32 0, i32 2
  %46 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i.i, i32 0, i32 3
  %47 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i.i, i32 0, i32 3, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end19.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %.pn51.i.i = phi ptr [ %.pn49.i.i, %for.body.lr.ph.i.i ], [ %.pn.i.i, %if.end19.i.i.for.body.i.i_crit_edge ]
  %i_state_flags.i.i.i = getelementptr i8, ptr %.pn51.i.i, i32 -112
  call void @_set_bit(i32 noundef 11, ptr noundef %i_state_flags.i.i.i) #14
  %i_fc_updates.i.i = getelementptr i8, ptr %.pn51.i.i, i32 16
  %call.i.i47.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %i_fc_updates.i.i, i32 noundef 4) #14
  %48 = ptrtoint ptr %i_fc_updates.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %i_fc_updates.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not48.i.i = icmp eq i32 %49, 0
  br i1 %tobool.not48.i.i, label %for.body.i.i.while.end.i.i_crit_edge, label %while.body.lr.ph.i.i

for.body.i.i.while.end.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i.i

while.body.lr.ph.i.i:                             ; preds = %for.body.i.i
  %i_fc_wait.i.i = getelementptr i8, ptr %.pn51.i.i, i32 20
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait.i.i) #14
  %50 = call ptr @memset(ptr %44, i32 255, i32 16)
  %51 = ptrtoint ptr %wait.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %wait.i.i, align 4
  %52 = call i32 @llvm.read_register.i32(metadata !154) #14
  %and.i.i.i = and i32 %52, -16384
  %53 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %task.i.i, align 8
  %56 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %55, ptr %44, align 4
  %57 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @autoremove_wake_function, ptr %45, align 4
  %58 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %46, ptr %46, align 4
  %59 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %46, ptr %47, align 4
  call void @prepare_to_wait(ptr noundef %i_fc_wait.i.i, ptr noundef nonnull %wait.i.i, i32 noundef 2) #14
  %call.i.i46.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %i_fc_updates.i.i, i32 noundef 4) #14
  %60 = ptrtoint ptr %i_fc_updates.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %i_fc_updates.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool11.not.i.i = icmp eq i32 %61, 0
  br i1 %tobool11.not.i.i, label %while.body.i.i.if.end.i.i_crit_edge, label %if.then.i.i

while.body.i.i.if.end.i.i_crit_edge:              ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @_raw_spin_unlock(ptr noundef %s_fc_lock.i.i) #14
  call void @schedule() #14
  call void @_raw_spin_lock(ptr noundef %s_fc_lock.i.i) #14
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %while.body.i.i.if.end.i.i_crit_edge
  call void @finish_wait(ptr noundef %i_fc_wait.i.i, ptr noundef nonnull %wait.i.i) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait.i.i) #14
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %i_fc_updates.i.i, i32 noundef 4) #14
  %62 = ptrtoint ptr %i_fc_updates.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %i_fc_updates.i.i, align 4
  %tobool.not.i.i = icmp eq i32 %63, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.while.end.i.i_crit_edge, label %if.end.i.i.while.body.i.i_crit_edge

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i

if.end.i.i.while.end.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %if.end.i.i.while.end.i.i_crit_edge, %for.body.i.i.while.end.i.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %s_fc_lock.i.i) #14
  %jinode.i.i = getelementptr i8, ptr %.pn51.i.i, i32 1056
  %64 = ptrtoint ptr %jinode.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %jinode.i.i, align 8
  %call16.i.i = call i32 @jbd2_submit_inode_data(ptr noundef %65) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.i)
  %tobool17.not.i.i = icmp eq i32 %call16.i.i, 0
  br i1 %tobool17.not.i.i, label %if.end19.i.i, label %while.end.i.i.ext4_fc_perform_commit.exit_crit_edge

while.end.i.i.ext4_fc_perform_commit.exit_crit_edge: ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ext4_fc_perform_commit.exit

if.end19.i.i:                                     ; preds = %while.end.i.i
  call void @_raw_spin_lock(ptr noundef %s_fc_lock.i.i) #14
  %66 = ptrtoint ptr %.pn51.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %.pn.i.i = load ptr, ptr %.pn51.i.i, align 8
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %s_fc_q.i.i
  br i1 %cmp.not.i.i, label %if.end19.i.i.if.end.i_crit_edge, label %if.end19.i.i.for.body.i.i_crit_edge

if.end19.i.i.for.body.i.i_crit_edge:              ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

if.end19.i.i.if.end.i_crit_edge:                  ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.end.i:                                         ; preds = %if.end19.i.i.if.end.i_crit_edge, %if.end21.if.end.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %s_fc_lock.i.i) #14
  %67 = ptrtoint ptr %j_private to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %j_private, align 4
  %s_fs_info.i.i80.i = getelementptr inbounds %struct.super_block, ptr %68, i32 0, i32 33
  %69 = ptrtoint ptr %s_fs_info.i.i80.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %s_fs_info.i.i80.i, align 16
  %s_fc_lock.i81.i = getelementptr inbounds %struct.ext4_sb_info, ptr %70, i32 0, i32 163
  call void @_raw_spin_lock(ptr noundef %s_fc_lock.i81.i) #14
  %s_fc_q.i82.i = getelementptr inbounds %struct.ext4_sb_info, ptr %70, i32 0, i32 160
  %71 = ptrtoint ptr %s_fc_q.i82.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %s_fc_q.i82.i, align 32
  %cmp.not38.i.i = icmp eq ptr %72, %s_fc_q.i82.i
  br i1 %cmp.not38.i.i, label %if.end.i.if.end5.i_crit_edge, label %if.end.i.for.body.i85.i_crit_edge

if.end.i.for.body.i85.i_crit_edge:                ; preds = %if.end.i
  br label %for.body.i85.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5.i

for.body.i85.i:                                   ; preds = %for.inc.i.i.for.body.i85.i_crit_edge, %if.end.i.for.body.i85.i_crit_edge
  %.pn.in39.i.i = phi ptr [ %.pn40.i.i, %for.inc.i.i.for.body.i85.i_crit_edge ], [ %72, %if.end.i.for.body.i85.i_crit_edge ]
  %73 = ptrtoint ptr %.pn.in39.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %.pn40.i.i = load ptr, ptr %.pn.in39.i.i, align 8
  %i_state_flags.i.i83.i = getelementptr i8, ptr %.pn.in39.i.i, i32 -112
  %74 = ptrtoint ptr %i_state_flags.i.i83.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %i_state_flags.i.i83.i, align 4
  %76 = and i32 %75, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool.not.i84.i = icmp eq i32 %76, 0
  br i1 %tobool.not.i84.i, label %for.body.i85.i.for.inc.i.i_crit_edge, label %if.end.i88.i

for.body.i85.i.for.inc.i.i_crit_edge:             ; preds = %for.body.i85.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

if.end.i88.i:                                     ; preds = %for.body.i85.i
  call void @_raw_spin_unlock(ptr noundef %s_fc_lock.i81.i) #14
  %jinode.i86.i = getelementptr i8, ptr %.pn.in39.i.i, i32 1056
  %77 = ptrtoint ptr %jinode.i86.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %jinode.i86.i, align 8
  %call10.i.i = call i32 @jbd2_wait_inode_data(ptr noundef %journal, ptr noundef %78) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %tobool11.not.i87.i = icmp eq i32 %call10.i.i, 0
  br i1 %tobool11.not.i87.i, label %if.end13.i.i, label %if.end.i88.i.ext4_fc_perform_commit.exit_crit_edge

if.end.i88.i.ext4_fc_perform_commit.exit_crit_edge: ; preds = %if.end.i88.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ext4_fc_perform_commit.exit

if.end13.i.i:                                     ; preds = %if.end.i88.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @_raw_spin_lock(ptr noundef %s_fc_lock.i81.i) #14
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end13.i.i, %for.body.i85.i.for.inc.i.i_crit_edge
  %cmp.not.i89.i = icmp eq ptr %.pn40.i.i, %s_fc_q.i82.i
  br i1 %cmp.not.i89.i, label %for.inc.i.i.if.end5.i_crit_edge, label %for.inc.i.i.for.body.i85.i_crit_edge

for.inc.i.i.for.body.i85.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i85.i

for.inc.i.i.if.end5.i_crit_edge:                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5.i

if.end5.i:                                        ; preds = %for.inc.i.i.if.end5.i_crit_edge, %if.end.i.if.end5.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %s_fc_lock.i81.i) #14
  %j_fs_dev.i = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 36
  %79 = ptrtoint ptr %j_fs_dev.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %j_fs_dev.i, align 8
  %j_dev.i = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 32
  %81 = ptrtoint ptr %j_dev.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %j_dev.i, align 4
  %cmp.not.i = icmp eq ptr %80, %82
  br i1 %cmp.not.i, label %if.end5.i.if.end9.i_crit_edge, label %if.then6.i

if.end5.i.if.end9.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9.i

if.then6.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #16
  %call8.i = call i32 @blkdev_issue_flush(ptr noundef %80) #14
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then6.i, %if.end5.i.if.end9.i_crit_edge
  call void @blk_start_plug(ptr noundef nonnull %plug.i) #14
  %s_fc_bytes.i = getelementptr inbounds %struct.ext4_sb_info, ptr %37, i32 0, i32 162
  %83 = ptrtoint ptr %s_fc_bytes.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %s_fc_bytes.i, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp10.i = icmp eq i32 %84, 0
  br i1 %cmp10.i, label %if.then11.i, label %if.end9.i.if.end15.i_crit_edge

if.end9.i.if.end15.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.i

if.then11.i:                                      ; preds = %if.end9.i
  %85 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %head.i, align 4
  %s_journal.i = getelementptr inbounds %struct.ext4_sb_info, ptr %37, i32 0, i32 47
  %86 = ptrtoint ptr %s_journal.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %s_journal.i, align 8
  %j_running_transaction.i = getelementptr inbounds %struct.journal_s, ptr %87, i32 0, i32 10
  %88 = ptrtoint ptr %j_running_transaction.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %j_running_transaction.i, align 8
  %t_tid.i = getelementptr inbounds %struct.transaction_s, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %t_tid.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %t_tid.i, align 4
  %92 = call i32 @llvm.bswap.i32(i32 %91) #14
  %93 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %39, align 4
  %call12.i = call fastcc zeroext i1 @ext4_fc_add_tlv(ptr noundef %35, i16 noundef zeroext 9, i16 noundef zeroext 8, ptr noundef nonnull %head.i, ptr noundef nonnull %crc.i) #14
  br i1 %call12.i, label %if.then11.i.if.end15.i_crit_edge, label %if.then11.i.out.i_crit_edge

if.then11.i.out.i_crit_edge:                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

if.then11.i.if.end15.i_crit_edge:                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then11.i.if.end15.i_crit_edge, %if.end9.i.if.end15.i_crit_edge
  call void @_raw_spin_lock(ptr noundef %s_fc_lock.i.i) #14
  %94 = ptrtoint ptr %j_private to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %j_private, align 4
  %s_fs_info.i.i93.i = getelementptr inbounds %struct.super_block, ptr %95, i32 0, i32 33
  %96 = ptrtoint ptr %s_fs_info.i.i93.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %s_fs_info.i.i93.i, align 16
  %s_fc_dentry_q.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %97, i32 0, i32 161
  %98 = ptrtoint ptr %s_fc_dentry_q.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile ptr, ptr %s_fc_dentry_q.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %99, %s_fc_dentry_q.i.i
  br i1 %cmp.i.not.i.i, label %if.end15.i.if.end20.i_crit_edge, label %for.cond.preheader.i.i

if.end15.i.if.end20.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20.i

for.cond.preheader.i.i:                           ; preds = %if.end15.i
  %s_fc_lock.i94.i = getelementptr inbounds %struct.ext4_sb_info, ptr %97, i32 0, i32 163
  %s_fc_q.i95.i = getelementptr inbounds %struct.ext4_sb_info, ptr %97, i32 0, i32 160
  br label %for.body.i96.i

for.body.i96.i:                                   ; preds = %for.inc59.i.i.for.body.i96.i_crit_edge, %for.cond.preheader.i.i
  %.pn.in111.i.i = phi ptr [ %99, %for.cond.preheader.i.i ], [ %.pn113.i.i, %for.inc59.i.i.for.body.i96.i_crit_edge ]
  %fc_dentry.0112.i.i = getelementptr i8, ptr %.pn.in111.i.i, i32 -68
  %100 = ptrtoint ptr %.pn.in111.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %.pn113.i.i = load ptr, ptr %.pn.in111.i.i, align 4
  %101 = ptrtoint ptr %fc_dentry.0112.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %fc_dentry.0112.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %102)
  %cmp11.not.i.i = icmp eq i32 %102, 3
  br i1 %cmp11.not.i.i, label %if.end17.i.i, label %if.then12.i.i

if.then12.i.i:                                    ; preds = %for.body.i96.i
  call void @_raw_spin_unlock(ptr noundef %s_fc_lock.i94.i) #14
  %call13.i.i = call fastcc zeroext i1 @ext4_fc_add_dentry_tlv(ptr noundef %95, ptr noundef nonnull %crc.i, ptr noundef %fc_dentry.0112.i.i) #14
  br i1 %call13.i.i, label %if.then12.i.i.for.inc59.sink.split.i.i_crit_edge, label %if.then12.i.i.if.then18.i_crit_edge

if.then12.i.i.if.then18.i_crit_edge:              ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then18.i

if.then12.i.i.for.inc59.sink.split.i.i_crit_edge: ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc59.sink.split.i.i

if.end17.i.i:                                     ; preds = %for.body.i96.i
  %fcd_ino.i.i = getelementptr i8, ptr %.pn.in111.i.i, i32 -60
  br label %for.cond27.i.i

for.cond27.i.i:                                   ; preds = %for.body33.i.i.for.cond27.i.i_crit_edge, %if.end17.i.i
  %.pn102.in.in.i.i = phi ptr [ %s_fc_q.i95.i, %if.end17.i.i ], [ %.pn102.in.i.i, %for.body33.i.i.for.cond27.i.i_crit_edge ]
  %103 = ptrtoint ptr %.pn102.in.in.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %.pn102.in.i.i = load ptr, ptr %.pn102.in.in.i.i, align 8
  %cmp31.not.i.i = icmp eq ptr %.pn102.in.i.i, %s_fc_q.i95.i
  br i1 %cmp31.not.i.i, label %for.cond27.i.i.for.inc59.i.i_crit_edge, label %for.body33.i.i

for.cond27.i.i.for.inc59.i.i_crit_edge:           ; preds = %for.cond27.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc59.i.i

for.body33.i.i:                                   ; preds = %for.cond27.i.i
  %i_ino.i.i = getelementptr i8, ptr %.pn102.in.i.i, i32 312
  %104 = ptrtoint ptr %i_ino.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %i_ino.i.i, align 8
  %106 = ptrtoint ptr %fcd_ino.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %fcd_ino.i.i, align 8
  %cmp34.i.i = icmp eq i32 %105, %107
  br i1 %cmp34.i.i, label %for.end.i97.i, label %for.body33.i.i.for.cond27.i.i_crit_edge

for.body33.i.i.for.cond27.i.i_crit_edge:          ; preds = %for.body33.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond27.i.i

for.end.i97.i:                                    ; preds = %for.body33.i.i
  %vfs_inode.i.i = getelementptr i8, ptr %.pn102.in.i.i, i32 272
  %tobool43.not.i.i = icmp eq ptr %vfs_inode.i.i, null
  br i1 %tobool43.not.i.i, label %for.end.i97.i.for.inc59.i.i_crit_edge, label %if.end45.i.i

for.end.i97.i.for.inc59.i.i_crit_edge:            ; preds = %for.end.i97.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc59.i.i

if.end45.i.i:                                     ; preds = %for.end.i97.i
  call void @_raw_spin_unlock(ptr noundef %s_fc_lock.i94.i) #14
  %call47.i.i = call fastcc i32 @ext4_fc_write_inode(ptr noundef nonnull %vfs_inode.i.i, ptr noundef nonnull %crc.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i.i)
  %tobool48.not.i.i = icmp eq i32 %call47.i.i, 0
  br i1 %tobool48.not.i.i, label %if.end50.i.i, label %if.end45.i.i.if.then18.i_crit_edge

if.end45.i.i.if.then18.i_crit_edge:               ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then18.i

if.end50.i.i:                                     ; preds = %if.end45.i.i
  %call51.i.i = call fastcc i32 @ext4_fc_write_inode_data(ptr noundef nonnull %vfs_inode.i.i, ptr noundef nonnull %crc.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i.i)
  %tobool52.not.i.i = icmp eq i32 %call51.i.i, 0
  br i1 %tobool52.not.i.i, label %if.end54.i.i, label %if.end50.i.i.if.then18.i_crit_edge

if.end50.i.i.if.then18.i_crit_edge:               ; preds = %if.end50.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then18.i

if.end54.i.i:                                     ; preds = %if.end50.i.i
  %call55.i.i = call fastcc zeroext i1 @ext4_fc_add_dentry_tlv(ptr noundef %95, ptr noundef nonnull %crc.i, ptr noundef %fc_dentry.0112.i.i) #14
  br i1 %call55.i.i, label %if.end54.i.i.for.inc59.sink.split.i.i_crit_edge, label %if.end54.i.i.if.then18.i_crit_edge

if.end54.i.i.if.then18.i_crit_edge:               ; preds = %if.end54.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then18.i

if.end54.i.i.for.inc59.sink.split.i.i_crit_edge:  ; preds = %if.end54.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc59.sink.split.i.i

for.inc59.sink.split.i.i:                         ; preds = %if.end54.i.i.for.inc59.sink.split.i.i_crit_edge, %if.then12.i.i.for.inc59.sink.split.i.i_crit_edge
  call void @_raw_spin_lock(ptr noundef %s_fc_lock.i94.i) #14
  br label %for.inc59.i.i

for.inc59.i.i:                                    ; preds = %for.inc59.sink.split.i.i, %for.end.i97.i.for.inc59.i.i_crit_edge, %for.cond27.i.i.for.inc59.i.i_crit_edge
  %cmp.not.i98.i = icmp eq ptr %.pn113.i.i, %s_fc_dentry_q.i.i
  br i1 %cmp.not.i98.i, label %for.inc59.i.i.if.end20.i_crit_edge, label %for.inc59.i.i.for.body.i96.i_crit_edge

for.inc59.i.i.for.body.i96.i_crit_edge:           ; preds = %for.inc59.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i96.i

for.inc59.i.i.if.end20.i_crit_edge:               ; preds = %for.inc59.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20.i

if.then18.i:                                      ; preds = %if.end54.i.i.if.then18.i_crit_edge, %if.end50.i.i.if.then18.i_crit_edge, %if.end45.i.i.if.then18.i_crit_edge, %if.then12.i.i.if.then18.i_crit_edge
  %ret.0.i.i = phi i32 [ %call47.i.i, %if.end45.i.i.if.then18.i_crit_edge ], [ %call51.i.i, %if.end50.i.i.if.then18.i_crit_edge ], [ -28, %if.then12.i.i.if.then18.i_crit_edge ], [ -28, %if.end54.i.i.if.then18.i_crit_edge ]
  call void @_raw_spin_lock(ptr noundef %s_fc_lock.i94.i) #14
  call void @_raw_spin_unlock(ptr noundef %s_fc_lock.i.i) #14
  br label %out.i

if.end20.i:                                       ; preds = %for.inc59.i.i.if.end20.i_crit_edge, %if.end15.i.if.end20.i_crit_edge
  %108 = ptrtoint ptr %s_fc_q.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %.pn113.i = load ptr, ptr %s_fc_q.i.i, align 8
  %cmp23.not114.i = icmp eq ptr %.pn113.i, %s_fc_q.i.i
  br i1 %cmp23.not114.i, label %if.end20.i.for.end.i_crit_edge, label %if.end20.i.for.body.i_crit_edge

if.end20.i.for.body.i_crit_edge:                  ; preds = %if.end20.i
  br label %for.body.i

if.end20.i.for.end.i_crit_edge:                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end20.i.for.body.i_crit_edge
  %.pn115.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn113.i, %if.end20.i.for.body.i_crit_edge ]
  %vfs_inode.i = getelementptr i8, ptr %.pn115.i, i32 272
  %i_state_flags.i.i = getelementptr i8, ptr %.pn115.i, i32 -112
  %109 = ptrtoint ptr %i_state_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load volatile i32, ptr %i_state_flags.i.i, align 4
  %111 = and i32 %110, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool25.not.i = icmp eq i32 %111, 0
  br i1 %tobool25.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end27.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.end27.i:                                       ; preds = %for.body.i
  call void @_raw_spin_unlock(ptr noundef %s_fc_lock.i.i) #14
  %call29.i = call fastcc i32 @ext4_fc_write_inode_data(ptr noundef %vfs_inode.i, ptr noundef nonnull %crc.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %if.end32.i, label %if.end27.i.out.i_crit_edge

if.end27.i.out.i_crit_edge:                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

if.end32.i:                                       ; preds = %if.end27.i
  %call33.i = call fastcc i32 @ext4_fc_write_inode(ptr noundef %vfs_inode.i, ptr noundef nonnull %crc.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool34.not.i = icmp eq i32 %call33.i, 0
  br i1 %tobool34.not.i, label %if.end36.i, label %if.end32.i.out.i_crit_edge

if.end32.i.out.i_crit_edge:                       ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

if.end36.i:                                       ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @_raw_spin_lock(ptr noundef %s_fc_lock.i.i) #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end36.i, %for.body.i.for.inc.i_crit_edge
  %112 = ptrtoint ptr %.pn115.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %.pn.i = load ptr, ptr %.pn115.i, align 8
  %cmp23.not.i = icmp eq ptr %.pn.i, %s_fc_q.i.i
  br i1 %cmp23.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end20.i.for.end.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %s_fc_lock.i.i) #14
  %113 = ptrtoint ptr %crc.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %crc.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %crc.addr.i.i) #14
  %115 = ptrtoint ptr %crc.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %crc.addr.i.i, align 4
  %116 = ptrtoint ptr %s_fs_info.i.i88 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %s_fs_info.i.i88, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tl.i.i) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tail.i.i) #14
  %118 = getelementptr inbounds %struct.ext4_fc_tail, ptr %tail.i.i, i32 0, i32 1
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 -1, ptr %118, align 4, !annotation !184
  %s_journal.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %117, i32 0, i32 47
  %120 = ptrtoint ptr %s_journal.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %s_journal.i.i, align 8
  %j_blocksize.i.i = getelementptr inbounds %struct.journal_s, ptr %121, i32 0, i32 33
  %122 = ptrtoint ptr %j_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %j_blocksize.i.i, align 8
  %call1.i.i = call fastcc ptr @ext4_fc_reserve_space(ptr noundef %35, i32 noundef 12, ptr noundef nonnull %crc.addr.i.i) #14
  %tobool.not.i101.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool.not.i101.i, label %for.end.i.ext4_fc_write_tail.exit.i_crit_edge, label %if.end.i102.i

for.end.i.ext4_fc_write_tail.exit.i_crit_edge:    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ext4_fc_write_tail.exit.i

if.end.i102.i:                                    ; preds = %for.end.i
  %124 = getelementptr inbounds %struct.ext4_fc_tl, ptr %tl.i.i, i32 0, i32 1
  %s_fc_bytes.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %117, i32 0, i32 162
  %125 = ptrtoint ptr %s_fc_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %s_fc_bytes.i.i, align 64
  %rem.i.i = urem i32 %126, %123
  %127 = ptrtoint ptr %tl.i.i to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 2048, ptr %tl.i.i, align 4
  %128 = xor i32 %rem.i.i, -1
  %sub2.i.i = add i32 %123, %128
  %129 = trunc i32 %sub2.i.i to i16
  %conv.i.i = add i16 %129, 8
  %130 = call i16 @llvm.bswap.i16(i16 %conv.i.i) #14
  %131 = ptrtoint ptr %124 to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 %130, ptr %124, align 2
  %sub4.i.i = add i32 %126, -1
  %sub5.i.i = add i32 %123, -1
  %or.i.i = or i32 %sub4.i.i, %sub5.i.i
  %add6.i.i = add i32 %or.i.i, 1
  %132 = ptrtoint ptr %s_fc_bytes.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %add6.i.i, ptr %s_fc_bytes.i.i, align 64
  %133 = ptrtoint ptr %s_fs_info.i.i88 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %s_fs_info.i.i88, align 16
  %135 = ptrtoint ptr %crc.addr.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %crc.addr.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %desc.i.i.i.i) #14
  %137 = getelementptr inbounds %struct.anon.88, ptr %desc.i.i.i.i, i32 0, i32 1
  %s_chksum_driver.i.i.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %134, i32 0, i32 121
  %138 = call ptr @memset(ptr %desc.i.i.i.i, i32 255, i32 16)
  %139 = ptrtoint ptr %s_chksum_driver.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %s_chksum_driver.i.i.i.i, align 4
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %140, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %142)
  %cmp.not.i.i.i.i = icmp eq i32 %142, 4
  br i1 %cmp.not.i.i.i.i, label %do.end7.i.i.i.i, label %do.body2.i.i.i.i, !prof !171

do.body2.i.i.i.i:                                 ; preds = %if.end.i102.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #14, !srcloc !185
  unreachable

do.end7.i.i.i.i:                                  ; preds = %if.end.i102.i
  %143 = ptrtoint ptr %desc.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %140, ptr %desc.i.i.i.i, align 8
  %144 = ptrtoint ptr %137 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %136, ptr %137, align 8
  %call11.i.i.i.i = call i32 @crypto_shash_update(ptr noundef nonnull %desc.i.i.i.i, ptr noundef nonnull %tl.i.i, i32 noundef 4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i.i.i)
  %tobool12.not.i.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %tobool12.not.i.i.i.i, label %ext4_fc_memcpy.exit.i.i, label %do.body20.i.i.i.i, !prof !171

do.body20.i.i.i.i:                                ; preds = %do.end7.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #14, !srcloc !186
  unreachable

ext4_fc_memcpy.exit.i.i:                          ; preds = %do.end7.i.i.i.i
  %145 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %137, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %desc.i.i.i.i) #14
  %147 = ptrtoint ptr %crc.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %146, ptr %crc.addr.i.i, align 4
  %148 = ptrtoint ptr %tl.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %tl.i.i, align 4
  %150 = ptrtoint ptr %call1.i.i to i32
  call void @__asan_storeN_noabort(i32 %150, i32 4)
  store i32 %149, ptr %call1.i.i, align 1
  %add.ptr.i.i = getelementptr i8, ptr %call1.i.i, i32 4
  %151 = ptrtoint ptr %s_journal.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %s_journal.i.i, align 8
  %j_running_transaction.i.i = getelementptr inbounds %struct.journal_s, ptr %152, i32 0, i32 10
  %153 = ptrtoint ptr %j_running_transaction.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %j_running_transaction.i.i, align 8
  %t_tid.i.i = getelementptr inbounds %struct.transaction_s, ptr %154, i32 0, i32 1
  %155 = ptrtoint ptr %t_tid.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %t_tid.i.i, align 4
  %157 = call i32 @llvm.bswap.i32(i32 %156) #14
  %158 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %157, ptr %tail.i.i, align 4
  %159 = ptrtoint ptr %s_fs_info.i.i88 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %s_fs_info.i.i88, align 16
  %161 = ptrtoint ptr %crc.addr.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %crc.addr.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %desc.i.i36.i.i) #14
  %163 = getelementptr inbounds %struct.anon.88, ptr %desc.i.i36.i.i, i32 0, i32 1
  %s_chksum_driver.i.i38.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %160, i32 0, i32 121
  %164 = call ptr @memset(ptr %desc.i.i36.i.i, i32 255, i32 16)
  %165 = ptrtoint ptr %s_chksum_driver.i.i38.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %s_chksum_driver.i.i38.i.i, align 4
  %167 = ptrtoint ptr %166 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %166, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %168)
  %cmp.not.i.i39.i.i = icmp eq i32 %168, 4
  br i1 %cmp.not.i.i39.i.i, label %do.end7.i.i43.i.i, label %do.body2.i.i40.i.i, !prof !171

do.body2.i.i40.i.i:                               ; preds = %ext4_fc_memcpy.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #14, !srcloc !185
  unreachable

do.end7.i.i43.i.i:                                ; preds = %ext4_fc_memcpy.exit.i.i
  %169 = ptrtoint ptr %desc.i.i36.i.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %166, ptr %desc.i.i36.i.i, align 8
  %170 = ptrtoint ptr %163 to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %162, ptr %163, align 8
  %call11.i.i41.i.i = call i32 @crypto_shash_update(ptr noundef nonnull %desc.i.i36.i.i, ptr noundef nonnull %tail.i.i, i32 noundef 4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i41.i.i)
  %tobool12.not.i.i42.i.i = icmp eq i32 %call11.i.i41.i.i, 0
  br i1 %tobool12.not.i.i42.i.i, label %ext4_fc_memcpy.exit45.i.i, label %do.body20.i.i44.i.i, !prof !171

do.body20.i.i44.i.i:                              ; preds = %do.end7.i.i43.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #14, !srcloc !186
  unreachable

ext4_fc_memcpy.exit45.i.i:                        ; preds = %do.end7.i.i43.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %171 = ptrtoint ptr %163 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %163, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %desc.i.i36.i.i) #14
  %173 = ptrtoint ptr %crc.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %172, ptr %crc.addr.i.i, align 4
  %174 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %tail.i.i, align 4
  %176 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_storeN_noabort(i32 %176, i32 4)
  store i32 %175, ptr %add.ptr.i.i, align 1
  %add.ptr12.i.i = getelementptr i8, ptr %call1.i.i, i32 8
  %177 = load i32, ptr %crc.addr.i.i, align 4
  %178 = call i32 @llvm.bswap.i32(i32 %177) #14
  %179 = ptrtoint ptr %118 to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %178, ptr %118, align 4
  %180 = ptrtoint ptr %add.ptr12.i.i to i32
  call void @__asan_storeN_noabort(i32 %180, i32 4)
  store i32 %178, ptr %add.ptr12.i.i, align 1
  call fastcc void @ext4_fc_submit_bh(ptr noundef %35, i1 noundef zeroext true) #14
  br label %ext4_fc_write_tail.exit.i

ext4_fc_write_tail.exit.i:                        ; preds = %ext4_fc_memcpy.exit45.i.i, %for.end.i.ext4_fc_write_tail.exit.i_crit_edge
  %retval.0.i103.i = phi i32 [ 0, %ext4_fc_memcpy.exit45.i.i ], [ -28, %for.end.i.ext4_fc_write_tail.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tail.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tl.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %crc.addr.i.i) #14
  br label %out.i

out.i:                                            ; preds = %ext4_fc_write_tail.exit.i, %if.end32.i.out.i_crit_edge, %if.end27.i.out.i_crit_edge, %if.then18.i, %if.then11.i.out.i_crit_edge
  %ret.0.i = phi i32 [ %ret.0.i.i, %if.then18.i ], [ %retval.0.i103.i, %ext4_fc_write_tail.exit.i ], [ -28, %if.then11.i.out.i_crit_edge ], [ %call29.i, %if.end27.i.out.i_crit_edge ], [ %call33.i, %if.end32.i.out.i_crit_edge ]
  call void @blk_finish_plug(ptr noundef nonnull %plug.i) #14
  br label %ext4_fc_perform_commit.exit

ext4_fc_perform_commit.exit:                      ; preds = %out.i, %if.end.i88.i.ext4_fc_perform_commit.exit_crit_edge, %while.end.i.i.ext4_fc_perform_commit.exit_crit_edge
  %retval.0.i = phi i32 [ %ret.0.i, %out.i ], [ %call10.i.i, %if.end.i88.i.ext4_fc_perform_commit.exit_crit_edge ], [ %call16.i.i, %while.end.i.i.ext4_fc_perform_commit.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %crc.i) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %plug.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp23 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp23, label %ext4_fc_perform_commit.exit.if.then13.i_crit_edge, label %if.end25

ext4_fc_perform_commit.exit.if.then13.i_crit_edge: ; preds = %ext4_fc_perform_commit.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then13.i

if.end25:                                         ; preds = %ext4_fc_perform_commit.exit
  %add = add i32 %5, -1
  %sub = add i32 %add, %33
  %div = udiv i32 %sub, %5
  %181 = ptrtoint ptr %s_fc_bytes to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %s_fc_bytes, align 64
  %sub28 = add i32 %add, %182
  %div29 = udiv i32 %sub28, %5
  %sub30 = sub i32 %div29, %div
  %call31 = call i32 @jbd2_fc_wait_bufs(ptr noundef %journal, i32 noundef %sub30) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.end25.if.then13.i_crit_edge, label %if.end34

if.end25.if.then13.i_crit_edge:                   ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then13.i

if.end34:                                         ; preds = %if.end25
  %call.i.i84 = call zeroext i1 @__kasan_check_write(ptr noundef %s_fc_subtid, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %s_fc_subtid, i32 1, i32 3, i32 1) #14
  %183 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %s_fc_subtid, ptr %s_fc_subtid, i32 1, ptr elementtype(i32) %s_fc_subtid) #14, !srcloc !164
  %call36 = call i32 @jbd2_fc_end_commit(ptr noundef %journal) #14
  %call37 = call i64 @ktime_get() #14
  %sub38 = sub i64 %call37, %call2
  %184 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %s_fs_info.i, align 16
  call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ext4_fc_update_stats, i32 noundef 1095, ptr noundef nonnull @.str.9, i32 noundef 0) #14
  %fc_num_commits.i = getelementptr inbounds %struct.ext4_sb_info, ptr %185, i32 0, i32 165, i32 1
  %186 = ptrtoint ptr %fc_num_commits.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %fc_num_commits.i, align 8
  %inc.i = add i32 %187, 1
  store i32 %inc.i, ptr %fc_num_commits.i, align 8
  %fc_numblks.i = getelementptr inbounds %struct.ext4_sb_info, ptr %185, i32 0, i32 165, i32 5
  %188 = ptrtoint ptr %fc_numblks.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %fc_numblks.i, align 8
  %add.i = add i32 %189, %sub30
  store i32 %add.i, ptr %fc_numblks.i, align 8
  %s_fc_avg_commit_time.i = getelementptr inbounds %struct.ext4_sb_info, ptr %185, i32 0, i32 165, i32 6
  %190 = ptrtoint ptr %s_fc_avg_commit_time.i to i32
  call void @__asan_load8_noabort(i32 %190)
  %191 = load i64, ptr %s_fc_avg_commit_time.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %191)
  %tobool.not.i = icmp eq i64 %191, 0
  br i1 %tobool.not.i, label %if.end34.ext4_fc_update_stats.exit_crit_edge, label %if.then3.i, !prof !165

if.end34.ext4_fc_update_stats.exit_crit_edge:     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  br label %ext4_fc_update_stats.exit

if.then3.i:                                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  %mul.i = mul i64 %191, 3
  %add5.i = add i64 %mul.i, %sub38
  %div37.i = lshr i64 %add5.i, 2
  br label %ext4_fc_update_stats.exit

ext4_fc_update_stats.exit:                        ; preds = %if.then3.i, %if.end34.ext4_fc_update_stats.exit_crit_edge
  %storemerge = phi i64 [ %div37.i, %if.then3.i ], [ %sub38, %if.end34.ext4_fc_update_stats.exit_crit_edge ]
  %192 = ptrtoint ptr %s_fc_avg_commit_time.i to i32
  call void @__asan_store8_noabort(i32 %192)
  store i64 %storemerge, ptr %s_fc_avg_commit_time.i, align 8
  call fastcc void @trace_ext4_fc_commit_stop(ptr noundef %1, i32 noundef %sub30, i32 noundef 0) #14
  br label %cleanup

fallback:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  %call40 = tail call i32 @jbd2_fc_end_commit_fallback(ptr noundef %journal) #14
  %193 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %s_fs_info.i, align 16
  tail call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ext4_fc_update_stats, i32 noundef 1095, ptr noundef nonnull @.str.9, i32 noundef 1) #14
  br label %ext4_fc_update_stats.exit109

if.then13.i:                                      ; preds = %if.end25.if.then13.i_crit_edge, %ext4_fc_perform_commit.exit.if.then13.i_crit_edge
  %call40111 = call i32 @jbd2_fc_end_commit_fallback(ptr noundef %journal) #14
  %195 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %s_fs_info.i, align 16
  call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ext4_fc_update_stats, i32 noundef 1095, ptr noundef nonnull @.str.9, i32 noundef 3) #14
  %fc_failed_commits.i101 = getelementptr inbounds %struct.ext4_sb_info, ptr %196, i32 0, i32 165, i32 3
  %197 = ptrtoint ptr %fc_failed_commits.i101 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %fc_failed_commits.i101, align 8
  %inc14.i102 = add i32 %198, 1
  store i32 %inc14.i102, ptr %fc_failed_commits.i101, align 8
  br label %ext4_fc_update_stats.exit109

ext4_fc_update_stats.exit109:                     ; preds = %if.then13.i, %fallback
  %199 = phi ptr [ %196, %if.then13.i ], [ %194, %fallback ]
  %call40116 = phi i32 [ %call40111, %if.then13.i ], [ %call40, %fallback ]
  %status.0113 = phi i32 [ 3, %if.then13.i ], [ 1, %fallback ]
  %fc_ineligible_commits.i103 = getelementptr inbounds %struct.ext4_sb_info, ptr %199, i32 0, i32 165, i32 2
  %200 = ptrtoint ptr %fc_ineligible_commits.i103 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %fc_ineligible_commits.i103, align 4
  %inc16.i104 = add i32 %201, 1
  store i32 %inc16.i104, ptr %fc_ineligible_commits.i103, align 4
  call fastcc void @trace_ext4_fc_commit_stop(ptr noundef %1, i32 noundef 0, i32 noundef %status.0113) #14
  br label %cleanup

cleanup:                                          ; preds = %ext4_fc_update_stats.exit109, %ext4_fc_update_stats.exit, %if.then14, %if.end12, %if.then
  %retval.0 = phi i32 [ 0, %if.end12 ], [ %call15, %if.then14 ], [ %call40116, %ext4_fc_update_stats.exit109 ], [ %call36, %ext4_fc_update_stats.exit ], [ %call4, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ext4_fc_commit_start(ptr noundef %sb) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_fc_commit_start, i32 0, i32 1), ptr blockaddress(@trace_ext4_fc_commit_start, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !170

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !154) #14
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !171

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !154) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !187
  %call42 = tail call i32 @__traceiter_ext4_fc_commit_start(ptr noundef null, ptr noundef %sb) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !188
  %13 = tail call i32 @llvm.read_register.i32(metadata !154) #14
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !154) #14
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !171

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !154) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !174
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_fc_commit_start, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_fc_commit_start, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ext4_fc_commit_start.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_ext4_fc_commit_start.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 2692, ptr noundef nonnull @.str.7) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !175
  %31 = tail call i32 @llvm.read_register.i32(metadata !154) #14
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_complete_transaction(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_fc_begin_commit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_fc_wait_bufs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_fc_end_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_fc_end_commit_fallback(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_fc_record_regions(ptr nocapture noundef readonly %sb, i32 noundef %ino, i32 noundef %lblk, i64 noundef %pblk, i32 noundef %len, i32 noundef %replay) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %replay)
  %tobool.not = icmp eq i32 %replay, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %fc_regions_used = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 168, i32 7
  %2 = ptrtoint ptr %fc_regions_used to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fc_regions_used, align 4
  %fc_regions_valid = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 168, i32 8
  %4 = ptrtoint ptr %fc_regions_valid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fc_regions_valid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not = icmp eq i32 %3, %5
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %fc_regions_used to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %fc_regions_used, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %fc_regions_used3 = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 168, i32 7
  %7 = ptrtoint ptr %fc_regions_used3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fc_regions_used3, align 4
  %fc_regions_size = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 168, i32 6
  %9 = ptrtoint ptr %fc_regions_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fc_regions_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp4 = icmp eq i32 %8, %10
  br i1 %cmp4, label %if.then5, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.then5:                                         ; preds = %if.end
  %add = add i32 %8, 4
  %11 = ptrtoint ptr %fc_regions_size to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add, ptr %fc_regions_size, align 4
  %fc_regions = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 168, i32 5
  %12 = ptrtoint ptr %fc_regions to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fc_regions, align 4
  %mul = mul i32 %add, 24
  %call8 = tail call noalias ptr @krealloc(ptr noundef %13, i32 noundef %mul, i32 noundef 3264) #18
  %14 = ptrtoint ptr %fc_regions to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call8, ptr %fc_regions, align 4
  %tobool11.not = icmp eq ptr %call8, null
  br i1 %tobool11.not, label %if.then5.cleanup_crit_edge, label %if.then5.if.end14_crit_edge

if.then5.if.end14_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end14:                                         ; preds = %if.then5.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %fc_regions15 = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 168, i32 5
  %15 = ptrtoint ptr %fc_regions15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fc_regions15, align 4
  %17 = ptrtoint ptr %fc_regions_used3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fc_regions_used3, align 4
  %inc = add i32 %18, 1
  store i32 %inc, ptr %fc_regions_used3, align 4
  %arrayidx = getelementptr %struct.ext4_fc_alloc_region, ptr %16, i32 %18
  %ino17 = getelementptr %struct.ext4_fc_alloc_region, ptr %16, i32 %18, i32 2
  %19 = ptrtoint ptr %ino17 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %ino, ptr %ino17, align 8
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %lblk, ptr %arrayidx, align 8
  %pblk19 = getelementptr %struct.ext4_fc_alloc_region, ptr %16, i32 %18, i32 1
  %21 = ptrtoint ptr %pblk19 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %pblk, ptr %pblk19, align 8
  %len20 = getelementptr %struct.ext4_fc_alloc_region, ptr %16, i32 %18, i32 3
  %22 = ptrtoint ptr %len20 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %len, ptr %len20, align 4
  br i1 %tobool.not, label %if.end14.cleanup_crit_edge, label %if.then22

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then22:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  %fc_regions_valid23 = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 168, i32 8
  %23 = ptrtoint ptr %fc_regions_valid23 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fc_regions_valid23, align 4
  %inc24 = add i32 %24, 1
  store i32 %inc24, ptr %fc_regions_valid23, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %if.end14.cleanup_crit_edge, %if.then5.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then5.cleanup_crit_edge ], [ 0, %if.then22 ], [ 0, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ext4_fc_replay_check_excluded(ptr nocapture noundef readonly %sb, i64 noundef %blk) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %fc_regions_valid = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 168, i32 8
  %2 = ptrtoint ptr %fc_regions_valid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fc_regions_valid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp32 = icmp sgt i32 %3, 0
  br i1 %cmp32, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %fc_regions = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 168, i32 5
  %4 = ptrtoint ptr %fc_regions to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fc_regions, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %cmp35 = phi i1 [ true, %for.body.lr.ph ], [ %cmp, %for.inc.for.body_crit_edge ]
  %i.033 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %ino = getelementptr %struct.ext4_fc_alloc_region, ptr %5, i32 %i.033, i32 2
  %6 = ptrtoint ptr %ino to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ino, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp1 = icmp eq i32 %7, 0
  br i1 %cmp1, label %for.body.for.inc_crit_edge, label %lor.lhs.false

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %len = getelementptr %struct.ext4_fc_alloc_region, ptr %5, i32 %i.033, i32 3
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp4 = icmp eq i32 %9, 0
  br i1 %cmp4, label %lor.lhs.false.for.inc_crit_edge, label %if.end

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  %pblk = getelementptr %struct.ext4_fc_alloc_region, ptr %5, i32 %i.033, i32 1
  %10 = ptrtoint ptr %pblk to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %pblk, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %blk)
  %cmp7.not = icmp ugt i64 %11, %blk
  br i1 %cmp7.not, label %if.end.for.inc_crit_edge, label %land.lhs.true

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end
  %conv = sext i32 %9 to i64
  %add = add i64 %11, %conv
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %blk)
  %cmp14 = icmp ugt i64 %add, %blk
  br i1 %cmp14, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %if.end.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.033, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %3)
  %cmp = icmp slt i32 %inc, %3
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %cmp.lcssa = phi i1 [ false, %entry.cleanup_crit_edge ], [ %cmp, %for.inc.cleanup_crit_edge ], [ %cmp35, %land.lhs.true.cleanup_crit_edge ]
  ret i1 %cmp.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ext4_fc_replay_cleanup(ptr nocapture noundef readonly %sb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_state = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %s_mount_state to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %s_mount_state, align 8
  %4 = and i16 %3, -33
  store i16 %4, ptr %s_mount_state, align 8
  %fc_regions = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 168, i32 5
  %5 = ptrtoint ptr %fc_regions to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fc_regions, align 4
  tail call void @kfree(ptr noundef %6) #14
  %fc_modified_inodes = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 168, i32 9
  %7 = ptrtoint ptr %fc_modified_inodes to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fc_modified_inodes, align 4
  tail call void @kfree(ptr noundef %8) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ext4_fc_init(ptr nocapture noundef readonly %sb, ptr nocapture noundef writeonly %journal) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %j_fc_replay_callback = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 74
  %0 = ptrtoint ptr %j_fc_replay_callback to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @ext4_fc_replay, ptr %j_fc_replay_callback, align 8
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %1 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt2 = getelementptr inbounds %struct.ext4_sb_info, ptr %2, i32 0, i32 18
  %3 = ptrtoint ptr %s_mount_opt2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %s_mount_opt2, align 16
  %and = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %j_fc_cleanup_callback = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 73
  %5 = ptrtoint ptr %j_fc_cleanup_callback to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @ext4_fc_cleanup, ptr %j_fc_cleanup_callback, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ext4_fc_replay(ptr nocapture noundef readonly %journal, ptr nocapture noundef readonly %bh, i32 noundef %pass, i32 noundef %off, i32 noundef %expected_tid) #0 align 64 {
entry:
  %iloc.i = alloca %struct.ext4_iloc, align 4
  %map.i189 = alloca %struct.ext4_map_blocks, align 8
  %darg.i172 = alloca %struct.dentry_info_args, align 4
  %newex.i = alloca %struct.ext4_extent, align 4
  %map.i = alloca %struct.ext4_map_blocks, align 8
  %path.i = alloca ptr, align 4
  %entry1.i = alloca %struct.qstr, align 8
  %darg.i = alloca %struct.dentry_info_args, align 4
  %desc.i161.i = alloca %struct.anon.88, align 8
  %desc.i152.i = alloca %struct.anon.88, align 8
  %desc.i.i = alloca %struct.anon.88, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %j_private = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 69
  %0 = ptrtoint ptr %j_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %j_private, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %s_fc_replay_state = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 168
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pass)
  %cmp = icmp eq i32 %pass, 0
  %fc_current_pass = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 168, i32 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %fc_current_pass to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %fc_current_pass, align 4
  %5 = ptrtoint ptr %j_private to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %j_private, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 33
  %7 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_fc_replay_state.i = getelementptr inbounds %struct.ext4_sb_info, ptr %8, i32 0, i32 168
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 5
  %9 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %b_data.i, align 4
  %j_blocksize.i = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 33
  %11 = ptrtoint ptr %j_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %j_blocksize.i, align 8
  %add.ptr.i = getelementptr i8, ptr %10, i32 %12
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 -1
  %fc_replay_expected_off.i = getelementptr inbounds %struct.ext4_sb_info, ptr %8, i32 0, i32 168, i32 1
  %13 = ptrtoint ptr %fc_replay_expected_off.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fc_replay_expected_off.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i = icmp eq i32 %14, 0
  br i1 %cmp.i, label %if.then.i, label %if.then.if.end6.i_crit_edge

if.then.if.end6.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6.i

if.then.i:                                        ; preds = %if.then
  %fc_cur_tag.i = getelementptr inbounds %struct.ext4_sb_info, ptr %8, i32 0, i32 168, i32 3
  %15 = ptrtoint ptr %s_fc_replay_state.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %s_fc_replay_state.i, align 4
  %16 = call ptr @memset(ptr %fc_cur_tag.i, i32 0, i32 24)
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %10, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2304, i16 %18)
  %cmp3.not.i = icmp eq i16 %18, 2304
  br i1 %cmp3.not.i, label %if.then.i.if.end6.i_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.i.if.end6.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then.i.if.end6.i_crit_edge, %if.then.if.end6.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %off)
  %cmp8.not.i = icmp eq i32 %14, %off
  br i1 %cmp8.not.i, label %if.end11.i, label %if.end6.i.out_err.i_crit_edge

if.end6.i.out_err.i_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_err.i

if.end11.i:                                       ; preds = %if.end6.i
  %inc.i = add i32 %off, 1
  %19 = ptrtoint ptr %fc_replay_expected_off.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %inc.i, ptr %fc_replay_expected_off.i, align 4
  %cmp13207.i = icmp ult ptr %10, %add.ptr2.i
  br i1 %cmp13207.i, label %for.body.lr.ph.i, label %if.end11.i.out_err.i_crit_edge

if.end11.i.out_err.i_crit_edge:                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_err.i

for.body.lr.ph.i:                                 ; preds = %if.end11.i
  %b_blocknr180.i = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 3
  %fc_cur_tag63.i = getelementptr inbounds %struct.ext4_sb_info, ptr %8, i32 0, i32 168, i32 3
  %fc_crc65.i = getelementptr inbounds %struct.ext4_sb_info, ptr %8, i32 0, i32 168, i32 4
  %20 = getelementptr inbounds %struct.anon.88, ptr %desc.i161.i, i32 0, i32 1
  %s_chksum_driver.i162.i = getelementptr inbounds %struct.ext4_sb_info, ptr %8, i32 0, i32 121
  %21 = getelementptr inbounds %struct.anon.88, ptr %desc.i152.i, i32 0, i32 1
  %fc_regions_used49.i = getelementptr inbounds %struct.ext4_sb_info, ptr %8, i32 0, i32 168, i32 7
  %fc_regions_valid50.i = getelementptr inbounds %struct.ext4_sb_info, ptr %8, i32 0, i32 168, i32 8
  %22 = getelementptr inbounds %struct.anon.88, ptr %desc.i.i, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %cur.0208.i = phi ptr [ %10, %for.body.lr.ph.i ], [ %add.ptr83.i, %for.inc.i.for.body.i_crit_edge ]
  %23 = ptrtoint ptr %cur.0208.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %tl.sroa.0.0.copyload.i = load i16, ptr %cur.0208.i, align 1
  %tl.sroa.6.0.cur.0.100.sroa_idx.i = getelementptr inbounds i8, ptr %cur.0208.i, i32 2
  %24 = ptrtoint ptr %tl.sroa.6.0.cur.0.100.sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %tl.sroa.6.0.copyload.i = load i16, ptr %tl.sroa.6.0.cur.0.100.sroa_idx.i, align 1
  %add.ptr15.i = getelementptr i8, ptr %cur.0208.i, i32 4
  %25 = call i16 @llvm.bswap.i16(i16 %tl.sroa.0.0.copyload.i) #14
  %26 = zext i16 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.49)
  switch i16 %25, label %tag2str.exit.i [
    i16 4, label %for.body.i.tag2str.exit.thread.i_crit_edge
    i16 5, label %sw.bb1.i.i
    i16 1, label %tag2str.exit.thread172.i
    i16 3, label %sw.bb3.i.i
    i16 2, label %sw.bb4.i.i
    i16 6, label %sw.bb5.i.i
    i16 7, label %sw.bb6.i.i
    i16 8, label %tag2str.exit.thread175.i
    i16 9, label %tag2str.exit.thread178.i
  ]

for.body.i.tag2str.exit.thread.i_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %tag2str.exit.thread.i

sw.bb1.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %tag2str.exit.thread.i

tag2str.exit.thread172.i:                         ; preds = %for.body.i
  %27 = ptrtoint ptr %b_blocknr180.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %b_blocknr180.i, align 8
  call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 3, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ext4_fc_replay_scan, i32 noundef 1955, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.19, i64 noundef %28) #14
  %29 = ptrtoint ptr %add.ptr15.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %ext.sroa.0.0.copyload.i = load i32, ptr %add.ptr15.i, align 1
  %ext.sroa.5.0.add.ptr15.sroa_idx.i = getelementptr i8, ptr %cur.0208.i, i32 8
  %30 = ptrtoint ptr %ext.sroa.5.0.add.ptr15.sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %ext.sroa.5.0.copyload.i = load i32, ptr %ext.sroa.5.0.add.ptr15.sroa_idx.i, align 1
  %ext.sroa.10.0.add.ptr15.sroa_idx.i = getelementptr i8, ptr %cur.0208.i, i32 12
  %31 = ptrtoint ptr %ext.sroa.10.0.add.ptr15.sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %ext.sroa.10.0.copyload.i = load i16, ptr %ext.sroa.10.0.add.ptr15.sroa_idx.i, align 1
  %ext.sroa.13.0.add.ptr15.sroa_idx.i = getelementptr i8, ptr %cur.0208.i, i32 14
  %32 = ptrtoint ptr %ext.sroa.13.0.add.ptr15.sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 2)
  %ext.sroa.13.0.copyload.i = load i16, ptr %ext.sroa.13.0.add.ptr15.sroa_idx.i, align 1
  %ext.sroa.16.0.add.ptr15.sroa_idx.i = getelementptr i8, ptr %cur.0208.i, i32 16
  %33 = ptrtoint ptr %ext.sroa.16.0.add.ptr15.sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %ext.sroa.16.0.copyload.i = load i32, ptr %ext.sroa.16.0.add.ptr15.sroa_idx.i, align 1
  %34 = call i32 @llvm.bswap.i32(i32 %ext.sroa.0.0.copyload.i) #14
  %35 = call i32 @llvm.bswap.i32(i32 %ext.sroa.5.0.copyload.i) #14
  %36 = call i32 @llvm.bswap.i32(i32 %ext.sroa.16.0.copyload.i) #14
  %conv.i.i = zext i32 %36 to i64
  %37 = call i16 @llvm.bswap.i16(i16 %ext.sroa.13.0.copyload.i) #14
  %conv1.i.i = zext i16 %37 to i64
  %shl.i.i = shl nuw nsw i64 %conv1.i.i, 32
  %or.i.i = or i64 %shl.i.i, %conv.i.i
  %38 = call i16 @llvm.bswap.i16(i16 %ext.sroa.10.0.copyload.i) #14
  %conv.i150.i = zext i16 %38 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32767, i16 %38)
  %cmp.i.i = icmp ult i16 %38, -32767
  %sub.i.i = add nsw i32 %conv.i150.i, -32768
  %cond.i.i = select i1 %cmp.i.i, i32 %conv.i150.i, i32 %sub.i.i
  %39 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %s_fs_info.i.i, align 16
  %fc_regions_used3.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %40, i32 0, i32 168, i32 7
  %41 = ptrtoint ptr %fc_regions_used3.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %fc_regions_used3.i.i, align 4
  %fc_regions_size.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %40, i32 0, i32 168, i32 6
  %43 = ptrtoint ptr %fc_regions_size.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %fc_regions_size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %44)
  %cmp4.i.i = icmp eq i32 %42, %44
  br i1 %cmp4.i.i, label %if.then5.i.i, label %tag2str.exit.thread172.i.ext4_fc_record_regions.exit.i_crit_edge

tag2str.exit.thread172.i.ext4_fc_record_regions.exit.i_crit_edge: ; preds = %tag2str.exit.thread172.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ext4_fc_record_regions.exit.i

sw.bb3.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %tag2str.exit.thread.i

sw.bb4.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %tag2str.exit.thread.i

sw.bb5.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %tag2str.exit.thread.i

sw.bb6.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %tag2str.exit.thread.i

tag2str.exit.thread175.i:                         ; preds = %for.body.i
  %45 = ptrtoint ptr %b_blocknr180.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %b_blocknr180.i, align 8
  call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 3, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ext4_fc_replay_scan, i32 noundef 1955, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.24, i64 noundef %46) #14
  %47 = ptrtoint ptr %fc_cur_tag63.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %fc_cur_tag63.i, align 4
  %inc36.i = add i32 %48, 1
  store i32 %inc36.i, ptr %fc_cur_tag63.i, align 4
  %49 = ptrtoint ptr %add.ptr15.i to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %tail.sroa.0.0.copyload.i = load i32, ptr %add.ptr15.i, align 1
  %tail.sroa.5.0.val.0.98.sroa_idx.i = getelementptr i8, ptr %cur.0208.i, i32 8
  %50 = ptrtoint ptr %tail.sroa.5.0.val.0.98.sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %tail.sroa.5.0.copyload.i = load i32, ptr %tail.sroa.5.0.val.0.98.sroa_idx.i, align 1
  %51 = ptrtoint ptr %fc_crc65.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %fc_crc65.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %desc.i152.i) #14
  %53 = call ptr @memset(ptr %desc.i152.i, i32 255, i32 16)
  %54 = ptrtoint ptr %s_chksum_driver.i162.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %s_chksum_driver.i162.i, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %55, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %57)
  %cmp.not.i154.i = icmp eq i32 %57, 4
  br i1 %cmp.not.i154.i, label %do.end7.i158.i, label %do.body2.i155.i, !prof !171

tag2str.exit.thread178.i:                         ; preds = %for.body.i
  %58 = ptrtoint ptr %b_blocknr180.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %b_blocknr180.i, align 8
  call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 3, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ext4_fc_replay_scan, i32 noundef 1955, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.25, i64 noundef %59) #14
  %60 = ptrtoint ptr %add.ptr15.i to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %head.sroa.0.0.copyload.i = load i32, ptr %add.ptr15.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %head.sroa.0.0.copyload.i)
  %tobool55.not.i = icmp eq i32 %head.sroa.0.0.copyload.i, 0
  br i1 %tobool55.not.i, label %if.end57.i, label %tag2str.exit.thread178.i.out_err.i_crit_edge

tag2str.exit.thread178.i.out_err.i_crit_edge:     ; preds = %tag2str.exit.thread178.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_err.i

tag2str.exit.thread.i:                            ; preds = %sw.bb6.i.i, %sw.bb5.i.i, %sw.bb4.i.i, %sw.bb3.i.i, %sw.bb1.i.i, %for.body.i.tag2str.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi ptr [ @.str.17, %for.body.i.tag2str.exit.thread.i_crit_edge ], [ @.str.18, %sw.bb1.i.i ], [ @.str.20, %sw.bb3.i.i ], [ @.str.21, %sw.bb4.i.i ], [ @.str.22, %sw.bb5.i.i ], [ @.str.23, %sw.bb6.i.i ]
  %61 = ptrtoint ptr %b_blocknr180.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %b_blocknr180.i, align 8
  call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 3, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ext4_fc_replay_scan, i32 noundef 1955, ptr noundef nonnull @.str.15, ptr noundef nonnull %retval.0.i.ph.i, i64 noundef %62) #14
  br label %sw.bb27.i

tag2str.exit.i:                                   ; preds = %for.body.i
  %63 = ptrtoint ptr %b_blocknr180.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %b_blocknr180.i, align 8
  call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 3, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ext4_fc_replay_scan, i32 noundef 1955, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.26, i64 noundef %64) #14
  %65 = ptrtoint ptr %s_fc_replay_state.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %s_fc_replay_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool72.not.i = icmp eq i32 %66, 0
  br i1 %tobool72.not.i, label %tag2str.exit.i.out_err.i_crit_edge, label %tag2str.exit.i.lor.lhs.false.thread.i_crit_edge

tag2str.exit.i.lor.lhs.false.thread.i_crit_edge:  ; preds = %tag2str.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false.thread.i

tag2str.exit.i.out_err.i_crit_edge:               ; preds = %tag2str.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_err.i

if.then5.i.i:                                     ; preds = %tag2str.exit.thread172.i
  %add.i.i = add i32 %42, 4
  %67 = ptrtoint ptr %fc_regions_size.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %add.i.i, ptr %fc_regions_size.i.i, align 4
  %fc_regions.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %40, i32 0, i32 168, i32 5
  %68 = ptrtoint ptr %fc_regions.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %fc_regions.i.i, align 4
  %mul.i.i = mul i32 %add.i.i, 24
  %call8.i.i = call noalias ptr @krealloc(ptr noundef %69, i32 noundef %mul.i.i, i32 noundef 3264) #18
  %70 = ptrtoint ptr %fc_regions.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call8.i.i, ptr %fc_regions.i.i, align 4
  %tobool11.not.i.i = icmp eq ptr %call8.i.i, null
  br i1 %tobool11.not.i.i, label %if.then5.i.i.out_err.i_crit_edge, label %if.then5.i.i.ext4_fc_record_regions.exit.i_crit_edge

if.then5.i.i.ext4_fc_record_regions.exit.i_crit_edge: ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ext4_fc_record_regions.exit.i

if.then5.i.i.out_err.i_crit_edge:                 ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_err.i

ext4_fc_record_regions.exit.i:                    ; preds = %if.then5.i.i.ext4_fc_record_regions.exit.i_crit_edge, %tag2str.exit.thread172.i.ext4_fc_record_regions.exit.i_crit_edge
  %fc_regions15.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %40, i32 0, i32 168, i32 5
  %71 = ptrtoint ptr %fc_regions15.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %fc_regions15.i.i, align 4
  %73 = ptrtoint ptr %fc_regions_used3.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %fc_regions_used3.i.i, align 4
  %inc.i.i = add i32 %74, 1
  store i32 %inc.i.i, ptr %fc_regions_used3.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.ext4_fc_alloc_region, ptr %72, i32 %74
  %ino17.i.i = getelementptr %struct.ext4_fc_alloc_region, ptr %72, i32 %74, i32 2
  %75 = ptrtoint ptr %ino17.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %34, ptr %ino17.i.i, align 8
  %76 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %35, ptr %arrayidx.i.i, align 8
  %pblk19.i.i = getelementptr %struct.ext4_fc_alloc_region, ptr %72, i32 %74, i32 1
  %77 = ptrtoint ptr %pblk19.i.i to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %or.i.i, ptr %pblk19.i.i, align 8
  %len20.i.i = getelementptr %struct.ext4_fc_alloc_region, ptr %72, i32 %74, i32 3
  %78 = ptrtoint ptr %len20.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %cond.i.i, ptr %len20.i.i, align 4
  br label %sw.bb27.i

sw.bb27.i:                                        ; preds = %ext4_fc_record_regions.exit.i, %tag2str.exit.thread.i
  %79 = ptrtoint ptr %fc_cur_tag63.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %fc_cur_tag63.i, align 4
  %inc29.i = add i32 %80, 1
  store i32 %inc29.i, ptr %fc_cur_tag63.i, align 4
  %81 = ptrtoint ptr %fc_crc65.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %fc_crc65.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %desc.i.i) #14
  %83 = call ptr @memset(ptr %desc.i.i, i32 255, i32 16)
  %84 = ptrtoint ptr %s_chksum_driver.i162.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %s_chksum_driver.i162.i, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %85, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %87)
  %cmp.not.i.i = icmp eq i32 %87, 4
  br i1 %cmp.not.i.i, label %do.end7.i.i, label %do.body2.i.i, !prof !171

do.body2.i.i:                                     ; preds = %sw.bb27.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #14, !srcloc !185
  unreachable

do.end7.i.i:                                      ; preds = %sw.bb27.i
  %88 = call i16 @llvm.bswap.i16(i16 %tl.sroa.6.0.copyload.i) #14
  %conv31.i = zext i16 %88 to i32
  %add.i = add nuw nsw i32 %conv31.i, 4
  %89 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %85, ptr %desc.i.i, align 8
  %90 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %82, ptr %22, align 8
  %call11.i.i = call i32 @crypto_shash_update(ptr noundef nonnull %desc.i.i, ptr noundef %cur.0208.i, i32 noundef %add.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i)
  %tobool12.not.i.i = icmp eq i32 %call11.i.i, 0
  br i1 %tobool12.not.i.i, label %ext4_chksum.exit.i, label %do.body20.i.i, !prof !171

do.body20.i.i:                                    ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #14, !srcloc !186
  unreachable

ext4_chksum.exit.i:                               ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %91 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %22, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %desc.i.i) #14
  %93 = ptrtoint ptr %fc_crc65.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %fc_crc65.i, align 4
  br label %for.inc.i

do.body2.i155.i:                                  ; preds = %tag2str.exit.thread175.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #14, !srcloc !185
  unreachable

do.end7.i158.i:                                   ; preds = %tag2str.exit.thread175.i
  %94 = ptrtoint ptr %desc.i152.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %55, ptr %desc.i152.i, align 8
  %95 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %52, ptr %21, align 8
  %call11.i156.i = call i32 @crypto_shash_update(ptr noundef nonnull %desc.i152.i, ptr noundef %cur.0208.i, i32 noundef 8) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i156.i)
  %tobool12.not.i157.i = icmp eq i32 %call11.i156.i, 0
  br i1 %tobool12.not.i157.i, label %ext4_chksum.exit160.i, label %do.body20.i159.i, !prof !171

do.body20.i159.i:                                 ; preds = %do.end7.i158.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #14, !srcloc !186
  unreachable

ext4_chksum.exit160.i:                            ; preds = %do.end7.i158.i
  %96 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %21, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %desc.i152.i) #14
  %98 = call i32 @llvm.bswap.i32(i32 %tail.sroa.0.0.copyload.i) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %98, i32 %expected_tid)
  %cmp40.i = icmp eq i32 %98, %expected_tid
  %99 = call i32 @llvm.bswap.i32(i32 %tail.sroa.5.0.copyload.i) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %99, i32 %97)
  %cmp44.i = icmp eq i32 %99, %97
  %or.cond.i = select i1 %cmp40.i, i1 %cmp44.i, i1 false
  br i1 %or.cond.i, label %lor.lhs.false.i, label %if.else.i

if.else.i:                                        ; preds = %ext4_chksum.exit160.i
  call void @__sanitizer_cov_trace_pc() #16
  %100 = ptrtoint ptr %s_fc_replay_state.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %s_fc_replay_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool.not.i = icmp eq i32 %101, 0
  %102 = ptrtoint ptr %fc_crc65.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 0, ptr %fc_crc65.i, align 4
  %..i = select i1 %tobool.not.i, i32 -74, i32 0
  br label %out_err.i

if.end57.i:                                       ; preds = %tag2str.exit.thread178.i
  %head.sroa.5.0..sroa_idx.i = getelementptr i8, ptr %cur.0208.i, i32 8
  %103 = ptrtoint ptr %head.sroa.5.0..sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %103, i32 4)
  %head.sroa.5.0.copyload.i = load i32, ptr %head.sroa.5.0..sroa_idx.i, align 1
  %104 = call i32 @llvm.bswap.i32(i32 %head.sroa.5.0.copyload.i) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %104, i32 %expected_tid)
  %cmp59.not.i = icmp eq i32 %104, %expected_tid
  br i1 %cmp59.not.i, label %if.end62.i, label %if.end57.i.lor.lhs.false.thread.i_crit_edge

if.end57.i.lor.lhs.false.thread.i_crit_edge:      ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false.thread.i

if.end62.i:                                       ; preds = %if.end57.i
  %105 = ptrtoint ptr %fc_cur_tag63.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %fc_cur_tag63.i, align 4
  %inc64.i = add i32 %106, 1
  store i32 %inc64.i, ptr %fc_cur_tag63.i, align 4
  %107 = ptrtoint ptr %fc_crc65.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %fc_crc65.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %desc.i161.i) #14
  %109 = call ptr @memset(ptr %desc.i161.i, i32 255, i32 16)
  %110 = ptrtoint ptr %s_chksum_driver.i162.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %s_chksum_driver.i162.i, align 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %111, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %113)
  %cmp.not.i163.i = icmp eq i32 %113, 4
  br i1 %cmp.not.i163.i, label %do.end7.i167.i, label %do.body2.i164.i, !prof !171

do.body2.i164.i:                                  ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #14, !srcloc !185
  unreachable

do.end7.i167.i:                                   ; preds = %if.end62.i
  %114 = call i16 @llvm.bswap.i16(i16 %tl.sroa.6.0.copyload.i) #14
  %conv67.i = zext i16 %114 to i32
  %add68.i = add nuw nsw i32 %conv67.i, 4
  %115 = ptrtoint ptr %desc.i161.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %111, ptr %desc.i161.i, align 8
  %116 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %108, ptr %20, align 8
  %call11.i165.i = call i32 @crypto_shash_update(ptr noundef nonnull %desc.i161.i, ptr noundef %cur.0208.i, i32 noundef %add68.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i165.i)
  %tobool12.not.i166.i = icmp eq i32 %call11.i165.i, 0
  br i1 %tobool12.not.i166.i, label %ext4_chksum.exit169.i, label %do.body20.i168.i, !prof !171

do.body20.i168.i:                                 ; preds = %do.end7.i167.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #14, !srcloc !186
  unreachable

ext4_chksum.exit169.i:                            ; preds = %do.end7.i167.i
  call void @__sanitizer_cov_trace_pc() #16
  %117 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %20, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %desc.i161.i) #14
  %119 = ptrtoint ptr %fc_crc65.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %fc_crc65.i, align 4
  br label %for.inc.i

lor.lhs.false.thread.i:                           ; preds = %if.end57.i.lor.lhs.false.thread.i_crit_edge, %tag2str.exit.i.lor.lhs.false.thread.i_crit_edge
  br label %out_err.i

lor.lhs.false.i:                                  ; preds = %ext4_chksum.exit160.i
  call void @__sanitizer_cov_trace_pc() #16
  %120 = ptrtoint ptr %fc_cur_tag63.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %fc_cur_tag63.i, align 4
  %122 = ptrtoint ptr %s_fc_replay_state.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %121, ptr %s_fc_replay_state.i, align 4
  %123 = ptrtoint ptr %fc_regions_used49.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %fc_regions_used49.i, align 4
  %125 = ptrtoint ptr %fc_regions_valid50.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %124, ptr %fc_regions_valid50.i, align 4
  %126 = ptrtoint ptr %fc_crc65.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 0, ptr %fc_crc65.i, align 4
  %.pre.i = call i16 @llvm.bswap.i16(i16 %tl.sroa.6.0.copyload.i) #14
  %.pre212.i = zext i16 %.pre.i to i32
  br label %for.inc.i

for.inc.i:                                        ; preds = %lor.lhs.false.i, %ext4_chksum.exit169.i, %ext4_chksum.exit.i
  %conv82.pre-phi.i = phi i32 [ %conv67.i, %ext4_chksum.exit169.i ], [ %conv31.i, %ext4_chksum.exit.i ], [ %.pre212.i, %lor.lhs.false.i ]
  %add.ptr83.i = getelementptr i8, ptr %add.ptr15.i, i32 %conv82.pre-phi.i
  %cmp13.i = icmp ult ptr %add.ptr83.i, %add.ptr2.i
  br i1 %cmp13.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.out_err.i_crit_edge

for.inc.i.out_err.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_err.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

out_err.i:                                        ; preds = %for.inc.i.out_err.i_crit_edge, %lor.lhs.false.thread.i, %if.else.i, %if.then5.i.i.out_err.i_crit_edge, %tag2str.exit.i.out_err.i_crit_edge, %tag2str.exit.thread178.i.out_err.i_crit_edge, %if.end11.i.out_err.i_crit_edge, %if.end6.i.out_err.i_crit_edge
  %ret.4.i = phi i32 [ -117, %if.end6.i.out_err.i_crit_edge ], [ -125, %tag2str.exit.i.out_err.i_crit_edge ], [ 0, %lor.lhs.false.thread.i ], [ 1, %if.end11.i.out_err.i_crit_edge ], [ %..i, %if.else.i ], [ -12, %if.then5.i.i.out_err.i_crit_edge ], [ -95, %tag2str.exit.thread178.i.out_err.i_crit_edge ], [ 1, %for.inc.i.out_err.i_crit_edge ]
  call fastcc void @trace_ext4_fc_replay_scan(ptr noundef %6, i32 noundef %ret.4.i, i32 noundef %off) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %127 = ptrtoint ptr %fc_current_pass to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %fc_current_pass, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %128, i32 %pass)
  %cmp3.not = icmp eq i32 %128, %pass
  br i1 %cmp3.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %129 = ptrtoint ptr %fc_current_pass to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %pass, ptr %fc_current_pass, align 4
  %s_mount_state = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 25
  %130 = ptrtoint ptr %s_mount_state to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %s_mount_state, align 8
  %132 = or i16 %131, 32
  store i16 %132, ptr %s_mount_state, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %133 = ptrtoint ptr %s_fc_replay_state to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %s_fc_replay_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %tobool.not = icmp eq i32 %134, 0
  br i1 %tobool.not, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ext4_fc_replay, i32 noundef 2049, ptr noundef nonnull @.str.12) #14
  tail call fastcc void @ext4_fc_set_bitmaps_and_counters(ptr noundef %1)
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %s_fc_debug_max_replay = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 167
  %135 = ptrtoint ptr %s_fc_debug_max_replay to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %s_fc_debug_max_replay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %tobool11.not = icmp eq i32 %136, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %136, i32 %off)
  %cmp13.not = icmp sgt i32 %136, %off
  %or.cond = or i1 %tobool11.not, %cmp13.not
  br i1 %or.cond, label %if.end17, label %do.end

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %off) #19
  br label %cleanup

if.end17:                                         ; preds = %if.end10
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 5
  %137 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %b_data, align 4
  %j_blocksize = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 33
  %139 = ptrtoint ptr %j_blocksize to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %j_blocksize, align 8
  %add.ptr = getelementptr i8, ptr %138, i32 %140
  %add.ptr19 = getelementptr i8, ptr %add.ptr, i32 -1
  %cmp20325 = icmp ult ptr %138, %add.ptr19
  br i1 %cmp20325, label %for.body.lr.ph, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end17
  %141 = getelementptr inbounds %struct.ext4_iloc, ptr %iloc.i, i32 0, i32 1
  %142 = getelementptr inbounds %struct.ext4_iloc, ptr %iloc.i, i32 0, i32 2
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %m_lblk.i223 = getelementptr inbounds %struct.ext4_map_blocks, ptr %map.i189, i32 0, i32 1
  %m_len.i224 = getelementptr inbounds %struct.ext4_map_blocks, ptr %map.i189, i32 0, i32 2
  %s_blocksize_bits.i232 = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 2
  %143 = getelementptr inbounds %struct.dentry_info_args, ptr %darg.i172, i32 0, i32 1
  %144 = getelementptr inbounds %struct.dentry_info_args, ptr %darg.i172, i32 0, i32 2
  %145 = getelementptr inbounds %struct.dentry_info_args, ptr %darg.i172, i32 0, i32 4
  %146 = getelementptr inbounds i8, ptr %darg.i172, i32 12
  %147 = getelementptr inbounds %struct.ext4_extent, ptr %newex.i, i32 0, i32 1
  %148 = getelementptr inbounds %struct.ext4_extent, ptr %newex.i, i32 0, i32 2
  %149 = getelementptr inbounds %struct.ext4_extent, ptr %newex.i, i32 0, i32 3
  %m_lblk.i = getelementptr inbounds %struct.ext4_map_blocks, ptr %map.i, i32 0, i32 1
  %m_len.i = getelementptr inbounds %struct.ext4_map_blocks, ptr %map.i, i32 0, i32 2
  %m_flags.i = getelementptr inbounds %struct.ext4_map_blocks, ptr %map.i, i32 0, i32 3
  %name.i = getelementptr inbounds %struct.qstr, ptr %entry1.i, i32 0, i32 1
  %150 = getelementptr inbounds %struct.dentry_info_args, ptr %darg.i, i32 0, i32 1
  %151 = getelementptr inbounds %struct.dentry_info_args, ptr %darg.i, i32 0, i32 2
  %152 = getelementptr inbounds %struct.dentry_info_args, ptr %darg.i, i32 0, i32 4
  %153 = getelementptr inbounds i8, ptr %darg.i, i32 12
  br label %for.body

for.body:                                         ; preds = %if.end82.for.body_crit_edge, %for.body.lr.ph
  %cur.0326 = phi ptr [ %138, %for.body.lr.ph ], [ %add.ptr86, %if.end82.for.body_crit_edge ]
  %154 = ptrtoint ptr %cur.0326 to i32
  call void @__asan_loadN_noabort(i32 %154, i32 4)
  %155 = load i32, ptr %cur.0326, align 1
  %tl.sroa.7.0.extract.trunc = trunc i32 %155 to i16
  %add.ptr22 = getelementptr i8, ptr %cur.0326, i32 4
  %156 = ptrtoint ptr %s_fc_replay_state to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %s_fc_replay_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %157)
  %cmp24 = icmp eq i32 %157, 0
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @ext4_fc_set_bitmaps_and_counters(ptr noundef %1)
  br label %cleanup

if.end27:                                         ; preds = %for.body
  %tl.sroa.0.0.extract.shift = lshr i32 %155, 16
  %tl.sroa.0.0.extract.trunc = trunc i32 %tl.sroa.0.0.extract.shift to i16
  %158 = call i16 @llvm.bswap.i16(i16 %tl.sroa.0.0.extract.trunc)
  %159 = zext i16 %158 to i64
  call void @__sanitizer_cov_trace_switch(i64 %159, ptr @__sancov_gen_cov_switch_values.50)
  switch i16 %158, label %tag2str.exit [
    i16 4, label %tag2str.exit.thread
    i16 5, label %tag2str.exit.thread292
    i16 1, label %tag2str.exit.thread295
    i16 3, label %tag2str.exit.thread298
    i16 2, label %tag2str.exit.thread301
    i16 6, label %tag2str.exit.thread304
    i16 7, label %tag2str.exit.thread307
    i16 8, label %tag2str.exit.thread310
    i16 9, label %tag2str.exit.thread313
  ]

tag2str.exit.thread:                              ; preds = %if.end27
  call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 3, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ext4_fc_replay, i32 noundef 2074, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.17) #14
  %160 = ptrtoint ptr %s_fc_replay_state to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %s_fc_replay_state, align 4
  %dec291 = add i32 %161, -1
  store i32 %dec291, ptr %s_fc_replay_state, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %darg.i) #14
  %162 = ptrtoint ptr %153 to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 -1, ptr %153, align 4
  %163 = ptrtoint ptr %add.ptr22 to i32
  call void @__asan_loadN_noabort(i32 %163, i32 4)
  %fcd.sroa.0.0.copyload.i.i = load i32, ptr %add.ptr22, align 1
  %fcd.sroa.5.0..sroa_idx.i.i = getelementptr i8, ptr %cur.0326, i32 8
  %164 = ptrtoint ptr %fcd.sroa.5.0..sroa_idx.i.i to i32
  call void @__asan_loadN_noabort(i32 %164, i32 4)
  %fcd.sroa.5.0.copyload.i.i = load i32, ptr %fcd.sroa.5.0..sroa_idx.i.i, align 1
  %165 = call i32 @llvm.bswap.i32(i32 %fcd.sroa.0.0.copyload.i.i) #14
  %166 = ptrtoint ptr %darg.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %165, ptr %darg.i, align 4
  %167 = call i32 @llvm.bswap.i32(i32 %fcd.sroa.5.0.copyload.i.i) #14
  %168 = ptrtoint ptr %151 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %167, ptr %151, align 4
  %add.ptr.i.i = getelementptr i8, ptr %cur.0326, i32 12
  %169 = ptrtoint ptr %152 to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %add.ptr.i.i, ptr %152, align 4
  %170 = call i16 @llvm.bswap.i16(i16 %tl.sroa.7.0.extract.trunc) #14
  %conv.i.i136 = zext i16 %170 to i32
  %sub.i.i137 = add nsw i32 %conv.i.i136, -8
  %171 = ptrtoint ptr %150 to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %sub.i.i137, ptr %150, align 4
  call fastcc void @trace_ext4_fc_replay(ptr noundef %1, i32 noundef 4, i32 noundef %167, i32 noundef %165, i32 noundef %sub.i.i137) #14
  %call.i = call ptr @__ext4_iget(ptr noundef %1, i32 noundef %167, i32 noundef 0, ptr noundef nonnull @__func__.ext4_fc_replay_link, i32 noundef 1388) #14
  %cmp.i.i138 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i138, label %if.then.i139, label %if.end.i

tag2str.exit.thread292:                           ; preds = %if.end27
  call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 3, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ext4_fc_replay, i32 noundef 2074, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.18) #14
  %172 = ptrtoint ptr %s_fc_replay_state to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %s_fc_replay_state, align 4
  %dec294 = add i32 %173, -1
  store i32 %dec294, ptr %s_fc_replay_state, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %entry1.i) #14
  %174 = call ptr @memset(ptr %entry1.i, i32 255, i32 16)
  %175 = ptrtoint ptr %add.ptr22 to i32
  call void @__asan_loadN_noabort(i32 %175, i32 4)
  %fcd.sroa.0.0.copyload.i.i141 = load i32, ptr %add.ptr22, align 1
  %fcd.sroa.5.0..sroa_idx.i.i142 = getelementptr i8, ptr %cur.0326, i32 8
  %176 = ptrtoint ptr %fcd.sroa.5.0..sroa_idx.i.i142 to i32
  call void @__asan_loadN_noabort(i32 %176, i32 4)
  %fcd.sroa.5.0.copyload.i.i143 = load i32, ptr %fcd.sroa.5.0..sroa_idx.i.i142, align 1
  %177 = call i32 @llvm.bswap.i32(i32 %fcd.sroa.0.0.copyload.i.i141) #14
  %178 = call i32 @llvm.bswap.i32(i32 %fcd.sroa.5.0.copyload.i.i143) #14
  %add.ptr.i.i144 = getelementptr i8, ptr %cur.0326, i32 12
  %179 = call i16 @llvm.bswap.i16(i16 %tl.sroa.7.0.extract.trunc) #14
  %conv.i.i146 = zext i16 %179 to i32
  %sub.i.i147 = add nsw i32 %conv.i.i146, -8
  call fastcc void @trace_ext4_fc_replay(ptr noundef %1, i32 noundef 5, i32 noundef %178, i32 noundef %177, i32 noundef %sub.i.i147) #14
  %180 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr %add.ptr.i.i144, ptr %name.i, align 8
  %181 = ptrtoint ptr %entry1.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %sub.i.i147, ptr %entry1.i, align 8
  %call.i148 = call ptr @__ext4_iget(ptr noundef %1, i32 noundef %178, i32 noundef 0, ptr noundef nonnull @__func__.ext4_fc_replay_unlink, i32 noundef 1294) #14
  %cmp.i.i149 = icmp ugt ptr %call.i148, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i149, label %if.then.i150, label %if.end.i151

tag2str.exit.thread295:                           ; preds = %if.end27
  call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 3, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ext4_fc_replay, i32 noundef 2074, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.19) #14
  %182 = ptrtoint ptr %s_fc_replay_state to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %s_fc_replay_state, align 4
  %dec297 = add i32 %183, -1
  store i32 %dec297, ptr %s_fc_replay_state, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %newex.i) #14
  %184 = call ptr @memset(ptr %newex.i, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %map.i) #14
  %185 = call ptr @memset(ptr %map.i, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %path.i) #14
  %186 = ptrtoint ptr %path.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr null, ptr %path.i, align 4
  %187 = ptrtoint ptr %add.ptr22 to i32
  call void @__asan_loadN_noabort(i32 %187, i32 4)
  %fc_add_ex.sroa.0.0.copyload.i = load i32, ptr %add.ptr22, align 1
  %fc_add_ex.sroa.6.0.val.sroa_idx.i = getelementptr i8, ptr %cur.0326, i32 8
  %188 = ptrtoint ptr %fc_add_ex.sroa.6.0.val.sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %188, i32 4)
  %fc_add_ex.sroa.6.0.copyload.i = load i32, ptr %fc_add_ex.sroa.6.0.val.sroa_idx.i, align 1
  %fc_add_ex.sroa.12.0.val.sroa_idx.i = getelementptr i8, ptr %cur.0326, i32 12
  %189 = ptrtoint ptr %fc_add_ex.sroa.12.0.val.sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %189, i32 2)
  %fc_add_ex.sroa.12.0.copyload.i = load i16, ptr %fc_add_ex.sroa.12.0.val.sroa_idx.i, align 1
  %fc_add_ex.sroa.21.0.val.sroa_idx.i = getelementptr i8, ptr %cur.0326, i32 14
  %190 = ptrtoint ptr %fc_add_ex.sroa.21.0.val.sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %190, i32 2)
  %fc_add_ex.sroa.21.0.copyload.i = load i16, ptr %fc_add_ex.sroa.21.0.val.sroa_idx.i, align 1
  %fc_add_ex.sroa.24.0.val.sroa_idx.i = getelementptr i8, ptr %cur.0326, i32 16
  %191 = ptrtoint ptr %fc_add_ex.sroa.24.0.val.sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %191, i32 4)
  %fc_add_ex.sroa.24.0.copyload.i = load i32, ptr %fc_add_ex.sroa.24.0.val.sroa_idx.i, align 1
  %192 = call i32 @llvm.bswap.i32(i32 %fc_add_ex.sroa.0.0.copyload.i) #14
  %193 = call i32 @llvm.bswap.i32(i32 %fc_add_ex.sroa.6.0.copyload.i) #14
  %194 = call i16 @llvm.bswap.i16(i16 %fc_add_ex.sroa.12.0.copyload.i) #14
  %conv.i.i155 = zext i16 %194 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32767, i16 %194)
  %cmp.i.i156 = icmp ult i16 %194, -32767
  %sub.i.i157 = add nsw i32 %conv.i.i155, -32768
  %cond.i.i158 = select i1 %cmp.i.i156, i32 %conv.i.i155, i32 %sub.i.i157
  call fastcc void @trace_ext4_fc_replay(ptr noundef %1, i32 noundef 1, i32 noundef %192, i32 noundef %193, i32 noundef %cond.i.i158) #14
  %call2.i = call ptr @__ext4_iget(ptr noundef %1, i32 noundef %192, i32 noundef 0, ptr noundef nonnull @__func__.ext4_fc_replay_add_range, i32 noundef 1648) #14
  %cmp.i1.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1.i, label %if.then.i159, label %if.end.i160

tag2str.exit.thread298:                           ; preds = %if.end27
  call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 3, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ext4_fc_replay, i32 noundef 2074, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.20) #14
  %195 = ptrtoint ptr %s_fc_replay_state to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %s_fc_replay_state, align 4
  %dec300 = add i32 %196, -1
  store i32 %dec300, ptr %s_fc_replay_state, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %darg.i172) #14
  %197 = ptrtoint ptr %146 to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 -1, ptr %146, align 4
  %198 = ptrtoint ptr %add.ptr22 to i32
  call void @__asan_loadN_noabort(i32 %198, i32 4)
  %fcd.sroa.0.0.copyload.i.i173 = load i32, ptr %add.ptr22, align 1
  %fcd.sroa.5.0..sroa_idx.i.i174 = getelementptr i8, ptr %cur.0326, i32 8
  %199 = ptrtoint ptr %fcd.sroa.5.0..sroa_idx.i.i174 to i32
  call void @__asan_loadN_noabort(i32 %199, i32 4)
  %fcd.sroa.5.0.copyload.i.i175 = load i32, ptr %fcd.sroa.5.0..sroa_idx.i.i174, align 1
  %200 = call i32 @llvm.bswap.i32(i32 %fcd.sroa.0.0.copyload.i.i173) #14
  %201 = ptrtoint ptr %darg.i172 to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 %200, ptr %darg.i172, align 4
  %202 = call i32 @llvm.bswap.i32(i32 %fcd.sroa.5.0.copyload.i.i175) #14
  %203 = ptrtoint ptr %144 to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 %202, ptr %144, align 4
  %add.ptr.i.i176 = getelementptr i8, ptr %cur.0326, i32 12
  %204 = ptrtoint ptr %145 to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr %add.ptr.i.i176, ptr %145, align 4
  %205 = call i16 @llvm.bswap.i16(i16 %tl.sroa.7.0.extract.trunc) #14
  %conv.i.i178 = zext i16 %205 to i32
  %sub.i.i179 = add nsw i32 %conv.i.i178, -8
  %206 = ptrtoint ptr %143 to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %sub.i.i179, ptr %143, align 4
  call fastcc void @trace_ext4_fc_replay(ptr noundef %1, i32 noundef 3, i32 noundef %202, i32 noundef %200, i32 noundef %sub.i.i179) #14
  %call.i180 = call i32 @ext4_mark_inode_used(ptr noundef %1, i32 noundef %202) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i180)
  %tobool.not.i181 = icmp eq i32 %call.i180, 0
  br i1 %tobool.not.i181, label %if.end.i184, label %tag2str.exit.thread298.ext4_fc_replay_create.exit_crit_edge

tag2str.exit.thread298.ext4_fc_replay_create.exit_crit_edge: ; preds = %tag2str.exit.thread298
  call void @__sanitizer_cov_trace_pc() #16
  br label %ext4_fc_replay_create.exit

tag2str.exit.thread301:                           ; preds = %if.end27
  call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 3, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ext4_fc_replay, i32 noundef 2074, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.21) #14
  %207 = ptrtoint ptr %s_fc_replay_state to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %s_fc_replay_state, align 4
  %dec303 = add i32 %208, -1
  store i32 %dec303, ptr %s_fc_replay_state, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %map.i189) #14
  %209 = call ptr @memset(ptr %map.i189, i32 255, i32 24)
  %210 = ptrtoint ptr %add.ptr22 to i32
  call void @__asan_loadN_noabort(i32 %210, i32 4)
  %lrange.sroa.0.0.copyload.i = load i32, ptr %add.ptr22, align 1
  %lrange.sroa.7.0..sroa_idx.i = getelementptr i8, ptr %cur.0326, i32 8
  %211 = ptrtoint ptr %lrange.sroa.7.0..sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %211, i32 4)
  %lrange.sroa.7.0.copyload.i = load i32, ptr %lrange.sroa.7.0..sroa_idx.i, align 1
  %lrange.sroa.12.0..sroa_idx.i = getelementptr i8, ptr %cur.0326, i32 12
  %212 = ptrtoint ptr %lrange.sroa.12.0..sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %212, i32 4)
  %lrange.sroa.12.0.copyload.i = load i32, ptr %lrange.sroa.12.0..sroa_idx.i, align 1
  %213 = call i32 @llvm.bswap.i32(i32 %lrange.sroa.7.0.copyload.i) #14
  %214 = call i32 @llvm.bswap.i32(i32 %lrange.sroa.12.0.copyload.i) #14
  %215 = call i32 @llvm.bswap.i32(i32 %lrange.sroa.0.0.copyload.i) #14
  call fastcc void @trace_ext4_fc_replay(ptr noundef %1, i32 noundef 2, i32 noundef %215, i32 noundef %213, i32 noundef %214) #14
  %call.i190 = call ptr @__ext4_iget(ptr noundef %1, i32 noundef %215, i32 noundef 0, ptr noundef nonnull @__func__.ext4_fc_replay_del_range, i32 noundef 1766) #14
  %cmp.i.i191 = icmp ugt ptr %call.i190, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i191, label %if.then.i192, label %if.end.i197

tag2str.exit.thread304:                           ; preds = %if.end27
  call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 3, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ext4_fc_replay, i32 noundef 2074, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.22) #14
  %216 = ptrtoint ptr %s_fc_replay_state to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %s_fc_replay_state, align 4
  %dec306 = add i32 %217, -1
  store i32 %dec306, ptr %s_fc_replay_state, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %iloc.i) #14
  %218 = ptrtoint ptr %iloc.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr inttoptr (i32 -1 to ptr), ptr %iloc.i, align 4, !annotation !184
  %219 = ptrtoint ptr %141 to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 -1, ptr %141, align 4, !annotation !184
  %220 = ptrtoint ptr %142 to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 -1, ptr %142, align 4, !annotation !184
  %221 = ptrtoint ptr %add.ptr22 to i32
  call void @__asan_loadN_noabort(i32 %221, i32 4)
  %fc_inode.sroa.0.0.copyload.i = load i32, ptr %add.ptr22, align 1
  %222 = call i32 @llvm.bswap.i32(i32 %fc_inode.sroa.0.0.copyload.i) #14
  call fastcc void @trace_ext4_fc_replay(ptr noundef %1, i32 noundef 6, i32 noundef %222, i32 noundef 0, i32 noundef 0) #14
  %call.i237 = call ptr @__ext4_iget(ptr noundef %1, i32 noundef %222, i32 noundef 0, ptr noundef nonnull @__func__.ext4_fc_replay_inode, i32 noundef 1446) #14
  %cmp.i.i238 = icmp ugt ptr %call.i237, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i238, label %tag2str.exit.thread304.if.end.i244_crit_edge, label %if.then.i240

tag2str.exit.thread304.if.end.i244_crit_edge:     ; preds = %tag2str.exit.thread304
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i244

tag2str.exit.thread307:                           ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 3, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ext4_fc_replay, i32 noundef 2074, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.23) #14
  %223 = ptrtoint ptr %s_fc_replay_state to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %s_fc_replay_state, align 4
  %dec309 = add i32 %224, -1
  store i32 %dec309, ptr %s_fc_replay_state, align 4
  %225 = call i16 @llvm.bswap.i16(i16 %tl.sroa.7.0.extract.trunc)
  %conv44 = zext i16 %225 to i32
  call fastcc void @trace_ext4_fc_replay(ptr noundef %1, i32 noundef 7, i32 noundef 0, i32 noundef %conv44, i32 noundef 0)
  br label %if.end82

tag2str.exit.thread310:                           ; preds = %if.end27
  call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 3, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ext4_fc_replay, i32 noundef 2074, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.24) #14
  %226 = ptrtoint ptr %s_fc_replay_state to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %s_fc_replay_state, align 4
  %dec312 = add i32 %227, -1
  store i32 %dec312, ptr %s_fc_replay_state, align 4
  %228 = call i16 @llvm.bswap.i16(i16 %tl.sroa.7.0.extract.trunc)
  %conv47 = zext i16 %228 to i32
  call fastcc void @trace_ext4_fc_replay(ptr noundef %1, i32 noundef 8, i32 noundef 0, i32 noundef %conv47, i32 noundef 0)
  %229 = ptrtoint ptr %add.ptr22 to i32
  call void @__asan_loadN_noabort(i32 %229, i32 4)
  %tail.sroa.0.0.copyload = load i32, ptr %add.ptr22, align 1
  %230 = call i32 @llvm.bswap.i32(i32 %tail.sroa.0.0.copyload)
  call void @__sanitizer_cov_trace_cmp4(i32 %230, i32 %expected_tid)
  %cmp48.not = icmp eq i32 %230, %expected_tid
  br i1 %cmp48.not, label %tag2str.exit.thread310.if.end82_crit_edge, label %do.end61, !prof !171

tag2str.exit.thread310.if.end82_crit_edge:        ; preds = %tag2str.exit.thread310
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end82

tag2str.exit.thread313:                           ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 3, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ext4_fc_replay, i32 noundef 2074, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.25) #14
  %231 = ptrtoint ptr %s_fc_replay_state to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %s_fc_replay_state, align 4
  %dec315 = add i32 %232, -1
  store i32 %dec315, ptr %s_fc_replay_state, align 4
  br label %if.end82

tag2str.exit:                                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  %tl.sroa.7.0.extract.trunc.le = trunc i32 %155 to i16
  call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 3, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ext4_fc_replay, i32 noundef 2074, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.26) #14
  %233 = ptrtoint ptr %s_fc_replay_state to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %s_fc_replay_state, align 4
  %dec = add i32 %234, -1
  store i32 %dec, ptr %s_fc_replay_state, align 4
  %conv31 = zext i16 %158 to i32
  %235 = call i16 @llvm.bswap.i16(i16 %tl.sroa.7.0.extract.trunc.le)
  %conv78 = zext i16 %235 to i32
  call fastcc void @trace_ext4_fc_replay(ptr noundef %1, i32 noundef %conv31, i32 noundef 0, i32 noundef %conv78, i32 noundef 0)
  br label %cleanup

if.then.i139:                                     ; preds = %tag2str.exit.thread
  call void @__sanitizer_cov_trace_pc() #16
  call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ext4_fc_replay_link, i32 noundef 1390, ptr noundef nonnull @.str.27) #14
  br label %ext4_fc_replay_link.exit

if.end.i:                                         ; preds = %tag2str.exit.thread
  call void @__sanitizer_cov_trace_pc() #16
  %call3.i = call fastcc i32 @ext4_fc_replay_link_internal(ptr noundef %1, ptr noundef nonnull %darg.i, ptr noundef %call.i) #14
  call void @iput(ptr noundef %call.i) #14
  br label %ext4_fc_replay_link.exit

ext4_fc_replay_link.exit:                         ; preds = %if.end.i, %if.then.i139
  %retval.0.i140 = phi i32 [ 0, %if.then.i139 ], [ %call3.i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %darg.i) #14
  br label %sw.epilog

if.then.i150:                                     ; preds = %tag2str.exit.thread292
  call void @__sanitizer_cov_trace_pc() #16
  call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ext4_fc_replay_unlink, i32 noundef 1297, ptr noundef nonnull @.str.32, i32 noundef %178) #14
  br label %ext4_fc_replay_unlink.exit

if.end.i151:                                      ; preds = %tag2str.exit.thread292
  %call7.i = call ptr @__ext4_iget(ptr noundef %1, i32 noundef %177, i32 noundef 0, ptr noundef nonnull @__func__.ext4_fc_replay_unlink, i32 noundef 1302) #14
  %cmp.i27.i = icmp ugt ptr %call7.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i27.i, label %if.then9.i, label %if.end11.i153

if.then9.i:                                       ; preds = %if.end.i151
  call void @__sanitizer_cov_trace_pc() #16
  call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ext4_fc_replay_unlink, i32 noundef 1304, ptr noundef nonnull @.str.33, i32 noundef %177) #14
  call void @iput(ptr noundef %call.i148) #14
  br label %ext4_fc_replay_unlink.exit

if.end11.i153:                                    ; preds = %if.end.i151
  call void @__sanitizer_cov_trace_pc() #16
  %call12.i = call i32 @__ext4_unlink(ptr noundef null, ptr noundef %call7.i, ptr noundef nonnull %entry1.i, ptr noundef %call.i148) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call12.i)
  %cmp.i152 = icmp eq i32 %call12.i, -2
  %spec.store.select.i = select i1 %cmp.i152, i32 0, i32 %call12.i
  call void @iput(ptr noundef %call7.i) #14
  call void @iput(ptr noundef %call.i148) #14
  br label %ext4_fc_replay_unlink.exit

ext4_fc_replay_unlink.exit:                       ; preds = %if.end11.i153, %if.then9.i, %if.then.i150
  %retval.0.i154 = phi i32 [ 0, %if.then.i150 ], [ 0, %if.then9.i ], [ %spec.store.select.i, %if.end11.i153 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %entry1.i) #14
  br label %sw.epilog

if.then.i159:                                     ; preds = %tag2str.exit.thread295
  call void @__sanitizer_cov_trace_pc() #16
  call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ext4_fc_replay_add_range, i32 noundef 1650, ptr noundef nonnull @.str.27) #14
  br label %ext4_fc_replay_add_range.exit

if.end.i160:                                      ; preds = %tag2str.exit.thread295
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %call2.i, i32 0, i32 11
  %236 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %i_ino.i, align 8
  %238 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %s_fs_info.i, align 16
  %fc_modified_inodes_used.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %239, i32 0, i32 168, i32 10
  %240 = ptrtoint ptr %fc_modified_inodes_used.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %fc_modified_inodes_used.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %241)
  %cmp36.i.i = icmp sgt i32 %241, 0
  br i1 %cmp36.i.i, label %for.body.lr.ph.i.i, label %if.end.i160.for.end.i.i_crit_edge

if.end.i160.for.end.i.i_crit_edge:                ; preds = %if.end.i160
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i160
  %fc_modified_inodes.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %239, i32 0, i32 168, i32 9
  %242 = ptrtoint ptr %fc_modified_inodes.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %fc_modified_inodes.i.i, align 4
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i161 = add nuw nsw i32 %i.037.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i161, %241
  br i1 %exitcond.not.i.i, label %for.cond.i.i.for.end.i.i_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.cond.i.i.for.end.i.i_crit_edge:               ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.037.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i161, %for.cond.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i162 = getelementptr i32, ptr %243, i32 %i.037.i.i
  %244 = ptrtoint ptr %arrayidx.i.i162 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %arrayidx.i.i162, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %245, i32 %237)
  %cmp1.i.i = icmp eq i32 %245, %237
  br i1 %cmp1.i.i, label %for.body.i.i.if.end6.i168_crit_edge, label %for.cond.i.i

for.body.i.i.if.end6.i168_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6.i168

for.end.i.i:                                      ; preds = %for.cond.i.i.for.end.i.i_crit_edge, %if.end.i160.for.end.i.i_crit_edge
  %fc_modified_inodes_size.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %239, i32 0, i32 168, i32 11
  %246 = ptrtoint ptr %fc_modified_inodes_size.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %fc_modified_inodes_size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %241, i32 %247)
  %cmp3.i.i = icmp eq i32 %241, %247
  br i1 %cmp3.i.i, label %if.then4.i.i, label %for.end.i.i.if.end14.i.i_crit_edge

for.end.i.i.if.end14.i.i_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14.i.i

if.then4.i.i:                                     ; preds = %for.end.i.i
  %fc_modified_inodes5.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %239, i32 0, i32 168, i32 9
  %248 = ptrtoint ptr %fc_modified_inodes5.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %fc_modified_inodes5.i.i, align 4
  %add.i.i163 = shl i32 %241, 2
  %mul.i.i164 = add i32 %add.i.i163, 16
  %call7.i.i = call noalias ptr @krealloc(ptr noundef %249, i32 noundef %mul.i.i164, i32 noundef 3264) #18
  %250 = ptrtoint ptr %fc_modified_inodes5.i.i to i32
  call void @__asan_store4_noabort(i32 %250)
  store ptr %call7.i.i, ptr %fc_modified_inodes5.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i.i, label %if.then4.i.i.out.i_crit_edge, label %if.end11.i.i

if.then4.i.i.out.i_crit_edge:                     ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

if.end11.i.i:                                     ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %251 = ptrtoint ptr %fc_modified_inodes_size.i.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %fc_modified_inodes_size.i.i, align 4
  %add13.i.i = add i32 %252, 4
  store i32 %add13.i.i, ptr %fc_modified_inodes_size.i.i, align 4
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %if.end11.i.i, %for.end.i.i.if.end14.i.i_crit_edge
  %fc_modified_inodes15.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %239, i32 0, i32 168, i32 9
  %253 = ptrtoint ptr %fc_modified_inodes15.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %fc_modified_inodes15.i.i, align 4
  %255 = ptrtoint ptr %fc_modified_inodes_used.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %fc_modified_inodes_used.i.i, align 4
  %inc17.i.i = add i32 %256, 1
  store i32 %inc17.i.i, ptr %fc_modified_inodes_used.i.i, align 4
  %arrayidx18.i.i = getelementptr i32, ptr %254, i32 %256
  %257 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_store4_noabort(i32 %257)
  store i32 %237, ptr %arrayidx18.i.i, align 4
  br label %if.end6.i168

if.end6.i168:                                     ; preds = %if.end14.i.i, %for.body.i.i.if.end6.i168_crit_edge
  %258 = call i32 @llvm.bswap.i32(i32 %fc_add_ex.sroa.24.0.copyload.i) #14
  %conv.i2.i = zext i32 %258 to i64
  %259 = call i16 @llvm.bswap.i16(i16 %fc_add_ex.sroa.21.0.copyload.i) #14
  %conv1.i.i165 = zext i16 %259 to i64
  %shl.i.i166 = shl nuw nsw i64 %conv1.i.i165, 32
  %or.i.i167 = or i64 %shl.i.i166, %conv.i2.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %194)
  %cmp.i9.i = icmp ugt i16 %194, -32768
  %conv1.i10.i = zext i1 %cmp.i9.i to i32
  %260 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %i_ino.i, align 8
  call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ext4_fc_replay_add_range, i32 noundef 1666, ptr noundef nonnull @.str.34, i32 noundef %193, i64 noundef %or.i.i167, i32 noundef %cond.i.i158, i32 noundef %conv1.i10.i, i32 noundef %261) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i.i158)
  %cmp96.i = icmp sgt i32 %cond.i.i158, 0
  br i1 %cmp96.i, label %while.body.lr.ph.i, label %if.end6.i168.while.end.i_crit_edge

if.end6.i168.while.end.i_crit_edge:               ; preds = %if.end6.i168
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %if.end6.i168
  %conv41.i = zext i32 %193 to i64
  %add40.i = sub nsw i64 %or.i.i167, %conv41.i
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %call2.i, i32 0, i32 8
  %add69.i = add i32 %cond.i.i158, %193
  %i_data_sem.i = getelementptr i8, ptr %call2.i, i32 -96
  br label %while.body.i

while.body.i:                                     ; preds = %next.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %remaining.099.i = phi i32 [ %cond.i.i158, %while.body.lr.ph.i ], [ %sub73.i, %next.i.while.body.i_crit_edge ]
  %cur.097.i = phi i32 [ %193, %while.body.lr.ph.i ], [ %add71.i, %next.i.while.body.i_crit_edge ]
  %262 = ptrtoint ptr %m_lblk.i to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 %cur.097.i, ptr %m_lblk.i, align 8
  %263 = ptrtoint ptr %m_len.i to i32
  call void @__asan_store4_noabort(i32 %263)
  store i32 %remaining.099.i, ptr %m_len.i, align 4
  %264 = ptrtoint ptr %map.i to i32
  call void @__asan_store8_noabort(i32 %264)
  store i64 0, ptr %map.i, align 8
  %call12.i169 = call i32 @ext4_map_blocks(ptr noundef null, ptr noundef %call2.i, ptr noundef nonnull %map.i, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i169)
  %cmp13.i170 = icmp slt i32 %call12.i169, 0
  br i1 %cmp13.i170, label %while.body.i.out.i_crit_edge, label %if.end15.i

while.body.i.out.i_crit_edge:                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

if.end15.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i169)
  %cmp16.i = icmp eq i32 %call12.i169, 0
  br i1 %cmp16.i, label %if.then17.i, label %if.end38.i

if.then17.i:                                      ; preds = %if.end15.i
  %call18.i = call ptr @ext4_find_extent(ptr noundef %call2.i, i32 noundef %cur.097.i, ptr noundef null, i32 noundef 0) #14
  %265 = ptrtoint ptr %path.i to i32
  call void @__asan_store4_noabort(i32 %265)
  store ptr %call18.i, ptr %path.i, align 4
  %cmp.i11.i = icmp ugt ptr %call18.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i11.i, label %if.then17.i.out.i_crit_edge, label %if.end21.i

if.then17.i.out.i_crit_edge:                      ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

if.end21.i:                                       ; preds = %if.then17.i
  %266 = call i32 @llvm.bswap.i32(i32 %cur.097.i) #14
  %267 = ptrtoint ptr %newex.i to i32
  call void @__asan_store4_noabort(i32 %267)
  store i32 %266, ptr %newex.i, align 4
  %conv.i = zext i32 %cur.097.i to i64
  %sub.i = add nsw i64 %add40.i, %conv.i
  %conv.i12.i = trunc i64 %sub.i to i32
  %268 = call i32 @llvm.bswap.i32(i32 %conv.i12.i) #14
  %269 = ptrtoint ptr %149 to i32
  call void @__asan_store4_noabort(i32 %269)
  store i32 %268, ptr %149, align 4
  %shr.i.i = lshr i64 %sub.i, 32
  %conv2.i.i = trunc i64 %shr.i.i to i16
  %270 = call i16 @llvm.bswap.i16(i16 %conv2.i.i) #14
  %271 = ptrtoint ptr %148 to i32
  call void @__asan_store2_noabort(i32 %271)
  store i16 %270, ptr %148, align 2
  %272 = ptrtoint ptr %m_len.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %m_len.i, align 4
  %conv25.i = trunc i32 %273 to i16
  %274 = call i16 @llvm.bswap.i16(i16 %conv25.i) #14
  %275 = ptrtoint ptr %147 to i32
  call void @__asan_store2_noabort(i32 %275)
  store i16 %274, ptr %147, align 4
  br i1 %cmp.i9.i, label %if.then28.i, label %if.end21.i.if.end29.i_crit_edge

if.end21.i.if.end29.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29.i

if.then28.i:                                      ; preds = %if.end21.i
  %276 = and i16 %274, -129
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %276)
  %cmp.i19.i = icmp eq i16 %276, 0
  br i1 %cmp.i19.i, label %do.body3.i.i, label %ext4_ext_mark_unwritten.exit.i, !prof !165

do.body3.i.i:                                     ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4_extents.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 200, 0\0A.popsection", ""() #14, !srcloc !189
  unreachable

ext4_ext_mark_unwritten.exit.i:                   ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #16
  %277 = or i16 %274, 128
  %278 = ptrtoint ptr %147 to i32
  call void @__asan_store2_noabort(i32 %278)
  store i16 %277, ptr %147, align 4
  br label %if.end29.i

if.end29.i:                                       ; preds = %ext4_ext_mark_unwritten.exit.i, %if.end21.i.if.end29.i_crit_edge
  call void @down_write(ptr noundef %i_data_sem.i) #14
  %call30.i = call i32 @ext4_ext_insert_extent(ptr noundef null, ptr noundef %call2.i, ptr noundef nonnull %path.i, ptr noundef nonnull %newex.i, i32 noundef 0) #14
  call void @up_write(ptr noundef %i_data_sem.i) #14
  %279 = ptrtoint ptr %path.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %path.i, align 4
  call void @ext4_ext_drop_refs(ptr noundef %280) #14
  %281 = ptrtoint ptr %path.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %path.i, align 4
  call void @kfree(ptr noundef %282) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool35.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool35.not.i, label %if.end29.i.next.i_crit_edge, label %if.end29.i.out.i_crit_edge

if.end29.i.out.i_crit_edge:                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

if.end29.i.next.i_crit_edge:                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %next.i

if.end38.i:                                       ; preds = %if.end15.i
  %conv39.i = zext i32 %cur.097.i to i64
  %sub42.i = add nsw i64 %add40.i, %conv39.i
  %283 = ptrtoint ptr %map.i to i32
  call void @__asan_load8_noabort(i32 %283)
  %284 = load i64, ptr %map.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %sub42.i, i64 %284)
  %cmp44.not.i = icmp eq i64 %sub42.i, %284
  br i1 %cmp44.not.i, label %if.end59.i, label %if.then46.i

if.then46.i:                                      ; preds = %if.end38.i
  %285 = ptrtoint ptr %m_len.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %m_len.i, align 4
  %call53.i = call i32 @ext4_ext_replay_update_ex(ptr noundef %call2.i, i32 noundef %cur.097.i, i32 noundef %286, i32 noundef %conv1.i10.i, i64 noundef %sub42.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %tobool54.not.i = icmp eq i32 %call53.i, 0
  br i1 %tobool54.not.i, label %if.end56.i, label %if.then46.i.out.i_crit_edge

if.then46.i.out.i_crit_edge:                      ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

if.end56.i:                                       ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #16
  %287 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %i_sb.i, align 4
  %289 = ptrtoint ptr %map.i to i32
  call void @__asan_load8_noabort(i32 %289)
  %290 = load i64, ptr %map.i, align 8
  %291 = ptrtoint ptr %m_len.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %m_len.i, align 4
  call void @ext4_mb_mark_bb(ptr noundef %288, i64 noundef %290, i32 noundef %292, i32 noundef 0) #14
  br label %next.i

if.end59.i:                                       ; preds = %if.end38.i
  %293 = ptrtoint ptr %m_flags.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %m_flags.i, align 8
  %and.i = and i32 %294, 2048
  call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ext4_fc_replay_add_range, i32 noundef 1727, ptr noundef nonnull @.str.35, i32 noundef %and.i, i32 noundef %conv1.i10.i, i64 noundef %sub42.i) #14
  %295 = ptrtoint ptr %m_len.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %m_len.i, align 4
  %297 = ptrtoint ptr %map.i to i32
  call void @__asan_load8_noabort(i32 %297)
  %298 = load i64, ptr %map.i, align 8
  %call65.i = call i32 @ext4_ext_replay_update_ex(ptr noundef %call2.i, i32 noundef %cur.097.i, i32 noundef %296, i32 noundef %conv1.i10.i, i64 noundef %298) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65.i)
  %tobool66.not.i = icmp eq i32 %call65.i, 0
  br i1 %tobool66.not.i, label %if.end68.i, label %if.end59.i.out.i_crit_edge

if.end59.i.out.i_crit_edge:                       ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

if.end68.i:                                       ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @ext4_ext_replay_shrink_inode(ptr noundef %call2.i, i32 noundef %add69.i) #14
  br label %next.i

next.i:                                           ; preds = %if.end68.i, %if.end56.i, %if.end29.i.next.i_crit_edge
  %299 = ptrtoint ptr %m_len.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %m_len.i, align 4
  %add71.i = add i32 %300, %cur.097.i
  %sub73.i = sub i32 %remaining.099.i, %300
  %cmp.i171 = icmp sgt i32 %sub73.i, 0
  br i1 %cmp.i171, label %next.i.while.body.i_crit_edge, label %next.i.while.end.i_crit_edge

next.i.while.end.i_crit_edge:                     ; preds = %next.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

next.i.while.body.i_crit_edge:                    ; preds = %next.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

while.end.i:                                      ; preds = %next.i.while.end.i_crit_edge, %if.end6.i168.while.end.i_crit_edge
  %call74.i = call fastcc i64 @i_size_read(ptr noundef %call2.i) #14
  %301 = ptrtoint ptr %s_blocksize_bits.i232 to i32
  call void @__asan_load1_noabort(i32 %301)
  %302 = load i8, ptr %s_blocksize_bits.i232, align 4
  %sh_prom.i = zext i8 %302 to i64
  %shr.i = ashr i64 %call74.i, %sh_prom.i
  %conv76.i = trunc i64 %shr.i to i32
  call void @ext4_ext_replay_shrink_inode(ptr noundef %call2.i, i32 noundef %conv76.i) #14
  br label %out.i

out.i:                                            ; preds = %while.end.i, %if.end59.i.out.i_crit_edge, %if.then46.i.out.i_crit_edge, %if.end29.i.out.i_crit_edge, %if.then17.i.out.i_crit_edge, %while.body.i.out.i_crit_edge, %if.then4.i.i.out.i_crit_edge
  call void @iput(ptr noundef %call2.i) #14
  br label %ext4_fc_replay_add_range.exit

ext4_fc_replay_add_range.exit:                    ; preds = %out.i, %if.then.i159
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %path.i) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %map.i) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %newex.i) #14
  br label %if.end82

if.end.i184:                                      ; preds = %tag2str.exit.thread298
  %call3.i182 = call ptr @__ext4_iget(ptr noundef %1, i32 noundef %202, i32 noundef 0, ptr noundef nonnull @__func__.ext4_fc_replay_create, i32 noundef 1550) #14
  %cmp.i.i183 = icmp ugt ptr %call3.i182, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i183, label %if.then5.i, label %if.end7.i

if.then5.i:                                       ; preds = %if.end.i184
  call void @__sanitizer_cov_trace_pc() #16
  call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ext4_fc_replay_create, i32 noundef 1552, ptr noundef nonnull @.str.36, i32 noundef %202) #14
  br label %ext4_fc_replay_create.exit

if.end7.i:                                        ; preds = %if.end.i184
  %303 = ptrtoint ptr %call3.i182 to i32
  call void @__asan_load2_noabort(i32 %303)
  %304 = load i16, ptr %call3.i182, align 8
  %305 = and i16 %304, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %305)
  %cmp.i185 = icmp eq i16 %305, 16384
  br i1 %cmp.i185, label %if.then9.i186, label %if.end7.i.if.end20.i_crit_edge

if.end7.i.if.end20.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20.i

if.then9.i186:                                    ; preds = %if.end7.i
  %call11.i = call ptr @__ext4_iget(ptr noundef %1, i32 noundef %200, i32 noundef 0, ptr noundef nonnull @__func__.ext4_fc_replay_create, i32 noundef 1563) #14
  %cmp.i45.i = icmp ugt ptr %call11.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i45.i, label %if.then13.i, label %if.end15.i187

if.then13.i:                                      ; preds = %if.then9.i186
  call void @__sanitizer_cov_trace_pc() #16
  call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ext4_fc_replay_create, i32 noundef 1565, ptr noundef nonnull @.str.37, i32 noundef %202) #14
  br label %out.i188

if.end15.i187:                                    ; preds = %if.then9.i186
  %call16.i = call i32 @ext4_init_new_dir(ptr noundef null, ptr noundef %call11.i, ptr noundef %call3.i182) #14
  call void @iput(ptr noundef %call11.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end15.i187.if.end20.i_crit_edge, label %if.end15.i187.out.i188_crit_edge

if.end15.i187.out.i188_crit_edge:                 ; preds = %if.end15.i187
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i188

if.end15.i187.if.end20.i_crit_edge:               ; preds = %if.end15.i187
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.end15.i187.if.end20.i_crit_edge, %if.end7.i.if.end20.i_crit_edge
  %call21.i = call fastcc i32 @ext4_fc_replay_link_internal(ptr noundef %1, ptr noundef nonnull %darg.i172, ptr noundef %call3.i182) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %if.end24.i, label %if.end20.i.out.i188_crit_edge

if.end20.i.out.i188_crit_edge:                    ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i188

if.end24.i:                                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @set_nlink(ptr noundef %call3.i182, i32 noundef 1) #14
  %call25.i = call i32 @__ext4_mark_inode_dirty(ptr noundef null, ptr noundef %call3.i182, ptr noundef nonnull @__func__.ext4_fc_replay_create, i32 noundef 1579) #14
  br label %out.i188

out.i188:                                         ; preds = %if.end24.i, %if.end20.i.out.i188_crit_edge, %if.end15.i187.out.i188_crit_edge, %if.then13.i
  %ret.0.i = phi i32 [ 0, %if.then13.i ], [ %call21.i, %if.end20.i.out.i188_crit_edge ], [ 0, %if.end24.i ], [ 0, %if.end15.i187.out.i188_crit_edge ]
  %tobool26.not.i = icmp eq ptr %call3.i182, null
  br i1 %tobool26.not.i, label %out.i188.ext4_fc_replay_create.exit_crit_edge, label %if.then27.i

out.i188.ext4_fc_replay_create.exit_crit_edge:    ; preds = %out.i188
  call void @__sanitizer_cov_trace_pc() #16
  br label %ext4_fc_replay_create.exit

if.then27.i:                                      ; preds = %out.i188
  call void @__sanitizer_cov_trace_pc() #16
  call void @iput(ptr noundef nonnull %call3.i182) #14
  br label %ext4_fc_replay_create.exit

ext4_fc_replay_create.exit:                       ; preds = %if.then27.i, %out.i188.ext4_fc_replay_create.exit_crit_edge, %if.then5.i, %tag2str.exit.thread298.ext4_fc_replay_create.exit_crit_edge
  %ret.049.i = phi i32 [ %ret.0.i, %if.then27.i ], [ %ret.0.i, %out.i188.ext4_fc_replay_create.exit_crit_edge ], [ -22, %if.then5.i ], [ %call.i180, %tag2str.exit.thread298.ext4_fc_replay_create.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %darg.i172) #14
  br label %sw.epilog

if.then.i192:                                     ; preds = %tag2str.exit.thread301
  call void @__sanitizer_cov_trace_pc() #16
  call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ext4_fc_replay_del_range, i32 noundef 1768, ptr noundef nonnull @.str.32, i32 noundef %215) #14
  br label %ext4_fc_replay_del_range.exit

if.end.i197:                                      ; preds = %tag2str.exit.thread301
  %i_ino.i193 = getelementptr inbounds %struct.inode, ptr %call.i190, i32 0, i32 11
  %306 = ptrtoint ptr %i_ino.i193 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %i_ino.i193, align 8
  %308 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %s_fs_info.i, align 16
  %fc_modified_inodes_used.i.i195 = getelementptr inbounds %struct.ext4_sb_info, ptr %309, i32 0, i32 168, i32 10
  %310 = ptrtoint ptr %fc_modified_inodes_used.i.i195 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %fc_modified_inodes_used.i.i195, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %311)
  %cmp36.i.i196 = icmp sgt i32 %311, 0
  br i1 %cmp36.i.i196, label %for.body.lr.ph.i.i199, label %if.end.i197.for.end.i.i209_crit_edge

if.end.i197.for.end.i.i209_crit_edge:             ; preds = %if.end.i197
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i209

for.body.lr.ph.i.i199:                            ; preds = %if.end.i197
  %fc_modified_inodes.i.i198 = getelementptr inbounds %struct.ext4_sb_info, ptr %309, i32 0, i32 168, i32 9
  %312 = ptrtoint ptr %fc_modified_inodes.i.i198 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %fc_modified_inodes.i.i198, align 4
  br label %for.body.i.i206

for.cond.i.i202:                                  ; preds = %for.body.i.i206
  %inc.i.i200 = add nuw nsw i32 %i.037.i.i203, 1
  %exitcond.not.i.i201 = icmp eq i32 %inc.i.i200, %311
  br i1 %exitcond.not.i.i201, label %for.cond.i.i202.for.end.i.i209_crit_edge, label %for.cond.i.i202.for.body.i.i206_crit_edge

for.cond.i.i202.for.body.i.i206_crit_edge:        ; preds = %for.cond.i.i202
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i206

for.cond.i.i202.for.end.i.i209_crit_edge:         ; preds = %for.cond.i.i202
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i209

for.body.i.i206:                                  ; preds = %for.cond.i.i202.for.body.i.i206_crit_edge, %for.body.lr.ph.i.i199
  %i.037.i.i203 = phi i32 [ 0, %for.body.lr.ph.i.i199 ], [ %inc.i.i200, %for.cond.i.i202.for.body.i.i206_crit_edge ]
  %arrayidx.i.i204 = getelementptr i32, ptr %313, i32 %i.037.i.i203
  %314 = ptrtoint ptr %arrayidx.i.i204 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %arrayidx.i.i204, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %315, i32 %307)
  %cmp1.i.i205 = icmp eq i32 %315, %307
  br i1 %cmp1.i.i205, label %for.body.i.i206.if.end6.i222_crit_edge, label %for.cond.i.i202

for.body.i.i206.if.end6.i222_crit_edge:           ; preds = %for.body.i.i206
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6.i222

for.end.i.i209:                                   ; preds = %for.cond.i.i202.for.end.i.i209_crit_edge, %if.end.i197.for.end.i.i209_crit_edge
  %fc_modified_inodes_size.i.i207 = getelementptr inbounds %struct.ext4_sb_info, ptr %309, i32 0, i32 168, i32 11
  %316 = ptrtoint ptr %fc_modified_inodes_size.i.i207 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %fc_modified_inodes_size.i.i207, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %311, i32 %317)
  %cmp3.i.i208 = icmp eq i32 %311, %317
  br i1 %cmp3.i.i208, label %if.then4.i.i215, label %for.end.i.i209.if.end14.i.i221_crit_edge

for.end.i.i209.if.end14.i.i221_crit_edge:         ; preds = %for.end.i.i209
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14.i.i221

if.then4.i.i215:                                  ; preds = %for.end.i.i209
  %fc_modified_inodes5.i.i210 = getelementptr inbounds %struct.ext4_sb_info, ptr %309, i32 0, i32 168, i32 9
  %318 = ptrtoint ptr %fc_modified_inodes5.i.i210 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %fc_modified_inodes5.i.i210, align 4
  %add.i.i211 = shl i32 %311, 2
  %mul.i.i212 = add i32 %add.i.i211, 16
  %call7.i.i213 = call noalias ptr @krealloc(ptr noundef %319, i32 noundef %mul.i.i212, i32 noundef 3264) #18
  %320 = ptrtoint ptr %fc_modified_inodes5.i.i210 to i32
  call void @__asan_store4_noabort(i32 %320)
  store ptr %call7.i.i213, ptr %fc_modified_inodes5.i.i210, align 4
  %tobool.not.i.i214 = icmp eq ptr %call7.i.i213, null
  br i1 %tobool.not.i.i214, label %if.then4.i.i215.out.i235_crit_edge, label %if.end11.i.i217

if.then4.i.i215.out.i235_crit_edge:               ; preds = %if.then4.i.i215
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i235

if.end11.i.i217:                                  ; preds = %if.then4.i.i215
  call void @__sanitizer_cov_trace_pc() #16
  %321 = ptrtoint ptr %fc_modified_inodes_size.i.i207 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %fc_modified_inodes_size.i.i207, align 4
  %add13.i.i216 = add i32 %322, 4
  store i32 %add13.i.i216, ptr %fc_modified_inodes_size.i.i207, align 4
  br label %if.end14.i.i221

if.end14.i.i221:                                  ; preds = %if.end11.i.i217, %for.end.i.i209.if.end14.i.i221_crit_edge
  %fc_modified_inodes15.i.i218 = getelementptr inbounds %struct.ext4_sb_info, ptr %309, i32 0, i32 168, i32 9
  %323 = ptrtoint ptr %fc_modified_inodes15.i.i218 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %fc_modified_inodes15.i.i218, align 4
  %325 = ptrtoint ptr %fc_modified_inodes_used.i.i195 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %fc_modified_inodes_used.i.i195, align 4
  %inc17.i.i219 = add i32 %326, 1
  store i32 %inc17.i.i219, ptr %fc_modified_inodes_used.i.i195, align 4
  %arrayidx18.i.i220 = getelementptr i32, ptr %324, i32 %326
  %327 = ptrtoint ptr %arrayidx18.i.i220 to i32
  call void @__asan_store4_noabort(i32 %327)
  store i32 %307, ptr %arrayidx18.i.i220, align 4
  br label %if.end6.i222

if.end6.i222:                                     ; preds = %if.end14.i.i221, %for.body.i.i206.if.end6.i222_crit_edge
  %328 = ptrtoint ptr %i_ino.i193 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %i_ino.i193, align 8
  call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ext4_fc_replay_del_range, i32 noundef 1778, ptr noundef nonnull @.str.38, i32 noundef %329, i32 noundef %213, i32 noundef %214) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lrange.sroa.12.0.copyload.i)
  %cmp.not4.i = icmp eq i32 %lrange.sroa.12.0.copyload.i, 0
  br i1 %cmp.not4.i, label %if.end6.i222.while.end.i231_crit_edge, label %while.body.lr.ph.i226

if.end6.i222.while.end.i231_crit_edge:            ; preds = %if.end6.i222
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i231

while.body.lr.ph.i226:                            ; preds = %if.end6.i222
  %i_sb.i225 = getelementptr inbounds %struct.inode, ptr %call.i190, i32 0, i32 8
  br label %while.body.i227

while.body.i227:                                  ; preds = %if.end21.i229.while.body.i227_crit_edge, %while.body.lr.ph.i226
  %remaining.06.i = phi i32 [ %214, %while.body.lr.ph.i226 ], [ %remaining.1.i, %if.end21.i229.while.body.i227_crit_edge ]
  %cur.05.i = phi i32 [ %213, %while.body.lr.ph.i226 ], [ %cur.1.i, %if.end21.i229.while.body.i227_crit_edge ]
  %330 = ptrtoint ptr %m_lblk.i223 to i32
  call void @__asan_store4_noabort(i32 %330)
  store i32 %cur.05.i, ptr %m_lblk.i223, align 8
  %331 = ptrtoint ptr %m_len.i224 to i32
  call void @__asan_store4_noabort(i32 %331)
  store i32 %remaining.06.i, ptr %m_len.i224, align 4
  %call10.i = call i32 @ext4_map_blocks(ptr noundef null, ptr noundef %call.i190, ptr noundef nonnull %map.i189, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp slt i32 %call10.i, 0
  br i1 %cmp11.i, label %while.body.i227.out.i235_crit_edge, label %if.end13.i

while.body.i227.out.i235_crit_edge:               ; preds = %while.body.i227
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i235

if.end13.i:                                       ; preds = %while.body.i227
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp14.not.i = icmp eq i32 %call10.i, 0
  br i1 %cmp14.not.i, label %if.else.i228, label %if.then15.i

if.then15.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #16
  %332 = ptrtoint ptr %i_sb.i225 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %i_sb.i225, align 4
  %334 = ptrtoint ptr %map.i189 to i32
  call void @__asan_load8_noabort(i32 %334)
  %335 = load i64, ptr %map.i189, align 8
  %336 = ptrtoint ptr %m_len.i224 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %m_len.i224, align 4
  call void @ext4_mb_mark_bb(ptr noundef %333, i64 noundef %335, i32 noundef %337, i32 noundef 0) #14
  br label %if.end21.i229

if.else.i228:                                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #16
  %338 = ptrtoint ptr %m_len.i224 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %m_len.i224, align 4
  br label %if.end21.i229

if.end21.i229:                                    ; preds = %if.else.i228, %if.then15.i
  %call10.pn.i = phi i32 [ %call10.i, %if.then15.i ], [ %339, %if.else.i228 ]
  %remaining.1.i = sub i32 %remaining.06.i, %call10.pn.i
  %cur.1.i = add i32 %call10.pn.i, %cur.05.i
  %cmp.not.i = icmp eq i32 %remaining.1.i, 0
  br i1 %cmp.not.i, label %if.end21.i229.while.end.i231_crit_edge, label %if.end21.i229.while.body.i227_crit_edge

if.end21.i229.while.body.i227_crit_edge:          ; preds = %if.end21.i229
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i227

if.end21.i229.while.end.i231_crit_edge:           ; preds = %if.end21.i229
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i231

while.end.i231:                                   ; preds = %if.end21.i229.while.end.i231_crit_edge, %if.end6.i222.while.end.i231_crit_edge
  %i_data_sem.i230 = getelementptr i8, ptr %call.i190, i32 -96
  call void @down_write(ptr noundef %i_data_sem.i230) #14
  %add25.i = add i32 %213, -1
  %sub26.i = add i32 %add25.i, %214
  %call27.i = call i32 @ext4_ext_remove_space(ptr noundef %call.i190, i32 noundef %213, i32 noundef %sub26.i) #14
  call void @up_write(ptr noundef %i_data_sem.i230) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool32.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool32.not.i, label %if.end34.i, label %while.end.i231.out.i235_crit_edge

while.end.i231.out.i235_crit_edge:                ; preds = %while.end.i231
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i235

if.end34.i:                                       ; preds = %while.end.i231
  call void @__sanitizer_cov_trace_pc() #16
  %call35.i = call fastcc i64 @i_size_read(ptr noundef %call.i190) #14
  %340 = ptrtoint ptr %s_blocksize_bits.i232 to i32
  call void @__asan_load1_noabort(i32 %340)
  %341 = load i8, ptr %s_blocksize_bits.i232, align 4
  %sh_prom.i233 = zext i8 %341 to i64
  %shr.i234 = ashr i64 %call35.i, %sh_prom.i233
  %conv36.i = trunc i64 %shr.i234 to i32
  call void @ext4_ext_replay_shrink_inode(ptr noundef %call.i190, i32 noundef %conv36.i) #14
  %call37.i = call i32 @__ext4_mark_inode_dirty(ptr noundef null, ptr noundef %call.i190, ptr noundef nonnull @__func__.ext4_fc_replay_del_range, i32 noundef 1805) #14
  br label %out.i235

out.i235:                                         ; preds = %if.end34.i, %while.end.i231.out.i235_crit_edge, %while.body.i227.out.i235_crit_edge, %if.then4.i.i215.out.i235_crit_edge
  call void @iput(ptr noundef %call.i190) #14
  br label %ext4_fc_replay_del_range.exit

ext4_fc_replay_del_range.exit:                    ; preds = %out.i235, %if.then.i192
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %map.i189) #14
  br label %if.end82

if.then.i240:                                     ; preds = %tag2str.exit.thread304
  call void @__sanitizer_cov_trace_pc() #16
  %call2.i239 = call i32 @ext4_ext_clear_bb(ptr noundef %call.i237) #14
  call void @iput(ptr noundef %call.i237) #14
  br label %if.end.i244

if.end.i244:                                      ; preds = %if.then.i240, %tag2str.exit.thread304.if.end.i244_crit_edge
  %342 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %s_fs_info.i, align 16
  %fc_modified_inodes_used.i.i242 = getelementptr inbounds %struct.ext4_sb_info, ptr %343, i32 0, i32 168, i32 10
  %344 = ptrtoint ptr %fc_modified_inodes_used.i.i242 to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %fc_modified_inodes_used.i.i242, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %345)
  %cmp36.i.i243 = icmp sgt i32 %345, 0
  br i1 %cmp36.i.i243, label %for.body.lr.ph.i.i246, label %if.end.i244.for.end.i.i256_crit_edge

if.end.i244.for.end.i.i256_crit_edge:             ; preds = %if.end.i244
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i256

for.body.lr.ph.i.i246:                            ; preds = %if.end.i244
  %fc_modified_inodes.i.i245 = getelementptr inbounds %struct.ext4_sb_info, ptr %343, i32 0, i32 168, i32 9
  %346 = ptrtoint ptr %fc_modified_inodes.i.i245 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %fc_modified_inodes.i.i245, align 4
  br label %for.body.i.i253

for.cond.i.i249:                                  ; preds = %for.body.i.i253
  %inc.i.i247 = add nuw nsw i32 %i.037.i.i250, 1
  %exitcond.not.i.i248 = icmp eq i32 %inc.i.i247, %345
  br i1 %exitcond.not.i.i248, label %for.cond.i.i249.for.end.i.i256_crit_edge, label %for.cond.i.i249.for.body.i.i253_crit_edge

for.cond.i.i249.for.body.i.i253_crit_edge:        ; preds = %for.cond.i.i249
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i253

for.cond.i.i249.for.end.i.i256_crit_edge:         ; preds = %for.cond.i.i249
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i256

for.body.i.i253:                                  ; preds = %for.cond.i.i249.for.body.i.i253_crit_edge, %for.body.lr.ph.i.i246
  %i.037.i.i250 = phi i32 [ 0, %for.body.lr.ph.i.i246 ], [ %inc.i.i247, %for.cond.i.i249.for.body.i.i253_crit_edge ]
  %arrayidx.i.i251 = getelementptr i32, ptr %347, i32 %i.037.i.i250
  %348 = ptrtoint ptr %arrayidx.i.i251 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %arrayidx.i.i251, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %349, i32 %222)
  %cmp1.i.i252 = icmp eq i32 %349, %222
  br i1 %cmp1.i.i252, label %for.body.i.i253.if.end5.i_crit_edge, label %for.cond.i.i249

for.body.i.i253.if.end5.i_crit_edge:              ; preds = %for.body.i.i253
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5.i

for.end.i.i256:                                   ; preds = %for.cond.i.i249.for.end.i.i256_crit_edge, %if.end.i244.for.end.i.i256_crit_edge
  %fc_modified_inodes_size.i.i254 = getelementptr inbounds %struct.ext4_sb_info, ptr %343, i32 0, i32 168, i32 11
  %350 = ptrtoint ptr %fc_modified_inodes_size.i.i254 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %fc_modified_inodes_size.i.i254, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %345, i32 %351)
  %cmp3.i.i255 = icmp eq i32 %345, %351
  br i1 %cmp3.i.i255, label %if.then4.i.i262, label %for.end.i.i256.if.end14.i.i268_crit_edge

for.end.i.i256.if.end14.i.i268_crit_edge:         ; preds = %for.end.i.i256
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14.i.i268

if.then4.i.i262:                                  ; preds = %for.end.i.i256
  %fc_modified_inodes5.i.i257 = getelementptr inbounds %struct.ext4_sb_info, ptr %343, i32 0, i32 168, i32 9
  %352 = ptrtoint ptr %fc_modified_inodes5.i.i257 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %fc_modified_inodes5.i.i257, align 4
  %add.i.i258 = shl i32 %345, 2
  %mul.i.i259 = add i32 %add.i.i258, 16
  %call7.i.i260 = call noalias ptr @krealloc(ptr noundef %353, i32 noundef %mul.i.i259, i32 noundef 3264) #18
  %354 = ptrtoint ptr %fc_modified_inodes5.i.i257 to i32
  call void @__asan_store4_noabort(i32 %354)
  store ptr %call7.i.i260, ptr %fc_modified_inodes5.i.i257, align 4
  %tobool.not.i.i261 = icmp eq ptr %call7.i.i260, null
  br i1 %tobool.not.i.i261, label %if.then4.i.i262.out.thread.i_crit_edge, label %if.end11.i.i264

if.then4.i.i262.out.thread.i_crit_edge:           ; preds = %if.then4.i.i262
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.thread.i

if.end11.i.i264:                                  ; preds = %if.then4.i.i262
  call void @__sanitizer_cov_trace_pc() #16
  %355 = ptrtoint ptr %fc_modified_inodes_size.i.i254 to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %fc_modified_inodes_size.i.i254, align 4
  %add13.i.i263 = add i32 %356, 4
  store i32 %add13.i.i263, ptr %fc_modified_inodes_size.i.i254, align 4
  br label %if.end14.i.i268

if.end14.i.i268:                                  ; preds = %if.end11.i.i264, %for.end.i.i256.if.end14.i.i268_crit_edge
  %fc_modified_inodes15.i.i265 = getelementptr inbounds %struct.ext4_sb_info, ptr %343, i32 0, i32 168, i32 9
  %357 = ptrtoint ptr %fc_modified_inodes15.i.i265 to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %fc_modified_inodes15.i.i265, align 4
  %359 = ptrtoint ptr %fc_modified_inodes_used.i.i242 to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load i32, ptr %fc_modified_inodes_used.i.i242, align 4
  %inc17.i.i266 = add i32 %360, 1
  store i32 %inc17.i.i266, ptr %fc_modified_inodes_used.i.i242, align 4
  %arrayidx18.i.i267 = getelementptr i32, ptr %358, i32 %360
  %361 = ptrtoint ptr %arrayidx18.i.i267 to i32
  call void @__asan_store4_noabort(i32 %361)
  store i32 %222, ptr %arrayidx18.i.i267, align 4
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.end14.i.i268, %for.body.i.i253.if.end5.i_crit_edge
  %call6.i = call i32 @ext4_get_fc_inode_loc(ptr noundef %1, i32 noundef %222, ptr noundef nonnull %iloc.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end5.i.out.thread.i_crit_edge

if.end5.i.out.thread.i_crit_edge:                 ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.thread.i

if.end9.i:                                        ; preds = %if.end5.i
  %add.ptr.i269 = getelementptr i8, ptr %cur.0326, i32 8
  %362 = call i16 @llvm.bswap.i16(i16 %tl.sroa.7.0.extract.trunc) #14
  %conv10.i = zext i16 %362 to i32
  %363 = ptrtoint ptr %iloc.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %iloc.i, align 4
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %364, i32 0, i32 5
  %365 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %b_data.i.i, align 4
  %367 = ptrtoint ptr %141 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %141, align 4
  %add.ptr.i.i270 = getelementptr i8, ptr %366, i32 %368
  %369 = call ptr @memcpy(ptr %add.ptr.i.i270, ptr %add.ptr.i269, i32 40)
  %i_generation.i = getelementptr inbounds %struct.ext4_inode, ptr %add.ptr.i.i270, i32 0, i32 13
  %i_generation12.i = getelementptr i8, ptr %cur.0326, i32 108
  %sub13.i = add nsw i32 %conv10.i, -104
  %370 = call ptr @memcpy(ptr %i_generation.i, ptr %i_generation12.i, i32 %sub13.i)
  %i_flags.i = getelementptr inbounds %struct.ext4_inode, ptr %add.ptr.i.i270, i32 0, i32 10
  %371 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load i32, ptr %i_flags.i, align 4
  %373 = call i32 @llvm.bswap.i32(i32 %372) #14
  %and.i271 = and i32 %373, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i271)
  %tobool14.not.i = icmp eq i32 %and.i271, 0
  br i1 %tobool14.not.i, label %if.else.i274, label %if.then15.i273

if.then15.i273:                                   ; preds = %if.end9.i
  %i_block.i = getelementptr inbounds %struct.ext4_inode, ptr %add.ptr.i.i270, i32 0, i32 12
  %374 = ptrtoint ptr %i_block.i to i32
  call void @__asan_load2_noabort(i32 %374)
  %375 = load i16, ptr %i_block.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2803, i16 %375)
  %cmp.not.i272 = icmp eq i16 %375, 2803
  br i1 %cmp.not.i272, label %if.then15.i273.if.end29.i276_crit_edge, label %if.then18.i

if.then15.i273.if.end29.i276_crit_edge:           ; preds = %if.then15.i273
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29.i276

if.then18.i:                                      ; preds = %if.then15.i273
  call void @__sanitizer_cov_trace_pc() #16
  %376 = call ptr @memset(ptr %i_block.i, i32 0, i32 12)
  %377 = ptrtoint ptr %i_block.i to i32
  call void @__asan_store2_noabort(i32 %377)
  store i16 2803, ptr %i_block.i, align 4
  %eh_max.i = getelementptr inbounds %struct.ext4_inode, ptr %add.ptr.i.i270, i32 0, i32 12, i32 1
  %378 = ptrtoint ptr %eh_max.i to i32
  call void @__asan_store2_noabort(i32 %378)
  store i16 1024, ptr %eh_max.i, align 4
  br label %if.end29.i276

if.else.i274:                                     ; preds = %if.end9.i
  %and22.i = and i32 %373, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %if.else.i274.if.end29.i276_crit_edge, label %if.then24.i

if.else.i274.if.end29.i276_crit_edge:             ; preds = %if.else.i274
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29.i276

if.then24.i:                                      ; preds = %if.else.i274
  call void @__sanitizer_cov_trace_pc() #16
  %i_block25.i = getelementptr inbounds %struct.ext4_inode, ptr %add.ptr.i.i270, i32 0, i32 12
  %i_block26.i = getelementptr i8, ptr %cur.0326, i32 48
  %379 = call ptr @memcpy(ptr %i_block25.i, ptr %i_block26.i, i32 60)
  br label %if.end29.i276

if.end29.i276:                                    ; preds = %if.then24.i, %if.else.i274.if.end29.i276_crit_edge, %if.then18.i, %if.then15.i273.if.end29.i276_crit_edge
  %380 = ptrtoint ptr %iloc.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %iloc.i, align 4
  %call30.i275 = call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_fc_replay_inode, i32 noundef 1485, ptr noundef null, ptr noundef null, ptr noundef %381) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i275)
  %tobool31.not.i = icmp eq i32 %call30.i275, 0
  br i1 %tobool31.not.i, label %if.end33.i, label %if.end29.i276.out.thread.i_crit_edge

if.end29.i276.out.thread.i_crit_edge:             ; preds = %if.end29.i276
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.thread.i

if.end33.i:                                       ; preds = %if.end29.i276
  %382 = ptrtoint ptr %iloc.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %iloc.i, align 4
  %call35.i277 = call i32 @sync_dirty_buffer(ptr noundef %383) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i277)
  %tobool36.not.i = icmp eq i32 %call35.i277, 0
  br i1 %tobool36.not.i, label %if.end38.i278, label %if.end33.i.out.thread.i_crit_edge

if.end33.i.out.thread.i_crit_edge:                ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.thread.i

if.end38.i278:                                    ; preds = %if.end33.i
  %call39.i = call i32 @ext4_mark_inode_used(ptr noundef %1, i32 noundef %222) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool40.not.i = icmp eq i32 %call39.i, 0
  br i1 %tobool40.not.i, label %if.end42.i, label %if.end38.i278.out.thread.i_crit_edge

if.end38.i278.out.thread.i_crit_edge:             ; preds = %if.end38.i278
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.thread.i

if.end42.i:                                       ; preds = %if.end38.i278
  %call43.i = call ptr @__ext4_iget(ptr noundef %1, i32 noundef %222, i32 noundef 0, ptr noundef nonnull @__func__.ext4_fc_replay_inode, i32 noundef 1496) #14
  %cmp.i113.i = icmp ugt ptr %call43.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i113.i, label %if.then45.i, label %if.end46.i

if.then45.i:                                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ext4_fc_replay_inode, i32 noundef 1498, ptr noundef nonnull @.str.27) #14
  br label %ext4_fc_replay_inode.exit

if.end46.i:                                       ; preds = %if.end42.i
  %i_flags.i.i = getelementptr i8, ptr %call43.i, i32 -380
  %384 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load volatile i32, ptr %i_flags.i.i, align 4
  %386 = and i32 %385, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %386)
  %tobool48.not.i = icmp eq i32 %386, 0
  br i1 %tobool48.not.i, label %if.then49.i, label %if.end46.i.if.end51.i_crit_edge

if.end46.i.if.end51.i_crit_edge:                  ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end51.i

if.then49.i:                                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #16
  %call50.i = call i32 @ext4_ext_replay_set_iblocks(ptr noundef %call43.i) #14
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.then49.i, %if.end46.i.if.end51.i_crit_edge
  %387 = ptrtoint ptr %iloc.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %iloc.i, align 4
  %b_data.i114.i = getelementptr inbounds %struct.buffer_head, ptr %388, i32 0, i32 5
  %389 = ptrtoint ptr %b_data.i114.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %b_data.i114.i, align 4
  %391 = ptrtoint ptr %141 to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load i32, ptr %141, align 4
  %add.ptr.i116.i = getelementptr i8, ptr %390, i32 %392
  %i_generation53.i = getelementptr inbounds %struct.ext4_inode, ptr %add.ptr.i116.i, i32 0, i32 13
  %393 = ptrtoint ptr %i_generation53.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load i32, ptr %i_generation53.i, align 4
  %395 = call i32 @llvm.bswap.i32(i32 %394) #14
  %i_generation54.i = getelementptr inbounds %struct.inode, ptr %call43.i, i32 0, i32 49
  %396 = ptrtoint ptr %i_generation54.i to i32
  call void @__asan_store4_noabort(i32 %396)
  store i32 %395, ptr %i_generation54.i, align 8
  call void @ext4_reset_inode_seed(ptr noundef %call43.i) #14
  %397 = ptrtoint ptr %iloc.i to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %iloc.i, align 4
  %b_data.i117.i = getelementptr inbounds %struct.buffer_head, ptr %398, i32 0, i32 5
  %399 = ptrtoint ptr %b_data.i117.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %b_data.i117.i, align 4
  %401 = ptrtoint ptr %141 to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load i32, ptr %141, align 4
  %add.ptr.i119.i = getelementptr i8, ptr %400, i32 %402
  %add.ptr56.i = getelementptr i8, ptr %call43.i, i32 -464
  call void @ext4_inode_csum_set(ptr noundef %call43.i, ptr noundef %add.ptr.i119.i, ptr noundef %add.ptr56.i) #14
  %403 = ptrtoint ptr %iloc.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %iloc.i, align 4
  %call58.i = call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_fc_replay_inode, i32 noundef 1514, ptr noundef null, ptr noundef null, ptr noundef %404) #14
  %405 = ptrtoint ptr %iloc.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %iloc.i, align 4
  %call60.i = call i32 @sync_dirty_buffer(ptr noundef %406) #14
  %407 = ptrtoint ptr %iloc.i to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %iloc.i, align 4
  %tobool.not.i120.i = icmp eq ptr %408, null
  br i1 %tobool.not.i120.i, label %if.end51.i.out.i279_crit_edge, label %if.then.i.i

if.end51.i.out.i279_crit_edge:                    ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i279

if.then.i.i:                                      ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__brelse(ptr noundef nonnull %408) #14
  br label %out.i279

out.thread.i:                                     ; preds = %if.end38.i278.out.thread.i_crit_edge, %if.end33.i.out.thread.i_crit_edge, %if.end29.i276.out.thread.i_crit_edge, %if.end5.i.out.thread.i_crit_edge, %if.then4.i.i262.out.thread.i_crit_edge
  call void @iput(ptr noundef null) #14
  br label %ext4_fc_replay_inode.exit

out.i279:                                         ; preds = %if.then.i.i, %if.end51.i.out.i279_crit_edge
  call void @iput(ptr noundef %call43.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i)
  %tobool62.not.i = icmp eq i32 %call58.i, 0
  br i1 %tobool62.not.i, label %if.then63.i, label %out.i279.ext4_fc_replay_inode.exit_crit_edge

out.i279.ext4_fc_replay_inode.exit_crit_edge:     ; preds = %out.i279
  call void @__sanitizer_cov_trace_pc() #16
  br label %ext4_fc_replay_inode.exit

if.then63.i:                                      ; preds = %out.i279
  call void @__sanitizer_cov_trace_pc() #16
  %409 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %s_bdev.i, align 4
  %call64.i = call i32 @blkdev_issue_flush(ptr noundef %410) #14
  br label %ext4_fc_replay_inode.exit

ext4_fc_replay_inode.exit:                        ; preds = %if.then63.i, %out.i279.ext4_fc_replay_inode.exit_crit_edge, %out.thread.i, %if.then45.i
  %retval.0.i280 = phi i32 [ -117, %if.then45.i ], [ 0, %if.then63.i ], [ 0, %out.i279.ext4_fc_replay_inode.exit_crit_edge ], [ 0, %out.thread.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %iloc.i) #14
  br label %sw.epilog

do.end61:                                         ; preds = %tag2str.exit.thread310
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 2103, i32 noundef 9, ptr noundef null) #14
  br label %if.end82

sw.epilog:                                        ; preds = %ext4_fc_replay_inode.exit, %ext4_fc_replay_create.exit, %ext4_fc_replay_unlink.exit, %ext4_fc_replay_link.exit
  %ret.1 = phi i32 [ %retval.0.i280, %ext4_fc_replay_inode.exit ], [ %ret.049.i, %ext4_fc_replay_create.exit ], [ %retval.0.i154, %ext4_fc_replay_unlink.exit ], [ %retval.0.i140, %ext4_fc_replay_link.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %cmp79 = icmp slt i32 %ret.1, 0
  br i1 %cmp79, label %sw.epilog.cleanup_crit_edge, label %sw.epilog.if.end82_crit_edge

sw.epilog.if.end82_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end82

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end82:                                         ; preds = %sw.epilog.if.end82_crit_edge, %do.end61, %ext4_fc_replay_del_range.exit, %ext4_fc_replay_add_range.exit, %tag2str.exit.thread313, %tag2str.exit.thread310.if.end82_crit_edge, %tag2str.exit.thread307
  %411 = call i16 @llvm.bswap.i16(i16 %tl.sroa.7.0.extract.trunc)
  %conv85 = zext i16 %411 to i32
  %add.ptr86 = getelementptr i8, ptr %add.ptr22, i32 %conv85
  %cmp20 = icmp ult ptr %add.ptr86, %add.ptr19
  br i1 %cmp20, label %if.end82.for.body_crit_edge, label %if.end82.cleanup_crit_edge

if.end82.cleanup_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end82.for.body_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

cleanup:                                          ; preds = %if.end82.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %tag2str.exit, %if.then26, %if.end17.cleanup_crit_edge, %do.end, %if.then9, %out_err.i, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %if.then9 ], [ 0, %if.then26 ], [ %ret.4.i, %out_err.i ], [ 0, %if.then.i.cleanup_crit_edge ], [ -125, %tag2str.exit ], [ 1, %if.end17.cleanup_crit_edge ], [ %ret.1, %sw.epilog.cleanup_crit_edge ], [ 1, %if.end82.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ext4_fc_cleanup(ptr noundef %journal, i32 noundef %full, i32 noundef %tid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %j_private = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 69
  %0 = ptrtoint ptr %j_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %j_private, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %full)
  %tobool.not = icmp eq i32 %full, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %s_fc_bh = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 164
  %4 = ptrtoint ptr %s_fc_bh to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fc_bh, align 16
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %s_fc_bh to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %s_fc_bh, align 16
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = tail call i32 @jbd2_fc_release_bufs(ptr noundef %journal) #14
  %s_fc_lock = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 163
  tail call void @_raw_spin_lock(ptr noundef %s_fc_lock) #14
  %s_fc_q = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 160
  %7 = ptrtoint ptr %s_fc_q to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_fc_q, align 32
  %cmp.not106 = icmp eq ptr %8, %s_fc_q
  br i1 %cmp.not106, label %if.end.while.cond.preheader_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.while.cond.preheader_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %do.end.while.cond.preheader_crit_edge, %if.end.while.cond.preheader_crit_edge
  %s_fc_dentry_q = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 161
  %9 = ptrtoint ptr %s_fc_dentry_q to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %s_fc_dentry_q, align 4
  %cmp.i.not110 = icmp eq ptr %10, %s_fc_dentry_q
  br i1 %cmp.i.not110, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

for.body:                                         ; preds = %do.end.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn.in107 = phi ptr [ %.pn109, %do.end.for.body_crit_edge ], [ %8, %if.end.for.body_crit_edge ]
  %11 = ptrtoint ptr %.pn.in107 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn109 = load ptr, ptr %.pn.in107, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in107) #14
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del_init.exit_crit_edge

for.body.list_del_init.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in107, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %.pn.in107 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %.pn.in107, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body.list_del_init.exit_crit_edge
  %18 = ptrtoint ptr %.pn.in107 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %.pn.in107, ptr %.pn.in107, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn.in107, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %.pn.in107, ptr %prev.i3.i, align 4
  %i_state_flags.i = getelementptr i8, ptr %.pn.in107, i32 -112
  tail call void @_clear_bit(i32 noundef 11, ptr noundef %i_state_flags.i) #14
  %i_sync_tid = getelementptr i8, ptr %.pn.in107, i32 1424
  %20 = ptrtoint ptr %i_sync_tid to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %i_sync_tid, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %tid)
  %cmp12.not = icmp ugt i32 %21, %tid
  br i1 %cmp12.not, label %list_del_init.exit.do.end_crit_edge, label %if.then13

list_del_init.exit.do.end_crit_edge:              ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then13:                                        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  %i_fc_lblk_start.i = getelementptr i8, ptr %.pn.in107, i32 8
  %22 = ptrtoint ptr %i_fc_lblk_start.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %i_fc_lblk_start.i, align 8
  %i_fc_lblk_len.i = getelementptr i8, ptr %.pn.in107, i32 12
  %23 = ptrtoint ptr %i_fc_lblk_len.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %i_fc_lblk_len.i, align 4
  br label %do.end

do.end:                                           ; preds = %if.then13, %list_del_init.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !190
  tail call void @wake_up_bit(ptr noundef %i_state_flags.i, i32 noundef 11) #14
  %cmp.not = icmp eq ptr %.pn109, %s_fc_q
  br i1 %cmp.not, label %do.end.while.cond.preheader_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

do.end.while.cond.preheader_crit_edge:            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.preheader

while.body:                                       ; preds = %if.end42.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %24 = phi ptr [ %39, %if.end42.while.body_crit_edge ], [ %10, %while.cond.preheader.while.body_crit_edge ]
  %add.ptr33 = getelementptr i8, ptr %24, i32 -68
  %call.i.i93 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %24) #14
  br i1 %call.i.i93, label %if.end.i.i96, label %while.body.list_del_init.exit98_crit_edge

while.body.list_del_init.exit98_crit_edge:        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del_init.exit98

if.end.i.i96:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i94 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i94 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i94, align 4
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %24, align 4
  %prev1.i.i.i95 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i95 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev1.i.i.i95, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %26, align 4
  br label %list_del_init.exit98

list_del_init.exit98:                             ; preds = %if.end.i.i96, %while.body.list_del_init.exit98_crit_edge
  %31 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %24, ptr %24, align 4
  %prev.i3.i97 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i3.i97 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %24, ptr %prev.i3.i97, align 4
  tail call void @_raw_spin_unlock(ptr noundef %s_fc_lock) #14
  %name = getelementptr i8, ptr %24, i32 -44
  %33 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %name, align 8
  %tobool35.not = icmp eq ptr %34, null
  br i1 %tobool35.not, label %list_del_init.exit98.if.end42_crit_edge, label %land.lhs.true36

list_del_init.exit98.if.end42_crit_edge:          ; preds = %list_del_init.exit98
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42

land.lhs.true36:                                  ; preds = %list_del_init.exit98
  %fcd_name = getelementptr i8, ptr %24, i32 -52
  %35 = ptrtoint ptr %fcd_name to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %fcd_name, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %36)
  %cmp38 = icmp ugt i32 %36, 36
  br i1 %cmp38, label %if.then39, label %land.lhs.true36.if.end42_crit_edge

land.lhs.true36.if.end42_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42

if.then39:                                        ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef nonnull %34) #14
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %land.lhs.true36.if.end42_crit_edge, %list_del_init.exit98.if.end42_crit_edge
  %37 = load ptr, ptr @ext4_fc_dentry_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %37, ptr noundef %add.ptr33) #14
  tail call void @_raw_spin_lock(ptr noundef %s_fc_lock) #14
  %38 = ptrtoint ptr %s_fc_dentry_q to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %s_fc_dentry_q, align 4
  %cmp.i.not = icmp eq ptr %39, %s_fc_dentry_q
  br i1 %cmp.i.not, label %if.end42.while.end_crit_edge, label %if.end42.while.body_crit_edge

if.end42.while.body_crit_edge:                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

if.end42.while.end_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %if.end42.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %arrayidx45 = getelementptr %struct.ext4_sb_info, ptr %3, i32 0, i32 161, i32 1
  %40 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %arrayidx45, align 4
  %cmp.i.not.i = icmp eq ptr %41, %arrayidx45
  br i1 %cmp.i.not.i, label %while.end.list_splice_init.exit_crit_edge, label %if.then.i

while.end.list_splice_init.exit_crit_edge:        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  %prev2.i.i = getelementptr %struct.ext4_sb_info, ptr %3, i32 0, i32 161, i32 1, i32 1
  %42 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %44 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %s_fc_dentry_q, ptr %prev3.i.i, align 4
  %45 = ptrtoint ptr %s_fc_dentry_q to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %41, ptr %s_fc_dentry_q, align 4
  %46 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %s_fc_dentry_q, ptr %43, align 4
  %prev6.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 161, i32 0, i32 1
  %47 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %43, ptr %prev6.i.i, align 4
  %48 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %arrayidx45, ptr %arrayidx45, align 4
  store ptr %arrayidx45, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %while.end.list_splice_init.exit_crit_edge
  %arrayidx49 = getelementptr %struct.ext4_sb_info, ptr %3, i32 0, i32 160, i32 1
  %49 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile ptr, ptr %arrayidx49, align 4
  %cmp.i.not.i99 = icmp eq ptr %50, %arrayidx49
  br i1 %cmp.i.not.i99, label %list_splice_init.exit.list_splice_init.exit104_crit_edge, label %if.then.i103

list_splice_init.exit.list_splice_init.exit104_crit_edge: ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_splice_init.exit104

if.then.i103:                                     ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  %51 = ptrtoint ptr %s_fc_q to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %s_fc_q, align 4
  %prev2.i.i100 = getelementptr %struct.ext4_sb_info, ptr %3, i32 0, i32 160, i32 1, i32 1
  %53 = ptrtoint ptr %prev2.i.i100 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %prev2.i.i100, align 4
  %prev3.i.i101 = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %55 = ptrtoint ptr %prev3.i.i101 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %s_fc_q, ptr %prev3.i.i101, align 4
  store ptr %50, ptr %s_fc_q, align 4
  %56 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %52, ptr %54, align 4
  %prev6.i.i102 = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  %57 = ptrtoint ptr %prev6.i.i102 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %54, ptr %prev6.i.i102, align 4
  %58 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %arrayidx49, ptr %arrayidx49, align 4
  store ptr %arrayidx49, ptr %prev2.i.i100, align 4
  br label %list_splice_init.exit104

list_splice_init.exit104:                         ; preds = %if.then.i103, %list_splice_init.exit.list_splice_init.exit104_crit_edge
  %s_fc_ineligible_tid = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 166
  %59 = ptrtoint ptr %s_fc_ineligible_tid to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %s_fc_ineligible_tid, align 64
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %tid)
  %cmp52.not = icmp ugt i32 %60, %tid
  br i1 %cmp52.not, label %list_splice_init.exit104.if.end55_crit_edge, label %if.then53

list_splice_init.exit104.if.end55_crit_edge:      ; preds = %list_splice_init.exit104
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end55

if.then53:                                        ; preds = %list_splice_init.exit104
  call void @__sanitizer_cov_trace_pc() #16
  %61 = ptrtoint ptr %s_fc_ineligible_tid to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %s_fc_ineligible_tid, align 64
  %62 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_flags.i = getelementptr inbounds %struct.ext4_sb_info, ptr %63, i32 0, i32 19
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %s_mount_flags.i) #14
  br label %if.end55

if.end55:                                         ; preds = %if.then53, %list_splice_init.exit104.if.end55_crit_edge
  br i1 %tobool.not, label %if.end55.if.end58_crit_edge, label %if.then57

if.end55.if.end58_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end58

if.then57:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #16
  %s_fc_bytes = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 162
  %64 = ptrtoint ptr %s_fc_bytes to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %s_fc_bytes, align 64
  br label %if.end58

if.end58:                                         ; preds = %if.then57, %if.end55.if.end58_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %s_fc_lock) #14
  tail call fastcc void @trace_ext4_fc_stats(ptr noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_fc_info_show(ptr noundef %seq, ptr noundef readnone %v) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.not = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %s_fc_stats = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 165
  %fc_num_commits = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 165, i32 1
  %4 = ptrtoint ptr %fc_num_commits to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fc_num_commits, align 8
  %fc_ineligible_commits = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 165, i32 2
  %6 = ptrtoint ptr %fc_ineligible_commits to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fc_ineligible_commits, align 4
  %fc_numblks = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 165, i32 5
  %8 = ptrtoint ptr %fc_numblks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fc_numblks, align 8
  %s_fc_avg_commit_time = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 165, i32 6
  %10 = ptrtoint ptr %s_fc_avg_commit_time to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %s_fc_avg_commit_time, align 8
  %12 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %11, i32 0) #20, !srcloc !191
  %asmresult.i.i.i = extractvalue { i64, i32 } %12, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %12, 1
  %13 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %11, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #20, !srcloc !192
  %asmresult10.i.i.i = extractvalue { i64, i32 } %13, 0
  %div1581.i.i = lshr i64 %asmresult10.i.i.i, 9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.2, i32 noundef %5, i32 noundef %7, i32 noundef %9, i64 noundef %div1581.i.i) #14
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.3) #14
  %14 = ptrtoint ptr %s_fc_stats to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %s_fc_stats, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.39, i32 noundef %15) #14
  %arrayidx3.1 = getelementptr %struct.ext4_sb_info, ptr %3, i32 0, i32 165, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx3.1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.40, i32 noundef %17) #14
  %arrayidx3.2 = getelementptr %struct.ext4_sb_info, ptr %3, i32 0, i32 165, i32 0, i32 2
  %18 = ptrtoint ptr %arrayidx3.2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx3.2, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.41, i32 noundef %19) #14
  %arrayidx3.3 = getelementptr %struct.ext4_sb_info, ptr %3, i32 0, i32 165, i32 0, i32 3
  %20 = ptrtoint ptr %arrayidx3.3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx3.3, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.42, i32 noundef %21) #14
  %arrayidx3.4 = getelementptr %struct.ext4_sb_info, ptr %3, i32 0, i32 165, i32 0, i32 4
  %22 = ptrtoint ptr %arrayidx3.4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx3.4, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.43, i32 noundef %23) #14
  %arrayidx3.5 = getelementptr %struct.ext4_sb_info, ptr %3, i32 0, i32 165, i32 0, i32 5
  %24 = ptrtoint ptr %arrayidx3.5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx3.5, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.44, i32 noundef %25) #14
  %arrayidx3.6 = getelementptr %struct.ext4_sb_info, ptr %3, i32 0, i32 165, i32 0, i32 6
  %26 = ptrtoint ptr %arrayidx3.6 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx3.6, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.45, i32 noundef %27) #14
  %arrayidx3.7 = getelementptr %struct.ext4_sb_info, ptr %3, i32 0, i32 165, i32 0, i32 7
  %28 = ptrtoint ptr %arrayidx3.7 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx3.7, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.46, i32 noundef %29) #14
  %arrayidx3.8 = getelementptr %struct.ext4_sb_info, ptr %3, i32 0, i32 165, i32 0, i32 8
  %30 = ptrtoint ptr %arrayidx3.8 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx3.8, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.47, i32 noundef %31) #14
  %arrayidx3.9 = getelementptr %struct.ext4_sb_info, ptr %3, i32 0, i32 165, i32 0, i32 9
  %32 = ptrtoint ptr %arrayidx3.9 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx3.9, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.48, i32 noundef %33) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_fc_init_dentry_cache() local_unnamed_addr #7 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.5, i32 noundef 80, i32 noundef 8, i32 noundef 131072, ptr noundef null) #14
  store ptr %call, ptr @ext4_fc_dentry_cachep, align 4
  %cmp = icmp eq ptr %call, null
  %. = select i1 %cmp, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ext4_fc_destroy_dentry_cache() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ext4_fc_dentry_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_bit_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bit_waitqueue(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_fc_track_unlink(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_fc_track_link(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_fc_track_create(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_inode_journal_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_fc_track_inode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_fc_track_range(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_fc_commit_start(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__jbd2_debug(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ext4_fc_commit_stop(ptr noundef %sb, i32 noundef %nblks, i32 noundef %reason) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_fc_commit_stop, i32 0, i32 1), ptr blockaddress(@trace_ext4_fc_commit_stop, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !170

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !154) #14
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !171

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !154) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !193
  %call42 = tail call i32 @__traceiter_ext4_fc_commit_stop(ptr noundef null, ptr noundef %sb, i32 noundef %nblks, i32 noundef %reason) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !194
  %13 = tail call i32 @llvm.read_register.i32(metadata !154) #14
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !154) #14
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !171

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !154) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !174
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_fc_commit_stop, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_fc_commit_stop, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ext4_fc_commit_stop.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_ext4_fc_commit_stop.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 2722, ptr noundef nonnull @.str.7) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !175
  %31 = tail call i32 @llvm.read_register.i32(metadata !154) #14
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_fc_commit_stop(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_issue_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_start_plug(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ext4_fc_add_tlv(ptr nocapture noundef readonly %sb, i16 noundef zeroext %tag, i16 noundef zeroext %len, ptr noundef %val, ptr noundef %crc) unnamed_addr #0 align 64 {
entry:
  %desc.i.i13 = alloca %struct.anon.88, align 8
  %desc.i.i = alloca %struct.anon.88, align 8
  %tl = alloca %struct.ext4_fc_tl, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tl) #14
  %conv = zext i16 %len to i32
  %add = add nuw nsw i32 %conv, 4
  %call = tail call fastcc ptr @ext4_fc_reserve_space(ptr noundef %sb, i32 noundef %add, ptr noundef %crc)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = getelementptr inbounds %struct.ext4_fc_tl, ptr %tl, i32 0, i32 1
  %1 = tail call i16 @llvm.bswap.i16(i16 %tag)
  %2 = ptrtoint ptr %tl to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %1, ptr %tl, align 4
  %3 = tail call i16 @llvm.bswap.i16(i16 %len)
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %0, align 2
  %tobool.not.i = icmp eq ptr %crc, null
  br i1 %tobool.not.i, label %ext4_fc_memcpy.exit.thread, label %if.then.i

ext4_fc_memcpy.exit.thread:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %5 = ptrtoint ptr %tl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tl, align 4
  %7 = ptrtoint ptr %call to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 %6, ptr %call, align 1
  br label %ext4_fc_memcpy.exit25

if.then.i:                                        ; preds = %if.end
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i.i, align 16
  %10 = ptrtoint ptr %crc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %crc, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %desc.i.i) #14
  %12 = getelementptr inbounds %struct.anon.88, ptr %desc.i.i, i32 0, i32 1
  %s_chksum_driver.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %9, i32 0, i32 121
  %13 = call ptr @memset(ptr %desc.i.i, i32 255, i32 16)
  %14 = ptrtoint ptr %s_chksum_driver.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_chksum_driver.i.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %17)
  %cmp.not.i.i = icmp eq i32 %17, 4
  br i1 %cmp.not.i.i, label %do.end7.i.i, label %do.body2.i.i, !prof !171

do.body2.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #14, !srcloc !185
  unreachable

do.end7.i.i:                                      ; preds = %if.then.i
  %18 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %desc.i.i, align 8
  %19 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %11, ptr %12, align 8
  %call11.i.i = call i32 @crypto_shash_update(ptr noundef nonnull %desc.i.i, ptr noundef nonnull %tl, i32 noundef 4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i)
  %tobool12.not.i.i = icmp eq i32 %call11.i.i, 0
  br i1 %tobool12.not.i.i, label %if.then.i18, label %do.body20.i.i, !prof !171

do.body20.i.i:                                    ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #14, !srcloc !186
  unreachable

if.then.i18:                                      ; preds = %do.end7.i.i
  %20 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %12, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %desc.i.i) #14
  %22 = ptrtoint ptr %crc to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %crc, align 4
  %23 = ptrtoint ptr %tl to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tl, align 4
  %25 = ptrtoint ptr %call to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 %24, ptr %call, align 1
  %26 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %s_fs_info.i.i, align 16
  %28 = load i32, ptr %crc, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %desc.i.i13) #14
  %29 = getelementptr inbounds %struct.anon.88, ptr %desc.i.i13, i32 0, i32 1
  %s_chksum_driver.i.i16 = getelementptr inbounds %struct.ext4_sb_info, ptr %27, i32 0, i32 121
  %30 = call ptr @memset(ptr %desc.i.i13, i32 255, i32 16)
  %31 = ptrtoint ptr %s_chksum_driver.i.i16 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %s_chksum_driver.i.i16, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %34)
  %cmp.not.i.i17 = icmp eq i32 %34, 4
  br i1 %cmp.not.i.i17, label %do.end7.i.i22, label %do.body2.i.i19, !prof !171

do.body2.i.i19:                                   ; preds = %if.then.i18
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #14, !srcloc !185
  unreachable

do.end7.i.i22:                                    ; preds = %if.then.i18
  %35 = ptrtoint ptr %desc.i.i13 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %desc.i.i13, align 8
  %36 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %28, ptr %29, align 8
  %call11.i.i20 = call i32 @crypto_shash_update(ptr noundef nonnull %desc.i.i13, ptr noundef %val, i32 noundef %conv) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i20)
  %tobool12.not.i.i21 = icmp eq i32 %call11.i.i20, 0
  br i1 %tobool12.not.i.i21, label %ext4_chksum.exit.i24, label %do.body20.i.i23, !prof !171

do.body20.i.i23:                                  ; preds = %do.end7.i.i22
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #14, !srcloc !186
  unreachable

ext4_chksum.exit.i24:                             ; preds = %do.end7.i.i22
  call void @__sanitizer_cov_trace_pc() #16
  %37 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %29, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %desc.i.i13) #14
  %39 = ptrtoint ptr %crc to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %crc, align 4
  br label %ext4_fc_memcpy.exit25

ext4_fc_memcpy.exit25:                            ; preds = %ext4_chksum.exit.i24, %ext4_fc_memcpy.exit.thread
  %add.ptr27 = getelementptr i8, ptr %call, i32 4
  %40 = call ptr @memcpy(ptr %add.ptr27, ptr %val, i32 %conv)
  br label %cleanup

cleanup:                                          ; preds = %ext4_fc_memcpy.exit25, %entry.cleanup_crit_edge
  %41 = xor i1 %tobool.not, true
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tl) #14
  ret i1 %41
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ext4_fc_write_inode_data(ptr noundef %inode, ptr noundef %crc) unnamed_addr #0 align 64 {
entry:
  %map = alloca %struct.ext4_map_blocks, align 8
  %fc_ext = alloca %struct.ext4_fc_add_range, align 4
  %lrange = alloca %struct.ext4_fc_del_range, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %map) #14
  %0 = call ptr @memset(ptr %map, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %fc_ext) #14
  %1 = getelementptr inbounds %struct.ext4_fc_add_range, ptr %fc_ext, i32 0, i32 1
  %2 = getelementptr inbounds %struct.ext4_fc_add_range, ptr %fc_ext, i32 0, i32 1, i32 4
  %3 = getelementptr inbounds %struct.ext4_fc_add_range, ptr %fc_ext, i32 0, i32 1, i32 6
  %4 = getelementptr inbounds %struct.ext4_fc_add_range, ptr %fc_ext, i32 0, i32 1, i32 8
  %5 = call ptr @memset(ptr %fc_ext, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %lrange) #14
  %6 = ptrtoint ptr %lrange to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %lrange, align 4, !annotation !184
  %7 = getelementptr inbounds %struct.ext4_fc_del_range, ptr %lrange, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4, !annotation !184
  %9 = getelementptr inbounds %struct.ext4_fc_del_range, ptr %lrange, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %9, align 4, !annotation !184
  %i_fc_lock = getelementptr i8, ptr %inode, i32 -200
  tail call void @mutex_lock_nested(ptr noundef %i_fc_lock, i32 noundef 0) #14
  %i_fc_lblk_len = getelementptr i8, ptr %inode, i32 -260
  %11 = ptrtoint ptr %i_fc_lblk_len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i_fc_lblk_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp = icmp eq i32 %12, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_unlock(ptr noundef %i_fc_lock) #14
  br label %cleanup46

if.end:                                           ; preds = %entry
  %i_fc_lblk_start = getelementptr i8, ptr %inode, i32 -264
  %13 = ptrtoint ptr %i_fc_lblk_start to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %i_fc_lblk_start, align 8
  %add = add i32 %12, -1
  %sub = add i32 %add, %14
  %15 = ptrtoint ptr %i_fc_lblk_len to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %i_fc_lblk_len, align 4
  tail call void @mutex_unlock(ptr noundef %i_fc_lock) #14
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %16 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %i_ino, align 8
  tail call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ext4_fc_write_inode_data, i32 noundef 840, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.ext4_fc_write_inode_data, i32 noundef %14, i32 noundef %sub, i32 noundef %17) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %14)
  %cmp6.not85 = icmp ult i32 %sub, %14
  br i1 %cmp6.not85, label %if.end.cleanup46_crit_edge, label %while.body.lr.ph

if.end.cleanup46_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup46

while.body.lr.ph:                                 ; preds = %if.end
  %m_lblk = getelementptr inbounds %struct.ext4_map_blocks, ptr %map, i32 0, i32 1
  %sub7 = add i32 %12, %14
  %m_len = getelementptr inbounds %struct.ext4_map_blocks, ptr %map, i32 0, i32 2
  %m_flags = getelementptr inbounds %struct.ext4_map_blocks, ptr %map, i32 0, i32 3
  %i_sb39 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %cur_lblk_off.086 = phi i32 [ %14, %while.body.lr.ph ], [ %cur_lblk_off.0.be, %while.cond.backedge.while.body_crit_edge ]
  %18 = ptrtoint ptr %m_lblk to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %cur_lblk_off.086, ptr %m_lblk, align 8
  %add8 = sub i32 %sub7, %cur_lblk_off.086
  %19 = ptrtoint ptr %m_len to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add8, ptr %m_len, align 4
  %call = call i32 @ext4_map_blocks(ptr noundef null, ptr noundef %inode, ptr noundef nonnull %map, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp9 = icmp slt i32 %call, 0
  br i1 %cmp9, label %while.body.cleanup46_crit_edge, label %if.end11

while.body.cleanup46_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup46

if.end11:                                         ; preds = %while.body
  %20 = ptrtoint ptr %m_len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %m_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp13 = icmp eq i32 %21, 0
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  %inc = add i32 %cur_lblk_off.086, 1
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end43, %if.then14
  %cur_lblk_off.0.be = phi i32 [ %inc, %if.then14 ], [ %add45, %if.end43 ]
  %cmp6.not = icmp ult i32 %sub, %cur_lblk_off.0.be
  br i1 %cmp6.not, label %while.cond.backedge.cleanup46_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.cond.backedge.cleanup46_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup46

if.end15:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp16 = icmp eq i32 %call, 0
  br i1 %cmp16, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end15
  %22 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %i_ino, align 8
  %24 = call i32 @llvm.bswap.i32(i32 %23)
  %25 = ptrtoint ptr %lrange to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %lrange, align 4
  %26 = ptrtoint ptr %m_lblk to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %m_lblk, align 8
  %28 = call i32 @llvm.bswap.i32(i32 %27)
  %29 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %7, align 4
  %30 = call i32 @llvm.bswap.i32(i32 %21)
  %31 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %9, align 4
  %32 = ptrtoint ptr %i_sb39 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i_sb39, align 4
  %call21 = call fastcc zeroext i1 @ext4_fc_add_tlv(ptr noundef %33, i16 noundef zeroext 2, i16 noundef zeroext 12, ptr noundef nonnull %lrange, ptr noundef %crc)
  br i1 %call21, label %if.then17.if.end43_crit_edge, label %if.then17.cleanup46_crit_edge

if.then17.cleanup46_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup46

if.then17.if.end43_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end43

if.else:                                          ; preds = %if.end15
  %34 = ptrtoint ptr %m_flags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %m_flags, align 8
  %and = and i32 %35, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 32768, i32 32767
  %36 = call i32 @llvm.umin.i32(i32 %cond, i32 %21)
  %37 = ptrtoint ptr %m_len to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %m_len, align 4
  %38 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %i_ino, align 8
  %40 = call i32 @llvm.bswap.i32(i32 %39)
  %41 = ptrtoint ptr %fc_ext to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %fc_ext, align 4
  %42 = ptrtoint ptr %m_lblk to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %m_lblk, align 8
  %44 = call i32 @llvm.bswap.i32(i32 %43)
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %1, align 4
  %conv = trunc i32 %36 to i16
  %46 = call i16 @llvm.bswap.i16(i16 %conv)
  %47 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %2, align 4
  %48 = ptrtoint ptr %map to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %map, align 8
  %conv.i = trunc i64 %49 to i32
  %50 = call i32 @llvm.bswap.i32(i32 %conv.i) #14
  %51 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %4, align 4
  %shr.i = lshr i64 %49, 32
  %conv2.i = trunc i64 %shr.i to i16
  %52 = call i16 @llvm.bswap.i16(i16 %conv2.i) #14
  %53 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %3, align 2
  %54 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %2, align 4
  br i1 %tobool.not, label %if.else37, label %if.then36

if.then36:                                        ; preds = %if.else
  %56 = and i16 %55, -129
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %cmp.i = icmp eq i16 %56, 0
  br i1 %cmp.i, label %do.body3.i, label %ext4_ext_mark_unwritten.exit, !prof !165

do.body3.i:                                       ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4_extents.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 200, 0\0A.popsection", ""() #14, !srcloc !189
  unreachable

ext4_ext_mark_unwritten.exit:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #16
  %57 = or i16 %55, 128
  br label %if.end38

if.else37:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %58 = call i16 @llvm.bswap.i16(i16 %55) #14
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32767, i16 %58)
  %cmp.i.i = icmp ult i16 %58, -32767
  %sub.i.i = xor i16 %58, -32768
  %cond.i.i = select i1 %cmp.i.i, i16 %58, i16 %sub.i.i
  %59 = call i16 @llvm.bswap.i16(i16 %cond.i.i) #14
  br label %if.end38

if.end38:                                         ; preds = %if.else37, %ext4_ext_mark_unwritten.exit
  %storemerge = phi i16 [ %57, %ext4_ext_mark_unwritten.exit ], [ %59, %if.else37 ]
  %60 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %storemerge, ptr %2, align 4
  %61 = ptrtoint ptr %i_sb39 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %i_sb39, align 4
  %call40 = call fastcc zeroext i1 @ext4_fc_add_tlv(ptr noundef %62, i16 noundef zeroext 1, i16 noundef zeroext 16, ptr noundef nonnull %fc_ext, ptr noundef %crc)
  br i1 %call40, label %if.end38.if.end43_crit_edge, label %if.end38.cleanup46_crit_edge

if.end38.cleanup46_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup46

if.end38.if.end43_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end43

if.end43:                                         ; preds = %if.end38.if.end43_crit_edge, %if.then17.if.end43_crit_edge
  %63 = ptrtoint ptr %m_len to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %m_len, align 4
  %add45 = add i32 %64, %cur_lblk_off.086
  br label %while.cond.backedge

cleanup46:                                        ; preds = %if.end38.cleanup46_crit_edge, %if.then17.cleanup46_crit_edge, %while.cond.backedge.cleanup46_crit_edge, %while.body.cleanup46_crit_edge, %if.end.cleanup46_crit_edge, %if.then
  %retval.3 = phi i32 [ 0, %if.then ], [ 0, %if.end.cleanup46_crit_edge ], [ -28, %if.end38.cleanup46_crit_edge ], [ -125, %while.body.cleanup46_crit_edge ], [ -28, %if.then17.cleanup46_crit_edge ], [ 0, %while.cond.backedge.cleanup46_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %lrange) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %fc_ext) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %map) #14
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ext4_fc_write_inode(ptr noundef %inode, ptr noundef %crc) unnamed_addr #0 align 64 {
entry:
  %desc.i.i79 = alloca %struct.anon.88, align 8
  %desc.i.i66 = alloca %struct.anon.88, align 8
  %desc.i.i = alloca %struct.anon.88, align 8
  %iloc = alloca %struct.ext4_iloc, align 4
  %fc_inode = alloca %struct.ext4_fc_inode, align 4
  %tl = alloca %struct.ext4_fc_tl, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %iloc) #14
  %0 = ptrtoint ptr %iloc to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %iloc, align 4, !annotation !184
  %1 = getelementptr inbounds %struct.ext4_iloc, ptr %iloc, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !184
  %3 = getelementptr inbounds %struct.ext4_iloc, ptr %iloc, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !184
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fc_inode) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tl) #14
  %5 = getelementptr inbounds %struct.ext4_fc_tl, ptr %tl, i32 0, i32 1
  %call = call i32 @ext4_get_inode_loc(ptr noundef %inode, ptr noundef nonnull %iloc) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_flags.i = getelementptr i8, ptr %inode, i32 -380
  %6 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %i_flags.i, align 4
  %8 = and i32 %7, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool2.not = icmp eq i32 %8, 0
  %i_sb5 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %9 = ptrtoint ptr %i_sb5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_sb5, align 4
  %s_fs_info.i65 = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 33
  %11 = ptrtoint ptr %s_fs_info.i65 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_fs_info.i65, align 16
  %s_inode_size7 = getelementptr inbounds %struct.ext4_sb_info, ptr %12, i32 0, i32 29
  %13 = ptrtoint ptr %s_inode_size7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %s_inode_size7, align 4
  br i1 %tobool2.not, label %if.else, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %14)
  %cmp = icmp sgt i32 %14, 128
  br i1 %cmp, label %if.then8, label %if.else.if.end10_crit_edge

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %i_extra_isize = getelementptr i8, ptr %inode, i32 988
  %15 = ptrtoint ptr %i_extra_isize to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %i_extra_isize, align 4
  %conv = zext i16 %16 to i32
  %add = add nuw nsw i32 %conv, 128
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.else.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %inode_len.0 = phi i32 [ %add, %if.then8 ], [ 128, %if.else.if.end10_crit_edge ], [ %14, %if.end.if.end10_crit_edge ]
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %17 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %i_ino, align 8
  %19 = call i32 @llvm.bswap.i32(i32 %18)
  %20 = ptrtoint ptr %fc_inode to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %fc_inode, align 4
  %21 = ptrtoint ptr %tl to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 1536, ptr %tl, align 4
  %22 = trunc i32 %inode_len.0 to i16
  %conv12 = add i16 %22, 4
  %23 = call i16 @llvm.bswap.i16(i16 %conv12)
  %24 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %5, align 2
  %i_sb13 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %25 = ptrtoint ptr %i_sb13 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i_sb13, align 4
  %add15 = add i32 %inode_len.0, 8
  %call16 = call fastcc ptr @ext4_fc_reserve_space(ptr noundef %26, i32 noundef %add15, ptr noundef %crc)
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.end10.cleanup_crit_edge, label %if.end19

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end19:                                         ; preds = %if.end10
  %tobool.not.i = icmp eq ptr %crc, null
  br i1 %tobool.not.i, label %ext4_fc_memcpy.exit78, label %if.then.i

if.then.i:                                        ; preds = %if.end19
  %27 = ptrtoint ptr %i_sb13 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i_sb13, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %28, i32 0, i32 33
  %29 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %s_fs_info.i.i, align 16
  %31 = ptrtoint ptr %crc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %crc, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %desc.i.i) #14
  %33 = getelementptr inbounds %struct.anon.88, ptr %desc.i.i, i32 0, i32 1
  %s_chksum_driver.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %30, i32 0, i32 121
  %34 = call ptr @memset(ptr %desc.i.i, i32 255, i32 16)
  %35 = ptrtoint ptr %s_chksum_driver.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %s_chksum_driver.i.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %38)
  %cmp.not.i.i = icmp eq i32 %38, 4
  br i1 %cmp.not.i.i, label %do.end7.i.i, label %do.body2.i.i, !prof !171

do.body2.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #14, !srcloc !185
  unreachable

do.end7.i.i:                                      ; preds = %if.then.i
  %39 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %desc.i.i, align 8
  %40 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %32, ptr %33, align 8
  %call11.i.i = call i32 @crypto_shash_update(ptr noundef nonnull %desc.i.i, ptr noundef nonnull %tl, i32 noundef 4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i)
  %tobool12.not.i.i = icmp eq i32 %call11.i.i, 0
  br i1 %tobool12.not.i.i, label %if.then.i71, label %do.body20.i.i, !prof !171

do.body20.i.i:                                    ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #14, !srcloc !186
  unreachable

if.then.i71:                                      ; preds = %do.end7.i.i
  %41 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %33, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %desc.i.i) #14
  %43 = ptrtoint ptr %crc to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %crc, align 4
  %44 = ptrtoint ptr %tl to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tl, align 4
  %46 = ptrtoint ptr %call16 to i32
  call void @__asan_storeN_noabort(i32 %46, i32 4)
  store i32 %45, ptr %call16, align 1
  %47 = ptrtoint ptr %i_sb13 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %i_sb13, align 4
  %s_fs_info.i.i68 = getelementptr inbounds %struct.super_block, ptr %48, i32 0, i32 33
  %49 = ptrtoint ptr %s_fs_info.i.i68 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %s_fs_info.i.i68, align 16
  %51 = load i32, ptr %crc, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %desc.i.i66) #14
  %52 = getelementptr inbounds %struct.anon.88, ptr %desc.i.i66, i32 0, i32 1
  %s_chksum_driver.i.i69 = getelementptr inbounds %struct.ext4_sb_info, ptr %50, i32 0, i32 121
  %53 = call ptr @memset(ptr %desc.i.i66, i32 255, i32 16)
  %54 = ptrtoint ptr %s_chksum_driver.i.i69 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %s_chksum_driver.i.i69, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %55, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %57)
  %cmp.not.i.i70 = icmp eq i32 %57, 4
  br i1 %cmp.not.i.i70, label %do.end7.i.i75, label %do.body2.i.i72, !prof !171

do.body2.i.i72:                                   ; preds = %if.then.i71
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #14, !srcloc !185
  unreachable

do.end7.i.i75:                                    ; preds = %if.then.i71
  %58 = ptrtoint ptr %desc.i.i66 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %55, ptr %desc.i.i66, align 8
  %59 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %51, ptr %52, align 8
  %call11.i.i73 = call i32 @crypto_shash_update(ptr noundef nonnull %desc.i.i66, ptr noundef nonnull %fc_inode, i32 noundef 4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i73)
  %tobool12.not.i.i74 = icmp eq i32 %call11.i.i73, 0
  br i1 %tobool12.not.i.i74, label %ext4_fc_memcpy.exit78.thread, label %do.body20.i.i76, !prof !171

do.body20.i.i76:                                  ; preds = %do.end7.i.i75
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #14, !srcloc !186
  unreachable

ext4_fc_memcpy.exit78:                            ; preds = %if.end19
  %60 = ptrtoint ptr %tl to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %tl, align 4
  %62 = ptrtoint ptr %call16 to i32
  call void @__asan_storeN_noabort(i32 %62, i32 4)
  store i32 %61, ptr %call16, align 1
  %add.ptr2593 = getelementptr i8, ptr %call16, i32 4
  %63 = ptrtoint ptr %fc_inode to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %fc_inode, align 4
  %65 = ptrtoint ptr %add.ptr2593 to i32
  call void @__asan_storeN_noabort(i32 %65, i32 4)
  store i32 %64, ptr %add.ptr2593, align 1
  %tobool28.not = icmp eq ptr %add.ptr2593, null
  br i1 %tobool28.not, label %ext4_fc_memcpy.exit78.cleanup_crit_edge, label %if.end30

ext4_fc_memcpy.exit78.cleanup_crit_edge:          ; preds = %ext4_fc_memcpy.exit78
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

ext4_fc_memcpy.exit78.thread:                     ; preds = %do.end7.i.i75
  %66 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %52, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %desc.i.i66) #14
  %68 = ptrtoint ptr %crc to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %crc, align 4
  %add.ptr259394 = getelementptr i8, ptr %call16, i32 4
  %69 = ptrtoint ptr %fc_inode to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %fc_inode, align 4
  %71 = ptrtoint ptr %add.ptr259394 to i32
  call void @__asan_storeN_noabort(i32 %71, i32 4)
  store i32 %70, ptr %add.ptr259394, align 1
  %tobool28.not95 = icmp eq ptr %add.ptr259394, null
  br i1 %tobool28.not95, label %ext4_fc_memcpy.exit78.thread.cleanup_crit_edge, label %if.then.i84

ext4_fc_memcpy.exit78.thread.cleanup_crit_edge:   ; preds = %ext4_fc_memcpy.exit78.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end30:                                         ; preds = %ext4_fc_memcpy.exit78
  call void @__sanitizer_cov_trace_pc() #16
  %72 = ptrtoint ptr %iloc to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %iloc, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %73, i32 0, i32 5
  %74 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %b_data.i, align 4
  %76 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %75, i32 %77
  br label %ext4_fc_memcpy.exit91

if.then.i84:                                      ; preds = %ext4_fc_memcpy.exit78.thread
  %78 = ptrtoint ptr %iloc to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %iloc, align 4
  %b_data.i97 = getelementptr inbounds %struct.buffer_head, ptr %79, i32 0, i32 5
  %80 = ptrtoint ptr %b_data.i97 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %b_data.i97, align 4
  %82 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %1, align 4
  %add.ptr.i98 = getelementptr i8, ptr %81, i32 %83
  %84 = ptrtoint ptr %i_sb13 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %i_sb13, align 4
  %s_fs_info.i.i81 = getelementptr inbounds %struct.super_block, ptr %85, i32 0, i32 33
  %86 = ptrtoint ptr %s_fs_info.i.i81 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %s_fs_info.i.i81, align 16
  %88 = ptrtoint ptr %crc to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %crc, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %desc.i.i79) #14
  %90 = getelementptr inbounds %struct.anon.88, ptr %desc.i.i79, i32 0, i32 1
  %s_chksum_driver.i.i82 = getelementptr inbounds %struct.ext4_sb_info, ptr %87, i32 0, i32 121
  %91 = call ptr @memset(ptr %desc.i.i79, i32 255, i32 16)
  %92 = ptrtoint ptr %s_chksum_driver.i.i82 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %s_chksum_driver.i.i82, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %93, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %95)
  %cmp.not.i.i83 = icmp eq i32 %95, 4
  br i1 %cmp.not.i.i83, label %do.end7.i.i88, label %do.body2.i.i85, !prof !171

do.body2.i.i85:                                   ; preds = %if.then.i84
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #14, !srcloc !185
  unreachable

do.end7.i.i88:                                    ; preds = %if.then.i84
  %96 = ptrtoint ptr %desc.i.i79 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %93, ptr %desc.i.i79, align 8
  %97 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %89, ptr %90, align 8
  %call11.i.i86 = call i32 @crypto_shash_update(ptr noundef nonnull %desc.i.i79, ptr noundef %add.ptr.i98, i32 noundef %inode_len.0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i86)
  %tobool12.not.i.i87 = icmp eq i32 %call11.i.i86, 0
  br i1 %tobool12.not.i.i87, label %ext4_chksum.exit.i90, label %do.body20.i.i89, !prof !171

do.body20.i.i89:                                  ; preds = %do.end7.i.i88
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #14, !srcloc !186
  unreachable

ext4_chksum.exit.i90:                             ; preds = %do.end7.i.i88
  call void @__sanitizer_cov_trace_pc() #16
  %98 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %90, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %desc.i.i79) #14
  %100 = ptrtoint ptr %crc to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %crc, align 4
  br label %ext4_fc_memcpy.exit91

ext4_fc_memcpy.exit91:                            ; preds = %ext4_chksum.exit.i90, %if.end30
  %add.ptr.i102 = phi ptr [ %add.ptr.i, %if.end30 ], [ %add.ptr.i98, %ext4_chksum.exit.i90 ]
  %add.ptr31100 = getelementptr i8, ptr %call16, i32 8
  %101 = call ptr @memcpy(ptr %add.ptr31100, ptr %add.ptr.i102, i32 %inode_len.0)
  %tobool35.not = icmp eq ptr %add.ptr31100, null
  %. = select i1 %tobool35.not, i32 -125, i32 0
  br label %cleanup

cleanup:                                          ; preds = %ext4_fc_memcpy.exit91, %ext4_fc_memcpy.exit78.thread.cleanup_crit_edge, %ext4_fc_memcpy.exit78.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -125, %if.end10.cleanup_crit_edge ], [ -125, %ext4_fc_memcpy.exit78.cleanup_crit_edge ], [ %., %ext4_fc_memcpy.exit91 ], [ -125, %ext4_fc_memcpy.exit78.thread.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tl) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fc_inode) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %iloc) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_finish_plug(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_submit_inode_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_wait_inode_data(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ext4_fc_reserve_space(ptr nocapture noundef readonly %sb, i32 noundef %len, ptr noundef %crc) unnamed_addr #0 align 64 {
entry:
  %desc.i.i = alloca %struct.anon.88, align 8
  %desc.i = alloca %struct.anon.88, align 8
  %bh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #14
  %2 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh, align 4, !annotation !184
  %s_journal = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 47
  %3 = ptrtoint ptr %s_journal to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_journal, align 8
  %j_blocksize = getelementptr inbounds %struct.journal_s, ptr %4, i32 0, i32 33
  %5 = ptrtoint ptr %j_blocksize to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %j_blocksize, align 8
  %s_fc_bytes = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 162
  %7 = ptrtoint ptr %s_fc_bytes to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_fc_bytes, align 64
  %rem = urem i32 %8, %6
  %add = add i32 %len, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %6)
  %cmp = icmp ugt i32 %add, %6
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = xor i32 %rem, -1
  %sub1 = add i32 %6, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %sub1, i32 %add)
  %cmp3 = icmp ugt i32 %sub1, %add
  %s_fc_bh = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 164
  %10 = ptrtoint ptr %s_fc_bh to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_fc_bh, align 16
  br i1 %cmp3, label %if.then4, label %if.end17

if.then4:                                         ; preds = %if.end
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %if.then5, label %if.then4.if.end13_crit_edge

if.then4.if.end13_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

if.then5:                                         ; preds = %if.then4
  %call8 = call i32 @jbd2_fc_get_buf(ptr noundef %4, ptr noundef nonnull %bh) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end11:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  %12 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bh, align 4
  %14 = ptrtoint ptr %s_fc_bh to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %s_fc_bh, align 16
  br label %if.end13

if.end13:                                         ; preds = %if.end11, %if.then4.if.end13_crit_edge
  %15 = ptrtoint ptr %s_fc_bytes to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %s_fc_bytes, align 64
  %add15 = add i32 %16, %len
  store i32 %add15, ptr %s_fc_bytes, align 64
  %17 = ptrtoint ptr %s_fc_bh to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_fc_bh, align 16
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %b_data, align 4
  %add.ptr = getelementptr i8, ptr %20, i32 %rem
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %b_data19 = getelementptr inbounds %struct.buffer_head, ptr %11, i32 0, i32 5
  %21 = ptrtoint ptr %b_data19 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %b_data19, align 4
  %add.ptr20 = getelementptr i8, ptr %22, i32 %rem
  %23 = ptrtoint ptr %add.ptr20 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 1792, ptr %add.ptr20, align 2
  %sub23 = add i32 %sub1, -4
  %conv = trunc i32 %sub23 to i16
  %24 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %fc_len = getelementptr inbounds %struct.ext4_fc_tl, ptr %add.ptr20, i32 0, i32 1
  %25 = ptrtoint ptr %fc_len to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %fc_len, align 2
  %tobool24.not = icmp eq ptr %crc, null
  br i1 %tobool24.not, label %if.end27, label %if.then25

if.then25:                                        ; preds = %if.end17
  %26 = ptrtoint ptr %crc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %crc, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %desc.i) #14
  %28 = getelementptr inbounds %struct.anon.88, ptr %desc.i, i32 0, i32 1
  %s_chksum_driver.i = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 121
  %29 = call ptr @memset(ptr %desc.i, i32 255, i32 16)
  %30 = ptrtoint ptr %s_chksum_driver.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %s_chksum_driver.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %33)
  %cmp.not.i = icmp eq i32 %33, 4
  br i1 %cmp.not.i, label %do.end7.i, label %do.body2.i, !prof !171

do.body2.i:                                       ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #14, !srcloc !185
  unreachable

do.end7.i:                                        ; preds = %if.then25
  %34 = ptrtoint ptr %desc.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %desc.i, align 8
  %35 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %27, ptr %28, align 8
  %call11.i = call i32 @crypto_shash_update(ptr noundef nonnull %desc.i, ptr noundef %add.ptr20, i32 noundef 4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end27.thread, label %do.body20.i, !prof !171

do.body20.i:                                      ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #14, !srcloc !186
  unreachable

if.end27:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub23)
  %cmp28 = icmp sgt i32 %sub23, 0
  br i1 %cmp28, label %if.then30, label %if.end27.if.end33_crit_edge

if.end27.if.end33_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

if.end27.thread:                                  ; preds = %do.end7.i
  %36 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %28, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %desc.i) #14
  %38 = ptrtoint ptr %crc to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %crc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub23)
  %cmp2890 = icmp sgt i32 %sub23, 0
  br i1 %cmp2890, label %if.then.i, label %if.end27.thread.if.end33_crit_edge

if.end27.thread.if.end33_crit_edge:               ; preds = %if.end27.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr31 = getelementptr %struct.ext4_fc_tl, ptr %add.ptr20, i32 1
  %39 = call ptr @memset(ptr %add.ptr31, i32 0, i32 %sub23)
  br label %if.end33

if.then.i:                                        ; preds = %if.end27.thread
  %add.ptr3191 = getelementptr %struct.ext4_fc_tl, ptr %add.ptr20, i32 1
  %40 = call ptr @memset(ptr %add.ptr3191, i32 0, i32 %sub23)
  %41 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %s_fs_info.i, align 16
  %43 = ptrtoint ptr %crc to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %crc, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %desc.i.i) #14
  %45 = getelementptr inbounds %struct.anon.88, ptr %desc.i.i, i32 0, i32 1
  %s_chksum_driver.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %42, i32 0, i32 121
  %46 = call ptr @memset(ptr %desc.i.i, i32 255, i32 16)
  %47 = ptrtoint ptr %s_chksum_driver.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %s_chksum_driver.i.i, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %50)
  %cmp.not.i.i = icmp eq i32 %50, 4
  br i1 %cmp.not.i.i, label %do.end7.i.i, label %do.body2.i.i, !prof !171

do.body2.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #14, !srcloc !185
  unreachable

do.end7.i.i:                                      ; preds = %if.then.i
  %51 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %48, ptr %desc.i.i, align 8
  %52 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %44, ptr %45, align 8
  %call11.i.i = call i32 @crypto_shash_update(ptr noundef nonnull %desc.i.i, ptr noundef %add.ptr3191, i32 noundef %sub23) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i)
  %tobool12.not.i.i = icmp eq i32 %call11.i.i, 0
  br i1 %tobool12.not.i.i, label %ext4_chksum.exit.i, label %do.body20.i.i, !prof !171

do.body20.i.i:                                    ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #14, !srcloc !186
  unreachable

ext4_chksum.exit.i:                               ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %53 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %45, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %desc.i.i) #14
  %55 = ptrtoint ptr %crc to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %crc, align 4
  br label %if.end33

if.end33:                                         ; preds = %ext4_chksum.exit.i, %if.then30, %if.end27.thread.if.end33_crit_edge, %if.end27.if.end33_crit_edge
  call fastcc void @ext4_fc_submit_bh(ptr noundef %sb, i1 noundef zeroext false)
  %56 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal35 = getelementptr inbounds %struct.ext4_sb_info, ptr %57, i32 0, i32 47
  %58 = ptrtoint ptr %s_journal35 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %s_journal35, align 8
  %call36 = call i32 @jbd2_fc_get_buf(ptr noundef %59, ptr noundef nonnull %bh) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end39:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  %60 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %bh, align 4
  %62 = ptrtoint ptr %s_fc_bh to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %61, ptr %s_fc_bh, align 16
  %63 = ptrtoint ptr %s_fc_bytes to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %s_fc_bytes, align 64
  %div = udiv i32 %64, %6
  %add42 = add i32 %div, 1
  %mul = mul i32 %add42, %6
  %add43 = add i32 %mul, %len
  store i32 %add43, ptr %s_fc_bytes, align 64
  %b_data46 = getelementptr inbounds %struct.buffer_head, ptr %61, i32 0, i32 5
  %65 = ptrtoint ptr %b_data46 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %b_data46, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.end33.cleanup_crit_edge, %if.end13, %if.then5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %add.ptr, %if.end13 ], [ %66, %if.end39 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.then5.cleanup_crit_edge ], [ null, %if.end33.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #14
  ret ptr %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_fc_get_buf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ext4_fc_submit_bh(ptr nocapture noundef readonly %sb, i1 noundef zeroext %is_tail) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_fc_bh = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 164
  %2 = ptrtoint ptr %s_fc_bh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fc_bh, align 16
  %s_mount_opt = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_mount_opt, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.10, i32 noundef 366) #14
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %3, i32 noundef 4) #14
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %3, align 4
  %and.i.i.i.i = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_buffer.exit.i, label %entry.if.then.i17_crit_edge

entry.if.then.i17_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i17

trylock_buffer.exit.i:                            ; preds = %entry
  tail call void @llvm.prefetch.p0(ptr %3, i32 1, i32 3, i32 1) #14
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 4, ptr elementtype(i32) %3) #14, !srcloc !195
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !196
  %9 = and i32 %asmresult.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.not.i, label %trylock_buffer.exit.i.lock_buffer.exit_crit_edge, label %trylock_buffer.exit.i.if.then.i17_crit_edge

trylock_buffer.exit.i.if.then.i17_crit_edge:      ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i17

trylock_buffer.exit.i.lock_buffer.exit_crit_edge: ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lock_buffer.exit

if.then.i17:                                      ; preds = %trylock_buffer.exit.i.if.then.i17_crit_edge, %entry.if.then.i17_crit_edge
  tail call void @__lock_buffer(ptr noundef %3) #14
  br label %lock_buffer.exit

lock_buffer.exit:                                 ; preds = %if.then.i17, %trylock_buffer.exit.i.lock_buffer.exit_crit_edge
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %3, align 4
  %12 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %if.then.i, label %lock_buffer.exit.set_buffer_dirty.exit_crit_edge

lock_buffer.exit.set_buffer_dirty.exit_crit_edge: ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %set_buffer_dirty.exit

if.then.i:                                        ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_set_bit(i32 noundef 1, ptr noundef %3) #14
  br label %set_buffer_dirty.exit

set_buffer_dirty.exit:                            ; preds = %if.then.i, %lock_buffer.exit.set_buffer_dirty.exit_crit_edge
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %3, align 4
  %and1.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i14 = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i14, label %if.then.i15, label %set_buffer_dirty.exit.set_buffer_uptodate.exit_crit_edge

set_buffer_dirty.exit.set_buffer_uptodate.exit_crit_edge: ; preds = %set_buffer_dirty.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %set_buffer_uptodate.exit

if.then.i15:                                      ; preds = %set_buffer_dirty.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_set_bit(i32 noundef 0, ptr noundef %3) #14
  br label %set_buffer_uptodate.exit

set_buffer_uptodate.exit:                         ; preds = %if.then.i15, %set_buffer_dirty.exit.set_buffer_uptodate.exit_crit_edge
  %and = and i32 %5, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %is_tail, i32 395264, i32 2048
  %write_flags.0 = select i1 %tobool.not, i32 2048, i32 %spec.select
  %b_end_io = getelementptr inbounds %struct.buffer_head, ptr %3, i32 0, i32 7
  %15 = ptrtoint ptr %b_end_io to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @ext4_end_buffer_io_sync, ptr %b_end_io, align 4
  %call4 = tail call i32 @submit_bh(i32 noundef 1, i32 noundef %write_flags.0, ptr noundef %3) #14
  %16 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_fs_info.i, align 16
  %s_fc_bh6 = getelementptr inbounds %struct.ext4_sb_info, ptr %17, i32 0, i32 164
  %18 = ptrtoint ptr %s_fc_bh6 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %s_fc_bh6, align 16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ext4_end_buffer_io_sync(ptr noundef %bh, i32 noundef %uptodate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %uptodate)
  %tobool.not = icmp eq i32 %uptodate, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bh, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_set_bit(i32 noundef 0, ptr noundef %bh) #14
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %bh) #14
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.i, %if.then.if.end_crit_edge
  tail call void @unlock_buffer(ptr noundef %bh) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @submit_bh(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ext4_fc_add_dentry_tlv(ptr nocapture noundef readonly %sb, ptr noundef %crc, ptr nocapture noundef readonly %fc_dentry) unnamed_addr #0 align 64 {
entry:
  %desc.i.i41 = alloca %struct.anon.88, align 8
  %desc.i.i28 = alloca %struct.anon.88, align 8
  %desc.i.i = alloca %struct.anon.88, align 8
  %fcd = alloca %struct.ext4_fc_dentry_info, align 8
  %tl = alloca %struct.ext4_fc_tl, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %fcd) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tl) #14
  %fcd_name = getelementptr inbounds %struct.ext4_fc_dentry_update, ptr %fc_dentry, i32 0, i32 3
  %0 = ptrtoint ptr %fcd_name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fcd_name, align 8
  %add = add i32 %1, 12
  %call = tail call fastcc ptr @ext4_fc_reserve_space(ptr noundef %sb, i32 noundef %add, ptr noundef %crc)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds %struct.ext4_fc_tl, ptr %tl, i32 0, i32 1
  %3 = getelementptr inbounds %struct.ext4_fc_dentry_info, ptr %fcd, i32 0, i32 1
  %fcd_parent = getelementptr inbounds %struct.ext4_fc_dentry_update, ptr %fc_dentry, i32 0, i32 1
  %4 = ptrtoint ptr %fcd_parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fcd_parent, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %7 = ptrtoint ptr %fcd to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %fcd, align 8
  %fcd_ino = getelementptr inbounds %struct.ext4_fc_dentry_update, ptr %fc_dentry, i32 0, i32 2
  %8 = ptrtoint ptr %fcd_ino to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fcd_ino, align 8
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %3, align 4
  %12 = ptrtoint ptr %fc_dentry to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fc_dentry, align 8
  %conv = trunc i32 %13 to i16
  %14 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %15 = ptrtoint ptr %tl to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %tl, align 4
  %16 = trunc i32 %1 to i16
  %conv2 = add i16 %16, 8
  %17 = tail call i16 @llvm.bswap.i16(i16 %conv2)
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %2, align 2
  %tobool.not.i = icmp eq ptr %crc, null
  br i1 %tobool.not.i, label %ext4_fc_memcpy.exit40.thread, label %if.then.i

ext4_fc_memcpy.exit40.thread:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %19 = ptrtoint ptr %tl to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tl, align 4
  %21 = ptrtoint ptr %call to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 %20, ptr %call, align 1
  %add.ptr54 = getelementptr i8, ptr %call, i32 4
  %22 = ptrtoint ptr %fcd to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %fcd, align 8
  %24 = ptrtoint ptr %add.ptr54 to i32
  call void @__asan_storeN_noabort(i32 %24, i32 8)
  store i64 %23, ptr %add.ptr54, align 1
  %name58 = getelementptr inbounds %struct.ext4_fc_dentry_update, ptr %fc_dentry, i32 0, i32 3, i32 1
  %25 = ptrtoint ptr %name58 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %name58, align 8
  br label %ext4_fc_memcpy.exit53

if.then.i:                                        ; preds = %if.end
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %27 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %s_fs_info.i.i, align 16
  %29 = ptrtoint ptr %crc to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %crc, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %desc.i.i) #14
  %31 = getelementptr inbounds %struct.anon.88, ptr %desc.i.i, i32 0, i32 1
  %s_chksum_driver.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %28, i32 0, i32 121
  %32 = call ptr @memset(ptr %desc.i.i, i32 255, i32 16)
  %33 = ptrtoint ptr %s_chksum_driver.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %s_chksum_driver.i.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %36)
  %cmp.not.i.i = icmp eq i32 %36, 4
  br i1 %cmp.not.i.i, label %do.end7.i.i, label %do.body2.i.i, !prof !171

do.body2.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #14, !srcloc !185
  unreachable

do.end7.i.i:                                      ; preds = %if.then.i
  %37 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %desc.i.i, align 8
  %38 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %30, ptr %31, align 8
  %call11.i.i = call i32 @crypto_shash_update(ptr noundef nonnull %desc.i.i, ptr noundef nonnull %tl, i32 noundef 4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i)
  %tobool12.not.i.i = icmp eq i32 %call11.i.i, 0
  br i1 %tobool12.not.i.i, label %if.then.i33, label %do.body20.i.i, !prof !171

do.body20.i.i:                                    ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #14, !srcloc !186
  unreachable

if.then.i33:                                      ; preds = %do.end7.i.i
  %39 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %31, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %desc.i.i) #14
  %41 = ptrtoint ptr %crc to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %crc, align 4
  %42 = ptrtoint ptr %tl to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tl, align 4
  %44 = ptrtoint ptr %call to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 %43, ptr %call, align 1
  %add.ptr = getelementptr i8, ptr %call, i32 4
  %45 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %s_fs_info.i.i, align 16
  %47 = load i32, ptr %crc, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %desc.i.i28) #14
  %48 = getelementptr inbounds %struct.anon.88, ptr %desc.i.i28, i32 0, i32 1
  %s_chksum_driver.i.i31 = getelementptr inbounds %struct.ext4_sb_info, ptr %46, i32 0, i32 121
  %49 = call ptr @memset(ptr %desc.i.i28, i32 255, i32 16)
  %50 = ptrtoint ptr %s_chksum_driver.i.i31 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %s_chksum_driver.i.i31, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %53)
  %cmp.not.i.i32 = icmp eq i32 %53, 4
  br i1 %cmp.not.i.i32, label %do.end7.i.i37, label %do.body2.i.i34, !prof !171

do.body2.i.i34:                                   ; preds = %if.then.i33
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #14, !srcloc !185
  unreachable

do.end7.i.i37:                                    ; preds = %if.then.i33
  %54 = ptrtoint ptr %desc.i.i28 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %51, ptr %desc.i.i28, align 8
  %55 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %47, ptr %48, align 8
  %call11.i.i35 = call i32 @crypto_shash_update(ptr noundef nonnull %desc.i.i28, ptr noundef nonnull %fcd, i32 noundef 8) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i35)
  %tobool12.not.i.i36 = icmp eq i32 %call11.i.i35, 0
  br i1 %tobool12.not.i.i36, label %if.then.i46, label %do.body20.i.i38, !prof !171

do.body20.i.i38:                                  ; preds = %do.end7.i.i37
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #14, !srcloc !186
  unreachable

if.then.i46:                                      ; preds = %do.end7.i.i37
  %56 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %48, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %desc.i.i28) #14
  %58 = ptrtoint ptr %crc to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %crc, align 4
  %59 = ptrtoint ptr %fcd to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %fcd, align 8
  %61 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %61, i32 8)
  store i64 %60, ptr %add.ptr, align 1
  %name = getelementptr inbounds %struct.ext4_fc_dentry_update, ptr %fc_dentry, i32 0, i32 3, i32 1
  %62 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %name, align 8
  %64 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %s_fs_info.i.i, align 16
  %66 = load i32, ptr %crc, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %desc.i.i41) #14
  %67 = getelementptr inbounds %struct.anon.88, ptr %desc.i.i41, i32 0, i32 1
  %s_chksum_driver.i.i44 = getelementptr inbounds %struct.ext4_sb_info, ptr %65, i32 0, i32 121
  %68 = call ptr @memset(ptr %desc.i.i41, i32 255, i32 16)
  %69 = ptrtoint ptr %s_chksum_driver.i.i44 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %s_chksum_driver.i.i44, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %70, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %72)
  %cmp.not.i.i45 = icmp eq i32 %72, 4
  br i1 %cmp.not.i.i45, label %do.end7.i.i50, label %do.body2.i.i47, !prof !171

do.body2.i.i47:                                   ; preds = %if.then.i46
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #14, !srcloc !185
  unreachable

do.end7.i.i50:                                    ; preds = %if.then.i46
  %73 = ptrtoint ptr %desc.i.i41 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %70, ptr %desc.i.i41, align 8
  %74 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %66, ptr %67, align 8
  %call11.i.i48 = call i32 @crypto_shash_update(ptr noundef nonnull %desc.i.i41, ptr noundef %63, i32 noundef %1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i48)
  %tobool12.not.i.i49 = icmp eq i32 %call11.i.i48, 0
  br i1 %tobool12.not.i.i49, label %ext4_chksum.exit.i52, label %do.body20.i.i51, !prof !171

do.body20.i.i51:                                  ; preds = %do.end7.i.i50
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #14, !srcloc !186
  unreachable

ext4_chksum.exit.i52:                             ; preds = %do.end7.i.i50
  call void @__sanitizer_cov_trace_pc() #16
  %75 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %67, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %desc.i.i41) #14
  %77 = ptrtoint ptr %crc to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %crc, align 4
  br label %ext4_fc_memcpy.exit53

ext4_fc_memcpy.exit53:                            ; preds = %ext4_chksum.exit.i52, %ext4_fc_memcpy.exit40.thread
  %78 = phi ptr [ %26, %ext4_fc_memcpy.exit40.thread ], [ %63, %ext4_chksum.exit.i52 ]
  %add.ptr559 = getelementptr i8, ptr %call, i32 12
  %79 = call ptr @memcpy(ptr %add.ptr559, ptr %78, i32 %1)
  br label %cleanup

cleanup:                                          ; preds = %ext4_fc_memcpy.exit53, %entry.cleanup_crit_edge
  %80 = xor i1 %tobool.not, true
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tl) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fcd) #14
  ret i1 %80
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_map_blocks(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_get_inode_loc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ext4_fc_set_bitmaps_and_counters(ptr noundef %sb) unnamed_addr #0 align 64 {
entry:
  %map = alloca %struct.ext4_map_blocks, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %map) #14
  %0 = call ptr @memset(ptr %map, i32 255, i32 24)
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %1 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %s_fs_info.i, align 16
  %fc_modified_inodes_used = getelementptr inbounds %struct.ext4_sb_info, ptr %2, i32 0, i32 168, i32 10
  %3 = ptrtoint ptr %fc_modified_inodes_used to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fc_modified_inodes_used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp66 = icmp sgt i32 %4, 0
  br i1 %cmp66, label %for.body.lr.ph, label %entry.for.end34_crit_edge

entry.for.end34_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end34

for.body.lr.ph:                                   ; preds = %entry
  %fc_modified_inodes = getelementptr inbounds %struct.ext4_sb_info, ptr %2, i32 0, i32 168, i32 9
  %m_lblk = getelementptr inbounds %struct.ext4_map_blocks, ptr %map, i32 0, i32 1
  %m_len = getelementptr inbounds %struct.ext4_map_blocks, ptr %map, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc32.for.body_crit_edge, %for.body.lr.ph
  %i.067 = phi i32 [ 0, %for.body.lr.ph ], [ %inc33, %for.inc32.for.body_crit_edge ]
  %5 = ptrtoint ptr %fc_modified_inodes to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fc_modified_inodes, align 4
  %arrayidx = getelementptr i32, ptr %6, i32 %i.067
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %call1 = call ptr @__ext4_iget(ptr noundef %sb, i32 noundef %8, i32 noundef 0, ptr noundef nonnull @__func__.ext4_fc_set_bitmaps_and_counters, i32 noundef 1823) #14
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %fc_modified_inodes to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fc_modified_inodes, align 4
  %arrayidx4 = getelementptr i32, ptr %10, i32 %i.067
  %11 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx4, align 4
  call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ext4_fc_set_bitmaps_and_counters, i32 noundef 1826, ptr noundef nonnull @.str.16, i32 noundef %12) #14
  br label %for.inc32

if.end:                                           ; preds = %for.body
  %i_flags.i = getelementptr i8, ptr %call1, i32 -380
  %13 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %i_flags.i, align 4
  %15 = and i32 %14, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %while.cond.preheader, label %if.then6

while.cond.preheader:                             ; preds = %if.end
  %i_sb = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 8
  br label %while.body

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  call void @iput(ptr noundef %call1) #14
  br label %for.inc32

while.body:                                       ; preds = %if.end31.while.body_crit_edge, %while.cond.preheader
  %cur.065 = phi i32 [ 0, %while.cond.preheader ], [ %cur.1, %if.end31.while.body_crit_edge ]
  %16 = ptrtoint ptr %m_lblk to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %cur.065, ptr %m_lblk, align 8
  %sub = xor i32 %cur.065, -1
  %17 = ptrtoint ptr %m_len to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %sub, ptr %m_len, align 4
  %call9 = call i32 @ext4_map_blocks(ptr noundef null, ptr noundef %call1, ptr noundef nonnull %map, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %while.body.while.end_crit_edge, label %if.end12

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.end12:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp13.not = icmp eq i32 %call9, 0
  br i1 %cmp13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end12
  %18 = ptrtoint ptr %m_lblk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %m_lblk, align 8
  %call16 = call ptr @ext4_find_extent(ptr noundef %call1, i32 noundef %19, ptr noundef null, i32 noundef 0) #14
  %cmp.i61 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i61, label %if.then14.if.end24_crit_edge, label %for.cond19.preheader

if.then14.if.end24_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

for.cond19.preheader:                             ; preds = %if.then14
  %p_depth = getelementptr inbounds %struct.ext4_ext_path, ptr %call16, i32 0, i32 1
  %20 = ptrtoint ptr %p_depth to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %p_depth, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %cmp2063.not = icmp eq i16 %21, 0
  br i1 %cmp2063.not, label %for.cond19.preheader.for.end_crit_edge, label %for.cond19.preheader.for.body22_crit_edge

for.cond19.preheader.for.body22_crit_edge:        ; preds = %for.cond19.preheader
  br label %for.body22

for.cond19.preheader.for.end_crit_edge:           ; preds = %for.cond19.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body22:                                       ; preds = %for.body22.for.body22_crit_edge, %for.cond19.preheader.for.body22_crit_edge
  %j.064 = phi i32 [ %inc, %for.body22.for.body22_crit_edge ], [ 0, %for.cond19.preheader.for.body22_crit_edge ]
  %22 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_sb, align 4
  %arrayidx23 = getelementptr %struct.ext4_ext_path, ptr %call16, i32 %j.064
  %24 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %arrayidx23, align 8
  call void @ext4_mb_mark_bb(ptr noundef %23, i64 noundef %25, i32 noundef 1, i32 noundef 1) #14
  %inc = add nuw nsw i32 %j.064, 1
  %26 = ptrtoint ptr %p_depth to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %p_depth, align 8
  %conv = zext i16 %27 to i32
  %cmp20 = icmp ult i32 %inc, %conv
  br i1 %cmp20, label %for.body22.for.body22_crit_edge, label %for.body22.for.end_crit_edge

for.body22.for.end_crit_edge:                     ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body22.for.body22_crit_edge:                  ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body22

for.end:                                          ; preds = %for.body22.for.end_crit_edge, %for.cond19.preheader.for.end_crit_edge
  call void @ext4_ext_drop_refs(ptr noundef %call16) #14
  call void @kfree(ptr noundef %call16) #14
  br label %if.end24

if.end24:                                         ; preds = %for.end, %if.then14.if.end24_crit_edge
  %28 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i_sb, align 4
  %30 = ptrtoint ptr %map to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %map, align 8
  %32 = ptrtoint ptr %m_len to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %m_len, align 4
  call void @ext4_mb_mark_bb(ptr noundef %29, i64 noundef %31, i32 noundef %33, i32 noundef 1) #14
  br label %if.end31

if.else:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  %34 = ptrtoint ptr %m_len to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %m_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool28.not = icmp eq i32 %35, 0
  %spec.select = select i1 %tobool28.not, i32 1, i32 %35
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.end24
  %call9.pn = phi i32 [ %call9, %if.end24 ], [ %spec.select, %if.else ]
  %cur.1 = add i32 %call9.pn, %cur.065
  %cmp8.not = icmp eq i32 %cur.1, -1
  br i1 %cmp8.not, label %if.end31.while.end_crit_edge, label %if.end31.while.body_crit_edge

if.end31.while.body_crit_edge:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

if.end31.while.end_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %if.end31.while.end_crit_edge, %while.body.while.end_crit_edge
  call void @iput(ptr noundef %call1) #14
  br label %for.inc32

for.inc32:                                        ; preds = %while.end, %if.then6, %if.then
  %inc33 = add nuw nsw i32 %i.067, 1
  %36 = ptrtoint ptr %fc_modified_inodes_used to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %fc_modified_inodes_used, align 4
  %cmp = icmp slt i32 %inc33, %37
  br i1 %cmp, label %for.inc32.for.body_crit_edge, label %for.inc32.for.end34_crit_edge

for.inc32.for.end34_crit_edge:                    ; preds = %for.inc32
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end34

for.inc32.for.body_crit_edge:                     ; preds = %for.inc32
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end34:                                        ; preds = %for.inc32.for.end34_crit_edge, %entry.for.end34_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %map) #14
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ext4_fc_replay(ptr noundef %sb, i32 noundef %tag, i32 noundef %ino, i32 noundef %priv1, i32 noundef %priv2) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_fc_replay, i32 0, i32 1), ptr blockaddress(@trace_ext4_fc_replay, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !170

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !154) #14
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !171

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !154) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !197
  %call42 = tail call i32 @__traceiter_ext4_fc_replay(ptr noundef null, ptr noundef %sb, i32 noundef %tag, i32 noundef %ino, i32 noundef %priv1, i32 noundef %priv2) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !198
  %13 = tail call i32 @llvm.read_register.i32(metadata !154) #14
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !154) #14
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !171

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !154) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !174
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_fc_replay, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_fc_replay, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ext4_fc_replay.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_ext4_fc_replay.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 2675, ptr noundef nonnull @.str.7) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !175
  %31 = tail call i32 @llvm.read_register.i32(metadata !154) #14
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ext4_fc_replay_scan(ptr noundef %sb, i32 noundef %error, i32 noundef %off) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_fc_replay_scan, i32 0, i32 1), ptr blockaddress(@trace_ext4_fc_replay_scan, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !170

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !154) #14
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !171

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !154) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !199
  %call42 = tail call i32 @__traceiter_ext4_fc_replay_scan(ptr noundef null, ptr noundef %sb, i32 noundef %error, i32 noundef %off) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !200
  %13 = tail call i32 @llvm.read_register.i32(metadata !154) #14
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !154) #14
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !171

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !154) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !174
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_fc_replay_scan, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_fc_replay_scan, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ext4_fc_replay_scan.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_ext4_fc_replay_scan.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 2649, ptr noundef nonnull @.str.7) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !175
  %31 = tail call i32 @llvm.read_register.i32(metadata !154) #14
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_fc_replay_scan(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ext4_iget(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ext4_find_extent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_mb_mark_bb(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_ext_drop_refs(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ext4_fc_replay_link_internal(ptr noundef %sb, ptr nocapture noundef readonly %darg, ptr noundef %inode) unnamed_addr #0 align 64 {
entry:
  %qstr_dname = alloca %struct.qstr, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %qstr_dname) #14
  %0 = getelementptr inbounds i8, ptr %qstr_dname, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %0, align 8
  %dname_len = getelementptr inbounds %struct.dentry_info_args, ptr %darg, i32 0, i32 1
  %2 = ptrtoint ptr %dname_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dname_len, align 4
  %4 = ptrtoint ptr %qstr_dname to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %qstr_dname, align 8
  %hash = getelementptr inbounds %struct.anon.3, ptr %qstr_dname, i32 0, i32 1
  %5 = ptrtoint ptr %hash to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %hash, align 4
  %name = getelementptr inbounds %struct.qstr, ptr %qstr_dname, i32 0, i32 1
  %dname = getelementptr inbounds %struct.dentry_info_args, ptr %darg, i32 0, i32 4
  %6 = ptrtoint ptr %dname to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dname, align 4
  %8 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %name, align 8
  %9 = ptrtoint ptr %darg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %darg, align 4
  %call = tail call ptr @__ext4_iget(ptr noundef %sb, i32 noundef %10, i32 noundef 0, ptr noundef nonnull @__func__.ext4_fc_replay_link_internal, i32 noundef 1327) #14
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end19.thread, label %if.end

if.end19.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %11 = ptrtoint ptr %darg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %darg, align 4
  tail call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ext4_fc_replay_link_internal, i32 noundef 1329, ptr noundef nonnull @.str.28, i32 noundef %12) #14
  br label %if.end22

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @d_obtain_alias(ptr noundef %call) #14
  %cmp.i40 = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i40, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ext4_fc_replay_link_internal, i32 noundef 1336, ptr noundef nonnull @.str.29) #14
  br label %if.else

if.end6:                                          ; preds = %if.end
  %call7 = call ptr @d_alloc(ptr noundef %call3, ptr noundef nonnull %qstr_dname) #14
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ext4_fc_replay_link_internal, i32 noundef 1343, ptr noundef nonnull @.str.30) #14
  br label %out

if.end9:                                          ; preds = %if.end6
  %call10 = call i32 @__ext4_link(ptr noundef %call, ptr noundef %inode, ptr noundef nonnull %call7) #14
  %13 = zext i32 %call10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %call10, label %if.then12 [
    i32 0, label %if.end9.out_crit_edge
    i32 -17, label %if.end9.out_crit_edge59
  ]

if.end9.out_crit_edge59:                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ext4_fc_replay_link_internal, i32 noundef 1356, ptr noundef nonnull @.str.31) #14
  br label %out

out:                                              ; preds = %if.then12, %if.end9.out_crit_edge, %if.end9.out_crit_edge59, %if.then8
  %ret.0 = phi i32 [ %call10, %if.then12 ], [ -12, %if.then8 ], [ 0, %if.end9.out_crit_edge ], [ 0, %if.end9.out_crit_edge59 ]
  %tobool14.not = icmp eq ptr %call3, null
  br i1 %tobool14.not, label %out.if.else_crit_edge, label %if.then15

out.if.else_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.then15:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  call void @d_drop(ptr noundef nonnull %call3) #14
  call void @dput(ptr noundef nonnull %call3) #14
  br label %if.end19

if.else:                                          ; preds = %out.if.else_crit_edge, %if.then5
  %ret.050 = phi i32 [ %ret.0, %out.if.else_crit_edge ], [ 0, %if.then5 ]
  %dentry_inode.048 = phi ptr [ %call7, %out.if.else_crit_edge ], [ null, %if.then5 ]
  %tobool16.not = icmp eq ptr %call, null
  br i1 %tobool16.not, label %if.else.if.end19_crit_edge, label %if.then17

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

if.then17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  call void @iput(ptr noundef nonnull %call) #14
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.else.if.end19_crit_edge, %if.then15
  %ret.049 = phi i32 [ %ret.050, %if.else.if.end19_crit_edge ], [ %ret.050, %if.then17 ], [ %ret.0, %if.then15 ]
  %dentry_inode.047 = phi ptr [ %dentry_inode.048, %if.else.if.end19_crit_edge ], [ %dentry_inode.048, %if.then17 ], [ %call7, %if.then15 ]
  %tobool20.not = icmp eq ptr %dentry_inode.047, null
  br i1 %tobool20.not, label %if.end19.if.end22_crit_edge, label %if.then21

if.end19.if.end22_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  call void @d_drop(ptr noundef nonnull %dentry_inode.047) #14
  call void @dput(ptr noundef nonnull %dentry_inode.047) #14
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end19.if.end22_crit_edge, %if.end19.thread
  %ret.04958 = phi i32 [ 0, %if.end19.thread ], [ %ret.049, %if.then21 ], [ %ret.049, %if.end19.if.end22_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %qstr_dname) #14
  ret i32 %ret.04958
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_obtain_alias(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_alloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_drop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_unlink(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_ext_insert_extent(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_ext_replay_update_ex(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_ext_replay_shrink_inode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !201
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @trace_hardirqs_off() #14
  %1 = tail call ptr @llvm.returnaddress(i32 0) #14
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #14
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %2) #14
  tail call void @trace_hardirqs_on() #14
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %3 = tail call ptr @llvm.returnaddress(i32 0) #14
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #14
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %4) #14
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !202
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !165

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @warn_bogus_irq_restore() #14
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #14, !srcloc !203
  %6 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %i_size_seqcount, align 4
  %and29 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool.not30 = icmp eq i32 %and29, 0
  br i1 %tobool.not30, label %seqcount_lockdep_reader_access.exit.while.end_crit_edge, label %seqcount_lockdep_reader_access.exit.do.end_crit_edge

seqcount_lockdep_reader_access.exit.do.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  br label %do.end

seqcount_lockdep_reader_access.exit.while.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %seqcount_lockdep_reader_access.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !204
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !205
  %8 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount, align 4
  %and = and i32 %9, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %9, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !206
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !207
  %12 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount, align 4
  %cmp.i.i.not = icmp eq i32 %13, %.lcssa
  br i1 %cmp.i.i.not, label %do.end24, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

do.end24:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  ret i64 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_mark_inode_used(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_init_new_dir(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_mark_inode_dirty(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_ext_remove_space(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_ext_clear_bb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_get_fc_inode_loc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_handle_dirty_metadata(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_dirty_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_ext_replay_set_iblocks(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_reset_inode_seed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_inode_csum_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_fc_replay(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_fc_release_bufs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ext4_fc_stats(ptr noundef %sb) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_fc_stats, i32 0, i32 1), ptr blockaddress(@trace_ext4_fc_stats, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !170

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !154) #14
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !171

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !154) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !208
  %call42 = tail call i32 @__traceiter_ext4_fc_stats(ptr noundef null, ptr noundef %sb) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !209
  %13 = tail call i32 @llvm.read_register.i32(metadata !154) #14
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !154) #14
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !171

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !154) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !174
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_fc_stats, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_fc_stats, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ext4_fc_stats.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_ext4_fc_stats.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 2761, ptr noundef nonnull @.str.7) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !175
  %31 = tail call i32 @llvm.read_register.i32(metadata !154) #14
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_fc_stats(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind allocsize(1) }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !18, !19, !20, !22, !23, !25, !26, !28, !29, !31, !32, !34, !35, !37, !38, !40, !41, !43, !44, !46, !48, !49, !51, !52, !54, !55, !56, !58, !60, !61, !63, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !129, !131, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152}
!llvm.named.register.sp = !{!154}
!llvm.module.flags = !{!155, !156, !157, !158, !159, !160, !161, !162}
!llvm.ident = !{!163}

!0 = !{ptr @ext4_fc_init_inode.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../fs/ext4/fast_commit.c", i32 202, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/ext4/fast_commit.c", i32 329, i32 2}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/ext4/fast_commit.c", i32 2156, i32 3}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/ext4/fast_commit.c", i32 2160, i32 16}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/ext4/fast_commit.c", i32 2162, i32 19}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/ext4/fast_commit.c", i32 2170, i32 26}
!13 = !{ptr @ext4_fc_dentry_cachep, !14, !"ext4_fc_dentry_cachep", i1 false, i1 false}
!14 = !{!"../fs/ext4/fast_commit.c", i32 169, i32 27}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../include/trace/events/ext4.h", i32 2789, i32 1}
!17 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!18 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!19 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!20 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!21 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!22 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../include/trace/events/ext4.h", i32 2788, i32 1}
!25 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!26 = distinct !{null, !27, !"__already_done", i1 false, i1 false}
!27 = !{!"../include/trace/events/ext4.h", i32 2787, i32 1}
!28 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!29 = distinct !{null, !30, !"__already_done", i1 false, i1 false}
!30 = !{!"../include/trace/events/ext4.h", i32 2791, i32 1}
!31 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!32 = distinct !{null, !33, !"__already_done", i1 false, i1 false}
!33 = !{!"../include/trace/events/ext4.h", i32 2813, i32 1}
!34 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!35 = distinct !{null, !36, !"__already_done", i1 false, i1 false}
!36 = !{!"../include/trace/events/ext4.h", i32 2677, i32 1}
!37 = distinct !{null, !36, !"__warned", i1 false, i1 false}
!38 = !{ptr @__func__.ext4_fc_update_stats, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/ext4/fast_commit.c", i32 1095, i32 2}
!40 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!41 = distinct !{null, !42, !"__already_done", i1 false, i1 false}
!42 = !{!"../include/trace/events/ext4.h", i32 2694, i32 1}
!43 = distinct !{null, !42, !"__warned", i1 false, i1 false}
!44 = !{ptr @.str.10, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../include/linux/buffer_head.h", i32 366, i32 2}
!46 = !{ptr @__func__.ext4_fc_write_inode_data, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/ext4/fast_commit.c", i32 839, i32 2}
!48 = !{ptr @.str.11, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @__func__.ext4_fc_replay, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/ext4/fast_commit.c", i32 2049, i32 3}
!51 = !{ptr @.str.12, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.13, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/ext4/fast_commit.c", i32 2056, i32 3}
!54 = !{ptr @ext4_fc_replay._entry, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @ext4_fc_replay._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.14, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/ext4/fast_commit.c", i32 2073, i32 3}
!58 = !{ptr @__func__.ext4_fc_replay_scan, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/ext4/fast_commit.c", i32 1954, i32 3}
!60 = !{ptr @.str.15, !59, !"<string literal>", i1 false, i1 false}
!61 = distinct !{null, !62, !"__already_done", i1 false, i1 false}
!62 = !{!"../include/trace/events/ext4.h", i32 2629, i32 1}
!63 = distinct !{null, !62, !"__warned", i1 false, i1 false}
!64 = !{ptr @__func__.ext4_fc_set_bitmaps_and_counters, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../fs/ext4/fast_commit.c", i32 1822, i32 11}
!66 = !{ptr @.str.16, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/ext4/fast_commit.c", i32 1825, i32 4}
!68 = !{ptr @.str.17, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/ext4/fast_commit.h", i32 161, i32 10}
!70 = !{ptr @.str.18, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/ext4/fast_commit.h", i32 163, i32 10}
!72 = !{ptr @.str.19, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/ext4/fast_commit.h", i32 165, i32 10}
!74 = !{ptr @.str.20, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/ext4/fast_commit.h", i32 167, i32 10}
!76 = !{ptr @.str.21, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../fs/ext4/fast_commit.h", i32 169, i32 10}
!78 = !{ptr @.str.22, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../fs/ext4/fast_commit.h", i32 171, i32 10}
!80 = !{ptr @.str.23, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../fs/ext4/fast_commit.h", i32 173, i32 10}
!82 = !{ptr @.str.24, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../fs/ext4/fast_commit.h", i32 175, i32 10}
!84 = !{ptr @.str.25, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../fs/ext4/fast_commit.h", i32 177, i32 10}
!86 = !{ptr @.str.26, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../fs/ext4/fast_commit.h", i32 179, i32 10}
!88 = !{ptr @__func__.ext4_fc_replay_link, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../fs/ext4/fast_commit.c", i32 1388, i32 10}
!90 = !{ptr @.str.27, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../fs/ext4/fast_commit.c", i32 1390, i32 3}
!92 = !{ptr @__func__.ext4_fc_replay_link_internal, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../fs/ext4/fast_commit.c", i32 1327, i32 8}
!94 = !{ptr @.str.28, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../fs/ext4/fast_commit.c", i32 1329, i32 3}
!96 = !{ptr @.str.29, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../fs/ext4/fast_commit.c", i32 1336, i32 3}
!98 = !{ptr @.str.30, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../fs/ext4/fast_commit.c", i32 1343, i32 3}
!100 = !{ptr @.str.31, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../fs/ext4/fast_commit.c", i32 1356, i32 3}
!102 = !{ptr @__func__.ext4_fc_replay_unlink, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../fs/ext4/fast_commit.c", i32 1294, i32 10}
!104 = !{ptr @.str.32, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../fs/ext4/fast_commit.c", i32 1297, i32 3}
!106 = !{ptr @.str.33, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../fs/ext4/fast_commit.c", i32 1304, i32 3}
!108 = !{ptr @__func__.ext4_fc_replay_add_range, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../fs/ext4/fast_commit.c", i32 1648, i32 10}
!110 = !{ptr @.str.34, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../fs/ext4/fast_commit.c", i32 1664, i32 2}
!112 = !{ptr @.str.35, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../fs/ext4/fast_commit.c", i32 1725, i32 3}
!114 = !{ptr @__func__.ext4_fc_replay_create, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../fs/ext4/fast_commit.c", i32 1550, i32 10}
!116 = !{ptr @.str.36, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../fs/ext4/fast_commit.c", i32 1552, i32 3}
!118 = !{ptr @.str.37, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../fs/ext4/fast_commit.c", i32 1565, i32 4}
!120 = !{ptr @__func__.ext4_fc_replay_del_range, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../fs/ext4/fast_commit.c", i32 1766, i32 10}
!122 = !{ptr @.str.38, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../fs/ext4/fast_commit.c", i32 1776, i32 2}
!124 = !{ptr @__func__.ext4_fc_replay_inode, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../fs/ext4/fast_commit.c", i32 1446, i32 10}
!126 = distinct !{null, !127, !"__already_done", i1 false, i1 false}
!127 = !{!"../include/trace/events/ext4.h", i32 2651, i32 1}
!128 = distinct !{null, !127, !"__warned", i1 false, i1 false}
!129 = distinct !{null, !130, !"__already_done", i1 false, i1 false}
!130 = !{!"../include/trace/events/ext4.h", i32 2728, i32 1}
!131 = distinct !{null, !130, !"__warned", i1 false, i1 false}
!132 = !{ptr @.str.39, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../fs/ext4/fast_commit.c", i32 2134, i32 2}
!134 = !{ptr @.str.40, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../fs/ext4/fast_commit.c", i32 2135, i32 2}
!136 = !{ptr @.str.41, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../fs/ext4/fast_commit.c", i32 2136, i32 2}
!138 = !{ptr @.str.42, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../fs/ext4/fast_commit.c", i32 2137, i32 2}
!140 = !{ptr @.str.43, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../fs/ext4/fast_commit.c", i32 2138, i32 2}
!142 = !{ptr @.str.44, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../fs/ext4/fast_commit.c", i32 2139, i32 2}
!144 = !{ptr @.str.45, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../fs/ext4/fast_commit.c", i32 2140, i32 2}
!146 = !{ptr @.str.46, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../fs/ext4/fast_commit.c", i32 2141, i32 2}
!148 = !{ptr @.str.47, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../fs/ext4/fast_commit.c", i32 2142, i32 2}
!150 = !{ptr @.str.48, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../fs/ext4/fast_commit.c", i32 2143, i32 2}
!152 = distinct !{null, !153, !"fc_ineligible_reasons", i1 false, i1 false}
!153 = !{!"../fs/ext4/fast_commit.c", i32 2133, i32 20}
!154 = !{!"sp"}
!155 = !{i32 1, !"wchar_size", i32 2}
!156 = !{i32 1, !"min_enum_size", i32 4}
!157 = !{i32 8, !"branch-target-enforcement", i32 0}
!158 = !{i32 8, !"sign-return-address", i32 0}
!159 = !{i32 8, !"sign-return-address-all", i32 0}
!160 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!161 = !{i32 7, !"uwtable", i32 1}
!162 = !{i32 7, !"frame-pointer", i32 2}
!163 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!164 = !{i64 2148328814, i64 2148328840, i64 2148328869, i64 2148328903, i64 2148328934, i64 2148328957}
!165 = !{!"branch_weights", i32 1, i32 2000}
!166 = !{i64 2148417266}
!167 = !{i64 2148331999, i64 2148332031, i64 2148332060, i64 2148332094, i64 2148332125, i64 2148332148}
!168 = !{i64 2148417495}
!169 = distinct !{ptr @__track_dentry_update, null, null}
!170 = !{i64 2148774538, i64 2148774543, i64 2148774556, i64 2148774600, i64 2148774634, i64 2148774655}
!171 = !{!"branch_weights", i32 2000, i32 1}
!172 = !{i64 2157903772}
!173 = !{i64 2157904011}
!174 = !{i64 2149513041}
!175 = !{i64 2149514077}
!176 = !{i64 2157885952}
!177 = !{i64 2157886187}
!178 = !{i64 2157868106}
!179 = !{i64 2157868345}
!180 = !{i64 2157924615}
!181 = !{i64 2157924836}
!182 = !{i64 2157941649}
!183 = !{i64 2157941894}
!184 = !{!"auto-init"}
!185 = !{i64 2155069332, i64 2155069812, i64 2155069369, i64 2155069425, i64 2155069459, i64 2155069483, i64 2155069524, i64 2155069545, i64 2155069573, i64 2155069607}
!186 = !{i64 2155070974, i64 2155071454, i64 2155071011, i64 2155071067, i64 2155071101, i64 2155071125, i64 2155071166, i64 2155071187, i64 2155071215, i64 2155071249}
!187 = !{i64 2157813460}
!188 = !{i64 2157813667}
!189 = !{i64 2155137446, i64 2155137933, i64 2155137483, i64 2155137539, i64 2155137573, i64 2155137597, i64 2155137638, i64 2155137659, i64 2155137687, i64 2155137721}
!190 = !{i64 2158041159}
!191 = !{i64 1447211, i64 1447238, i64 1447260, i64 1447288}
!192 = !{i64 1447619, i64 1447646, i64 1447679, i64 1447700, i64 1447727, i64 1447753}
!193 = !{i64 2157830357}
!194 = !{i64 2157830592}
!195 = !{i64 2148337672, i64 2148337704, i64 2148337733, i64 2148337767, i64 2148337798, i64 2148337821}
!196 = !{i64 2148426753}
!197 = !{i64 2157797034}
!198 = !{i64 2157797277}
!199 = !{i64 2157775865}
!200 = !{i64 2157776094}
!201 = !{i64 782141, i64 782202}
!202 = !{i64 784873}
!203 = !{i64 785158}
!204 = !{i64 2152774952}
!205 = !{i64 2152774794}
!206 = !{i64 2152775122}
!207 = !{i64 2150412208}
!208 = !{i64 2157850742}
!209 = !{i64 2157850935}
