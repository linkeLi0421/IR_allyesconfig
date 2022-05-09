; ModuleID = '/llk/IR_all_yes/fs/ext4/extents_status.c_pt.bc'
source_filename = "../fs/ext4/extents_status.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.72 }
%struct.atomic_t = type { i32 }
%union.anon.72 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ext4_es_tree = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, ptr, %struct.address_space, %struct.list_head, %union.anon.79, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.76 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.77 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.78 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.79 = type { ptr }
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
%struct.fscrypt_dummy_policy = type { ptr }
%struct.ext4_fc_stats = type { [10 x i32], i32, i32, i32, i32, i32, i64 }
%struct.ext4_fc_replay_state = type { i32, i32, i32, i32, i32, ptr, i32, i32, i32, ptr, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.extent_status = type { %struct.rb_node, i32, i32, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.pending_reservation = type { %struct.rb_node, i32 }
%struct.rsvd_count = type { i32, i8, i32, i32, ptr, i8, i32 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.ext4_inode_info = type { [15 x i32], i32, i64, i32, i32, i32, i32, %struct.rw_semaphore, %union.anon.84, %struct.list_head, i32, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.mutex, i64, %struct.rw_semaphore, %struct.inode, ptr, %struct.spinlock, %struct.timespec64, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.ext4_es_tree, %struct.rwlock_t, %struct.list_head, i32, i32, i32, i32, i32, %struct.ext4_pending_tree, i16, i16, i16, i64, %struct.spinlock, %struct.list_head, %struct.work_struct, %struct.atomic_t, %struct.spinlock, i32, i32, [3 x ptr], i32, %struct.kprojid_t }
%union.anon.84 = type { %struct.list_head }
%struct.ext4_pending_tree = type { %struct.rb_root }
%struct.kprojid_t = type { i32 }
%struct.shrink_control = type { i32, i32, i32, i32, ptr }

@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ext4_extent_status\00", [45 x i8] zeroinitializer }, align 32
@ext4_es_cachep = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__func__.ext4_es_insert_extent = private unnamed_addr constant [22 x i8] c"ext4_es_insert_extent\00", align 1
@.str.1 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"Inserting extent [%u/%u] as  delayed and written which can potentially  cause data loss.\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fs/ext4/extents_status.c\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"stats:\0A  %lld objects\0A  %lld reclaimable objects\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"  %lld/%lld cache hits/misses\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"  %d inodes on list\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"average:\0A  %llu us scan time\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"  %lu shrunk objects\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"maximum:\0A  %lu inode (%u objects, %u reclaimable)\0A  %llu us max scan time\0A\00", [53 x i8] zeroinitializer }, align 32
@ext4_es_register_shrinker.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&sbi->s_es_lock\00", [16 x i8] zeroinitializer }, align 32
@ext4_es_register_shrinker.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ext4_es_register_shrinker.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ext4_es_register_shrinker.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ext4_es_register_shrinker.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ext4_pending_reservation\00", [39 x i8] zeroinitializer }, align 32
@ext4_pending_cachep = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__tracepoint_ext4_es_find_extent_range_enter = external dso_local global %struct.tracepoint, align 4
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/trace/events/ext4.h\00", [36 x i8] zeroinitializer }, align 32
@trace_ext4_es_find_extent_range_enter.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_ext4_es_find_extent_range_exit = external dso_local global %struct.tracepoint, align 4
@trace_ext4_es_find_extent_range_exit.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ext4_es_insert_extent = external dso_local global %struct.tracepoint, align 4
@trace_ext4_es_insert_extent.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ext4_es_can_be_merged._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 515, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [127 x i8], [33 x i8] } { [127 x i8] c"\014ES assertion failed when merging extents. The sum of lengths of es1 (%d) and es2 (%d) is bigger than allowed file size (%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ext4_es_can_be_merged\00", [42 x i8] zeroinitializer }, align 32
@ext4_es_can_be_merged._entry_ptr = internal global ptr @ext4_es_can_be_merged._entry, section ".printk_index", align 4
@__tracepoint_ext4_es_cache_extent = external dso_local global %struct.tracepoint, align 4
@trace_ext4_es_cache_extent.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ext4_es_lookup_extent_enter = external dso_local global %struct.tracepoint, align 4
@trace_ext4_es_lookup_extent_enter.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@percpu_counter_batch = external dso_local local_unnamed_addr global i32, align 4
@__tracepoint_ext4_es_lookup_extent_exit = external dso_local global %struct.tracepoint, align 4
@trace_ext4_es_lookup_extent_exit.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ext4_es_remove_extent = external dso_local global %struct.tracepoint, align 4
@trace_ext4_es_remove_extent.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@es_reclaim_extents._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.20, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.es_reclaim_extents = private unnamed_addr constant [19 x i8] c"es_reclaim_extents\00", align 1
@.str.21 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"forced shrink of precached extents\00", [61 x i8] zeroinitializer }, align 32
@__tracepoint_ext4_es_shrink = external dso_local global %struct.tracepoint, align 4
@trace_ext4_es_shrink.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ext4_es_shrink_scan_enter = external dso_local global %struct.tracepoint, align 4
@trace_ext4_es_shrink_scan_enter.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ext4_es_shrink_scan_exit = external dso_local global %struct.tracepoint, align 4
@trace_ext4_es_shrink_scan_exit.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ext4_es_shrink_count = external dso_local global %struct.tracepoint, align 4
@trace_ext4_es_shrink_count.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ext4_es_list_del.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_ext4_es_insert_delayed_block = external dso_local global %struct.tracepoint, align 4
@trace_ext4_es_insert_delayed_block.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967284]
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 158, i32 37 }
@___asan_gen_.25 = private unnamed_addr constant [15 x i8] c"ext4_es_cachep\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 144, i32 27 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 837, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 840, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 1605, i32 18 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 1608, i32 18 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 1612, i32 19 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 1614, i32 18 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 1616, i32 18 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 1619, i32 7 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 1635, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 1637, i32 8 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 1641, i32 8 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 1647, i32 8 }
@___asan_gen_.67 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 1650, i32 8 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 1810, i32 42 }
@___asan_gen_.73 = private unnamed_addr constant [20 x i8] c"ext4_pending_cachep\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 145, i32 27 }
@___asan_gen_.80 = private unnamed_addr constant [31 x i8] c"../include/trace/events/ext4.h\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 2192, i32 1 }
@___asan_gen_.83 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 108, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 512, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 1741, i32 9 }
@___asan_gen_.100 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.101 = private constant [28 x i8] c"../fs/ext4/extents_status.c\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 1749, i32 3 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @ext4_es_can_be_merged._entry, ptr @ext4_es_can_be_merged._entry_ptr, ptr @.str, ptr @ext4_es_cachep, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @ext4_es_register_shrinker.__key, ptr @.str.9, ptr @ext4_es_register_shrinker.__key.10, ptr @ext4_es_register_shrinker.__key.11, ptr @ext4_es_register_shrinker.__key.12, ptr @ext4_es_register_shrinker.__key.13, ptr @.str.14, ptr @ext4_pending_cachep, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @es_reclaim_extents._rs, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_es_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_es_register_shrinker.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_es_register_shrinker.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_es_register_shrinker.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_es_register_shrinker.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_es_register_shrinker.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_pending_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_es_can_be_merged._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 127, i32 160, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es_reclaim_extents._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_init_es() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str, i32 noundef 32, i32 noundef 0, i32 noundef 131072, ptr noundef null) #9
  store ptr %call, ptr @ext4_es_cachep, align 4
  %cmp = icmp eq ptr %call, null
  %. = select i1 %cmp, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ext4_exit_es() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ext4_es_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @ext4_es_init_tree(ptr nocapture noundef writeonly %tree) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tree to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %tree, align 4
  %cache_es = getelementptr inbounds %struct.ext4_es_tree, ptr %tree, i32 0, i32 1
  %1 = ptrtoint ptr %cache_es to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %cache_es, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ext4_es_find_extent_range(ptr noundef %inode, ptr nocapture noundef readonly %matching_fn, i32 noundef %lblk, i32 noundef %end, ptr noundef %es) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_state = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %s_mount_state to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %s_mount_state, align 8
  %6 = and i16 %5, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not = icmp eq i16 %6, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @trace_ext4_es_find_extent_range_enter(ptr noundef %inode, i32 noundef %lblk)
  %i_es_lock = getelementptr i8, ptr %inode, i32 912
  tail call void @_raw_read_lock(ptr noundef %i_es_lock) #9
  tail call fastcc void @__es_find_extent_range(ptr noundef %inode, ptr noundef %matching_fn, i32 noundef %lblk, i32 noundef %end, ptr noundef %es)
  tail call void @_raw_read_unlock(ptr noundef %i_es_lock) #9
  tail call fastcc void @trace_ext4_es_find_extent_range_exit(ptr noundef %inode, ptr noundef %es)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ext4_es_find_extent_range_enter(ptr noundef %inode, i32 noundef %lblk) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_es_find_extent_range_enter, i32 0, i32 1), ptr blockaddress(@trace_ext4_es_find_extent_range_enter, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !101

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !91) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !102

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !91) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !103
  %call42 = tail call i32 @__traceiter_ext4_es_find_extent_range_enter(ptr noundef null, ptr noundef %inode, i32 noundef %lblk) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !104
  %13 = tail call i32 @llvm.read_register.i32(metadata !91) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !91) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !102

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !91) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !105
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_es_find_extent_range_enter, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_es_find_extent_range_enter, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ext4_es_find_extent_range_enter.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_ext4_es_find_extent_range_enter.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 2212, ptr noundef nonnull @.str.16) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !106
  %31 = tail call i32 @llvm.read_register.i32(metadata !91) #9
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
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__es_find_extent_range(ptr nocapture noundef %inode, ptr nocapture noundef readonly %matching_fn, i32 noundef %lblk, i32 noundef %end, ptr noundef writeonly %es) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %es, null
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !107

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 265, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %end, i32 %lblk)
  %cmp20 = icmp ult i32 %end, %lblk
  br i1 %cmp20, label %do.end36, label %if.end.if.end42_crit_edge, !prof !107

if.end.if.end42_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

do.end36:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 266, i32 noundef 9, ptr noundef null) #9
  br label %if.end42

if.end42:                                         ; preds = %do.end36, %if.end.if.end42_crit_edge
  %i_es_tree = getelementptr i8, ptr %inode, i32 904
  %es_pblk = getelementptr inbounds %struct.extent_status, ptr %es, i32 0, i32 3
  %0 = ptrtoint ptr %es_pblk to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %es_pblk, align 8
  %es_len = getelementptr inbounds %struct.extent_status, ptr %es, i32 0, i32 2
  %1 = ptrtoint ptr %es_len to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %es_len, align 8
  %es_lblk = getelementptr inbounds %struct.extent_status, ptr %es, i32 0, i32 1
  %2 = ptrtoint ptr %es_lblk to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %es_lblk, align 4
  %cache_es = getelementptr i8, ptr %inode, i32 908
  %3 = ptrtoint ptr %cache_es to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cache_es, align 4
  %tobool51.not = icmp eq ptr %4, null
  br i1 %tobool51.not, label %if.end42.if.end62_crit_edge, label %if.then52

if.end42.if.end62_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.then52:                                        ; preds = %if.end42
  %es_lblk54 = getelementptr inbounds %struct.extent_status, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %es_lblk54 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %es_lblk54, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %lblk)
  %cmp55.not = icmp ugt i32 %6, %lblk
  br i1 %cmp55.not, label %if.then52.if.end62_crit_edge, label %land.lhs.true

if.then52.if.end62_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

land.lhs.true:                                    ; preds = %if.then52
  %es_len57 = getelementptr inbounds %struct.extent_status, ptr %4, i32 0, i32 2
  %7 = ptrtoint ptr %es_len57 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %es_len57, align 8
  %add = add i32 %6, -1
  %sub = add i32 %add, %8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %lblk)
  %cmp58.not = icmp ult i32 %sub, %lblk
  br i1 %cmp58.not, label %land.lhs.true.if.end62_crit_edge, label %land.lhs.true.land.lhs.true64_crit_edge

land.lhs.true.land.lhs.true64_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true64

land.lhs.true.if.end62_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.end62:                                         ; preds = %land.lhs.true.if.end62_crit_edge, %if.then52.if.end62_crit_edge, %if.end42.if.end62_crit_edge
  %9 = ptrtoint ptr %i_es_tree to i32
  call void @__asan_load4_noabort(i32 %9)
  %node.050.i = load ptr, ptr %i_es_tree, align 4
  %tobool.not51.i = icmp eq ptr %node.050.i, null
  br i1 %tobool.not51.i, label %if.end62.if.end94_crit_edge, label %if.end62.while.body.i_crit_edge

if.end62.while.body.i_crit_edge:                  ; preds = %if.end62
  br label %while.body.i

if.end62.if.end94_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end94

while.body.i:                                     ; preds = %while.body.i.backedge, %if.end62.while.body.i_crit_edge
  %node.052.i = phi ptr [ %node.052.i.be, %while.body.i.backedge ], [ %node.050.i, %if.end62.while.body.i_crit_edge ]
  %es_lblk.i = getelementptr inbounds %struct.extent_status, ptr %node.052.i, i32 0, i32 1
  %10 = ptrtoint ptr %es_lblk.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %es_lblk.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %lblk)
  %cmp.i = icmp ugt i32 %11, %lblk
  br i1 %cmp.i, label %if.end4.i, label %if.else.i

if.else.i:                                        ; preds = %while.body.i
  %es_len.i.i = getelementptr inbounds %struct.extent_status, ptr %node.052.i, i32 0, i32 2
  %12 = ptrtoint ptr %es_len.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %es_len.i.i, align 8
  %add.i.i = add i32 %13, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %11)
  %cmp.i.i = icmp ult i32 %add.i.i, %11
  br i1 %cmp.i.i, label %do.body3.i.i, label %ext4_es_end.exit.i, !prof !107

do.body3.i.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/extents_status.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 202, 0\0A.popsection", ""() #9, !srcloc !108
  unreachable

ext4_es_end.exit.i:                               ; preds = %if.else.i
  %sub.i.i = add i32 %add.i.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %lblk)
  %cmp1.i = icmp ult i32 %sub.i.i, %lblk
  br i1 %cmp1.i, label %if.end4.i.thread, label %ext4_es_end.exit.i.land.lhs.true64_crit_edge

ext4_es_end.exit.i.land.lhs.true64_crit_edge:     ; preds = %ext4_es_end.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true64

if.end4.i:                                        ; preds = %while.body.i
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %node.052.i, i32 0, i32 2
  %14 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %node.0.i = load ptr, ptr %rb_left.i, align 4
  %tobool.not.i = icmp eq ptr %node.0.i, null
  br i1 %tobool.not.i, label %if.end4.i.land.lhs.true64_crit_edge, label %if.end4.i.while.body.i.backedge_crit_edge

if.end4.i.while.body.i.backedge_crit_edge:        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.backedge

if.end4.i.land.lhs.true64_crit_edge:              ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true64

while.body.i.backedge:                            ; preds = %if.end4.i.thread.while.body.i.backedge_crit_edge, %if.end4.i.while.body.i.backedge_crit_edge
  %node.052.i.be = phi ptr [ %node.0.i, %if.end4.i.while.body.i.backedge_crit_edge ], [ %node.0.i127, %if.end4.i.thread.while.body.i.backedge_crit_edge ]
  br label %while.body.i

if.end4.i.thread:                                 ; preds = %ext4_es_end.exit.i
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %node.052.i, i32 0, i32 1
  %15 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %node.0.i127 = load ptr, ptr %rb_right.i, align 4
  %tobool.not.i128 = icmp eq ptr %node.0.i127, null
  br i1 %tobool.not.i128, label %land.lhs.true11.critedge.i, label %if.end4.i.thread.while.body.i.backedge_crit_edge

if.end4.i.thread.while.body.i.backedge_crit_edge: ; preds = %if.end4.i.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.backedge

land.lhs.true11.critedge.i:                       ; preds = %if.end4.i.thread
  %es_len.i.i.le = getelementptr inbounds %struct.extent_status, ptr %node.052.i, i32 0, i32 2
  %16 = ptrtoint ptr %es_len.i.i.le to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %es_len.i.i.le, align 8
  %add.i41.i = add i32 %17, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i41.i, i32 %11)
  %cmp.i42.i = icmp ult i32 %add.i41.i, %11
  br i1 %cmp.i42.i, label %do.body3.i43.i, label %ext4_es_end.exit45.i, !prof !107

do.body3.i43.i:                                   ; preds = %land.lhs.true11.critedge.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/extents_status.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 202, 0\0A.popsection", ""() #9, !srcloc !108
  unreachable

ext4_es_end.exit45.i:                             ; preds = %land.lhs.true11.critedge.i
  %sub.i44.i = add i32 %add.i41.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i44.i, i32 %lblk)
  %cmp13.i = icmp ult i32 %sub.i44.i, %lblk
  br i1 %cmp13.i, label %out, label %ext4_es_end.exit45.i.if.end94_crit_edge

ext4_es_end.exit45.i.if.end94_crit_edge:          ; preds = %ext4_es_end.exit45.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end94

out:                                              ; preds = %ext4_es_end.exit45.i
  %call16.i = tail call ptr @rb_next(ptr noundef nonnull %node.052.i) #9
  %tobool63.not = icmp eq ptr %call16.i, null
  br i1 %tobool63.not, label %out.if.end94_crit_edge, label %out.land.lhs.true64_crit_edge

out.land.lhs.true64_crit_edge:                    ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true64

out.if.end94_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end94

land.lhs.true64:                                  ; preds = %out.land.lhs.true64_crit_edge, %if.end4.i.land.lhs.true64_crit_edge, %ext4_es_end.exit.i.land.lhs.true64_crit_edge, %land.lhs.true.land.lhs.true64_crit_edge
  %es1.0131 = phi ptr [ %call16.i, %out.land.lhs.true64_crit_edge ], [ %4, %land.lhs.true.land.lhs.true64_crit_edge ], [ %node.052.i, %ext4_es_end.exit.i.land.lhs.true64_crit_edge ], [ %node.052.i, %if.end4.i.land.lhs.true64_crit_edge ]
  %call65 = tail call i32 %matching_fn(ptr noundef nonnull %es1.0131) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %land.lhs.true64.while.cond_crit_edge, label %land.lhs.true64.land.lhs.true83_crit_edge

land.lhs.true64.land.lhs.true83_crit_edge:        ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true83

land.lhs.true64.while.cond_crit_edge:             ; preds = %land.lhs.true64
  br label %while.cond

while.cond:                                       ; preds = %if.end76.while.cond_crit_edge, %land.lhs.true64.while.cond_crit_edge
  %es1.1 = phi ptr [ %call68, %if.end76.while.cond_crit_edge ], [ %es1.0131, %land.lhs.true64.while.cond_crit_edge ]
  %call68 = tail call ptr @rb_next(ptr noundef nonnull %es1.1) #9
  %cmp69.not = icmp eq ptr %call68, null
  br i1 %cmp69.not, label %while.cond.land.lhs.true83_crit_edge, label %while.body

while.cond.land.lhs.true83_crit_edge:             ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true83

while.body:                                       ; preds = %while.cond
  %es_lblk73 = getelementptr inbounds %struct.extent_status, ptr %call68, i32 0, i32 1
  %18 = ptrtoint ptr %es_lblk73 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %es_lblk73, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %end)
  %cmp74 = icmp ugt i32 %19, %end
  br i1 %cmp74, label %while.body.if.end94_crit_edge, label %if.end76

while.body.if.end94_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end94

if.end76:                                         ; preds = %while.body
  %call77 = tail call i32 %matching_fn(ptr noundef nonnull %call68) #9
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end76.while.cond_crit_edge, label %if.end76.land.lhs.true83_crit_edge

if.end76.land.lhs.true83_crit_edge:               ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true83

if.end76.while.cond_crit_edge:                    ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

land.lhs.true83:                                  ; preds = %if.end76.land.lhs.true83_crit_edge, %while.cond.land.lhs.true83_crit_edge, %land.lhs.true64.land.lhs.true83_crit_edge
  %es1.2 = phi ptr [ %es1.0131, %land.lhs.true64.land.lhs.true83_crit_edge ], [ %es1.1, %while.cond.land.lhs.true83_crit_edge ], [ %call68, %if.end76.land.lhs.true83_crit_edge ]
  %call84 = tail call i32 %matching_fn(ptr noundef nonnull %es1.2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %land.lhs.true83.if.end94_crit_edge, label %if.then86

land.lhs.true83.if.end94_crit_edge:               ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end94

if.then86:                                        ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %cache_es to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %es1.2, ptr %cache_es, align 4
  %es_lblk88 = getelementptr inbounds %struct.extent_status, ptr %es1.2, i32 0, i32 1
  %21 = ptrtoint ptr %es_lblk88 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %es_lblk88, align 4
  %23 = ptrtoint ptr %es_lblk to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %es_lblk, align 4
  %es_len90 = getelementptr inbounds %struct.extent_status, ptr %es1.2, i32 0, i32 2
  %24 = ptrtoint ptr %es_len90 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %es_len90, align 8
  %26 = ptrtoint ptr %es_len to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %es_len, align 8
  %es_pblk92 = getelementptr inbounds %struct.extent_status, ptr %es1.2, i32 0, i32 3
  %27 = ptrtoint ptr %es_pblk92 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %es_pblk92, align 8
  %29 = ptrtoint ptr %es_pblk to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %es_pblk, align 8
  br label %if.end94

if.end94:                                         ; preds = %if.then86, %land.lhs.true83.if.end94_crit_edge, %while.body.if.end94_crit_edge, %out.if.end94_crit_edge, %ext4_es_end.exit45.i.if.end94_crit_edge, %if.end62.if.end94_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ext4_es_find_extent_range_exit(ptr noundef %inode, ptr noundef %es) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_es_find_extent_range_exit, i32 0, i32 1), ptr blockaddress(@trace_ext4_es_find_extent_range_exit, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !101

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !91) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !102

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !91) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !109
  %call42 = tail call i32 @__traceiter_ext4_es_find_extent_range_exit(ptr noundef null, ptr noundef %inode, ptr noundef %es) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !110
  %13 = tail call i32 @llvm.read_register.i32(metadata !91) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !91) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !102

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !91) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !105
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_es_find_extent_range_exit, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_es_find_extent_range_exit, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ext4_es_find_extent_range_exit.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_ext4_es_find_extent_range_exit.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 2242, ptr noundef nonnull @.str.16) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !106
  %31 = tail call i32 @llvm.read_register.i32(metadata !91) #9
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
define dso_local zeroext i1 @ext4_es_scan_range(ptr noundef %inode, ptr nocapture noundef readonly %matching_fn, i32 noundef %lblk, i32 noundef %end) local_unnamed_addr #2 align 64 {
entry:
  %es.i = alloca %struct.extent_status, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_state = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %s_mount_state to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %s_mount_state, align 8
  %6 = and i16 %5, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not = icmp eq i16 %6, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_es_lock = getelementptr i8, ptr %inode, i32 912
  tail call void @_raw_read_lock(ptr noundef %i_es_lock) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %es.i) #9
  %7 = call ptr @memset(ptr %es.i, i32 255, i32 32)
  call fastcc void @__es_find_extent_range(ptr noundef %inode, ptr noundef %matching_fn, i32 noundef %lblk, i32 noundef %end, ptr noundef nonnull %es.i) #9
  %es_len.i = getelementptr inbounds %struct.extent_status, ptr %es.i, i32 0, i32 2
  %8 = ptrtoint ptr %es_len.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %es_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i = icmp eq i32 %9, 0
  br i1 %cmp.i, label %if.end.__es_scan_range.exit_crit_edge, label %if.else.i

if.end.__es_scan_range.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %__es_scan_range.exit

if.else.i:                                        ; preds = %if.end
  %es_lblk.i = getelementptr inbounds %struct.extent_status, ptr %es.i, i32 0, i32 1
  %10 = ptrtoint ptr %es_lblk.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %es_lblk.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %lblk)
  %cmp1.not.i = icmp ule i32 %11, %lblk
  %add.i = add i32 %11, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %lblk)
  %cmp4.i = icmp ugt i32 %add.i, %lblk
  %or.cond.i = select i1 %cmp1.not.i, i1 %cmp4.i, i1 false
  br i1 %or.cond.i, label %if.else.i.__es_scan_range.exit_crit_edge, label %if.else6.i

if.else.i.__es_scan_range.exit_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__es_scan_range.exit

if.else6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %lblk)
  %cmp8.not.i = icmp uge i32 %11, %lblk
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %end)
  %cmp11.not.i = icmp ule i32 %11, %end
  %not.or.cond20.i = and i1 %cmp8.not.i, %cmp11.not.i
  br label %__es_scan_range.exit

__es_scan_range.exit:                             ; preds = %if.else6.i, %if.else.i.__es_scan_range.exit_crit_edge, %if.end.__es_scan_range.exit_crit_edge
  %retval.0.i = phi i1 [ false, %if.end.__es_scan_range.exit_crit_edge ], [ true, %if.else.i.__es_scan_range.exit_crit_edge ], [ %not.or.cond20.i, %if.else6.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %es.i) #9
  call void @_raw_read_unlock(ptr noundef %i_es_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %__es_scan_range.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %retval.0.i, %__es_scan_range.exit ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ext4_es_scan_clu(ptr noundef %inode, ptr nocapture noundef readonly %matching_fn, i32 noundef %lblk) local_unnamed_addr #2 align 64 {
entry:
  %es.i.i = alloca %struct.extent_status, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_state = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %s_mount_state to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %s_mount_state, align 8
  %6 = and i16 %5, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not = icmp eq i16 %6, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_es_lock = getelementptr i8, ptr %inode, i32 912
  tail call void @_raw_read_lock(ptr noundef %i_es_lock) #9
  %7 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 33
  %9 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_cluster_ratio.i = getelementptr inbounds %struct.ext4_sb_info, ptr %10, i32 0, i32 11
  %11 = ptrtoint ptr %s_cluster_ratio.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %s_cluster_ratio.i, align 4
  %neg.i = sub i32 0, %12
  %and.i = and i32 %neg.i, %lblk
  %add.i = add i32 %12, -1
  %sub2.i = add i32 %add.i, %and.i
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %es.i.i) #9
  %13 = call ptr @memset(ptr %es.i.i, i32 255, i32 32)
  call fastcc void @__es_find_extent_range(ptr noundef %inode, ptr noundef %matching_fn, i32 noundef %and.i, i32 noundef %sub2.i, ptr noundef nonnull %es.i.i) #9
  %es_len.i.i = getelementptr inbounds %struct.extent_status, ptr %es.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %es_len.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %es_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i.i = icmp eq i32 %15, 0
  br i1 %cmp.i.i, label %if.end.__es_scan_clu.exit_crit_edge, label %if.else.i.i

if.end.__es_scan_clu.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %__es_scan_clu.exit

if.else.i.i:                                      ; preds = %if.end
  %es_lblk.i.i = getelementptr inbounds %struct.extent_status, ptr %es.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %es_lblk.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %es_lblk.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %and.i)
  %cmp1.not.i.i = icmp ule i32 %17, %and.i
  %add.i.i = add i32 %17, %15
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %and.i)
  %cmp4.i.i = icmp ugt i32 %add.i.i, %and.i
  %or.cond.i.i = select i1 %cmp1.not.i.i, i1 %cmp4.i.i, i1 false
  br i1 %or.cond.i.i, label %if.else.i.i.__es_scan_clu.exit_crit_edge, label %if.else6.i.i

if.else.i.i.__es_scan_clu.exit_crit_edge:         ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__es_scan_clu.exit

if.else6.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %and.i)
  %cmp8.not.i.i = icmp uge i32 %17, %and.i
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %sub2.i)
  %cmp11.not.i.i = icmp ule i32 %17, %sub2.i
  %not.or.cond20.i.i = and i1 %cmp8.not.i.i, %cmp11.not.i.i
  br label %__es_scan_clu.exit

__es_scan_clu.exit:                               ; preds = %if.else6.i.i, %if.else.i.i.__es_scan_clu.exit_crit_edge, %if.end.__es_scan_clu.exit_crit_edge
  %retval.0.i.i = phi i1 [ false, %if.end.__es_scan_clu.exit_crit_edge ], [ true, %if.else.i.i.__es_scan_clu.exit_crit_edge ], [ %not.or.cond20.i.i, %if.else6.i.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %es.i.i) #9
  call void @_raw_read_unlock(ptr noundef %i_es_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %__es_scan_clu.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %retval.0.i.i, %__es_scan_clu.exit ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_es_insert_extent(ptr noundef %inode, i32 noundef %lblk, i32 noundef %len, i64 noundef %pblk, i32 noundef %status) local_unnamed_addr #2 align 64 {
entry:
  %newes = alloca %struct.extent_status, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %newes) #9
  %0 = call ptr @memset(ptr %newes, i32 255, i32 24)
  %add = add i32 %len, %lblk
  %sub = add i32 %add, -1
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %1 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 33
  %3 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_state = getelementptr inbounds %struct.ext4_sb_info, ptr %4, i32 0, i32 25
  %5 = ptrtoint ptr %s_mount_state to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %s_mount_state, align 8
  %7 = and i16 %6, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not = icmp ne i16 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool3.not = icmp eq i32 %len, 0
  %or.cond127 = or i1 %tobool3.not, %tobool.not
  br i1 %or.cond127, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %lblk)
  %cmp = icmp ult i32 %sub, %lblk
  br i1 %cmp, label %do.body10, label %do.end16, !prof !107

do.body10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/extents_status.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 833, 0\0A.popsection", ""() #9, !srcloc !111
  unreachable

do.end16:                                         ; preds = %do.body
  %8 = and i32 %status, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %8)
  %.not = icmp eq i32 %8, 5
  br i1 %.not, label %if.then21, label %do.end16.if.end48_crit_edge

do.end16.if.end48_crit_edge:                      ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.then21:                                        ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %2, ptr noundef nonnull @__func__.ext4_es_insert_extent, i32 noundef 839, ptr noundef nonnull @.str.1, i32 noundef %lblk, i32 noundef %len) #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 840, i32 noundef 9, ptr noundef null) #9
  br label %if.end48

if.end48:                                         ; preds = %if.then21, %do.end16.if.end48_crit_edge
  %es_lblk = getelementptr inbounds %struct.extent_status, ptr %newes, i32 0, i32 1
  %9 = ptrtoint ptr %es_lblk to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %lblk, ptr %es_lblk, align 4
  %es_len = getelementptr inbounds %struct.extent_status, ptr %newes, i32 0, i32 2
  %10 = ptrtoint ptr %es_len to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %len, ptr %es_len, align 8
  %conv.i = zext i32 %status to i64
  %shl.i = shl i64 %conv.i, 59
  %and1.i = and i64 %pblk, 576460752303423487
  %or.i = or i64 %shl.i, %and1.i
  %es_pblk.i = getelementptr inbounds %struct.extent_status, ptr %newes, i32 0, i32 3
  %11 = ptrtoint ptr %es_pblk.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %or.i, ptr %es_pblk.i, align 8
  call fastcc void @trace_ext4_es_insert_extent(ptr noundef %inode, ptr noundef nonnull %newes)
  %add.ptr = getelementptr i8, ptr %inode, i32 -464
  %i_es_lock = getelementptr i8, ptr %inode, i32 912
  call void @_raw_write_lock(ptr noundef %i_es_lock) #9
  %call50 = call fastcc i32 @__es_remove_extent(ptr noundef %inode, i32 noundef %lblk, i32 noundef %sub, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51.not = icmp eq i32 %call50, 0
  br i1 %cmp51.not, label %if.end48.retry_crit_edge, label %if.end48.error_crit_edge

if.end48.error_crit_edge:                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end48.retry_crit_edge:                         ; preds = %if.end48
  br label %retry

retry:                                            ; preds = %land.lhs.true58.retry_crit_edge, %if.end48.retry_crit_edge
  %call55 = call fastcc i32 @__es_insert_extent(ptr noundef %inode, ptr noundef nonnull %newes)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %call55)
  %cmp56 = icmp eq i32 %call55, -12
  br i1 %cmp56, label %land.lhs.true58, label %retry.if.end74_crit_edge

retry.if.end74_crit_edge:                         ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74

land.lhs.true58:                                  ; preds = %retry
  %12 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i129 = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 33
  %14 = ptrtoint ptr %s_fs_info.i129 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_fs_info.i129, align 16
  %call64 = call fastcc i32 @__es_shrink(ptr noundef %15, i32 noundef 128, ptr noundef %add.ptr)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %land.lhs.true70.critedge, label %land.lhs.true58.retry_crit_edge

land.lhs.true58.retry_crit_edge:                  ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #11
  br label %retry

land.lhs.true70.critedge:                         ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %es_pblk.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %es_pblk.i, align 8
  %18 = and i64 %17, 2305843009213693952
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %18)
  %tobool72.not = icmp eq i64 %18, 0
  %spec.select = select i1 %tobool72.not, i32 0, i32 -12
  br label %if.end74

if.end74:                                         ; preds = %land.lhs.true70.critedge, %retry.if.end74_crit_edge
  %err.0 = phi i32 [ %spec.select, %land.lhs.true70.critedge ], [ %call55, %retry.if.end74_crit_edge ]
  %s_cluster_ratio = getelementptr inbounds %struct.ext4_sb_info, ptr %4, i32 0, i32 11
  %19 = ptrtoint ptr %s_cluster_ratio to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %s_cluster_ratio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp75 = icmp ugt i32 %20, 1
  br i1 %cmp75, label %land.lhs.true77, label %if.end74.error_crit_edge

if.end74.error_crit_edge:                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

land.lhs.true77:                                  ; preds = %if.end74
  %21 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i130 = getelementptr inbounds %struct.super_block, ptr %22, i32 0, i32 33
  %23 = ptrtoint ptr %s_fs_info.i130 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_fs_info.i130, align 16
  %s_mount_opt = getelementptr inbounds %struct.ext4_sb_info, ptr %24, i32 0, i32 17
  %25 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %s_mount_opt, align 4
  %and80 = and i32 %26, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  %27 = and i32 %status, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %28 = icmp eq i32 %27, 0
  %or.cond = or i1 %28, %tobool81.not
  br i1 %or.cond, label %land.lhs.true77.error_crit_edge, label %if.then87

land.lhs.true77.error_crit_edge:                  ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.then87:                                        ; preds = %land.lhs.true77
  %s_cluster_bits.i = getelementptr inbounds %struct.ext4_sb_info, ptr %24, i32 0, i32 12
  %29 = ptrtoint ptr %s_cluster_bits.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %s_cluster_bits.i, align 16
  %shr.i = lshr i32 %lblk, %30
  %shr2.i = lshr i32 %sub, %30
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %shr2.i)
  %cmp3.i = icmp eq i32 %shr.i, %shr2.i
  %s_cluster_ratio.i = getelementptr inbounds %struct.ext4_sb_info, ptr %24, i32 0, i32 11
  %31 = ptrtoint ptr %s_cluster_ratio.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %s_cluster_ratio.i, align 4
  %neg.i = sub i32 0, %32
  %and.i = and i32 %neg.i, %lblk
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %lblk)
  %cmp6.not.i = icmp eq i32 %and.i, %lblk
  br i1 %cmp3.i, label %if.then4.i, label %if.else32.i

if.then4.i:                                       ; preds = %if.then87
  br i1 %cmp6.not.i, label %if.then4.i.if.else.i_crit_edge, label %if.then7.i

if.then4.i.if.else.i_crit_edge:                   ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.then7.i:                                       ; preds = %if.then4.i
  %sub8.i = add i32 %lblk, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub8.i, i32 %and.i)
  %cmp20.i.i = icmp ult i32 %sub8.i, %and.i
  br i1 %cmp20.i.i, label %do.end36.i.i, label %if.then7.i.if.end42.i.i_crit_edge, !prof !107

if.then7.i.if.end42.i.i_crit_edge:                ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42.i.i

do.end36.i.i:                                     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 266, i32 noundef 9, ptr noundef null) #9
  br label %if.end42.i.i

if.end42.i.i:                                     ; preds = %do.end36.i.i, %if.then7.i.if.end42.i.i_crit_edge
  %i_es_tree.i.i = getelementptr i8, ptr %inode, i32 904
  %cache_es.i.i = getelementptr i8, ptr %inode, i32 908
  %33 = ptrtoint ptr %cache_es.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cache_es.i.i, align 4
  %tobool51.not.i.i = icmp eq ptr %34, null
  br i1 %tobool51.not.i.i, label %if.end42.i.i.if.end62.i.i_crit_edge, label %if.then52.i.i

if.end42.i.i.if.end62.i.i_crit_edge:              ; preds = %if.end42.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62.i.i

if.then52.i.i:                                    ; preds = %if.end42.i.i
  %es_lblk54.i.i = getelementptr inbounds %struct.extent_status, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %es_lblk54.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %es_lblk54.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %and.i)
  %cmp55.not.i.i = icmp ugt i32 %36, %and.i
  br i1 %cmp55.not.i.i, label %if.then52.i.i.if.end62.i.i_crit_edge, label %land.lhs.true.i.i

if.then52.i.i.if.end62.i.i_crit_edge:             ; preds = %if.then52.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62.i.i

land.lhs.true.i.i:                                ; preds = %if.then52.i.i
  %es_len57.i.i = getelementptr inbounds %struct.extent_status, ptr %34, i32 0, i32 2
  %37 = ptrtoint ptr %es_len57.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %es_len57.i.i, align 8
  %add.i315.i = add i32 %36, -1
  %sub.i.i = add i32 %add.i315.i, %38
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %and.i)
  %cmp58.not.i.i = icmp ult i32 %sub.i.i, %and.i
  br i1 %cmp58.not.i.i, label %land.lhs.true.i.i.if.end62.i.i_crit_edge, label %land.lhs.true.i.i.land.lhs.true64.i.i_crit_edge

land.lhs.true.i.i.land.lhs.true64.i.i_crit_edge:  ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true64.i.i

land.lhs.true.i.i.if.end62.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62.i.i

if.end62.i.i:                                     ; preds = %land.lhs.true.i.i.if.end62.i.i_crit_edge, %if.then52.i.i.if.end62.i.i_crit_edge, %if.end42.i.i.if.end62.i.i_crit_edge
  %39 = ptrtoint ptr %i_es_tree.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %node.050.i.i.i = load ptr, ptr %i_es_tree.i.i, align 4
  %tobool.not51.i.i.i = icmp eq ptr %node.050.i.i.i, null
  br i1 %tobool.not51.i.i.i, label %if.end62.i.i.if.else.i_crit_edge, label %if.end62.i.i.while.body.i.i317.i_crit_edge

if.end62.i.i.while.body.i.i317.i_crit_edge:       ; preds = %if.end62.i.i
  br label %while.body.i.i317.i

if.end62.i.i.if.else.i_crit_edge:                 ; preds = %if.end62.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

while.body.i.i317.i:                              ; preds = %while.body.i.i317.i.backedge, %if.end62.i.i.while.body.i.i317.i_crit_edge
  %node.052.i.i.i = phi ptr [ %node.052.i.i.i.be, %while.body.i.i317.i.backedge ], [ %node.050.i.i.i, %if.end62.i.i.while.body.i.i317.i_crit_edge ]
  %es_lblk.i.i.i = getelementptr inbounds %struct.extent_status, ptr %node.052.i.i.i, i32 0, i32 1
  %40 = ptrtoint ptr %es_lblk.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %es_lblk.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %and.i)
  %cmp.i.i316.i = icmp ugt i32 %41, %and.i
  br i1 %cmp.i.i316.i, label %if.end4.i.i.i, label %if.else.i.i318.i

if.else.i.i318.i:                                 ; preds = %while.body.i.i317.i
  %es_len.i.i.i.i = getelementptr inbounds %struct.extent_status, ptr %node.052.i.i.i, i32 0, i32 2
  %42 = ptrtoint ptr %es_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %es_len.i.i.i.i, align 8
  %add.i.i.i.i = add i32 %43, %41
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i.i, i32 %41)
  %cmp.i.i.i.i = icmp ult i32 %add.i.i.i.i, %41
  br i1 %cmp.i.i.i.i, label %do.body3.i.i.i.i, label %ext4_es_end.exit.i.i.i, !prof !107

do.body3.i.i.i.i:                                 ; preds = %if.else.i.i318.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/extents_status.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 202, 0\0A.popsection", ""() #9, !srcloc !108
  unreachable

ext4_es_end.exit.i.i.i:                           ; preds = %if.else.i.i318.i
  %sub.i.i.i.i = add i32 %add.i.i.i.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i.i, i32 %and.i)
  %cmp1.i.i.i = icmp ult i32 %sub.i.i.i.i, %and.i
  br i1 %cmp1.i.i.i, label %if.end4.i.thread.i.i, label %ext4_es_end.exit.i.i.i.land.lhs.true64.i.i_crit_edge

ext4_es_end.exit.i.i.i.land.lhs.true64.i.i_crit_edge: ; preds = %ext4_es_end.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true64.i.i

if.end4.i.i.i:                                    ; preds = %while.body.i.i317.i
  %rb_left.i.i319.i = getelementptr inbounds %struct.rb_node, ptr %node.052.i.i.i, i32 0, i32 2
  %44 = ptrtoint ptr %rb_left.i.i319.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %node.0.i.i.i = load ptr, ptr %rb_left.i.i319.i, align 4
  %tobool.not.i.i320.i = icmp eq ptr %node.0.i.i.i, null
  br i1 %tobool.not.i.i320.i, label %if.end4.i.i.i.land.lhs.true64.i.i_crit_edge, label %if.end4.i.i.i.while.body.i.i317.i.backedge_crit_edge

if.end4.i.i.i.while.body.i.i317.i.backedge_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i317.i.backedge

if.end4.i.i.i.land.lhs.true64.i.i_crit_edge:      ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true64.i.i

if.end4.i.thread.i.i:                             ; preds = %ext4_es_end.exit.i.i.i
  %rb_right.i.i321.i = getelementptr inbounds %struct.rb_node, ptr %node.052.i.i.i, i32 0, i32 1
  %45 = ptrtoint ptr %rb_right.i.i321.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %node.0.i127.i.i = load ptr, ptr %rb_right.i.i321.i, align 4
  %tobool.not.i128.i.i = icmp eq ptr %node.0.i127.i.i, null
  br i1 %tobool.not.i128.i.i, label %out.i.i, label %if.end4.i.thread.i.i.while.body.i.i317.i.backedge_crit_edge

if.end4.i.thread.i.i.while.body.i.i317.i.backedge_crit_edge: ; preds = %if.end4.i.thread.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i317.i.backedge

while.body.i.i317.i.backedge:                     ; preds = %if.end4.i.thread.i.i.while.body.i.i317.i.backedge_crit_edge, %if.end4.i.i.i.while.body.i.i317.i.backedge_crit_edge
  %node.052.i.i.i.be = phi ptr [ %node.0.i.i.i, %if.end4.i.i.i.while.body.i.i317.i.backedge_crit_edge ], [ %node.0.i127.i.i, %if.end4.i.thread.i.i.while.body.i.i317.i.backedge_crit_edge ]
  br label %while.body.i.i317.i

out.i.i:                                          ; preds = %if.end4.i.thread.i.i
  %call16.i.i.i = call ptr @rb_next(ptr noundef nonnull %node.052.i.i.i) #9
  %tobool63.not.i.i = icmp eq ptr %call16.i.i.i, null
  br i1 %tobool63.not.i.i, label %out.i.i.if.else.i_crit_edge, label %out.i.i.land.lhs.true64.i.i_crit_edge

out.i.i.land.lhs.true64.i.i_crit_edge:            ; preds = %out.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true64.i.i

out.i.i.if.else.i_crit_edge:                      ; preds = %out.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true64.i.i:                              ; preds = %out.i.i.land.lhs.true64.i.i_crit_edge, %if.end4.i.i.i.land.lhs.true64.i.i_crit_edge, %ext4_es_end.exit.i.i.i.land.lhs.true64.i.i_crit_edge, %land.lhs.true.i.i.land.lhs.true64.i.i_crit_edge
  %es1.0131.i.i = phi ptr [ %call16.i.i.i, %out.i.i.land.lhs.true64.i.i_crit_edge ], [ %34, %land.lhs.true.i.i.land.lhs.true64.i.i_crit_edge ], [ %node.052.i.i.i, %ext4_es_end.exit.i.i.i.land.lhs.true64.i.i_crit_edge ], [ %node.052.i.i.i, %if.end4.i.i.i.land.lhs.true64.i.i_crit_edge ]
  %es_pblk.i.i.i554.i = getelementptr inbounds %struct.extent_status, ptr %es1.0131.i.i, i32 0, i32 3
  %46 = ptrtoint ptr %es_pblk.i.i.i554.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %es_pblk.i.i.i554.i, align 8
  %48 = and i64 %47, 3458764513820540928
  call void @__sanitizer_cov_trace_const_cmp8(i64 2305843009213693952, i64 %48)
  %.not614.i = icmp eq i64 %48, 2305843009213693952
  br i1 %.not614.i, label %land.lhs.true64.i.i.land.lhs.true83.i.i_crit_edge, label %land.lhs.true64.i.i.while.cond.i.i_crit_edge

land.lhs.true64.i.i.while.cond.i.i_crit_edge:     ; preds = %land.lhs.true64.i.i
  br label %while.cond.i.i

land.lhs.true64.i.i.land.lhs.true83.i.i_crit_edge: ; preds = %land.lhs.true64.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true83.i.i

while.cond.i.i:                                   ; preds = %if.end76.i.i.while.cond.i.i_crit_edge, %land.lhs.true64.i.i.while.cond.i.i_crit_edge
  %es1.1.i.i = phi ptr [ %call68.i.i, %if.end76.i.i.while.cond.i.i_crit_edge ], [ %es1.0131.i.i, %land.lhs.true64.i.i.while.cond.i.i_crit_edge ]
  %call68.i.i = call ptr @rb_next(ptr noundef nonnull %es1.1.i.i) #9
  %cmp69.not.i.i = icmp eq ptr %call68.i.i, null
  br i1 %cmp69.not.i.i, label %while.cond.i.i.land.lhs.true83.i.i_crit_edge, label %while.body.i322.i

while.cond.i.i.land.lhs.true83.i.i_crit_edge:     ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true83.i.i

while.body.i322.i:                                ; preds = %while.cond.i.i
  %es_lblk73.i.i = getelementptr inbounds %struct.extent_status, ptr %call68.i.i, i32 0, i32 1
  %49 = ptrtoint ptr %es_lblk73.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %es_lblk73.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %sub8.i)
  %cmp74.i.i = icmp ugt i32 %50, %sub8.i
  br i1 %cmp74.i.i, label %while.body.i322.i.if.else.i_crit_edge, label %if.end76.i.i

while.body.i322.i.if.else.i_crit_edge:            ; preds = %while.body.i322.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.end76.i.i:                                     ; preds = %while.body.i322.i
  %es_pblk.i.i.i552.i = getelementptr inbounds %struct.extent_status, ptr %call68.i.i, i32 0, i32 3
  %51 = ptrtoint ptr %es_pblk.i.i.i552.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %es_pblk.i.i.i552.i, align 8
  %53 = and i64 %52, 3458764513820540928
  %.not624.i = icmp eq i64 %53, 2305843009213693952
  br i1 %.not624.i, label %if.end76.i.i.land.lhs.true83.i.i_crit_edge, label %if.end76.i.i.while.cond.i.i_crit_edge

if.end76.i.i.while.cond.i.i_crit_edge:            ; preds = %if.end76.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i.i

if.end76.i.i.land.lhs.true83.i.i_crit_edge:       ; preds = %if.end76.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true83.i.i

land.lhs.true83.i.i:                              ; preds = %if.end76.i.i.land.lhs.true83.i.i_crit_edge, %while.cond.i.i.land.lhs.true83.i.i_crit_edge, %land.lhs.true64.i.i.land.lhs.true83.i.i_crit_edge
  %es1.2.i.i = phi ptr [ %es1.0131.i.i, %land.lhs.true64.i.i.land.lhs.true83.i.i_crit_edge ], [ %es1.1.i.i, %while.cond.i.i.land.lhs.true83.i.i_crit_edge ], [ %call68.i.i, %if.end76.i.i.land.lhs.true83.i.i_crit_edge ]
  %es_pblk.i.i.i.i = getelementptr inbounds %struct.extent_status, ptr %es1.2.i.i, i32 0, i32 3
  %54 = ptrtoint ptr %es_pblk.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %es_pblk.i.i.i.i, align 8
  %56 = and i64 %55, 3458764513820540928
  call void @__sanitizer_cov_trace_const_cmp8(i64 2305843009213693952, i64 %56)
  %.not616.i = icmp eq i64 %56, 2305843009213693952
  br i1 %.not616.i, label %__es_find_extent_range.exit.i, label %land.lhs.true83.i.i.if.else.i_crit_edge

land.lhs.true83.i.i.if.else.i_crit_edge:          ; preds = %land.lhs.true83.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

__es_find_extent_range.exit.i:                    ; preds = %land.lhs.true83.i.i
  %57 = ptrtoint ptr %cache_es.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %es1.2.i.i, ptr %cache_es.i.i, align 4
  %es_lblk88.i.i = getelementptr inbounds %struct.extent_status, ptr %es1.2.i.i, i32 0, i32 1
  %58 = ptrtoint ptr %es_lblk88.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %es_lblk88.i.i, align 4
  %es_len90.i.i = getelementptr inbounds %struct.extent_status, ptr %es1.2.i.i, i32 0, i32 2
  %60 = ptrtoint ptr %es_len90.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %es_len90.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp.i.i = icmp eq i32 %61, 0
  br i1 %cmp.i.i, label %__es_find_extent_range.exit.i.if.else.i_crit_edge, label %if.else.i.i

__es_find_extent_range.exit.i.if.else.i_crit_edge: ; preds = %__es_find_extent_range.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.else.i.i:                                      ; preds = %__es_find_extent_range.exit.i
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %and.i)
  %cmp1.not.i.i = icmp ule i32 %59, %and.i
  %add.i.i = add i32 %61, %59
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %and.i)
  %cmp4.i.i = icmp ugt i32 %add.i.i, %and.i
  %or.cond.i.i = select i1 %cmp1.not.i.i, i1 %cmp4.i.i, i1 false
  br i1 %or.cond.i.i, label %if.else.i.i.if.then11.i_crit_edge, label %__es_scan_range.exit.i

if.else.i.i.if.then11.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i

__es_scan_range.exit.i:                           ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %and.i)
  %cmp8.not.i.i = icmp uge i32 %59, %and.i
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %sub8.i)
  %cmp11.not.i.i = icmp ule i32 %59, %sub8.i
  %not.or.cond20.i.i = and i1 %cmp8.not.i.i, %cmp11.not.i.i
  br i1 %not.or.cond20.i.i, label %__es_scan_range.exit.i.if.then11.i_crit_edge, label %__es_scan_range.exit.i.if.else.i_crit_edge

__es_scan_range.exit.i.if.else.i_crit_edge:       ; preds = %__es_scan_range.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

__es_scan_range.exit.i.if.then11.i_crit_edge:     ; preds = %__es_scan_range.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i

if.then11.i:                                      ; preds = %__es_scan_range.exit.i.if.then11.i_crit_edge, %if.else.i.i.if.then11.i_crit_edge
  %62 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %63, i32 0, i32 33
  %64 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %i_pending_tree.i.i = getelementptr i8, ptr %inode, i32 984
  %s_cluster_bits.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %65, i32 0, i32 12
  %66 = ptrtoint ptr %s_cluster_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %s_cluster_bits.i.i, align 16
  %shr.i.i = lshr i32 %and.i, %67
  %68 = ptrtoint ptr %i_pending_tree.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %i_pending_tree.i.i, align 4
  %tobool.not3.i.i = icmp eq ptr %69, null
  br i1 %tobool.not3.i.i, label %if.then11.i.while.end.i.i_crit_edge, label %if.then11.i.while.body.i.i_crit_edge

if.then11.i.while.body.i.i_crit_edge:             ; preds = %if.then11.i
  br label %while.body.i.i

if.then11.i.while.end.i.i_crit_edge:              ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i.i

while.body.i.i:                                   ; preds = %if.end9.i.i.while.body.i.i_crit_edge, %if.then11.i.while.body.i.i_crit_edge
  %70 = phi ptr [ %74, %if.end9.i.i.while.body.i.i_crit_edge ], [ %69, %if.then11.i.while.body.i.i_crit_edge ]
  %lclu4.i.i = getelementptr inbounds %struct.pending_reservation, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %lclu4.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %lclu4.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i.i, i32 %72)
  %cmp.i119.i = icmp ult i32 %shr.i.i, %72
  br i1 %cmp.i119.i, label %if.then.i.i, label %if.else.i120.i

if.then.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %70, i32 0, i32 2
  br label %if.end9.i.i

if.else.i120.i:                                   ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i.i, i32 %72)
  %cmp6.i.i = icmp ugt i32 %shr.i.i, %72
  br i1 %cmp6.i.i, label %if.then7.i.i, label %if.else.i120.i.error_crit_edge

if.else.i120.i.error_crit_edge:                   ; preds = %if.else.i120.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.then7.i.i:                                     ; preds = %if.else.i120.i
  call void @__sanitizer_cov_trace_pc() #11
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %70, i32 0, i32 1
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.then7.i.i, %if.then.i.i
  %p.1.i.i = phi ptr [ %rb_left.i.i, %if.then.i.i ], [ %rb_right.i.i, %if.then7.i.i ]
  %73 = ptrtoint ptr %p.1.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %p.1.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %74, null
  br i1 %tobool.not.i.i, label %while.cond.while.end_crit_edge.i.i, label %if.end9.i.i.while.body.i.i_crit_edge

if.end9.i.i.while.body.i.i_crit_edge:             ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i

while.cond.while.end_crit_edge.i.i:               ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %phi.cast.le.i.i = ptrtoint ptr %70 to i32
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %while.cond.while.end_crit_edge.i.i, %if.then11.i.while.end.i.i_crit_edge
  %parent.0.lcssa.i.i = phi i32 [ %phi.cast.le.i.i, %while.cond.while.end_crit_edge.i.i ], [ 0, %if.then11.i.while.end.i.i_crit_edge ]
  %p.0.lcssa.i.i = phi ptr [ %p.1.i.i, %while.cond.while.end_crit_edge.i.i ], [ %i_pending_tree.i.i, %if.then11.i.while.end.i.i_crit_edge ]
  %75 = load ptr, ptr @ext4_pending_cachep, align 4
  %call10.i.i = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %75, i32 noundef 2592) #9
  %cmp11.i.i = icmp eq ptr %call10.i.i, null
  br i1 %cmp11.i.i, label %while.end.i.i.error_crit_edge, label %if.end13.i.i

while.end.i.i.error_crit_edge:                    ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end13.i.i:                                     ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %lclu14.i.i = getelementptr inbounds %struct.pending_reservation, ptr %call10.i.i, i32 0, i32 1
  %76 = ptrtoint ptr %lclu14.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %shr.i.i, ptr %lclu14.i.i, align 4
  %77 = ptrtoint ptr %call10.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %parent.0.lcssa.i.i, ptr %call10.i.i, align 8
  %rb_right.i.i.i = getelementptr inbounds %struct.rb_node, ptr %call10.i.i, i32 0, i32 1
  %78 = ptrtoint ptr %rb_right.i.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr null, ptr %rb_right.i.i.i, align 4
  %rb_left.i.i.i = getelementptr inbounds %struct.rb_node, ptr %call10.i.i, i32 0, i32 2
  %79 = ptrtoint ptr %rb_left.i.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %rb_left.i.i.i, align 8
  %80 = ptrtoint ptr %p.0.lcssa.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call10.i.i, ptr %p.0.lcssa.i.i, align 4
  call void @rb_insert_color(ptr noundef nonnull %call10.i.i, ptr noundef %i_pending_tree.i.i) #9
  br label %error

if.else.i:                                        ; preds = %__es_scan_range.exit.i.if.else.i_crit_edge, %__es_find_extent_range.exit.i.if.else.i_crit_edge, %land.lhs.true83.i.i.if.else.i_crit_edge, %while.body.i322.i.if.else.i_crit_edge, %out.i.i.if.else.i_crit_edge, %if.end62.i.i.if.else.i_crit_edge, %if.then4.i.if.else.i_crit_edge
  %81 = ptrtoint ptr %s_cluster_ratio.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %s_cluster_ratio.i, align 4
  %neg15.i = sub i32 0, %82
  %and16.i = and i32 %sub, %neg15.i
  %add18.i = add i32 %and16.i, %82
  %sub19.i = add i32 %add18.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %add18.i, i32 %add)
  %cmp20.not.i = icmp eq i32 %add18.i, %add
  br i1 %cmp20.not.i, label %if.else.i.if.else29.i_crit_edge, label %if.then21.i

if.else.i.if.else29.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else29.i

if.then21.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub19.i, i32 %add)
  %cmp20.i323.i = icmp ult i32 %sub19.i, %add
  br i1 %cmp20.i323.i, label %do.end36.i324.i, label %if.then21.i.if.end42.i331.i_crit_edge, !prof !107

if.then21.i.if.end42.i331.i_crit_edge:            ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42.i331.i

do.end36.i324.i:                                  ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 266, i32 noundef 9, ptr noundef null) #9
  br label %if.end42.i331.i

if.end42.i331.i:                                  ; preds = %do.end36.i324.i, %if.then21.i.if.end42.i331.i_crit_edge
  %i_es_tree.i325.i = getelementptr i8, ptr %inode, i32 904
  %cache_es.i329.i = getelementptr i8, ptr %inode, i32 908
  %83 = ptrtoint ptr %cache_es.i329.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %cache_es.i329.i, align 4
  %tobool51.not.i330.i = icmp eq ptr %84, null
  br i1 %tobool51.not.i330.i, label %if.end42.i331.i.if.end62.i342.i_crit_edge, label %if.then52.i334.i

if.end42.i331.i.if.end62.i342.i_crit_edge:        ; preds = %if.end42.i331.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62.i342.i

if.then52.i334.i:                                 ; preds = %if.end42.i331.i
  %es_lblk54.i332.i = getelementptr inbounds %struct.extent_status, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %es_lblk54.i332.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %es_lblk54.i332.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %86, i32 %add)
  %cmp55.not.i333.i = icmp ugt i32 %86, %add
  br i1 %cmp55.not.i333.i, label %if.then52.i334.i.if.end62.i342.i_crit_edge, label %land.lhs.true.i339.i

if.then52.i334.i.if.end62.i342.i_crit_edge:       ; preds = %if.then52.i334.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62.i342.i

land.lhs.true.i339.i:                             ; preds = %if.then52.i334.i
  %es_len57.i335.i = getelementptr inbounds %struct.extent_status, ptr %84, i32 0, i32 2
  %87 = ptrtoint ptr %es_len57.i335.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %es_len57.i335.i, align 8
  %add.i336.i = add i32 %86, -1
  %sub.i337.i = add i32 %add.i336.i, %88
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i337.i, i32 %add)
  %cmp58.not.i338.i = icmp ult i32 %sub.i337.i, %add
  br i1 %cmp58.not.i338.i, label %land.lhs.true.i339.i.if.end62.i342.i_crit_edge, label %land.lhs.true.i339.i.land.lhs.true64.i379.i_crit_edge

land.lhs.true.i339.i.land.lhs.true64.i379.i_crit_edge: ; preds = %land.lhs.true.i339.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true64.i379.i

land.lhs.true.i339.i.if.end62.i342.i_crit_edge:   ; preds = %land.lhs.true.i339.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62.i342.i

if.end62.i342.i:                                  ; preds = %land.lhs.true.i339.i.if.end62.i342.i_crit_edge, %if.then52.i334.i.if.end62.i342.i_crit_edge, %if.end42.i331.i.if.end62.i342.i_crit_edge
  %89 = ptrtoint ptr %i_es_tree.i325.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %node.050.i.i340.i = load ptr, ptr %i_es_tree.i325.i, align 4
  %tobool.not51.i.i341.i = icmp eq ptr %node.050.i.i340.i, null
  br i1 %tobool.not51.i.i341.i, label %if.end62.i342.i.if.else29.i_crit_edge, label %if.end62.i342.i.while.body.i.i346.i_crit_edge

if.end62.i342.i.while.body.i.i346.i_crit_edge:    ; preds = %if.end62.i342.i
  br label %while.body.i.i346.i

if.end62.i342.i.if.else29.i_crit_edge:            ; preds = %if.end62.i342.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else29.i

while.body.i.i346.i:                              ; preds = %while.body.i.i346.i.backedge, %if.end62.i342.i.while.body.i.i346.i_crit_edge
  %node.052.i.i343.i = phi ptr [ %node.052.i.i343.i.be, %while.body.i.i346.i.backedge ], [ %node.050.i.i340.i, %if.end62.i342.i.while.body.i.i346.i_crit_edge ]
  %es_lblk.i.i344.i = getelementptr inbounds %struct.extent_status, ptr %node.052.i.i343.i, i32 0, i32 1
  %90 = ptrtoint ptr %es_lblk.i.i344.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %es_lblk.i.i344.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %91, i32 %add)
  %cmp.i.i345.i = icmp ugt i32 %91, %add
  br i1 %cmp.i.i345.i, label %if.end4.i.i358.i, label %if.else.i.i350.i

if.else.i.i350.i:                                 ; preds = %while.body.i.i346.i
  %es_len.i.i.i347.i = getelementptr inbounds %struct.extent_status, ptr %node.052.i.i343.i, i32 0, i32 2
  %92 = ptrtoint ptr %es_len.i.i.i347.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %es_len.i.i.i347.i, align 8
  %add.i.i.i348.i = add i32 %93, %91
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i348.i, i32 %91)
  %cmp.i.i.i349.i = icmp ult i32 %add.i.i.i348.i, %91
  br i1 %cmp.i.i.i349.i, label %do.body3.i.i.i351.i, label %ext4_es_end.exit.i.i354.i, !prof !107

do.body3.i.i.i351.i:                              ; preds = %if.else.i.i350.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/extents_status.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 202, 0\0A.popsection", ""() #9, !srcloc !108
  unreachable

ext4_es_end.exit.i.i354.i:                        ; preds = %if.else.i.i350.i
  %sub.i.i.i352.i = add i32 %add.i.i.i348.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i352.i, i32 %add)
  %cmp1.i.i353.i = icmp ult i32 %sub.i.i.i352.i, %add
  br i1 %cmp1.i.i353.i, label %if.end4.i.thread.i364.i, label %ext4_es_end.exit.i.i354.i.land.lhs.true64.i379.i_crit_edge

ext4_es_end.exit.i.i354.i.land.lhs.true64.i379.i_crit_edge: ; preds = %ext4_es_end.exit.i.i354.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true64.i379.i

if.end4.i.i358.i:                                 ; preds = %while.body.i.i346.i
  %rb_left.i.i355.i = getelementptr inbounds %struct.rb_node, ptr %node.052.i.i343.i, i32 0, i32 2
  %94 = ptrtoint ptr %rb_left.i.i355.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %node.0.i.i356.i = load ptr, ptr %rb_left.i.i355.i, align 4
  %tobool.not.i.i357.i = icmp eq ptr %node.0.i.i356.i, null
  br i1 %tobool.not.i.i357.i, label %if.end4.i.i358.i.land.lhs.true64.i379.i_crit_edge, label %if.end4.i.i358.i.while.body.i.i346.i.backedge_crit_edge

if.end4.i.i358.i.while.body.i.i346.i.backedge_crit_edge: ; preds = %if.end4.i.i358.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i346.i.backedge

if.end4.i.i358.i.land.lhs.true64.i379.i_crit_edge: ; preds = %if.end4.i.i358.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true64.i379.i

if.end4.i.thread.i364.i:                          ; preds = %ext4_es_end.exit.i.i354.i
  %rb_right.i.i361.i = getelementptr inbounds %struct.rb_node, ptr %node.052.i.i343.i, i32 0, i32 1
  %95 = ptrtoint ptr %rb_right.i.i361.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %node.0.i127.i362.i = load ptr, ptr %rb_right.i.i361.i, align 4
  %tobool.not.i128.i363.i = icmp eq ptr %node.0.i127.i362.i, null
  br i1 %tobool.not.i128.i363.i, label %out.i375.i, label %if.end4.i.thread.i364.i.while.body.i.i346.i.backedge_crit_edge

if.end4.i.thread.i364.i.while.body.i.i346.i.backedge_crit_edge: ; preds = %if.end4.i.thread.i364.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i346.i.backedge

while.body.i.i346.i.backedge:                     ; preds = %if.end4.i.thread.i364.i.while.body.i.i346.i.backedge_crit_edge, %if.end4.i.i358.i.while.body.i.i346.i.backedge_crit_edge
  %node.052.i.i343.i.be = phi ptr [ %node.0.i.i356.i, %if.end4.i.i358.i.while.body.i.i346.i.backedge_crit_edge ], [ %node.0.i127.i362.i, %if.end4.i.thread.i364.i.while.body.i.i346.i.backedge_crit_edge ]
  br label %while.body.i.i346.i

out.i375.i:                                       ; preds = %if.end4.i.thread.i364.i
  %call16.i.i373.i = call ptr @rb_next(ptr noundef nonnull %node.052.i.i343.i) #9
  %tobool63.not.i374.i = icmp eq ptr %call16.i.i373.i, null
  br i1 %tobool63.not.i374.i, label %out.i375.i.if.else29.i_crit_edge, label %out.i375.i.land.lhs.true64.i379.i_crit_edge

out.i375.i.land.lhs.true64.i379.i_crit_edge:      ; preds = %out.i375.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true64.i379.i

out.i375.i.if.else29.i_crit_edge:                 ; preds = %out.i375.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else29.i

land.lhs.true64.i379.i:                           ; preds = %out.i375.i.land.lhs.true64.i379.i_crit_edge, %if.end4.i.i358.i.land.lhs.true64.i379.i_crit_edge, %ext4_es_end.exit.i.i354.i.land.lhs.true64.i379.i_crit_edge, %land.lhs.true.i339.i.land.lhs.true64.i379.i_crit_edge
  %es1.0131.i376.i = phi ptr [ %call16.i.i373.i, %out.i375.i.land.lhs.true64.i379.i_crit_edge ], [ %84, %land.lhs.true.i339.i.land.lhs.true64.i379.i_crit_edge ], [ %node.052.i.i343.i, %ext4_es_end.exit.i.i354.i.land.lhs.true64.i379.i_crit_edge ], [ %node.052.i.i343.i, %if.end4.i.i358.i.land.lhs.true64.i379.i_crit_edge ]
  %es_pblk.i.i.i560.i = getelementptr inbounds %struct.extent_status, ptr %es1.0131.i376.i, i32 0, i32 3
  %96 = ptrtoint ptr %es_pblk.i.i.i560.i to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %es_pblk.i.i.i560.i, align 8
  %98 = and i64 %97, 3458764513820540928
  call void @__sanitizer_cov_trace_const_cmp8(i64 2305843009213693952, i64 %98)
  %.not618.i = icmp eq i64 %98, 2305843009213693952
  br i1 %.not618.i, label %land.lhs.true64.i379.i.land.lhs.true83.i393.i_crit_edge, label %land.lhs.true64.i379.i.while.cond.i383.i_crit_edge

land.lhs.true64.i379.i.while.cond.i383.i_crit_edge: ; preds = %land.lhs.true64.i379.i
  br label %while.cond.i383.i

land.lhs.true64.i379.i.land.lhs.true83.i393.i_crit_edge: ; preds = %land.lhs.true64.i379.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true83.i393.i

while.cond.i383.i:                                ; preds = %if.end76.i389.i.while.cond.i383.i_crit_edge, %land.lhs.true64.i379.i.while.cond.i383.i_crit_edge
  %es1.1.i380.i = phi ptr [ %call68.i381.i, %if.end76.i389.i.while.cond.i383.i_crit_edge ], [ %es1.0131.i376.i, %land.lhs.true64.i379.i.while.cond.i383.i_crit_edge ]
  %call68.i381.i = call ptr @rb_next(ptr noundef nonnull %es1.1.i380.i) #9
  %cmp69.not.i382.i = icmp eq ptr %call68.i381.i, null
  br i1 %cmp69.not.i382.i, label %while.cond.i383.i.land.lhs.true83.i393.i_crit_edge, label %while.body.i386.i

while.cond.i383.i.land.lhs.true83.i393.i_crit_edge: ; preds = %while.cond.i383.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true83.i393.i

while.body.i386.i:                                ; preds = %while.cond.i383.i
  %es_lblk73.i384.i = getelementptr inbounds %struct.extent_status, ptr %call68.i381.i, i32 0, i32 1
  %99 = ptrtoint ptr %es_lblk73.i384.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %es_lblk73.i384.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %100, i32 %sub19.i)
  %cmp74.i385.i = icmp ugt i32 %100, %sub19.i
  br i1 %cmp74.i385.i, label %while.body.i386.i.if.else29.i_crit_edge, label %if.end76.i389.i

while.body.i386.i.if.else29.i_crit_edge:          ; preds = %while.body.i386.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else29.i

if.end76.i389.i:                                  ; preds = %while.body.i386.i
  %es_pblk.i.i.i558.i = getelementptr inbounds %struct.extent_status, ptr %call68.i381.i, i32 0, i32 3
  %101 = ptrtoint ptr %es_pblk.i.i.i558.i to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %es_pblk.i.i.i558.i, align 8
  %103 = and i64 %102, 3458764513820540928
  %.not622.i = icmp eq i64 %103, 2305843009213693952
  br i1 %.not622.i, label %if.end76.i389.i.land.lhs.true83.i393.i_crit_edge, label %if.end76.i389.i.while.cond.i383.i_crit_edge

if.end76.i389.i.while.cond.i383.i_crit_edge:      ; preds = %if.end76.i389.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i383.i

if.end76.i389.i.land.lhs.true83.i393.i_crit_edge: ; preds = %if.end76.i389.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true83.i393.i

land.lhs.true83.i393.i:                           ; preds = %if.end76.i389.i.land.lhs.true83.i393.i_crit_edge, %while.cond.i383.i.land.lhs.true83.i393.i_crit_edge, %land.lhs.true64.i379.i.land.lhs.true83.i393.i_crit_edge
  %es1.2.i390.i = phi ptr [ %es1.0131.i376.i, %land.lhs.true64.i379.i.land.lhs.true83.i393.i_crit_edge ], [ %es1.1.i380.i, %while.cond.i383.i.land.lhs.true83.i393.i_crit_edge ], [ %call68.i381.i, %if.end76.i389.i.land.lhs.true83.i393.i_crit_edge ]
  %es_pblk.i.i.i556.i = getelementptr inbounds %struct.extent_status, ptr %es1.2.i390.i, i32 0, i32 3
  %104 = ptrtoint ptr %es_pblk.i.i.i556.i to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %es_pblk.i.i.i556.i, align 8
  %106 = and i64 %105, 3458764513820540928
  call void @__sanitizer_cov_trace_const_cmp8(i64 2305843009213693952, i64 %106)
  %.not620.i = icmp eq i64 %106, 2305843009213693952
  br i1 %.not620.i, label %__es_find_extent_range.exit398.i, label %land.lhs.true83.i393.i.if.else29.i_crit_edge

land.lhs.true83.i393.i.if.else29.i_crit_edge:     ; preds = %land.lhs.true83.i393.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else29.i

__es_find_extent_range.exit398.i:                 ; preds = %land.lhs.true83.i393.i
  %107 = ptrtoint ptr %cache_es.i329.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %es1.2.i390.i, ptr %cache_es.i329.i, align 4
  %es_lblk88.i394.i = getelementptr inbounds %struct.extent_status, ptr %es1.2.i390.i, i32 0, i32 1
  %108 = ptrtoint ptr %es_lblk88.i394.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %es_lblk88.i394.i, align 4
  %es_len90.i395.i = getelementptr inbounds %struct.extent_status, ptr %es1.2.i390.i, i32 0, i32 2
  %110 = ptrtoint ptr %es_len90.i395.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %es_len90.i395.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %cmp.i123.i = icmp eq i32 %111, 0
  br i1 %cmp.i123.i, label %__es_find_extent_range.exit398.i.if.else29.i_crit_edge, label %if.else.i129.i

__es_find_extent_range.exit398.i.if.else29.i_crit_edge: ; preds = %__es_find_extent_range.exit398.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else29.i

if.else.i129.i:                                   ; preds = %__es_find_extent_range.exit398.i
  call void @__sanitizer_cov_trace_cmp4(i32 %109, i32 %add)
  %cmp1.not.i125.i = icmp ule i32 %109, %add
  %add.i126.i = add i32 %111, %109
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i126.i, i32 %add)
  %cmp4.i127.i = icmp ugt i32 %add.i126.i, %add
  %or.cond.i128.i = select i1 %cmp1.not.i125.i, i1 %cmp4.i127.i, i1 false
  br i1 %or.cond.i128.i, label %if.else.i129.i.if.then27.i_crit_edge, label %__es_scan_range.exit135.i

if.else.i129.i.if.then27.i_crit_edge:             ; preds = %if.else.i129.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then27.i

__es_scan_range.exit135.i:                        ; preds = %if.else.i129.i
  call void @__sanitizer_cov_trace_cmp4(i32 %109, i32 %add)
  %cmp8.not.i130.i = icmp uge i32 %109, %add
  call void @__sanitizer_cov_trace_cmp4(i32 %109, i32 %sub19.i)
  %cmp11.not.i131.i = icmp ule i32 %109, %sub19.i
  %not.or.cond20.i132.i = and i1 %cmp8.not.i130.i, %cmp11.not.i131.i
  br i1 %not.or.cond20.i132.i, label %__es_scan_range.exit135.i.if.then27.i_crit_edge, label %__es_scan_range.exit135.i.if.else29.i_crit_edge

__es_scan_range.exit135.i.if.else29.i_crit_edge:  ; preds = %__es_scan_range.exit135.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else29.i

__es_scan_range.exit135.i.if.then27.i_crit_edge:  ; preds = %__es_scan_range.exit135.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then27.i

if.then27.i:                                      ; preds = %__es_scan_range.exit135.i.if.then27.i_crit_edge, %if.else.i129.i.if.then27.i_crit_edge
  %112 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i137.i = getelementptr inbounds %struct.super_block, ptr %113, i32 0, i32 33
  %114 = ptrtoint ptr %s_fs_info.i.i137.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %s_fs_info.i.i137.i, align 16
  %i_pending_tree.i138.i = getelementptr i8, ptr %inode, i32 984
  %s_cluster_bits.i139.i = getelementptr inbounds %struct.ext4_sb_info, ptr %115, i32 0, i32 12
  %116 = ptrtoint ptr %s_cluster_bits.i139.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %s_cluster_bits.i139.i, align 16
  %shr.i140.i = lshr i32 %sub19.i, %117
  %118 = ptrtoint ptr %i_pending_tree.i138.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %i_pending_tree.i138.i, align 4
  %tobool.not3.i141.i = icmp eq ptr %119, null
  br i1 %tobool.not3.i141.i, label %if.then27.i.while.end.i160.i_crit_edge, label %if.then27.i.while.body.i144.i_crit_edge

if.then27.i.while.body.i144.i_crit_edge:          ; preds = %if.then27.i
  br label %while.body.i144.i

if.then27.i.while.end.i160.i_crit_edge:           ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i160.i

while.body.i144.i:                                ; preds = %if.end9.i153.i.while.body.i144.i_crit_edge, %if.then27.i.while.body.i144.i_crit_edge
  %120 = phi ptr [ %124, %if.end9.i153.i.while.body.i144.i_crit_edge ], [ %119, %if.then27.i.while.body.i144.i_crit_edge ]
  %lclu4.i142.i = getelementptr inbounds %struct.pending_reservation, ptr %120, i32 0, i32 1
  %121 = ptrtoint ptr %lclu4.i142.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %lclu4.i142.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i140.i, i32 %122)
  %cmp.i143.i = icmp ult i32 %shr.i140.i, %122
  br i1 %cmp.i143.i, label %if.then.i146.i, label %if.else.i148.i

if.then.i146.i:                                   ; preds = %while.body.i144.i
  call void @__sanitizer_cov_trace_pc() #11
  %rb_left.i145.i = getelementptr inbounds %struct.rb_node, ptr %120, i32 0, i32 2
  br label %if.end9.i153.i

if.else.i148.i:                                   ; preds = %while.body.i144.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i140.i, i32 %122)
  %cmp6.i147.i = icmp ugt i32 %shr.i140.i, %122
  br i1 %cmp6.i147.i, label %if.then7.i150.i, label %if.else.i148.i.error_crit_edge

if.else.i148.i.error_crit_edge:                   ; preds = %if.else.i148.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.then7.i150.i:                                  ; preds = %if.else.i148.i
  call void @__sanitizer_cov_trace_pc() #11
  %rb_right.i149.i = getelementptr inbounds %struct.rb_node, ptr %120, i32 0, i32 1
  br label %if.end9.i153.i

if.end9.i153.i:                                   ; preds = %if.then7.i150.i, %if.then.i146.i
  %p.1.i151.i = phi ptr [ %rb_left.i145.i, %if.then.i146.i ], [ %rb_right.i149.i, %if.then7.i150.i ]
  %123 = ptrtoint ptr %p.1.i151.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %p.1.i151.i, align 4
  %tobool.not.i152.i = icmp eq ptr %124, null
  br i1 %tobool.not.i152.i, label %while.cond.while.end_crit_edge.i155.i, label %if.end9.i153.i.while.body.i144.i_crit_edge

if.end9.i153.i.while.body.i144.i_crit_edge:       ; preds = %if.end9.i153.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i144.i

while.cond.while.end_crit_edge.i155.i:            ; preds = %if.end9.i153.i
  call void @__sanitizer_cov_trace_pc() #11
  %phi.cast.le.i154.i = ptrtoint ptr %120 to i32
  br label %while.end.i160.i

while.end.i160.i:                                 ; preds = %while.cond.while.end_crit_edge.i155.i, %if.then27.i.while.end.i160.i_crit_edge
  %parent.0.lcssa.i156.i = phi i32 [ %phi.cast.le.i154.i, %while.cond.while.end_crit_edge.i155.i ], [ 0, %if.then27.i.while.end.i160.i_crit_edge ]
  %p.0.lcssa.i157.i = phi ptr [ %p.1.i151.i, %while.cond.while.end_crit_edge.i155.i ], [ %i_pending_tree.i138.i, %if.then27.i.while.end.i160.i_crit_edge ]
  %125 = load ptr, ptr @ext4_pending_cachep, align 4
  %call10.i158.i = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %125, i32 noundef 2592) #9
  %cmp11.i159.i = icmp eq ptr %call10.i158.i, null
  br i1 %cmp11.i159.i, label %while.end.i160.i.error_crit_edge, label %if.end13.i164.i

while.end.i160.i.error_crit_edge:                 ; preds = %while.end.i160.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end13.i164.i:                                  ; preds = %while.end.i160.i
  call void @__sanitizer_cov_trace_pc() #11
  %lclu14.i161.i = getelementptr inbounds %struct.pending_reservation, ptr %call10.i158.i, i32 0, i32 1
  %126 = ptrtoint ptr %lclu14.i161.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %shr.i140.i, ptr %lclu14.i161.i, align 4
  %127 = ptrtoint ptr %call10.i158.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %parent.0.lcssa.i156.i, ptr %call10.i158.i, align 8
  %rb_right.i.i162.i = getelementptr inbounds %struct.rb_node, ptr %call10.i158.i, i32 0, i32 1
  %128 = ptrtoint ptr %rb_right.i.i162.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr null, ptr %rb_right.i.i162.i, align 4
  %rb_left.i.i163.i = getelementptr inbounds %struct.rb_node, ptr %call10.i158.i, i32 0, i32 2
  %129 = ptrtoint ptr %rb_left.i.i163.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr null, ptr %rb_left.i.i163.i, align 8
  %130 = ptrtoint ptr %p.0.lcssa.i157.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %call10.i158.i, ptr %p.0.lcssa.i157.i, align 4
  call void @rb_insert_color(ptr noundef nonnull %call10.i158.i, ptr noundef %i_pending_tree.i138.i) #9
  br label %error

if.else29.i:                                      ; preds = %__es_scan_range.exit135.i.if.else29.i_crit_edge, %__es_find_extent_range.exit398.i.if.else29.i_crit_edge, %land.lhs.true83.i393.i.if.else29.i_crit_edge, %while.body.i386.i.if.else29.i_crit_edge, %out.i375.i.if.else29.i_crit_edge, %if.end62.i342.i.if.else29.i_crit_edge, %if.else.i.if.else29.i_crit_edge
  %131 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i167.i = getelementptr inbounds %struct.super_block, ptr %132, i32 0, i32 33
  %133 = ptrtoint ptr %s_fs_info.i.i167.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %s_fs_info.i.i167.i, align 16
  %s_cluster_bits.i168.i = getelementptr inbounds %struct.ext4_sb_info, ptr %134, i32 0, i32 12
  %135 = ptrtoint ptr %s_cluster_bits.i168.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %s_cluster_bits.i168.i, align 16
  %shr.i169.i = lshr i32 %sub19.i, %136
  %i_pending_tree.i.i.i = getelementptr i8, ptr %inode, i32 984
  %137 = ptrtoint ptr %i_pending_tree.i.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %i_pending_tree.i.i.i, align 4
  %tobool.not24.i.i.i = icmp eq ptr %138, null
  br i1 %tobool.not24.i.i.i, label %if.else29.i.error_crit_edge, label %if.else29.i.while.body.i.i.i_crit_edge

if.else29.i.while.body.i.i.i_crit_edge:           ; preds = %if.else29.i
  br label %while.body.i.i.i

if.else29.i.error_crit_edge:                      ; preds = %if.else29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

while.body.i.i.i:                                 ; preds = %if.end13.i.i.i.while.body.i.i.i_crit_edge, %if.else29.i.while.body.i.i.i_crit_edge
  %node.025.i.i.i = phi ptr [ %node.1.i.i.i, %if.end13.i.i.i.while.body.i.i.i_crit_edge ], [ %138, %if.else29.i.while.body.i.i.i_crit_edge ]
  %lclu4.i.i.i = getelementptr inbounds %struct.pending_reservation, ptr %node.025.i.i.i, i32 0, i32 1
  %139 = ptrtoint ptr %lclu4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %lclu4.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %140, i32 %shr.i169.i)
  %cmp.i.i.i = icmp ugt i32 %140, %shr.i169.i
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %rb_left.i.i170.i = getelementptr inbounds %struct.rb_node, ptr %node.025.i.i.i, i32 0, i32 2
  br label %if.end13.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %140, i32 %shr.i169.i)
  %cmp6.i.i.i = icmp ult i32 %140, %shr.i169.i
  br i1 %cmp6.i.i.i, label %if.then7.i.i.i, label %if.else8.i.i.i

if.then7.i.i.i:                                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %rb_right.i.i171.i = getelementptr inbounds %struct.rb_node, ptr %node.025.i.i.i, i32 0, i32 1
  br label %if.end13.sink.split.i.i.i

if.else8.i.i.i:                                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %140, i32 %shr.i169.i)
  %cmp10.i.i.i = icmp eq i32 %140, %shr.i169.i
  br i1 %cmp10.i.i.i, label %if.then.i172.i, label %if.else8.i.i.i.if.end13.i.i.i_crit_edge

if.else8.i.i.i.if.end13.i.i.i_crit_edge:          ; preds = %if.else8.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i.i.i

if.end13.sink.split.i.i.i:                        ; preds = %if.then7.i.i.i, %if.then.i.i.i
  %rb_right.sink.i.i.i = phi ptr [ %rb_right.i.i171.i, %if.then7.i.i.i ], [ %rb_left.i.i170.i, %if.then.i.i.i ]
  %141 = ptrtoint ptr %rb_right.sink.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %rb_right.sink.i.i.i, align 4
  br label %if.end13.i.i.i

if.end13.i.i.i:                                   ; preds = %if.end13.sink.split.i.i.i, %if.else8.i.i.i.if.end13.i.i.i_crit_edge
  %node.1.i.i.i = phi ptr [ %node.025.i.i.i, %if.else8.i.i.i.if.end13.i.i.i_crit_edge ], [ %142, %if.end13.sink.split.i.i.i ]
  %tobool.not.i.i.i = icmp eq ptr %node.1.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end13.i.i.i.error_crit_edge, label %if.end13.i.i.i.while.body.i.i.i_crit_edge

if.end13.i.i.i.while.body.i.i.i_crit_edge:        ; preds = %if.end13.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i.i

if.end13.i.i.i.error_crit_edge:                   ; preds = %if.end13.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.then.i172.i:                                   ; preds = %if.else8.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @rb_erase(ptr noundef nonnull %node.025.i.i.i, ptr noundef %i_pending_tree.i.i.i) #9
  %143 = load ptr, ptr @ext4_pending_cachep, align 4
  call void @kmem_cache_free(ptr noundef %143, ptr noundef nonnull %node.025.i.i.i) #9
  br label %error

if.else32.i:                                      ; preds = %if.then87
  br i1 %cmp6.not.i, label %if.else32.i.if.else46.i_crit_edge, label %if.then38.i

if.else32.i.if.else46.i_crit_edge:                ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else46.i

if.then38.i:                                      ; preds = %if.else32.i
  %sub39.i = add i32 %lblk, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub39.i, i32 %and.i)
  %cmp20.i399.i = icmp ult i32 %sub39.i, %and.i
  br i1 %cmp20.i399.i, label %do.end36.i400.i, label %if.then38.i.if.end42.i407.i_crit_edge, !prof !107

if.then38.i.if.end42.i407.i_crit_edge:            ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42.i407.i

do.end36.i400.i:                                  ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 266, i32 noundef 9, ptr noundef null) #9
  br label %if.end42.i407.i

if.end42.i407.i:                                  ; preds = %do.end36.i400.i, %if.then38.i.if.end42.i407.i_crit_edge
  %i_es_tree.i401.i = getelementptr i8, ptr %inode, i32 904
  %cache_es.i405.i = getelementptr i8, ptr %inode, i32 908
  %144 = ptrtoint ptr %cache_es.i405.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %cache_es.i405.i, align 4
  %tobool51.not.i406.i = icmp eq ptr %145, null
  br i1 %tobool51.not.i406.i, label %if.end42.i407.i.if.end62.i418.i_crit_edge, label %if.then52.i410.i

if.end42.i407.i.if.end62.i418.i_crit_edge:        ; preds = %if.end42.i407.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62.i418.i

if.then52.i410.i:                                 ; preds = %if.end42.i407.i
  %es_lblk54.i408.i = getelementptr inbounds %struct.extent_status, ptr %145, i32 0, i32 1
  %146 = ptrtoint ptr %es_lblk54.i408.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %es_lblk54.i408.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %147, i32 %and.i)
  %cmp55.not.i409.i = icmp ugt i32 %147, %and.i
  br i1 %cmp55.not.i409.i, label %if.then52.i410.i.if.end62.i418.i_crit_edge, label %land.lhs.true.i415.i

if.then52.i410.i.if.end62.i418.i_crit_edge:       ; preds = %if.then52.i410.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62.i418.i

land.lhs.true.i415.i:                             ; preds = %if.then52.i410.i
  %es_len57.i411.i = getelementptr inbounds %struct.extent_status, ptr %145, i32 0, i32 2
  %148 = ptrtoint ptr %es_len57.i411.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %es_len57.i411.i, align 8
  %add.i412.i = add i32 %147, -1
  %sub.i413.i = add i32 %add.i412.i, %149
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i413.i, i32 %and.i)
  %cmp58.not.i414.i = icmp ult i32 %sub.i413.i, %and.i
  br i1 %cmp58.not.i414.i, label %land.lhs.true.i415.i.if.end62.i418.i_crit_edge, label %land.lhs.true.i415.i.land.lhs.true64.i455.i_crit_edge

land.lhs.true.i415.i.land.lhs.true64.i455.i_crit_edge: ; preds = %land.lhs.true.i415.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true64.i455.i

land.lhs.true.i415.i.if.end62.i418.i_crit_edge:   ; preds = %land.lhs.true.i415.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62.i418.i

if.end62.i418.i:                                  ; preds = %land.lhs.true.i415.i.if.end62.i418.i_crit_edge, %if.then52.i410.i.if.end62.i418.i_crit_edge, %if.end42.i407.i.if.end62.i418.i_crit_edge
  %150 = ptrtoint ptr %i_es_tree.i401.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %node.050.i.i416.i = load ptr, ptr %i_es_tree.i401.i, align 4
  %tobool.not51.i.i417.i = icmp eq ptr %node.050.i.i416.i, null
  br i1 %tobool.not51.i.i417.i, label %if.end62.i418.i.if.else46.i_crit_edge, label %if.end62.i418.i.while.body.i.i422.i_crit_edge

if.end62.i418.i.while.body.i.i422.i_crit_edge:    ; preds = %if.end62.i418.i
  br label %while.body.i.i422.i

if.end62.i418.i.if.else46.i_crit_edge:            ; preds = %if.end62.i418.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else46.i

while.body.i.i422.i:                              ; preds = %while.body.i.i422.i.backedge, %if.end62.i418.i.while.body.i.i422.i_crit_edge
  %node.052.i.i419.i = phi ptr [ %node.052.i.i419.i.be, %while.body.i.i422.i.backedge ], [ %node.050.i.i416.i, %if.end62.i418.i.while.body.i.i422.i_crit_edge ]
  %es_lblk.i.i420.i = getelementptr inbounds %struct.extent_status, ptr %node.052.i.i419.i, i32 0, i32 1
  %151 = ptrtoint ptr %es_lblk.i.i420.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %es_lblk.i.i420.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %152, i32 %and.i)
  %cmp.i.i421.i = icmp ugt i32 %152, %and.i
  br i1 %cmp.i.i421.i, label %if.end4.i.i434.i, label %if.else.i.i426.i

if.else.i.i426.i:                                 ; preds = %while.body.i.i422.i
  %es_len.i.i.i423.i = getelementptr inbounds %struct.extent_status, ptr %node.052.i.i419.i, i32 0, i32 2
  %153 = ptrtoint ptr %es_len.i.i.i423.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %es_len.i.i.i423.i, align 8
  %add.i.i.i424.i = add i32 %154, %152
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i424.i, i32 %152)
  %cmp.i.i.i425.i = icmp ult i32 %add.i.i.i424.i, %152
  br i1 %cmp.i.i.i425.i, label %do.body3.i.i.i427.i, label %ext4_es_end.exit.i.i430.i, !prof !107

do.body3.i.i.i427.i:                              ; preds = %if.else.i.i426.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/extents_status.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 202, 0\0A.popsection", ""() #9, !srcloc !108
  unreachable

ext4_es_end.exit.i.i430.i:                        ; preds = %if.else.i.i426.i
  %sub.i.i.i428.i = add i32 %add.i.i.i424.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i428.i, i32 %and.i)
  %cmp1.i.i429.i = icmp ult i32 %sub.i.i.i428.i, %and.i
  br i1 %cmp1.i.i429.i, label %if.end4.i.thread.i440.i, label %ext4_es_end.exit.i.i430.i.land.lhs.true64.i455.i_crit_edge

ext4_es_end.exit.i.i430.i.land.lhs.true64.i455.i_crit_edge: ; preds = %ext4_es_end.exit.i.i430.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true64.i455.i

if.end4.i.i434.i:                                 ; preds = %while.body.i.i422.i
  %rb_left.i.i431.i = getelementptr inbounds %struct.rb_node, ptr %node.052.i.i419.i, i32 0, i32 2
  %155 = ptrtoint ptr %rb_left.i.i431.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %node.0.i.i432.i = load ptr, ptr %rb_left.i.i431.i, align 4
  %tobool.not.i.i433.i = icmp eq ptr %node.0.i.i432.i, null
  br i1 %tobool.not.i.i433.i, label %if.end4.i.i434.i.land.lhs.true64.i455.i_crit_edge, label %if.end4.i.i434.i.while.body.i.i422.i.backedge_crit_edge

if.end4.i.i434.i.while.body.i.i422.i.backedge_crit_edge: ; preds = %if.end4.i.i434.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i422.i.backedge

if.end4.i.i434.i.land.lhs.true64.i455.i_crit_edge: ; preds = %if.end4.i.i434.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true64.i455.i

if.end4.i.thread.i440.i:                          ; preds = %ext4_es_end.exit.i.i430.i
  %rb_right.i.i437.i = getelementptr inbounds %struct.rb_node, ptr %node.052.i.i419.i, i32 0, i32 1
  %156 = ptrtoint ptr %rb_right.i.i437.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %node.0.i127.i438.i = load ptr, ptr %rb_right.i.i437.i, align 4
  %tobool.not.i128.i439.i = icmp eq ptr %node.0.i127.i438.i, null
  br i1 %tobool.not.i128.i439.i, label %out.i451.i, label %if.end4.i.thread.i440.i.while.body.i.i422.i.backedge_crit_edge

if.end4.i.thread.i440.i.while.body.i.i422.i.backedge_crit_edge: ; preds = %if.end4.i.thread.i440.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i422.i.backedge

while.body.i.i422.i.backedge:                     ; preds = %if.end4.i.thread.i440.i.while.body.i.i422.i.backedge_crit_edge, %if.end4.i.i434.i.while.body.i.i422.i.backedge_crit_edge
  %node.052.i.i419.i.be = phi ptr [ %node.0.i.i432.i, %if.end4.i.i434.i.while.body.i.i422.i.backedge_crit_edge ], [ %node.0.i127.i438.i, %if.end4.i.thread.i440.i.while.body.i.i422.i.backedge_crit_edge ]
  br label %while.body.i.i422.i

out.i451.i:                                       ; preds = %if.end4.i.thread.i440.i
  %call16.i.i449.i = call ptr @rb_next(ptr noundef nonnull %node.052.i.i419.i) #9
  %tobool63.not.i450.i = icmp eq ptr %call16.i.i449.i, null
  br i1 %tobool63.not.i450.i, label %out.i451.i.if.else46.i_crit_edge, label %out.i451.i.land.lhs.true64.i455.i_crit_edge

out.i451.i.land.lhs.true64.i455.i_crit_edge:      ; preds = %out.i451.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true64.i455.i

out.i451.i.if.else46.i_crit_edge:                 ; preds = %out.i451.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else46.i

land.lhs.true64.i455.i:                           ; preds = %out.i451.i.land.lhs.true64.i455.i_crit_edge, %if.end4.i.i434.i.land.lhs.true64.i455.i_crit_edge, %ext4_es_end.exit.i.i430.i.land.lhs.true64.i455.i_crit_edge, %land.lhs.true.i415.i.land.lhs.true64.i455.i_crit_edge
  %es1.0131.i452.i = phi ptr [ %call16.i.i449.i, %out.i451.i.land.lhs.true64.i455.i_crit_edge ], [ %145, %land.lhs.true.i415.i.land.lhs.true64.i455.i_crit_edge ], [ %node.052.i.i419.i, %ext4_es_end.exit.i.i430.i.land.lhs.true64.i455.i_crit_edge ], [ %node.052.i.i419.i, %if.end4.i.i434.i.land.lhs.true64.i455.i_crit_edge ]
  %es_pblk.i.i.i566.i = getelementptr inbounds %struct.extent_status, ptr %es1.0131.i452.i, i32 0, i32 3
  %157 = ptrtoint ptr %es_pblk.i.i.i566.i to i32
  call void @__asan_load8_noabort(i32 %157)
  %158 = load i64, ptr %es_pblk.i.i.i566.i, align 8
  %159 = and i64 %158, 3458764513820540928
  call void @__sanitizer_cov_trace_const_cmp8(i64 2305843009213693952, i64 %159)
  %.not.i = icmp eq i64 %159, 2305843009213693952
  br i1 %.not.i, label %land.lhs.true64.i455.i.land.lhs.true83.i469.i_crit_edge, label %land.lhs.true64.i455.i.while.cond.i459.i_crit_edge

land.lhs.true64.i455.i.while.cond.i459.i_crit_edge: ; preds = %land.lhs.true64.i455.i
  br label %while.cond.i459.i

land.lhs.true64.i455.i.land.lhs.true83.i469.i_crit_edge: ; preds = %land.lhs.true64.i455.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true83.i469.i

while.cond.i459.i:                                ; preds = %if.end76.i465.i.while.cond.i459.i_crit_edge, %land.lhs.true64.i455.i.while.cond.i459.i_crit_edge
  %es1.1.i456.i = phi ptr [ %call68.i457.i, %if.end76.i465.i.while.cond.i459.i_crit_edge ], [ %es1.0131.i452.i, %land.lhs.true64.i455.i.while.cond.i459.i_crit_edge ]
  %call68.i457.i = call ptr @rb_next(ptr noundef nonnull %es1.1.i456.i) #9
  %cmp69.not.i458.i = icmp eq ptr %call68.i457.i, null
  br i1 %cmp69.not.i458.i, label %while.cond.i459.i.land.lhs.true83.i469.i_crit_edge, label %while.body.i462.i

while.cond.i459.i.land.lhs.true83.i469.i_crit_edge: ; preds = %while.cond.i459.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true83.i469.i

while.body.i462.i:                                ; preds = %while.cond.i459.i
  %es_lblk73.i460.i = getelementptr inbounds %struct.extent_status, ptr %call68.i457.i, i32 0, i32 1
  %160 = ptrtoint ptr %es_lblk73.i460.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %es_lblk73.i460.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %161, i32 %sub39.i)
  %cmp74.i461.i = icmp ugt i32 %161, %sub39.i
  br i1 %cmp74.i461.i, label %while.body.i462.i.if.else46.i_crit_edge, label %if.end76.i465.i

while.body.i462.i.if.else46.i_crit_edge:          ; preds = %while.body.i462.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else46.i

if.end76.i465.i:                                  ; preds = %while.body.i462.i
  %es_pblk.i.i.i564.i = getelementptr inbounds %struct.extent_status, ptr %call68.i457.i, i32 0, i32 3
  %162 = ptrtoint ptr %es_pblk.i.i.i564.i to i32
  call void @__asan_load8_noabort(i32 %162)
  %163 = load i64, ptr %es_pblk.i.i.i564.i, align 8
  %164 = and i64 %163, 3458764513820540928
  %.not612.i = icmp eq i64 %164, 2305843009213693952
  br i1 %.not612.i, label %if.end76.i465.i.land.lhs.true83.i469.i_crit_edge, label %if.end76.i465.i.while.cond.i459.i_crit_edge

if.end76.i465.i.while.cond.i459.i_crit_edge:      ; preds = %if.end76.i465.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i459.i

if.end76.i465.i.land.lhs.true83.i469.i_crit_edge: ; preds = %if.end76.i465.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true83.i469.i

land.lhs.true83.i469.i:                           ; preds = %if.end76.i465.i.land.lhs.true83.i469.i_crit_edge, %while.cond.i459.i.land.lhs.true83.i469.i_crit_edge, %land.lhs.true64.i455.i.land.lhs.true83.i469.i_crit_edge
  %es1.2.i466.i = phi ptr [ %es1.0131.i452.i, %land.lhs.true64.i455.i.land.lhs.true83.i469.i_crit_edge ], [ %es1.1.i456.i, %while.cond.i459.i.land.lhs.true83.i469.i_crit_edge ], [ %call68.i457.i, %if.end76.i465.i.land.lhs.true83.i469.i_crit_edge ]
  %es_pblk.i.i.i562.i = getelementptr inbounds %struct.extent_status, ptr %es1.2.i466.i, i32 0, i32 3
  %165 = ptrtoint ptr %es_pblk.i.i.i562.i to i32
  call void @__asan_load8_noabort(i32 %165)
  %166 = load i64, ptr %es_pblk.i.i.i562.i, align 8
  %167 = and i64 %166, 3458764513820540928
  call void @__sanitizer_cov_trace_const_cmp8(i64 2305843009213693952, i64 %167)
  %.not604.i = icmp eq i64 %167, 2305843009213693952
  br i1 %.not604.i, label %__es_find_extent_range.exit474.i, label %land.lhs.true83.i469.i.if.else46.i_crit_edge

land.lhs.true83.i469.i.if.else46.i_crit_edge:     ; preds = %land.lhs.true83.i469.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else46.i

__es_find_extent_range.exit474.i:                 ; preds = %land.lhs.true83.i469.i
  %168 = ptrtoint ptr %cache_es.i405.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %es1.2.i466.i, ptr %cache_es.i405.i, align 4
  %es_lblk88.i470.i = getelementptr inbounds %struct.extent_status, ptr %es1.2.i466.i, i32 0, i32 1
  %169 = ptrtoint ptr %es_lblk88.i470.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %es_lblk88.i470.i, align 4
  %es_len90.i471.i = getelementptr inbounds %struct.extent_status, ptr %es1.2.i466.i, i32 0, i32 2
  %171 = ptrtoint ptr %es_len90.i471.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %es_len90.i471.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %172)
  %cmp.i175.i = icmp eq i32 %172, 0
  br i1 %cmp.i175.i, label %__es_find_extent_range.exit474.i.if.else46.i_crit_edge, label %if.else.i181.i

__es_find_extent_range.exit474.i.if.else46.i_crit_edge: ; preds = %__es_find_extent_range.exit474.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else46.i

if.else.i181.i:                                   ; preds = %__es_find_extent_range.exit474.i
  call void @__sanitizer_cov_trace_cmp4(i32 %170, i32 %and.i)
  %cmp1.not.i177.i = icmp ule i32 %170, %and.i
  %add.i178.i = add i32 %172, %170
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i178.i, i32 %and.i)
  %cmp4.i179.i = icmp ugt i32 %add.i178.i, %and.i
  %or.cond.i180.i = select i1 %cmp1.not.i177.i, i1 %cmp4.i179.i, i1 false
  br i1 %or.cond.i180.i, label %if.else.i181.i.if.then44.i_crit_edge, label %__es_scan_range.exit187.i

if.else.i181.i.if.then44.i_crit_edge:             ; preds = %if.else.i181.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then44.i

__es_scan_range.exit187.i:                        ; preds = %if.else.i181.i
  call void @__sanitizer_cov_trace_cmp4(i32 %170, i32 %and.i)
  %cmp8.not.i182.i = icmp uge i32 %170, %and.i
  call void @__sanitizer_cov_trace_cmp4(i32 %170, i32 %sub39.i)
  %cmp11.not.i183.i = icmp ule i32 %170, %sub39.i
  %not.or.cond20.i184.i = and i1 %cmp8.not.i182.i, %cmp11.not.i183.i
  br i1 %not.or.cond20.i184.i, label %__es_scan_range.exit187.i.if.then44.i_crit_edge, label %__es_scan_range.exit187.i.if.else46.i_crit_edge

__es_scan_range.exit187.i.if.else46.i_crit_edge:  ; preds = %__es_scan_range.exit187.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else46.i

__es_scan_range.exit187.i.if.then44.i_crit_edge:  ; preds = %__es_scan_range.exit187.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then44.i

if.then44.i:                                      ; preds = %__es_scan_range.exit187.i.if.then44.i_crit_edge, %if.else.i181.i.if.then44.i_crit_edge
  %173 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i189.i = getelementptr inbounds %struct.super_block, ptr %174, i32 0, i32 33
  %175 = ptrtoint ptr %s_fs_info.i.i189.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %s_fs_info.i.i189.i, align 16
  %i_pending_tree.i190.i = getelementptr i8, ptr %inode, i32 984
  %s_cluster_bits.i191.i = getelementptr inbounds %struct.ext4_sb_info, ptr %176, i32 0, i32 12
  %177 = ptrtoint ptr %s_cluster_bits.i191.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %s_cluster_bits.i191.i, align 16
  %shr.i192.i = lshr i32 %and.i, %178
  %179 = ptrtoint ptr %i_pending_tree.i190.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %i_pending_tree.i190.i, align 4
  %tobool.not3.i193.i = icmp eq ptr %180, null
  br i1 %tobool.not3.i193.i, label %if.then44.i.while.end.i212.i_crit_edge, label %if.then44.i.while.body.i196.i_crit_edge

if.then44.i.while.body.i196.i_crit_edge:          ; preds = %if.then44.i
  br label %while.body.i196.i

if.then44.i.while.end.i212.i_crit_edge:           ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i212.i

while.body.i196.i:                                ; preds = %if.end9.i205.i.while.body.i196.i_crit_edge, %if.then44.i.while.body.i196.i_crit_edge
  %181 = phi ptr [ %185, %if.end9.i205.i.while.body.i196.i_crit_edge ], [ %180, %if.then44.i.while.body.i196.i_crit_edge ]
  %lclu4.i194.i = getelementptr inbounds %struct.pending_reservation, ptr %181, i32 0, i32 1
  %182 = ptrtoint ptr %lclu4.i194.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %lclu4.i194.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i192.i, i32 %183)
  %cmp.i195.i = icmp ult i32 %shr.i192.i, %183
  br i1 %cmp.i195.i, label %if.then.i198.i, label %if.else.i200.i

if.then.i198.i:                                   ; preds = %while.body.i196.i
  call void @__sanitizer_cov_trace_pc() #11
  %rb_left.i197.i = getelementptr inbounds %struct.rb_node, ptr %181, i32 0, i32 2
  br label %if.end9.i205.i

if.else.i200.i:                                   ; preds = %while.body.i196.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i192.i, i32 %183)
  %cmp6.i199.i = icmp ugt i32 %shr.i192.i, %183
  br i1 %cmp6.i199.i, label %if.then7.i202.i, label %if.else.i200.i.if.end47.i_crit_edge

if.else.i200.i.if.end47.i_crit_edge:              ; preds = %if.else.i200.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47.i

if.then7.i202.i:                                  ; preds = %if.else.i200.i
  call void @__sanitizer_cov_trace_pc() #11
  %rb_right.i201.i = getelementptr inbounds %struct.rb_node, ptr %181, i32 0, i32 1
  br label %if.end9.i205.i

if.end9.i205.i:                                   ; preds = %if.then7.i202.i, %if.then.i198.i
  %p.1.i203.i = phi ptr [ %rb_left.i197.i, %if.then.i198.i ], [ %rb_right.i201.i, %if.then7.i202.i ]
  %184 = ptrtoint ptr %p.1.i203.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %p.1.i203.i, align 4
  %tobool.not.i204.i = icmp eq ptr %185, null
  br i1 %tobool.not.i204.i, label %while.cond.while.end_crit_edge.i207.i, label %if.end9.i205.i.while.body.i196.i_crit_edge

if.end9.i205.i.while.body.i196.i_crit_edge:       ; preds = %if.end9.i205.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i196.i

while.cond.while.end_crit_edge.i207.i:            ; preds = %if.end9.i205.i
  call void @__sanitizer_cov_trace_pc() #11
  %phi.cast.le.i206.i = ptrtoint ptr %181 to i32
  br label %while.end.i212.i

while.end.i212.i:                                 ; preds = %while.cond.while.end_crit_edge.i207.i, %if.then44.i.while.end.i212.i_crit_edge
  %parent.0.lcssa.i208.i = phi i32 [ %phi.cast.le.i206.i, %while.cond.while.end_crit_edge.i207.i ], [ 0, %if.then44.i.while.end.i212.i_crit_edge ]
  %p.0.lcssa.i209.i = phi ptr [ %p.1.i203.i, %while.cond.while.end_crit_edge.i207.i ], [ %i_pending_tree.i190.i, %if.then44.i.while.end.i212.i_crit_edge ]
  %186 = load ptr, ptr @ext4_pending_cachep, align 4
  %call10.i210.i = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %186, i32 noundef 2592) #9
  %cmp11.i211.i = icmp eq ptr %call10.i210.i, null
  br i1 %cmp11.i211.i, label %while.end.i212.i.if.end47.i_crit_edge, label %if.end13.i216.i

while.end.i212.i.if.end47.i_crit_edge:            ; preds = %while.end.i212.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47.i

if.end13.i216.i:                                  ; preds = %while.end.i212.i
  call void @__sanitizer_cov_trace_pc() #11
  %lclu14.i213.i = getelementptr inbounds %struct.pending_reservation, ptr %call10.i210.i, i32 0, i32 1
  %187 = ptrtoint ptr %lclu14.i213.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %shr.i192.i, ptr %lclu14.i213.i, align 4
  %188 = ptrtoint ptr %call10.i210.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %parent.0.lcssa.i208.i, ptr %call10.i210.i, align 8
  %rb_right.i.i214.i = getelementptr inbounds %struct.rb_node, ptr %call10.i210.i, i32 0, i32 1
  %189 = ptrtoint ptr %rb_right.i.i214.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr null, ptr %rb_right.i.i214.i, align 4
  %rb_left.i.i215.i = getelementptr inbounds %struct.rb_node, ptr %call10.i210.i, i32 0, i32 2
  %190 = ptrtoint ptr %rb_left.i.i215.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr null, ptr %rb_left.i.i215.i, align 8
  %191 = ptrtoint ptr %p.0.lcssa.i209.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr %call10.i210.i, ptr %p.0.lcssa.i209.i, align 4
  call void @rb_insert_color(ptr noundef nonnull %call10.i210.i, ptr noundef %i_pending_tree.i190.i) #9
  br label %if.end47.i

if.else46.i:                                      ; preds = %__es_scan_range.exit187.i.if.else46.i_crit_edge, %__es_find_extent_range.exit474.i.if.else46.i_crit_edge, %land.lhs.true83.i469.i.if.else46.i_crit_edge, %while.body.i462.i.if.else46.i_crit_edge, %out.i451.i.if.else46.i_crit_edge, %if.end62.i418.i.if.else46.i_crit_edge, %if.else32.i.if.else46.i_crit_edge
  %192 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i219.i = getelementptr inbounds %struct.super_block, ptr %193, i32 0, i32 33
  %194 = ptrtoint ptr %s_fs_info.i.i219.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %s_fs_info.i.i219.i, align 16
  %s_cluster_bits.i220.i = getelementptr inbounds %struct.ext4_sb_info, ptr %195, i32 0, i32 12
  %196 = ptrtoint ptr %s_cluster_bits.i220.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %s_cluster_bits.i220.i, align 16
  %shr.i221.i = lshr i32 %and.i, %197
  %i_pending_tree.i.i222.i = getelementptr i8, ptr %inode, i32 984
  %198 = ptrtoint ptr %i_pending_tree.i.i222.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %i_pending_tree.i.i222.i, align 4
  %tobool.not24.i.i223.i = icmp eq ptr %199, null
  br i1 %tobool.not24.i.i223.i, label %if.else46.i.if.end47.i_crit_edge, label %if.else46.i.while.body.i.i227.i_crit_edge

if.else46.i.while.body.i.i227.i_crit_edge:        ; preds = %if.else46.i
  br label %while.body.i.i227.i

if.else46.i.if.end47.i_crit_edge:                 ; preds = %if.else46.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47.i

while.body.i.i227.i:                              ; preds = %if.end13.i.i240.i.while.body.i.i227.i_crit_edge, %if.else46.i.while.body.i.i227.i_crit_edge
  %node.025.i.i224.i = phi ptr [ %node.1.i.i238.i, %if.end13.i.i240.i.while.body.i.i227.i_crit_edge ], [ %199, %if.else46.i.while.body.i.i227.i_crit_edge ]
  %lclu4.i.i225.i = getelementptr inbounds %struct.pending_reservation, ptr %node.025.i.i224.i, i32 0, i32 1
  %200 = ptrtoint ptr %lclu4.i.i225.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %lclu4.i.i225.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %201, i32 %shr.i221.i)
  %cmp.i.i226.i = icmp ugt i32 %201, %shr.i221.i
  br i1 %cmp.i.i226.i, label %if.then.i.i229.i, label %if.else.i.i231.i

if.then.i.i229.i:                                 ; preds = %while.body.i.i227.i
  call void @__sanitizer_cov_trace_pc() #11
  %rb_left.i.i228.i = getelementptr inbounds %struct.rb_node, ptr %node.025.i.i224.i, i32 0, i32 2
  br label %if.end13.sink.split.i.i237.i

if.else.i.i231.i:                                 ; preds = %while.body.i.i227.i
  call void @__sanitizer_cov_trace_cmp4(i32 %201, i32 %shr.i221.i)
  %cmp6.i.i230.i = icmp ult i32 %201, %shr.i221.i
  br i1 %cmp6.i.i230.i, label %if.then7.i.i233.i, label %if.else8.i.i235.i

if.then7.i.i233.i:                                ; preds = %if.else.i.i231.i
  call void @__sanitizer_cov_trace_pc() #11
  %rb_right.i.i232.i = getelementptr inbounds %struct.rb_node, ptr %node.025.i.i224.i, i32 0, i32 1
  br label %if.end13.sink.split.i.i237.i

if.else8.i.i235.i:                                ; preds = %if.else.i.i231.i
  call void @__sanitizer_cov_trace_cmp4(i32 %201, i32 %shr.i221.i)
  %cmp10.i.i234.i = icmp eq i32 %201, %shr.i221.i
  br i1 %cmp10.i.i234.i, label %if.then.i241.i, label %if.else8.i.i235.i.if.end13.i.i240.i_crit_edge

if.else8.i.i235.i.if.end13.i.i240.i_crit_edge:    ; preds = %if.else8.i.i235.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i.i240.i

if.end13.sink.split.i.i237.i:                     ; preds = %if.then7.i.i233.i, %if.then.i.i229.i
  %rb_right.sink.i.i236.i = phi ptr [ %rb_right.i.i232.i, %if.then7.i.i233.i ], [ %rb_left.i.i228.i, %if.then.i.i229.i ]
  %202 = ptrtoint ptr %rb_right.sink.i.i236.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %rb_right.sink.i.i236.i, align 4
  br label %if.end13.i.i240.i

if.end13.i.i240.i:                                ; preds = %if.end13.sink.split.i.i237.i, %if.else8.i.i235.i.if.end13.i.i240.i_crit_edge
  %node.1.i.i238.i = phi ptr [ %node.025.i.i224.i, %if.else8.i.i235.i.if.end13.i.i240.i_crit_edge ], [ %203, %if.end13.sink.split.i.i237.i ]
  %tobool.not.i.i239.i = icmp eq ptr %node.1.i.i238.i, null
  br i1 %tobool.not.i.i239.i, label %if.end13.i.i240.i.if.end47.i_crit_edge, label %if.end13.i.i240.i.while.body.i.i227.i_crit_edge

if.end13.i.i240.i.while.body.i.i227.i_crit_edge:  ; preds = %if.end13.i.i240.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i227.i

if.end13.i.i240.i.if.end47.i_crit_edge:           ; preds = %if.end13.i.i240.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47.i

if.then.i241.i:                                   ; preds = %if.else8.i.i235.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @rb_erase(ptr noundef nonnull %node.025.i.i224.i, ptr noundef %i_pending_tree.i.i222.i) #9
  %204 = load ptr, ptr @ext4_pending_cachep, align 4
  call void @kmem_cache_free(ptr noundef %204, ptr noundef nonnull %node.025.i.i224.i) #9
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.then.i241.i, %if.end13.i.i240.i.if.end47.i_crit_edge, %if.else46.i.if.end47.i_crit_edge, %if.end13.i216.i, %while.end.i212.i.if.end47.i_crit_edge, %if.else.i200.i.if.end47.i_crit_edge
  %205 = ptrtoint ptr %s_cluster_ratio.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %s_cluster_ratio.i, align 4
  %neg50.i = sub i32 0, %206
  %and51.i = and i32 %sub, %neg50.i
  %add53.i = add i32 %and51.i, %206
  %sub54.i = add i32 %add53.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %add53.i, i32 %add)
  %cmp55.not.i = icmp eq i32 %add53.i, %add
  br i1 %cmp55.not.i, label %if.end47.i.if.else64.i_crit_edge, label %if.then56.i

if.end47.i.if.else64.i_crit_edge:                 ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else64.i

if.then56.i:                                      ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub54.i, i32 %add)
  %cmp20.i475.i = icmp ult i32 %sub54.i, %add
  br i1 %cmp20.i475.i, label %do.end36.i476.i, label %if.then56.i.if.end42.i483.i_crit_edge, !prof !107

if.then56.i.if.end42.i483.i_crit_edge:            ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42.i483.i

do.end36.i476.i:                                  ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 266, i32 noundef 9, ptr noundef null) #9
  br label %if.end42.i483.i

if.end42.i483.i:                                  ; preds = %do.end36.i476.i, %if.then56.i.if.end42.i483.i_crit_edge
  %i_es_tree.i477.i = getelementptr i8, ptr %inode, i32 904
  %cache_es.i481.i = getelementptr i8, ptr %inode, i32 908
  %207 = ptrtoint ptr %cache_es.i481.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %cache_es.i481.i, align 4
  %tobool51.not.i482.i = icmp eq ptr %208, null
  br i1 %tobool51.not.i482.i, label %if.end42.i483.i.if.end62.i494.i_crit_edge, label %if.then52.i486.i

if.end42.i483.i.if.end62.i494.i_crit_edge:        ; preds = %if.end42.i483.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62.i494.i

if.then52.i486.i:                                 ; preds = %if.end42.i483.i
  %es_lblk54.i484.i = getelementptr inbounds %struct.extent_status, ptr %208, i32 0, i32 1
  %209 = ptrtoint ptr %es_lblk54.i484.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %es_lblk54.i484.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %210, i32 %add)
  %cmp55.not.i485.i = icmp ugt i32 %210, %add
  br i1 %cmp55.not.i485.i, label %if.then52.i486.i.if.end62.i494.i_crit_edge, label %land.lhs.true.i491.i

if.then52.i486.i.if.end62.i494.i_crit_edge:       ; preds = %if.then52.i486.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62.i494.i

land.lhs.true.i491.i:                             ; preds = %if.then52.i486.i
  %es_len57.i487.i = getelementptr inbounds %struct.extent_status, ptr %208, i32 0, i32 2
  %211 = ptrtoint ptr %es_len57.i487.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %es_len57.i487.i, align 8
  %add.i488.i = add i32 %210, -1
  %sub.i489.i = add i32 %add.i488.i, %212
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i489.i, i32 %add)
  %cmp58.not.i490.i = icmp ult i32 %sub.i489.i, %add
  br i1 %cmp58.not.i490.i, label %land.lhs.true.i491.i.if.end62.i494.i_crit_edge, label %land.lhs.true.i491.i.land.lhs.true64.i531.i_crit_edge

land.lhs.true.i491.i.land.lhs.true64.i531.i_crit_edge: ; preds = %land.lhs.true.i491.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true64.i531.i

land.lhs.true.i491.i.if.end62.i494.i_crit_edge:   ; preds = %land.lhs.true.i491.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62.i494.i

if.end62.i494.i:                                  ; preds = %land.lhs.true.i491.i.if.end62.i494.i_crit_edge, %if.then52.i486.i.if.end62.i494.i_crit_edge, %if.end42.i483.i.if.end62.i494.i_crit_edge
  %213 = ptrtoint ptr %i_es_tree.i477.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %node.050.i.i492.i = load ptr, ptr %i_es_tree.i477.i, align 4
  %tobool.not51.i.i493.i = icmp eq ptr %node.050.i.i492.i, null
  br i1 %tobool.not51.i.i493.i, label %if.end62.i494.i.if.else64.i_crit_edge, label %if.end62.i494.i.while.body.i.i498.i_crit_edge

if.end62.i494.i.while.body.i.i498.i_crit_edge:    ; preds = %if.end62.i494.i
  br label %while.body.i.i498.i

if.end62.i494.i.if.else64.i_crit_edge:            ; preds = %if.end62.i494.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else64.i

while.body.i.i498.i:                              ; preds = %while.body.i.i498.i.backedge, %if.end62.i494.i.while.body.i.i498.i_crit_edge
  %node.052.i.i495.i = phi ptr [ %node.052.i.i495.i.be, %while.body.i.i498.i.backedge ], [ %node.050.i.i492.i, %if.end62.i494.i.while.body.i.i498.i_crit_edge ]
  %es_lblk.i.i496.i = getelementptr inbounds %struct.extent_status, ptr %node.052.i.i495.i, i32 0, i32 1
  %214 = ptrtoint ptr %es_lblk.i.i496.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %es_lblk.i.i496.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %215, i32 %add)
  %cmp.i.i497.i = icmp ugt i32 %215, %add
  br i1 %cmp.i.i497.i, label %if.end4.i.i510.i, label %if.else.i.i502.i

if.else.i.i502.i:                                 ; preds = %while.body.i.i498.i
  %es_len.i.i.i499.i = getelementptr inbounds %struct.extent_status, ptr %node.052.i.i495.i, i32 0, i32 2
  %216 = ptrtoint ptr %es_len.i.i.i499.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %es_len.i.i.i499.i, align 8
  %add.i.i.i500.i = add i32 %217, %215
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i500.i, i32 %215)
  %cmp.i.i.i501.i = icmp ult i32 %add.i.i.i500.i, %215
  br i1 %cmp.i.i.i501.i, label %do.body3.i.i.i503.i, label %ext4_es_end.exit.i.i506.i, !prof !107

do.body3.i.i.i503.i:                              ; preds = %if.else.i.i502.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/extents_status.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 202, 0\0A.popsection", ""() #9, !srcloc !108
  unreachable

ext4_es_end.exit.i.i506.i:                        ; preds = %if.else.i.i502.i
  %sub.i.i.i504.i = add i32 %add.i.i.i500.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i504.i, i32 %add)
  %cmp1.i.i505.i = icmp ult i32 %sub.i.i.i504.i, %add
  br i1 %cmp1.i.i505.i, label %if.end4.i.thread.i516.i, label %ext4_es_end.exit.i.i506.i.land.lhs.true64.i531.i_crit_edge

ext4_es_end.exit.i.i506.i.land.lhs.true64.i531.i_crit_edge: ; preds = %ext4_es_end.exit.i.i506.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true64.i531.i

if.end4.i.i510.i:                                 ; preds = %while.body.i.i498.i
  %rb_left.i.i507.i = getelementptr inbounds %struct.rb_node, ptr %node.052.i.i495.i, i32 0, i32 2
  %218 = ptrtoint ptr %rb_left.i.i507.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %node.0.i.i508.i = load ptr, ptr %rb_left.i.i507.i, align 4
  %tobool.not.i.i509.i = icmp eq ptr %node.0.i.i508.i, null
  br i1 %tobool.not.i.i509.i, label %if.end4.i.i510.i.land.lhs.true64.i531.i_crit_edge, label %if.end4.i.i510.i.while.body.i.i498.i.backedge_crit_edge

if.end4.i.i510.i.while.body.i.i498.i.backedge_crit_edge: ; preds = %if.end4.i.i510.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i498.i.backedge

if.end4.i.i510.i.land.lhs.true64.i531.i_crit_edge: ; preds = %if.end4.i.i510.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true64.i531.i

if.end4.i.thread.i516.i:                          ; preds = %ext4_es_end.exit.i.i506.i
  %rb_right.i.i513.i = getelementptr inbounds %struct.rb_node, ptr %node.052.i.i495.i, i32 0, i32 1
  %219 = ptrtoint ptr %rb_right.i.i513.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %node.0.i127.i514.i = load ptr, ptr %rb_right.i.i513.i, align 4
  %tobool.not.i128.i515.i = icmp eq ptr %node.0.i127.i514.i, null
  br i1 %tobool.not.i128.i515.i, label %out.i527.i, label %if.end4.i.thread.i516.i.while.body.i.i498.i.backedge_crit_edge

if.end4.i.thread.i516.i.while.body.i.i498.i.backedge_crit_edge: ; preds = %if.end4.i.thread.i516.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i498.i.backedge

while.body.i.i498.i.backedge:                     ; preds = %if.end4.i.thread.i516.i.while.body.i.i498.i.backedge_crit_edge, %if.end4.i.i510.i.while.body.i.i498.i.backedge_crit_edge
  %node.052.i.i495.i.be = phi ptr [ %node.0.i.i508.i, %if.end4.i.i510.i.while.body.i.i498.i.backedge_crit_edge ], [ %node.0.i127.i514.i, %if.end4.i.thread.i516.i.while.body.i.i498.i.backedge_crit_edge ]
  br label %while.body.i.i498.i

out.i527.i:                                       ; preds = %if.end4.i.thread.i516.i
  %call16.i.i525.i = call ptr @rb_next(ptr noundef nonnull %node.052.i.i495.i) #9
  %tobool63.not.i526.i = icmp eq ptr %call16.i.i525.i, null
  br i1 %tobool63.not.i526.i, label %out.i527.i.if.else64.i_crit_edge, label %out.i527.i.land.lhs.true64.i531.i_crit_edge

out.i527.i.land.lhs.true64.i531.i_crit_edge:      ; preds = %out.i527.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true64.i531.i

out.i527.i.if.else64.i_crit_edge:                 ; preds = %out.i527.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else64.i

land.lhs.true64.i531.i:                           ; preds = %out.i527.i.land.lhs.true64.i531.i_crit_edge, %if.end4.i.i510.i.land.lhs.true64.i531.i_crit_edge, %ext4_es_end.exit.i.i506.i.land.lhs.true64.i531.i_crit_edge, %land.lhs.true.i491.i.land.lhs.true64.i531.i_crit_edge
  %es1.0131.i528.i = phi ptr [ %call16.i.i525.i, %out.i527.i.land.lhs.true64.i531.i_crit_edge ], [ %208, %land.lhs.true.i491.i.land.lhs.true64.i531.i_crit_edge ], [ %node.052.i.i495.i, %ext4_es_end.exit.i.i506.i.land.lhs.true64.i531.i_crit_edge ], [ %node.052.i.i495.i, %if.end4.i.i510.i.land.lhs.true64.i531.i_crit_edge ]
  %es_pblk.i.i.i572.i = getelementptr inbounds %struct.extent_status, ptr %es1.0131.i528.i, i32 0, i32 3
  %220 = ptrtoint ptr %es_pblk.i.i.i572.i to i32
  call void @__asan_load8_noabort(i32 %220)
  %221 = load i64, ptr %es_pblk.i.i.i572.i, align 8
  %222 = and i64 %221, 3458764513820540928
  call void @__sanitizer_cov_trace_const_cmp8(i64 2305843009213693952, i64 %222)
  %.not606.i = icmp eq i64 %222, 2305843009213693952
  br i1 %.not606.i, label %land.lhs.true64.i531.i.land.lhs.true83.i545.i_crit_edge, label %land.lhs.true64.i531.i.while.cond.i535.i_crit_edge

land.lhs.true64.i531.i.while.cond.i535.i_crit_edge: ; preds = %land.lhs.true64.i531.i
  br label %while.cond.i535.i

land.lhs.true64.i531.i.land.lhs.true83.i545.i_crit_edge: ; preds = %land.lhs.true64.i531.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true83.i545.i

while.cond.i535.i:                                ; preds = %if.end76.i541.i.while.cond.i535.i_crit_edge, %land.lhs.true64.i531.i.while.cond.i535.i_crit_edge
  %es1.1.i532.i = phi ptr [ %call68.i533.i, %if.end76.i541.i.while.cond.i535.i_crit_edge ], [ %es1.0131.i528.i, %land.lhs.true64.i531.i.while.cond.i535.i_crit_edge ]
  %call68.i533.i = call ptr @rb_next(ptr noundef nonnull %es1.1.i532.i) #9
  %cmp69.not.i534.i = icmp eq ptr %call68.i533.i, null
  br i1 %cmp69.not.i534.i, label %while.cond.i535.i.land.lhs.true83.i545.i_crit_edge, label %while.body.i538.i

while.cond.i535.i.land.lhs.true83.i545.i_crit_edge: ; preds = %while.cond.i535.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true83.i545.i

while.body.i538.i:                                ; preds = %while.cond.i535.i
  %es_lblk73.i536.i = getelementptr inbounds %struct.extent_status, ptr %call68.i533.i, i32 0, i32 1
  %223 = ptrtoint ptr %es_lblk73.i536.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %es_lblk73.i536.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %224, i32 %sub54.i)
  %cmp74.i537.i = icmp ugt i32 %224, %sub54.i
  br i1 %cmp74.i537.i, label %while.body.i538.i.if.else64.i_crit_edge, label %if.end76.i541.i

while.body.i538.i.if.else64.i_crit_edge:          ; preds = %while.body.i538.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else64.i

if.end76.i541.i:                                  ; preds = %while.body.i538.i
  %es_pblk.i.i.i570.i = getelementptr inbounds %struct.extent_status, ptr %call68.i533.i, i32 0, i32 3
  %225 = ptrtoint ptr %es_pblk.i.i.i570.i to i32
  call void @__asan_load8_noabort(i32 %225)
  %226 = load i64, ptr %es_pblk.i.i.i570.i, align 8
  %227 = and i64 %226, 3458764513820540928
  %.not610.i = icmp eq i64 %227, 2305843009213693952
  br i1 %.not610.i, label %if.end76.i541.i.land.lhs.true83.i545.i_crit_edge, label %if.end76.i541.i.while.cond.i535.i_crit_edge

if.end76.i541.i.while.cond.i535.i_crit_edge:      ; preds = %if.end76.i541.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i535.i

if.end76.i541.i.land.lhs.true83.i545.i_crit_edge: ; preds = %if.end76.i541.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true83.i545.i

land.lhs.true83.i545.i:                           ; preds = %if.end76.i541.i.land.lhs.true83.i545.i_crit_edge, %while.cond.i535.i.land.lhs.true83.i545.i_crit_edge, %land.lhs.true64.i531.i.land.lhs.true83.i545.i_crit_edge
  %es1.2.i542.i = phi ptr [ %es1.0131.i528.i, %land.lhs.true64.i531.i.land.lhs.true83.i545.i_crit_edge ], [ %es1.1.i532.i, %while.cond.i535.i.land.lhs.true83.i545.i_crit_edge ], [ %call68.i533.i, %if.end76.i541.i.land.lhs.true83.i545.i_crit_edge ]
  %es_pblk.i.i.i568.i = getelementptr inbounds %struct.extent_status, ptr %es1.2.i542.i, i32 0, i32 3
  %228 = ptrtoint ptr %es_pblk.i.i.i568.i to i32
  call void @__asan_load8_noabort(i32 %228)
  %229 = load i64, ptr %es_pblk.i.i.i568.i, align 8
  %230 = and i64 %229, 3458764513820540928
  call void @__sanitizer_cov_trace_const_cmp8(i64 2305843009213693952, i64 %230)
  %.not608.i = icmp eq i64 %230, 2305843009213693952
  br i1 %.not608.i, label %__es_find_extent_range.exit550.i, label %land.lhs.true83.i545.i.if.else64.i_crit_edge

land.lhs.true83.i545.i.if.else64.i_crit_edge:     ; preds = %land.lhs.true83.i545.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else64.i

__es_find_extent_range.exit550.i:                 ; preds = %land.lhs.true83.i545.i
  %231 = ptrtoint ptr %cache_es.i481.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store ptr %es1.2.i542.i, ptr %cache_es.i481.i, align 4
  %es_lblk88.i546.i = getelementptr inbounds %struct.extent_status, ptr %es1.2.i542.i, i32 0, i32 1
  %232 = ptrtoint ptr %es_lblk88.i546.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %es_lblk88.i546.i, align 4
  %es_len90.i547.i = getelementptr inbounds %struct.extent_status, ptr %es1.2.i542.i, i32 0, i32 2
  %234 = ptrtoint ptr %es_len90.i547.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %es_len90.i547.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %235)
  %cmp.i245.i = icmp eq i32 %235, 0
  br i1 %cmp.i245.i, label %__es_find_extent_range.exit550.i.if.else64.i_crit_edge, label %if.else.i251.i

__es_find_extent_range.exit550.i.if.else64.i_crit_edge: ; preds = %__es_find_extent_range.exit550.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else64.i

if.else.i251.i:                                   ; preds = %__es_find_extent_range.exit550.i
  call void @__sanitizer_cov_trace_cmp4(i32 %233, i32 %add)
  %cmp1.not.i247.i = icmp ule i32 %233, %add
  %add.i248.i = add i32 %235, %233
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i248.i, i32 %add)
  %cmp4.i249.i = icmp ugt i32 %add.i248.i, %add
  %or.cond.i250.i = select i1 %cmp1.not.i247.i, i1 %cmp4.i249.i, i1 false
  br i1 %or.cond.i250.i, label %if.else.i251.i.if.then62.i_crit_edge, label %__es_scan_range.exit257.i

if.else.i251.i.if.then62.i_crit_edge:             ; preds = %if.else.i251.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then62.i

__es_scan_range.exit257.i:                        ; preds = %if.else.i251.i
  call void @__sanitizer_cov_trace_cmp4(i32 %233, i32 %add)
  %cmp8.not.i252.i = icmp uge i32 %233, %add
  call void @__sanitizer_cov_trace_cmp4(i32 %233, i32 %sub54.i)
  %cmp11.not.i253.i = icmp ule i32 %233, %sub54.i
  %not.or.cond20.i254.i = and i1 %cmp8.not.i252.i, %cmp11.not.i253.i
  br i1 %not.or.cond20.i254.i, label %__es_scan_range.exit257.i.if.then62.i_crit_edge, label %__es_scan_range.exit257.i.if.else64.i_crit_edge

__es_scan_range.exit257.i.if.else64.i_crit_edge:  ; preds = %__es_scan_range.exit257.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else64.i

__es_scan_range.exit257.i.if.then62.i_crit_edge:  ; preds = %__es_scan_range.exit257.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then62.i

if.then62.i:                                      ; preds = %__es_scan_range.exit257.i.if.then62.i_crit_edge, %if.else.i251.i.if.then62.i_crit_edge
  %236 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i259.i = getelementptr inbounds %struct.super_block, ptr %237, i32 0, i32 33
  %238 = ptrtoint ptr %s_fs_info.i.i259.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %s_fs_info.i.i259.i, align 16
  %i_pending_tree.i260.i = getelementptr i8, ptr %inode, i32 984
  %s_cluster_bits.i261.i = getelementptr inbounds %struct.ext4_sb_info, ptr %239, i32 0, i32 12
  %240 = ptrtoint ptr %s_cluster_bits.i261.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %s_cluster_bits.i261.i, align 16
  %shr.i262.i = lshr i32 %sub54.i, %241
  %242 = ptrtoint ptr %i_pending_tree.i260.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %i_pending_tree.i260.i, align 4
  %tobool.not3.i263.i = icmp eq ptr %243, null
  br i1 %tobool.not3.i263.i, label %if.then62.i.while.end.i282.i_crit_edge, label %if.then62.i.while.body.i266.i_crit_edge

if.then62.i.while.body.i266.i_crit_edge:          ; preds = %if.then62.i
  br label %while.body.i266.i

if.then62.i.while.end.i282.i_crit_edge:           ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i282.i

while.body.i266.i:                                ; preds = %if.end9.i275.i.while.body.i266.i_crit_edge, %if.then62.i.while.body.i266.i_crit_edge
  %244 = phi ptr [ %248, %if.end9.i275.i.while.body.i266.i_crit_edge ], [ %243, %if.then62.i.while.body.i266.i_crit_edge ]
  %lclu4.i264.i = getelementptr inbounds %struct.pending_reservation, ptr %244, i32 0, i32 1
  %245 = ptrtoint ptr %lclu4.i264.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %lclu4.i264.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i262.i, i32 %246)
  %cmp.i265.i = icmp ult i32 %shr.i262.i, %246
  br i1 %cmp.i265.i, label %if.then.i268.i, label %if.else.i270.i

if.then.i268.i:                                   ; preds = %while.body.i266.i
  call void @__sanitizer_cov_trace_pc() #11
  %rb_left.i267.i = getelementptr inbounds %struct.rb_node, ptr %244, i32 0, i32 2
  br label %if.end9.i275.i

if.else.i270.i:                                   ; preds = %while.body.i266.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i262.i, i32 %246)
  %cmp6.i269.i = icmp ugt i32 %shr.i262.i, %246
  br i1 %cmp6.i269.i, label %if.then7.i272.i, label %if.else.i270.i.error_crit_edge

if.else.i270.i.error_crit_edge:                   ; preds = %if.else.i270.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.then7.i272.i:                                  ; preds = %if.else.i270.i
  call void @__sanitizer_cov_trace_pc() #11
  %rb_right.i271.i = getelementptr inbounds %struct.rb_node, ptr %244, i32 0, i32 1
  br label %if.end9.i275.i

if.end9.i275.i:                                   ; preds = %if.then7.i272.i, %if.then.i268.i
  %p.1.i273.i = phi ptr [ %rb_left.i267.i, %if.then.i268.i ], [ %rb_right.i271.i, %if.then7.i272.i ]
  %247 = ptrtoint ptr %p.1.i273.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %p.1.i273.i, align 4
  %tobool.not.i274.i = icmp eq ptr %248, null
  br i1 %tobool.not.i274.i, label %while.cond.while.end_crit_edge.i277.i, label %if.end9.i275.i.while.body.i266.i_crit_edge

if.end9.i275.i.while.body.i266.i_crit_edge:       ; preds = %if.end9.i275.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i266.i

while.cond.while.end_crit_edge.i277.i:            ; preds = %if.end9.i275.i
  call void @__sanitizer_cov_trace_pc() #11
  %phi.cast.le.i276.i = ptrtoint ptr %244 to i32
  br label %while.end.i282.i

while.end.i282.i:                                 ; preds = %while.cond.while.end_crit_edge.i277.i, %if.then62.i.while.end.i282.i_crit_edge
  %parent.0.lcssa.i278.i = phi i32 [ %phi.cast.le.i276.i, %while.cond.while.end_crit_edge.i277.i ], [ 0, %if.then62.i.while.end.i282.i_crit_edge ]
  %p.0.lcssa.i279.i = phi ptr [ %p.1.i273.i, %while.cond.while.end_crit_edge.i277.i ], [ %i_pending_tree.i260.i, %if.then62.i.while.end.i282.i_crit_edge ]
  %249 = load ptr, ptr @ext4_pending_cachep, align 4
  %call10.i280.i = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %249, i32 noundef 2592) #9
  %cmp11.i281.i = icmp eq ptr %call10.i280.i, null
  br i1 %cmp11.i281.i, label %while.end.i282.i.error_crit_edge, label %if.end13.i286.i

while.end.i282.i.error_crit_edge:                 ; preds = %while.end.i282.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end13.i286.i:                                  ; preds = %while.end.i282.i
  call void @__sanitizer_cov_trace_pc() #11
  %lclu14.i283.i = getelementptr inbounds %struct.pending_reservation, ptr %call10.i280.i, i32 0, i32 1
  %250 = ptrtoint ptr %lclu14.i283.i to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 %shr.i262.i, ptr %lclu14.i283.i, align 4
  %251 = ptrtoint ptr %call10.i280.i to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 %parent.0.lcssa.i278.i, ptr %call10.i280.i, align 8
  %rb_right.i.i284.i = getelementptr inbounds %struct.rb_node, ptr %call10.i280.i, i32 0, i32 1
  %252 = ptrtoint ptr %rb_right.i.i284.i to i32
  call void @__asan_store4_noabort(i32 %252)
  store ptr null, ptr %rb_right.i.i284.i, align 4
  %rb_left.i.i285.i = getelementptr inbounds %struct.rb_node, ptr %call10.i280.i, i32 0, i32 2
  %253 = ptrtoint ptr %rb_left.i.i285.i to i32
  call void @__asan_store4_noabort(i32 %253)
  store ptr null, ptr %rb_left.i.i285.i, align 8
  %254 = ptrtoint ptr %p.0.lcssa.i279.i to i32
  call void @__asan_store4_noabort(i32 %254)
  store ptr %call10.i280.i, ptr %p.0.lcssa.i279.i, align 4
  call void @rb_insert_color(ptr noundef nonnull %call10.i280.i, ptr noundef %i_pending_tree.i260.i) #9
  br label %error

if.else64.i:                                      ; preds = %__es_scan_range.exit257.i.if.else64.i_crit_edge, %__es_find_extent_range.exit550.i.if.else64.i_crit_edge, %land.lhs.true83.i545.i.if.else64.i_crit_edge, %while.body.i538.i.if.else64.i_crit_edge, %out.i527.i.if.else64.i_crit_edge, %if.end62.i494.i.if.else64.i_crit_edge, %if.end47.i.if.else64.i_crit_edge
  %255 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i289.i = getelementptr inbounds %struct.super_block, ptr %256, i32 0, i32 33
  %257 = ptrtoint ptr %s_fs_info.i.i289.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %s_fs_info.i.i289.i, align 16
  %s_cluster_bits.i290.i = getelementptr inbounds %struct.ext4_sb_info, ptr %258, i32 0, i32 12
  %259 = ptrtoint ptr %s_cluster_bits.i290.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %s_cluster_bits.i290.i, align 16
  %shr.i291.i = lshr i32 %sub54.i, %260
  %i_pending_tree.i.i292.i = getelementptr i8, ptr %inode, i32 984
  %261 = ptrtoint ptr %i_pending_tree.i.i292.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %i_pending_tree.i.i292.i, align 4
  %tobool.not24.i.i293.i = icmp eq ptr %262, null
  br i1 %tobool.not24.i.i293.i, label %if.else64.i.error_crit_edge, label %if.else64.i.while.body.i.i297.i_crit_edge

if.else64.i.while.body.i.i297.i_crit_edge:        ; preds = %if.else64.i
  br label %while.body.i.i297.i

if.else64.i.error_crit_edge:                      ; preds = %if.else64.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

while.body.i.i297.i:                              ; preds = %if.end13.i.i310.i.while.body.i.i297.i_crit_edge, %if.else64.i.while.body.i.i297.i_crit_edge
  %node.025.i.i294.i = phi ptr [ %node.1.i.i308.i, %if.end13.i.i310.i.while.body.i.i297.i_crit_edge ], [ %262, %if.else64.i.while.body.i.i297.i_crit_edge ]
  %lclu4.i.i295.i = getelementptr inbounds %struct.pending_reservation, ptr %node.025.i.i294.i, i32 0, i32 1
  %263 = ptrtoint ptr %lclu4.i.i295.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %lclu4.i.i295.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %264, i32 %shr.i291.i)
  %cmp.i.i296.i = icmp ugt i32 %264, %shr.i291.i
  br i1 %cmp.i.i296.i, label %if.then.i.i299.i, label %if.else.i.i301.i

if.then.i.i299.i:                                 ; preds = %while.body.i.i297.i
  call void @__sanitizer_cov_trace_pc() #11
  %rb_left.i.i298.i = getelementptr inbounds %struct.rb_node, ptr %node.025.i.i294.i, i32 0, i32 2
  br label %if.end13.sink.split.i.i307.i

if.else.i.i301.i:                                 ; preds = %while.body.i.i297.i
  call void @__sanitizer_cov_trace_cmp4(i32 %264, i32 %shr.i291.i)
  %cmp6.i.i300.i = icmp ult i32 %264, %shr.i291.i
  br i1 %cmp6.i.i300.i, label %if.then7.i.i303.i, label %if.else8.i.i305.i

if.then7.i.i303.i:                                ; preds = %if.else.i.i301.i
  call void @__sanitizer_cov_trace_pc() #11
  %rb_right.i.i302.i = getelementptr inbounds %struct.rb_node, ptr %node.025.i.i294.i, i32 0, i32 1
  br label %if.end13.sink.split.i.i307.i

if.else8.i.i305.i:                                ; preds = %if.else.i.i301.i
  call void @__sanitizer_cov_trace_cmp4(i32 %264, i32 %shr.i291.i)
  %cmp10.i.i304.i = icmp eq i32 %264, %shr.i291.i
  br i1 %cmp10.i.i304.i, label %if.then.i311.i, label %if.else8.i.i305.i.if.end13.i.i310.i_crit_edge

if.else8.i.i305.i.if.end13.i.i310.i_crit_edge:    ; preds = %if.else8.i.i305.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i.i310.i

if.end13.sink.split.i.i307.i:                     ; preds = %if.then7.i.i303.i, %if.then.i.i299.i
  %rb_right.sink.i.i306.i = phi ptr [ %rb_right.i.i302.i, %if.then7.i.i303.i ], [ %rb_left.i.i298.i, %if.then.i.i299.i ]
  %265 = ptrtoint ptr %rb_right.sink.i.i306.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %rb_right.sink.i.i306.i, align 4
  br label %if.end13.i.i310.i

if.end13.i.i310.i:                                ; preds = %if.end13.sink.split.i.i307.i, %if.else8.i.i305.i.if.end13.i.i310.i_crit_edge
  %node.1.i.i308.i = phi ptr [ %node.025.i.i294.i, %if.else8.i.i305.i.if.end13.i.i310.i_crit_edge ], [ %266, %if.end13.sink.split.i.i307.i ]
  %tobool.not.i.i309.i = icmp eq ptr %node.1.i.i308.i, null
  br i1 %tobool.not.i.i309.i, label %if.end13.i.i310.i.error_crit_edge, label %if.end13.i.i310.i.while.body.i.i297.i_crit_edge

if.end13.i.i310.i.while.body.i.i297.i_crit_edge:  ; preds = %if.end13.i.i310.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i297.i

if.end13.i.i310.i.error_crit_edge:                ; preds = %if.end13.i.i310.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.then.i311.i:                                   ; preds = %if.else8.i.i305.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @rb_erase(ptr noundef nonnull %node.025.i.i294.i, ptr noundef %i_pending_tree.i.i292.i) #9
  %267 = load ptr, ptr @ext4_pending_cachep, align 4
  call void @kmem_cache_free(ptr noundef %267, ptr noundef nonnull %node.025.i.i294.i) #9
  br label %error

error:                                            ; preds = %if.then.i311.i, %if.end13.i.i310.i.error_crit_edge, %if.else64.i.error_crit_edge, %if.end13.i286.i, %while.end.i282.i.error_crit_edge, %if.else.i270.i.error_crit_edge, %if.then.i172.i, %if.end13.i.i.i.error_crit_edge, %if.else29.i.error_crit_edge, %if.end13.i164.i, %while.end.i160.i.error_crit_edge, %if.else.i148.i.error_crit_edge, %if.end13.i.i, %while.end.i.i.error_crit_edge, %if.else.i120.i.error_crit_edge, %land.lhs.true77.error_crit_edge, %if.end74.error_crit_edge, %if.end48.error_crit_edge
  %err.1 = phi i32 [ %call50, %if.end48.error_crit_edge ], [ %err.0, %land.lhs.true77.error_crit_edge ], [ %err.0, %if.end74.error_crit_edge ], [ %err.0, %while.end.i.i.error_crit_edge ], [ %err.0, %if.end13.i.i ], [ %err.0, %while.end.i160.i.error_crit_edge ], [ %err.0, %if.end13.i164.i ], [ %err.0, %if.else29.i.error_crit_edge ], [ %err.0, %if.then.i172.i ], [ %err.0, %while.end.i282.i.error_crit_edge ], [ %err.0, %if.end13.i286.i ], [ %err.0, %if.else64.i.error_crit_edge ], [ %err.0, %if.then.i311.i ], [ %err.0, %if.end13.i.i.i.error_crit_edge ], [ %err.0, %if.else.i148.i.error_crit_edge ], [ %err.0, %if.else.i120.i.error_crit_edge ], [ %err.0, %if.end13.i.i310.i.error_crit_edge ], [ %err.0, %if.else.i270.i.error_crit_edge ]
  call void @_raw_write_unlock(ptr noundef %i_es_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %error, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %error ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %newes) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_warning(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ext4_es_insert_extent(ptr noundef %inode, ptr noundef %es) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_es_insert_extent, i32 0, i32 1), ptr blockaddress(@trace_ext4_es_insert_extent, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !101

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !91) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !102

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !91) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !112
  %call42 = tail call i32 @__traceiter_ext4_es_insert_extent(ptr noundef null, ptr noundef %inode, ptr noundef %es) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !113
  %13 = tail call i32 @llvm.read_register.i32(metadata !91) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !91) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !102

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !91) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !105
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_es_insert_extent, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_es_insert_extent, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ext4_es_insert_extent.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_ext4_es_insert_extent.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 2159, ptr noundef nonnull @.str.16) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !106
  %31 = tail call i32 @llvm.read_register.i32(metadata !91) #9
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
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__es_remove_extent(ptr noundef %inode, i32 noundef %lblk, i32 noundef %end, ptr noundef writeonly %reserved) unnamed_addr #2 align 64 {
entry:
  %orig_es = alloca %struct.extent_status, align 8
  %rc = alloca %struct.rsvd_count, align 4
  %newes = alloca %struct.extent_status, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %inode, i32 -464
  %i_es_tree = getelementptr i8, ptr %inode, i32 904
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %orig_es) #9
  %0 = call ptr @memset(ptr %orig_es, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %rc) #9
  %1 = call ptr @memset(ptr %rc, i32 255, i32 28)
  %cmp = icmp eq ptr %reserved, null
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 17
  %6 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_mount_opt, align 4
  %and = and i32 %7, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %count_reserved.0.off0 = phi i1 [ false, %if.then ], [ true, %lor.lhs.false.if.end_crit_edge ]
  %8 = ptrtoint ptr %i_es_tree to i32
  call void @__asan_load4_noabort(i32 %8)
  %node.050.i442 = load ptr, ptr %i_es_tree, align 4
  %tobool.not51.i443 = icmp eq ptr %node.050.i442, null
  br i1 %tobool.not51.i443, label %if.end.cleanup163_crit_edge, label %while.body.i.preheader.lr.ph

if.end.cleanup163_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup163

while.body.i.preheader.lr.ph:                     ; preds = %if.end
  %cache_es = getelementptr i8, ptr %inode, i32 908
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %first_do_lblk_found.i = getelementptr inbounds %struct.rsvd_count, ptr %rc, i32 0, i32 1
  %9 = getelementptr inbounds %struct.rsvd_count, ptr %rc, i32 0, i32 4
  %partial.i = getelementptr inbounds %struct.rsvd_count, ptr %rc, i32 0, i32 5
  %es_lblk12 = getelementptr inbounds %struct.extent_status, ptr %orig_es, i32 0, i32 1
  %es_len13 = getelementptr inbounds %struct.extent_status, ptr %orig_es, i32 0, i32 2
  %es_pblk14 = getelementptr inbounds %struct.extent_status, ptr %orig_es, i32 0, i32 3
  %add = add nuw i32 %end, 1
  %es_lblk34 = getelementptr inbounds %struct.extent_status, ptr %newes, i32 0, i32 1
  %es_len35 = getelementptr inbounds %struct.extent_status, ptr %newes, i32 0, i32 2
  %es_pblk.i284 = getelementptr inbounds %struct.extent_status, ptr %newes, i32 0, i32 3
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.backedge, %while.body.i.preheader.lr.ph
  %node.052.i = phi ptr [ %node.050.i442, %while.body.i.preheader.lr.ph ], [ %node.052.i.be, %while.body.i.backedge ]
  %es_lblk.i = getelementptr inbounds %struct.extent_status, ptr %node.052.i, i32 0, i32 1
  %10 = ptrtoint ptr %es_lblk.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %es_lblk.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %lblk)
  %cmp.i = icmp ugt i32 %11, %lblk
  br i1 %cmp.i, label %if.end4.i, label %if.else.i

if.else.i:                                        ; preds = %while.body.i
  %es_len.i.i = getelementptr inbounds %struct.extent_status, ptr %node.052.i, i32 0, i32 2
  %12 = ptrtoint ptr %es_len.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %es_len.i.i, align 8
  %add.i.i = add i32 %13, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %11)
  %cmp.i.i = icmp ult i32 %add.i.i, %11
  br i1 %cmp.i.i, label %do.body3.i.i, label %ext4_es_end.exit.i, !prof !107

do.body3.i.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/extents_status.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 202, 0\0A.popsection", ""() #9, !srcloc !108
  unreachable

ext4_es_end.exit.i:                               ; preds = %if.else.i
  %sub.i.i = add i32 %add.i.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %lblk)
  %cmp1.i = icmp ult i32 %sub.i.i, %lblk
  br i1 %cmp1.i, label %if.end4.i.thread, label %ext4_es_end.exit.i.if.end4_crit_edge

ext4_es_end.exit.i.if.end4_crit_edge:             ; preds = %ext4_es_end.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.end4.i:                                        ; preds = %while.body.i
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %node.052.i, i32 0, i32 2
  %14 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %node.0.i = load ptr, ptr %rb_left.i, align 4
  %tobool.not.i = icmp eq ptr %node.0.i, null
  br i1 %tobool.not.i, label %if.end4.i.if.end4_crit_edge, label %if.end4.i.while.body.i.backedge_crit_edge

if.end4.i.while.body.i.backedge_crit_edge:        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.backedge

if.end4.i.if.end4_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.end4.i.thread:                                 ; preds = %ext4_es_end.exit.i
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %node.052.i, i32 0, i32 1
  %15 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %node.0.i344 = load ptr, ptr %rb_right.i, align 4
  %tobool.not.i345 = icmp eq ptr %node.0.i344, null
  br i1 %tobool.not.i345, label %land.lhs.true11.critedge.i, label %if.end4.i.thread.while.body.i.backedge_crit_edge

if.end4.i.thread.while.body.i.backedge_crit_edge: ; preds = %if.end4.i.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.backedge

land.lhs.true11.critedge.i:                       ; preds = %if.end4.i.thread
  %es_len.i.i.le = getelementptr inbounds %struct.extent_status, ptr %node.052.i, i32 0, i32 2
  %16 = ptrtoint ptr %es_len.i.i.le to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %es_len.i.i.le, align 8
  %add.i41.i = add i32 %17, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i41.i, i32 %11)
  %cmp.i42.i = icmp ult i32 %add.i41.i, %11
  br i1 %cmp.i42.i, label %do.body3.i43.i, label %ext4_es_end.exit45.i, !prof !107

do.body3.i43.i:                                   ; preds = %land.lhs.true11.critedge.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/extents_status.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 202, 0\0A.popsection", ""() #9, !srcloc !108
  unreachable

ext4_es_end.exit45.i:                             ; preds = %land.lhs.true11.critedge.i
  %sub.i44.i = add i32 %add.i41.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i44.i, i32 %lblk)
  %cmp13.i = icmp ult i32 %sub.i44.i, %lblk
  br i1 %cmp13.i, label %__es_tree_search.exit, label %ext4_es_end.exit45.i.cleanup163_crit_edge

ext4_es_end.exit45.i.cleanup163_crit_edge:        ; preds = %ext4_es_end.exit45.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup163

__es_tree_search.exit:                            ; preds = %ext4_es_end.exit45.i
  %call16.i = tail call ptr @rb_next(ptr noundef nonnull %node.052.i) #9
  %tobool2.not = icmp eq ptr %call16.i, null
  br i1 %tobool2.not, label %__es_tree_search.exit.cleanup163_crit_edge, label %__es_tree_search.exit.if.end4_crit_edge

__es_tree_search.exit.if.end4_crit_edge:          ; preds = %__es_tree_search.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

__es_tree_search.exit.cleanup163_crit_edge:       ; preds = %__es_tree_search.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup163

if.end4:                                          ; preds = %__es_tree_search.exit.if.end4_crit_edge, %if.end4.i.if.end4_crit_edge, %ext4_es_end.exit.i.if.end4_crit_edge
  %retval.0.i352 = phi ptr [ %call16.i, %__es_tree_search.exit.if.end4_crit_edge ], [ %node.052.i, %ext4_es_end.exit.i.if.end4_crit_edge ], [ %node.052.i, %if.end4.i.if.end4_crit_edge ]
  %es_lblk = getelementptr inbounds %struct.extent_status, ptr %retval.0.i352, i32 0, i32 1
  %18 = ptrtoint ptr %es_lblk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %es_lblk, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %end)
  %cmp5 = icmp ugt i32 %19, %end
  br i1 %cmp5, label %if.end4.cleanup163_crit_edge, label %if.end7

if.end4.cleanup163_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup163

if.end7:                                          ; preds = %if.end4
  %20 = ptrtoint ptr %cache_es to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %cache_es, align 4
  br i1 %count_reserved.0.off0, label %if.then9, label %if.end7.if.end10_crit_edge

if.end7.if.end10_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then9:                                         ; preds = %if.end7
  %21 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %22, i32 0, i32 33
  %23 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_fs_info.i.i, align 16
  %25 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %rc, align 4
  %s_cluster_ratio.i = getelementptr inbounds %struct.ext4_sb_info, ptr %24, i32 0, i32 11
  %26 = ptrtoint ptr %s_cluster_ratio.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %s_cluster_ratio.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp.i266 = icmp ugt i32 %27, 1
  br i1 %cmp.i266, label %if.then.i269, label %if.then9.if.end10_crit_edge

if.then9.if.end10_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then.i269:                                     ; preds = %if.then9
  %28 = ptrtoint ptr %first_do_lblk_found.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %first_do_lblk_found.i, align 4
  %29 = ptrtoint ptr %es_lblk to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %es_lblk, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %lblk)
  %cmp1.i268 = icmp ult i32 %30, %lblk
  br i1 %cmp1.i268, label %if.then.i269.if.end.i_crit_edge, label %if.else.i270

if.then.i269.if.end.i_crit_edge:                  ; preds = %if.then.i269
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.else.i270:                                     ; preds = %if.then.i269
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i = tail call ptr @rb_prev(ptr noundef nonnull %retval.0.i352) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i270, %if.then.i269.if.end.i_crit_edge
  %call3.sink.i = phi ptr [ %call3.i, %if.else.i270 ], [ %retval.0.i352, %if.then.i269.if.end.i_crit_edge ]
  %31 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call3.sink.i, ptr %9, align 4
  %32 = ptrtoint ptr %partial.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %partial.i, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.end.i, %if.then9.if.end10_crit_edge, %if.end7.if.end10_crit_edge
  %33 = ptrtoint ptr %es_lblk to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %es_lblk, align 4
  %35 = ptrtoint ptr %es_lblk12 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %es_lblk12, align 4
  %es_len = getelementptr inbounds %struct.extent_status, ptr %retval.0.i352, i32 0, i32 2
  %36 = ptrtoint ptr %es_len to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %es_len, align 8
  %38 = ptrtoint ptr %es_len13 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %es_len13, align 8
  %es_pblk = getelementptr inbounds %struct.extent_status, ptr %retval.0.i352, i32 0, i32 3
  %39 = ptrtoint ptr %es_pblk to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %es_pblk, align 8
  %41 = ptrtoint ptr %es_pblk14 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %40, ptr %es_pblk14, align 8
  %42 = load i32, ptr %es_lblk, align 4
  %43 = tail call i32 @llvm.usub.sat.i32(i32 %lblk, i32 %42)
  %44 = ptrtoint ptr %es_len to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %es_len, align 8
  %add.i = add i32 %45, %42
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %42)
  %cmp.i272 = icmp ult i32 %add.i, %42
  br i1 %cmp.i272, label %do.body3.i, label %ext4_es_end.exit, !prof !107

do.body3.i:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/extents_status.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 202, 0\0A.popsection", ""() #9, !srcloc !108
  unreachable

ext4_es_end.exit:                                 ; preds = %if.end10
  %sub.i = add i32 %add.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %end)
  %cmp19 = icmp ugt i32 %sub.i, %end
  br i1 %cmp19, label %cond.end24, label %cond.end24.thread

cond.end24:                                       ; preds = %ext4_es_end.exit
  %sub22 = sub i32 %sub.i, %end
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %lblk)
  %cmp26.not.not = icmp ult i32 %42, %lblk
  br i1 %cmp26.not.not, label %if.then33, label %if.else

cond.end24.thread:                                ; preds = %ext4_es_end.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %lblk)
  %cmp26.not363.not = icmp ult i32 %42, %lblk
  br i1 %cmp26.not363.not, label %if.then94, label %cond.end24.thread.while.cond.preheader_crit_edge

cond.end24.thread.while.cond.preheader_crit_edge: ; preds = %cond.end24.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.preheader

if.then33:                                        ; preds = %cond.end24
  %46 = ptrtoint ptr %es_len to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %43, ptr %es_len, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %newes) #9
  %47 = call ptr @memset(ptr %newes, i32 255, i32 24)
  %48 = ptrtoint ptr %es_lblk34 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %add, ptr %es_lblk34, align 4
  %49 = ptrtoint ptr %es_len35 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %sub22, ptr %es_len35, align 8
  %50 = ptrtoint ptr %es_pblk14 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %es_pblk14, align 8
  %52 = and i64 %51, 1729382256910270464
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %52)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %if.then33.if.end47_crit_edge, label %if.then41

if.then33.if.end47_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

if.then41:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  %and.i281 = and i64 %51, 576460752303423487
  %54 = ptrtoint ptr %es_len13 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %es_len13, align 8
  %conv = zext i32 %55 to i64
  %conv45 = zext i32 %sub22 to i64
  %add44 = sub nsw i64 %and.i281, %conv45
  %sub46 = add nsw i64 %add44, %conv
  br label %if.end47

if.end47:                                         ; preds = %if.then41, %if.then33.if.end47_crit_edge
  %block.0 = phi i64 [ %sub46, %if.then41 ], [ 549196775151, %if.then33.if.end47_crit_edge ]
  %shl.i = and i64 %51, -576460752303423488
  %and1.i = and i64 %block.0, 576460752303423487
  %or.i = or i64 %and1.i, %shl.i
  %56 = ptrtoint ptr %es_pblk.i284 to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %or.i, ptr %es_pblk.i284, align 8
  %call49 = call fastcc i32 @__es_insert_extent(ptr noundef %inode, ptr noundef nonnull %newes)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %cleanup.thread355, label %if.then51

cleanup.thread355:                                ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %newes) #9
  br label %if.end84

if.then51:                                        ; preds = %if.end47
  %57 = ptrtoint ptr %es_lblk to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %34, ptr %es_lblk, align 4
  %58 = ptrtoint ptr %es_len13 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %es_len13, align 8
  %60 = ptrtoint ptr %es_len to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %es_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %call49)
  %cmp56 = icmp eq i32 %call49, -12
  br i1 %cmp56, label %land.lhs.true, label %if.then51.cleanup.thread_crit_edge

if.then51.cleanup.thread_crit_edge:               ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

land.lhs.true:                                    ; preds = %if.then51
  %61 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i285 = getelementptr inbounds %struct.super_block, ptr %62, i32 0, i32 33
  %63 = ptrtoint ptr %s_fs_info.i285 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %s_fs_info.i285, align 16
  %call63 = tail call fastcc i32 @__es_shrink(ptr noundef %64, i32 noundef 128, ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %land.lhs.true.cleanup.thread_crit_edge, label %cleanup

land.lhs.true.cleanup.thread_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %land.lhs.true.cleanup.thread_crit_edge, %if.then51.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %newes) #9
  br label %cleanup163

cleanup:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %newes) #9
  %65 = ptrtoint ptr %i_es_tree to i32
  call void @__asan_load4_noabort(i32 %65)
  %node.050.i = load ptr, ptr %i_es_tree, align 4
  %tobool.not51.i = icmp eq ptr %node.050.i, null
  br i1 %tobool.not51.i, label %cleanup.cleanup163_crit_edge, label %cleanup.while.body.i.backedge_crit_edge

cleanup.while.body.i.backedge_crit_edge:          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.backedge

cleanup.cleanup163_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup163

while.body.i.backedge:                            ; preds = %cleanup.while.body.i.backedge_crit_edge, %if.end4.i.thread.while.body.i.backedge_crit_edge, %if.end4.i.while.body.i.backedge_crit_edge
  %node.052.i.be = phi ptr [ %node.050.i, %cleanup.while.body.i.backedge_crit_edge ], [ %node.0.i, %if.end4.i.while.body.i.backedge_crit_edge ], [ %node.0.i344, %if.end4.i.thread.while.body.i.backedge_crit_edge ]
  br label %while.body.i

if.else:                                          ; preds = %cond.end24
  %66 = ptrtoint ptr %es_lblk to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %add, ptr %es_lblk, align 4
  %67 = ptrtoint ptr %es_len to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %sub22, ptr %es_len, align 8
  %68 = ptrtoint ptr %es_pblk to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %es_pblk, align 8
  %70 = and i64 %69, 1729382256910270464
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %70)
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %if.else.if.end84_crit_edge, label %if.then76

if.else.if.end84_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end84

if.then76:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %72 = ptrtoint ptr %es_pblk14 to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %es_pblk14, align 8
  %74 = ptrtoint ptr %es_len13 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %es_len13, align 8
  %conv79 = zext i32 %75 to i64
  %conv81 = zext i32 %sub22 to i64
  %add80 = sub i64 %73, %conv81
  %sub82 = add i64 %add80, %conv79
  %and.i293 = and i64 %sub82, 576460752303423487
  %and1.i295 = and i64 %69, -576460752303423488
  %or.i296 = or i64 %and.i293, %and1.i295
  %76 = ptrtoint ptr %es_pblk to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %or.i296, ptr %es_pblk, align 8
  br label %if.end84

if.end84:                                         ; preds = %if.then76, %if.else.if.end84_crit_edge, %cleanup.thread355
  br i1 %count_reserved.0.off0, label %if.then86, label %if.end84.cleanup163_crit_edge

if.end84.cleanup163_crit_edge:                    ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup163

if.then86:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  %77 = ptrtoint ptr %es_len13 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %es_len13, align 8
  %79 = add i32 %sub22, %43
  %sub89 = sub i32 %78, %79
  call fastcc void @count_rsvd(ptr noundef %inode, i32 noundef %lblk, i32 noundef %sub89, ptr noundef nonnull %orig_es, ptr noundef nonnull %rc)
  br label %cleanup163

if.then94:                                        ; preds = %cond.end24.thread
  %80 = ptrtoint ptr %es_len to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %43, ptr %es_len, align 8
  br i1 %count_reserved.0.off0, label %if.then96, label %if.then94.if.end99_crit_edge

if.then94.if.end99_crit_edge:                     ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end99

if.then96:                                        ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #11
  %81 = ptrtoint ptr %es_len13 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %es_len13, align 8
  %sub98 = sub i32 %82, %43
  call fastcc void @count_rsvd(ptr noundef %inode, i32 noundef %lblk, i32 noundef %sub98, ptr noundef nonnull %orig_es, ptr noundef nonnull %rc)
  br label %if.end99

if.end99:                                         ; preds = %if.then96, %if.then94.if.end99_crit_edge
  %call100 = tail call ptr @rb_next(ptr noundef nonnull %retval.0.i352) #9
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end99, %cond.end24.thread.while.cond.preheader_crit_edge
  %es.1.ph = phi ptr [ %retval.0.i352, %cond.end24.thread.while.cond.preheader_crit_edge ], [ %call100, %if.end99 ]
  br label %while.cond

while.cond:                                       ; preds = %if.end117.while.cond_crit_edge, %while.cond.preheader
  %es.1 = phi ptr [ %call119, %if.end117.while.cond_crit_edge ], [ %es.1.ph, %while.cond.preheader ]
  %tobool109.not = icmp eq ptr %es.1, null
  br i1 %tobool109.not, label %while.cond.if.end158_crit_edge, label %land.rhs

while.cond.if.end158_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end158

land.rhs:                                         ; preds = %while.cond
  %es_lblk.i297 = getelementptr inbounds %struct.extent_status, ptr %es.1, i32 0, i32 1
  %83 = ptrtoint ptr %es_lblk.i297 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %es_lblk.i297, align 4
  %es_len.i298 = getelementptr inbounds %struct.extent_status, ptr %es.1, i32 0, i32 2
  %85 = ptrtoint ptr %es_len.i298 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %es_len.i298, align 8
  %add.i299 = add i32 %86, %84
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i299, i32 %84)
  %cmp.i300 = icmp ult i32 %add.i299, %84
  br i1 %cmp.i300, label %do.body3.i301, label %ext4_es_end.exit303, !prof !107

do.body3.i301:                                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/extents_status.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 202, 0\0A.popsection", ""() #9, !srcloc !108
  unreachable

ext4_es_end.exit303:                              ; preds = %land.rhs
  %sub.i302 = add i32 %add.i299, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i302, i32 %end)
  %cmp111.not = icmp ugt i32 %sub.i302, %end
  br i1 %cmp111.not, label %land.lhs.true129, label %while.body

while.body:                                       ; preds = %ext4_es_end.exit303
  br i1 %count_reserved.0.off0, label %if.then114, label %while.body.if.end117_crit_edge

while.body.if.end117_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end117

if.then114:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @count_rsvd(ptr noundef %inode, i32 noundef %84, i32 noundef %86, ptr noundef nonnull %es.1, ptr noundef nonnull %rc)
  br label %if.end117

if.end117:                                        ; preds = %if.then114, %while.body.if.end117_crit_edge
  %call119 = tail call ptr @rb_next(ptr noundef nonnull %es.1) #9
  tail call void @rb_erase(ptr noundef nonnull %es.1, ptr noundef %i_es_tree) #9
  tail call fastcc void @ext4_es_free_extent(ptr noundef %inode, ptr noundef nonnull %es.1)
  %tobool122.not = icmp eq ptr %call119, null
  br i1 %tobool122.not, label %if.end117.if.end158_crit_edge, label %if.end117.while.cond_crit_edge

if.end117.while.cond_crit_edge:                   ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

if.end117.if.end158_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end158

land.lhs.true129:                                 ; preds = %ext4_es_end.exit303
  %es_lblk.i297.le = getelementptr inbounds %struct.extent_status, ptr %es.1, i32 0, i32 1
  %es_len.i298.le = getelementptr inbounds %struct.extent_status, ptr %es.1, i32 0, i32 2
  %87 = ptrtoint ptr %es_lblk.i297.le to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %es_lblk.i297.le, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %88, i32 %end)
  %cmp132.not = icmp ugt i32 %88, %end
  br i1 %cmp132.not, label %land.lhs.true129.if.end158_crit_edge, label %if.then134

land.lhs.true129.if.end158_crit_edge:             ; preds = %land.lhs.true129
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end158

if.then134:                                       ; preds = %land.lhs.true129
  %89 = ptrtoint ptr %es_len.i298.le to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %es_len.i298.le, align 8
  %add.i306 = add i32 %90, %88
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i306, i32 %88)
  %cmp.i307 = icmp ult i32 %add.i306, %88
  br i1 %cmp.i307, label %do.body3.i308, label %ext4_es_end.exit310, !prof !107

do.body3.i308:                                    ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/extents_status.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 202, 0\0A.popsection", ""() #9, !srcloc !108
  unreachable

ext4_es_end.exit310:                              ; preds = %if.then134
  %91 = xor i32 %end, -1
  %sub137 = add i32 %add.i306, %91
  br i1 %count_reserved.0.off0, label %if.then139, label %ext4_es_end.exit310.if.end142_crit_edge

ext4_es_end.exit310.if.end142_crit_edge:          ; preds = %ext4_es_end.exit310
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end142

if.then139:                                       ; preds = %ext4_es_end.exit310
  call void @__sanitizer_cov_trace_pc() #11
  %sub141 = sub i32 %90, %sub137
  call fastcc void @count_rsvd(ptr noundef %inode, i32 noundef %88, i32 noundef %sub141, ptr noundef nonnull %es.1, ptr noundef nonnull %rc)
  br label %if.end142

if.end142:                                        ; preds = %if.then139, %ext4_es_end.exit310.if.end142_crit_edge
  %92 = ptrtoint ptr %es_lblk.i297.le to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %add, ptr %es_lblk.i297.le, align 4
  %93 = ptrtoint ptr %es_len.i298.le to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %sub137, ptr %es_len.i298.le, align 8
  %es_pblk.i.i311 = getelementptr inbounds %struct.extent_status, ptr %es.1, i32 0, i32 3
  %94 = ptrtoint ptr %es_pblk.i.i311 to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %es_pblk.i.i311, align 8
  %96 = and i64 %95, 1729382256910270464
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %96)
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %if.end142.if.end158_crit_edge, label %if.then151

if.end142.if.end158_crit_edge:                    ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end158

if.then151:                                       ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #11
  %conv153 = zext i32 %90 to i64
  %conv155 = zext i32 %sub137 to i64
  %add154 = sub nsw i64 %conv153, %conv155
  %sub156 = add i64 %add154, %95
  %and.i318 = and i64 %sub156, 576460752303423487
  %and1.i320 = and i64 %95, -576460752303423488
  %or.i321 = or i64 %and.i318, %and1.i320
  %98 = ptrtoint ptr %es_pblk.i.i311 to i32
  call void @__asan_store8_noabort(i32 %98)
  store i64 %or.i321, ptr %es_pblk.i.i311, align 8
  br label %if.end158

if.end158:                                        ; preds = %if.then151, %if.end142.if.end158_crit_edge, %land.lhs.true129.if.end158_crit_edge, %if.end117.if.end158_crit_edge, %while.cond.if.end158_crit_edge
  %tobool128.not361 = phi i1 [ false, %if.then151 ], [ false, %land.lhs.true129.if.end158_crit_edge ], [ false, %if.end142.if.end158_crit_edge ], [ true, %while.cond.if.end158_crit_edge ], [ true, %if.end117.if.end158_crit_edge ]
  %es.2360 = phi ptr [ %es.1, %if.then151 ], [ %es.1, %land.lhs.true129.if.end158_crit_edge ], [ %es.1, %if.end142.if.end158_crit_edge ], [ null, %while.cond.if.end158_crit_edge ], [ null, %if.end117.if.end158_crit_edge ]
  br i1 %count_reserved.0.off0, label %if.then160, label %if.end158.cleanup163_crit_edge

if.end158.cleanup163_crit_edge:                   ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup163

if.then160:                                       ; preds = %if.end158
  %99 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i323 = getelementptr inbounds %struct.super_block, ptr %100, i32 0, i32 33
  %101 = ptrtoint ptr %s_fs_info.i.i323 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %s_fs_info.i.i323, align 16
  %i_pending_tree.i = getelementptr i8, ptr %inode, i32 984
  %s_cluster_ratio.i324 = getelementptr inbounds %struct.ext4_sb_info, ptr %102, i32 0, i32 11
  %103 = ptrtoint ptr %s_cluster_ratio.i324 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %s_cluster_ratio.i324, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %104)
  %cmp.i325 = icmp ugt i32 %104, 1
  br i1 %cmp.i325, label %if.then.i328, label %if.then160.if.end113.i_crit_edge

if.then160.if.end113.i_crit_edge:                 ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end113.i

if.then.i328:                                     ; preds = %if.then160
  %105 = ptrtoint ptr %partial.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %partial.i, align 4, !range !114
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool.not.i327 = icmp eq i8 %106, 0
  %107 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %107)
  %.pr.i = load i32, ptr %rc, align 4
  br i1 %tobool.not.i327, label %if.then.i328.if.end.i329_crit_edge, label %if.then1.i

if.then.i328.if.end.i329_crit_edge:               ; preds = %if.then.i328
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i329

if.then1.i:                                       ; preds = %if.then.i328
  call void @__sanitizer_cov_trace_pc() #11
  %inc.i = add i32 %.pr.i, 1
  %108 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %inc.i, ptr %rc, align 4
  br label %if.end.i329

if.end.i329:                                      ; preds = %if.then1.i, %if.then.i328.if.end.i329_crit_edge
  %109 = phi i32 [ %inc.i, %if.then1.i ], [ %.pr.i, %if.then.i328.if.end.i329_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %cmp3.i = icmp eq i32 %109, 0
  br i1 %cmp3.i, label %if.end.i329.get_rsvd.exit_crit_edge, label %if.end5.i

if.end.i329.get_rsvd.exit_crit_edge:              ; preds = %if.end.i329
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_rsvd.exit

if.end5.i:                                        ; preds = %if.end.i329
  %first_do_lblk.i = getelementptr inbounds %struct.rsvd_count, ptr %rc, i32 0, i32 2
  %110 = ptrtoint ptr %first_do_lblk.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %first_do_lblk.i, align 4
  %s_cluster_bits.i = getelementptr inbounds %struct.ext4_sb_info, ptr %102, i32 0, i32 12
  %112 = ptrtoint ptr %s_cluster_bits.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %s_cluster_bits.i, align 16
  %shr.i330 = lshr i32 %111, %113
  %last_do_lblk.i = getelementptr inbounds %struct.rsvd_count, ptr %rc, i32 0, i32 3
  %114 = ptrtoint ptr %last_do_lblk.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %last_do_lblk.i, align 4
  %shr7.i = lshr i32 %115, %113
  %116 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %9, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end17.i.while.cond.i_crit_edge, %if.end5.i
  %es.0.i = phi ptr [ %117, %if.end5.i ], [ %call18.i, %if.end17.i.while.cond.i_crit_edge ]
  %tobool8.not.i = icmp eq ptr %es.0.i, null
  br i1 %tobool8.not.i, label %while.cond.i.while.end.i_crit_edge, label %land.rhs.i

while.cond.i.while.end.i_crit_edge:               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

land.rhs.i:                                       ; preds = %while.cond.i
  %es_lblk.i.i = getelementptr inbounds %struct.extent_status, ptr %es.0.i, i32 0, i32 1
  %118 = ptrtoint ptr %es_lblk.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %es_lblk.i.i, align 4
  %es_len.i.i331 = getelementptr inbounds %struct.extent_status, ptr %es.0.i, i32 0, i32 2
  %120 = ptrtoint ptr %es_len.i.i331 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %es_len.i.i331, align 8
  %add.i.i332 = add i32 %121, %119
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i332, i32 %119)
  %cmp.i.i333 = icmp ult i32 %add.i.i332, %119
  br i1 %cmp.i.i333, label %do.body3.i.i334, label %ext4_es_end.exit.i337, !prof !107

do.body3.i.i334:                                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/extents_status.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 202, 0\0A.popsection", ""() #9, !srcloc !108
  unreachable

ext4_es_end.exit.i337:                            ; preds = %land.rhs.i
  %sub.i.i335 = add i32 %add.i.i332, -1
  %122 = ptrtoint ptr %first_do_lblk.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %first_do_lblk.i, align 4
  %124 = ptrtoint ptr %s_cluster_ratio.i324 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %s_cluster_ratio.i324, align 4
  %neg.i = sub i32 0, %125
  %and.i336 = and i32 %123, %neg.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i335, i32 %and.i336)
  %cmp12.not.i = icmp ult i32 %sub.i.i335, %and.i336
  br i1 %cmp12.not.i, label %ext4_es_end.exit.i337.while.end.i_crit_edge, label %while.body.i338

ext4_es_end.exit.i337.while.end.i_crit_edge:      ; preds = %ext4_es_end.exit.i337
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.body.i338:                                  ; preds = %ext4_es_end.exit.i337
  %es_pblk.i.i.i.i = getelementptr inbounds %struct.extent_status, ptr %es.0.i, i32 0, i32 3
  %126 = ptrtoint ptr %es_pblk.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %126)
  %127 = load i64, ptr %es_pblk.i.i.i.i, align 8
  %128 = and i64 %127, 3458764513820540928
  call void @__sanitizer_cov_trace_const_cmp8(i64 2305843009213693952, i64 %128)
  %.not.i = icmp eq i64 %128, 2305843009213693952
  br i1 %.not.i, label %if.then15.i, label %if.end17.i

if.then15.i:                                      ; preds = %while.body.i338
  call void @__sanitizer_cov_trace_pc() #11
  %129 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %rc, align 4
  %dec.i = add i32 %130, -1
  store i32 %dec.i, ptr %rc, align 4
  br label %while.end.i

if.end17.i:                                       ; preds = %while.body.i338
  %call18.i = tail call ptr @rb_prev(ptr noundef nonnull %es.0.i) #9
  %tobool19.not.i = icmp eq ptr %call18.i, null
  br i1 %tobool19.not.i, label %if.end17.i.while.end.i_crit_edge, label %if.end17.i.while.cond.i_crit_edge

if.end17.i.while.cond.i_crit_edge:                ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i

if.end17.i.while.end.i_crit_edge:                 ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.end.i:                                      ; preds = %if.end17.i.while.end.i_crit_edge, %if.then15.i, %ext4_es_end.exit.i337.while.end.i_crit_edge, %while.cond.i.while.end.i_crit_edge
  %left_delonly.0.off0.i = phi i1 [ true, %if.then15.i ], [ false, %while.cond.i.while.end.i_crit_edge ], [ false, %ext4_es_end.exit.i337.while.end.i_crit_edge ], [ false, %if.end17.i.while.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i330, i32 %shr7.i)
  %cmp27.not.i = icmp eq i32 %shr.i330, %shr7.i
  %or.cond.i = select i1 %left_delonly.0.off0.i, i1 %cmp27.not.i, i1 false
  %or.cond175.i = select i1 %tobool128.not361, i1 true, i1 %or.cond.i
  br i1 %or.cond175.i, label %while.end.i.if.end63.i_crit_edge, label %if.then28.i

while.end.i.if.end63.i_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63.i

if.then28.i:                                      ; preds = %while.end.i
  %es_lblk.i177.i = getelementptr inbounds %struct.extent_status, ptr %es.2360, i32 0, i32 1
  %131 = ptrtoint ptr %es_lblk.i177.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %es_lblk.i177.i, align 4
  %es_len.i178.i = getelementptr inbounds %struct.extent_status, ptr %es.2360, i32 0, i32 2
  %133 = ptrtoint ptr %es_len.i178.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %es_len.i178.i, align 8
  %add.i179.i = add i32 %134, %132
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i179.i, i32 %132)
  %cmp.i180.i = icmp ult i32 %add.i179.i, %132
  br i1 %cmp.i180.i, label %do.body3.i181.i, label %ext4_es_end.exit183.i, !prof !107

do.body3.i181.i:                                  ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/extents_status.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 202, 0\0A.popsection", ""() #9, !srcloc !108
  unreachable

ext4_es_end.exit183.i:                            ; preds = %if.then28.i
  %sub.i182.i = add i32 %add.i179.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i182.i, i32 %end)
  %cmp30.i = icmp ugt i32 %sub.i182.i, %end
  br i1 %cmp30.i, label %ext4_es_end.exit183.i.while.cond39.i.preheader_crit_edge, label %if.else.i339

ext4_es_end.exit183.i.while.cond39.i.preheader_crit_edge: ; preds = %ext4_es_end.exit183.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond39.i.preheader

if.else.i339:                                     ; preds = %ext4_es_end.exit183.i
  call void @__sanitizer_cov_trace_pc() #11
  %call33.i = tail call ptr @rb_next(ptr noundef nonnull %es.2360) #9
  br label %while.cond39.i.preheader

while.cond39.i.preheader:                         ; preds = %if.else.i339, %ext4_es_end.exit183.i.while.cond39.i.preheader_crit_edge
  %es.2.i.ph = phi ptr [ %es.2360, %ext4_es_end.exit183.i.while.cond39.i.preheader_crit_edge ], [ %call33.i, %if.else.i339 ]
  br label %while.cond39.i

while.cond39.i:                                   ; preds = %if.end53.i.while.cond39.i_crit_edge, %while.cond39.i.preheader
  %es.2.i = phi ptr [ %call55.i, %if.end53.i.while.cond39.i_crit_edge ], [ %es.2.i.ph, %while.cond39.i.preheader ]
  %tobool40.not.i = icmp eq ptr %es.2.i, null
  br i1 %tobool40.not.i, label %while.cond39.i.if.end63.i_crit_edge, label %land.rhs41.i

while.cond39.i.if.end63.i_crit_edge:              ; preds = %while.cond39.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63.i

land.rhs41.i:                                     ; preds = %while.cond39.i
  %es_lblk.i340 = getelementptr inbounds %struct.extent_status, ptr %es.2.i, i32 0, i32 1
  %135 = ptrtoint ptr %es_lblk.i340 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %es_lblk.i340, align 4
  %137 = ptrtoint ptr %last_do_lblk.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %last_do_lblk.i, align 4
  %139 = ptrtoint ptr %s_cluster_ratio.i324 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %s_cluster_ratio.i324, align 4
  %sub44.i = add i32 %140, -1
  %or.i341 = or i32 %sub44.i, %138
  call void @__sanitizer_cov_trace_cmp4(i32 %136, i32 %or.i341)
  %cmp45.not.i = icmp ugt i32 %136, %or.i341
  br i1 %cmp45.not.i, label %land.rhs41.i.if.end63.i_crit_edge, label %while.body47.i

land.rhs41.i.if.end63.i_crit_edge:                ; preds = %land.rhs41.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63.i

while.body47.i:                                   ; preds = %land.rhs41.i
  %es_pblk.i.i.i184.i = getelementptr inbounds %struct.extent_status, ptr %es.2.i, i32 0, i32 3
  %141 = ptrtoint ptr %es_pblk.i.i.i184.i to i32
  call void @__asan_load8_noabort(i32 %141)
  %142 = load i64, ptr %es_pblk.i.i.i184.i, align 8
  %143 = and i64 %142, 3458764513820540928
  call void @__sanitizer_cov_trace_const_cmp8(i64 2305843009213693952, i64 %143)
  %.not195.i = icmp eq i64 %143, 2305843009213693952
  br i1 %.not195.i, label %if.then50.i, label %if.end53.i

if.then50.i:                                      ; preds = %while.body47.i
  call void @__sanitizer_cov_trace_pc() #11
  %144 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %rc, align 4
  %dec52.i = add i32 %145, -1
  store i32 %dec52.i, ptr %rc, align 4
  br label %if.end63.i

if.end53.i:                                       ; preds = %while.body47.i
  %call55.i = tail call ptr @rb_next(ptr noundef nonnull %es.2.i) #9
  %tobool56.not.i = icmp eq ptr %call55.i, null
  br i1 %tobool56.not.i, label %if.end53.i.if.end63.i_crit_edge, label %if.end53.i.while.cond39.i_crit_edge

if.end53.i.while.cond39.i_crit_edge:              ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond39.i

if.end53.i.if.end63.i_crit_edge:                  ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63.i

if.end63.i:                                       ; preds = %if.end53.i.if.end63.i_crit_edge, %if.then50.i, %land.rhs41.i.if.end63.i_crit_edge, %while.cond39.i.if.end63.i_crit_edge, %while.end.i.if.end63.i_crit_edge
  %right_delonly.0.off0.i = phi i1 [ true, %if.then50.i ], [ false, %while.end.i.if.end63.i_crit_edge ], [ false, %while.cond39.i.if.end63.i_crit_edge ], [ false, %land.rhs41.i.if.end63.i_crit_edge ], [ false, %if.end53.i.if.end63.i_crit_edge ]
  br i1 %cmp27.not.i, label %if.then65.i, label %if.end88.i

if.then65.i:                                      ; preds = %if.end63.i
  %or69173.i = or i1 %left_delonly.0.off0.i, %right_delonly.0.off0.i
  br i1 %or69173.i, label %if.then65.i.if.end113.i_crit_edge, label %if.then65.i.if.then90.i_crit_edge

if.then65.i.if.then90.i_crit_edge:                ; preds = %if.then65.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then90.i

if.then65.i.if.end113.i_crit_edge:                ; preds = %if.then65.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end113.i

if.end88.i:                                       ; preds = %if.end63.i
  %inc77.i = zext i1 %left_delonly.0.off0.i to i32
  %spec.select174.i = add i32 %shr.i330, %inc77.i
  %dec81.i = sext i1 %right_delonly.0.off0.i to i32
  %last_lclu.0.i = add i32 %shr7.i, %dec81.i
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select174.i, i32 %last_lclu.0.i)
  %cmp83.not.not.i = icmp ugt i32 %spec.select174.i, %last_lclu.0.i
  br i1 %cmp83.not.not.i, label %if.end88.i.if.end113.i_crit_edge, label %if.end88.i.if.then90.i_crit_edge

if.end88.i.if.then90.i_crit_edge:                 ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then90.i

if.end88.i.if.end113.i_crit_edge:                 ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end113.i

if.then90.i:                                      ; preds = %if.end88.i.if.then90.i_crit_edge, %if.then65.i.if.then90.i_crit_edge
  %first_lclu.1189.i = phi i32 [ %shr.i330, %if.then65.i.if.then90.i_crit_edge ], [ %spec.select174.i, %if.end88.i.if.then90.i_crit_edge ]
  %last_lclu.1188.i = phi i32 [ %shr.i330, %if.then65.i.if.then90.i_crit_edge ], [ %last_lclu.0.i, %if.end88.i.if.then90.i_crit_edge ]
  %146 = ptrtoint ptr %i_pending_tree.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %node.042.i.i = load ptr, ptr %i_pending_tree.i, align 4
  %tobool.not43.i.i = icmp eq ptr %node.042.i.i, null
  br i1 %tobool.not43.i.i, label %if.then90.i.__pr_tree_search.exit.i_crit_edge, label %if.then90.i.while.body.i.i_crit_edge

if.then90.i.while.body.i.i_crit_edge:             ; preds = %if.then90.i
  br label %while.body.i.i

if.then90.i.__pr_tree_search.exit.i_crit_edge:    ; preds = %if.then90.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__pr_tree_search.exit.i

while.body.i.i:                                   ; preds = %while.body.i.i.backedge, %if.then90.i.while.body.i.i_crit_edge
  %node.044.i.i = phi ptr [ %node.044.i.i.be, %while.body.i.i.backedge ], [ %node.042.i.i, %if.then90.i.while.body.i.i_crit_edge ]
  %lclu1.i.i = getelementptr inbounds %struct.pending_reservation, ptr %node.044.i.i, i32 0, i32 1
  %147 = ptrtoint ptr %lclu1.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %lclu1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %148, i32 %first_lclu.1189.i)
  %cmp.i186.i = icmp ugt i32 %148, %first_lclu.1189.i
  br i1 %cmp.i186.i, label %if.end6.i.i, label %if.else.i.i

if.else.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %148, i32 %first_lclu.1189.i)
  %cmp3.i.i = icmp ult i32 %148, %first_lclu.1189.i
  br i1 %cmp3.i.i, label %if.end6.i.thread.i, label %if.else.i.i.__pr_tree_search.exit.i_crit_edge

if.else.i.i.__pr_tree_search.exit.i_crit_edge:    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__pr_tree_search.exit.i

if.end6.i.i:                                      ; preds = %while.body.i.i
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %node.044.i.i, i32 0, i32 2
  %149 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %node.0.i.i = load ptr, ptr %rb_left.i.i, align 4
  %tobool.not.i187.i = icmp eq ptr %node.0.i.i, null
  br i1 %tobool.not.i187.i, label %if.end6.i.i.__pr_tree_search.exit.i_crit_edge, label %if.end6.i.i.while.body.i.i.backedge_crit_edge

if.end6.i.i.while.body.i.i.backedge_crit_edge:    ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i.backedge

if.end6.i.i.__pr_tree_search.exit.i_crit_edge:    ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__pr_tree_search.exit.i

if.end6.i.thread.i:                               ; preds = %if.else.i.i
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %node.044.i.i, i32 0, i32 1
  %150 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %node.0.i191.i = load ptr, ptr %rb_right.i.i, align 4
  %tobool.not.i187192.i = icmp eq ptr %node.0.i191.i, null
  br i1 %tobool.not.i187192.i, label %if.then16.i.i, label %if.end6.i.thread.i.while.body.i.i.backedge_crit_edge

if.end6.i.thread.i.while.body.i.i.backedge_crit_edge: ; preds = %if.end6.i.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i.backedge

while.body.i.i.backedge:                          ; preds = %if.end6.i.thread.i.while.body.i.i.backedge_crit_edge, %if.end6.i.i.while.body.i.i.backedge_crit_edge
  %node.044.i.i.be = phi ptr [ %node.0.i.i, %if.end6.i.i.while.body.i.i.backedge_crit_edge ], [ %node.0.i191.i, %if.end6.i.thread.i.while.body.i.i.backedge_crit_edge ]
  br label %while.body.i.i

if.then16.i.i:                                    ; preds = %if.end6.i.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call ptr @rb_next(ptr noundef nonnull %node.044.i.i) #9
  br label %__pr_tree_search.exit.i

__pr_tree_search.exit.i:                          ; preds = %if.then16.i.i, %if.end6.i.i.__pr_tree_search.exit.i_crit_edge, %if.else.i.i.__pr_tree_search.exit.i_crit_edge, %if.then90.i.__pr_tree_search.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %call.i.i, %if.then16.i.i ], [ null, %if.then90.i.__pr_tree_search.exit.i_crit_edge ], [ %node.044.i.i, %if.else.i.i.__pr_tree_search.exit.i_crit_edge ], [ %node.044.i.i, %if.end6.i.i.__pr_tree_search.exit.i_crit_edge ]
  %151 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %151)
  %rc.promoted = load i32, ptr %rc, align 4
  br label %while.cond92.i

while.cond92.i:                                   ; preds = %while.body98.i.while.cond92.i_crit_edge, %__pr_tree_search.exit.i
  %dec100.i445 = phi i32 [ %rc.promoted, %__pr_tree_search.exit.i ], [ %dec100.i, %while.body98.i.while.cond92.i_crit_edge ]
  %pr.0.i = phi ptr [ %retval.0.i.i, %__pr_tree_search.exit.i ], [ %call102.i, %while.body98.i.while.cond92.i_crit_edge ]
  %tobool93.not.i = icmp eq ptr %pr.0.i, null
  br i1 %tobool93.not.i, label %while.cond92.i.if.end113.i_crit_edge, label %land.rhs94.i

while.cond92.i.if.end113.i_crit_edge:             ; preds = %while.cond92.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end113.i

land.rhs94.i:                                     ; preds = %while.cond92.i
  %lclu.i = getelementptr inbounds %struct.pending_reservation, ptr %pr.0.i, i32 0, i32 1
  %152 = ptrtoint ptr %lclu.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %lclu.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %153, i32 %last_lclu.1188.i)
  %cmp95.not.i = icmp ugt i32 %153, %last_lclu.1188.i
  br i1 %cmp95.not.i, label %land.rhs94.i.if.end113.i_crit_edge, label %while.body98.i

land.rhs94.i.if.end113.i_crit_edge:               ; preds = %land.rhs94.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end113.i

while.body98.i:                                   ; preds = %land.rhs94.i
  %dec100.i = add i32 %dec100.i445, -1
  %154 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %dec100.i, ptr %rc, align 4
  %call102.i = tail call ptr @rb_next(ptr noundef nonnull %pr.0.i) #9
  tail call void @rb_erase(ptr noundef nonnull %pr.0.i, ptr noundef %i_pending_tree.i) #9
  %155 = load ptr, ptr @ext4_pending_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %155, ptr noundef nonnull %pr.0.i) #9
  %tobool105.not.i = icmp eq ptr %call102.i, null
  br i1 %tobool105.not.i, label %while.body98.i.if.end113.i_crit_edge, label %while.body98.i.while.cond92.i_crit_edge

while.body98.i.while.cond92.i_crit_edge:          ; preds = %while.body98.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond92.i

while.body98.i.if.end113.i_crit_edge:             ; preds = %while.body98.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end113.i

if.end113.i:                                      ; preds = %while.body98.i.if.end113.i_crit_edge, %land.rhs94.i.if.end113.i_crit_edge, %while.cond92.i.if.end113.i_crit_edge, %if.end88.i.if.end113.i_crit_edge, %if.then65.i.if.end113.i_crit_edge, %if.then160.if.end113.i_crit_edge
  %156 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %rc, align 4
  br label %get_rsvd.exit

get_rsvd.exit:                                    ; preds = %if.end113.i, %if.end.i329.get_rsvd.exit_crit_edge
  %retval.0.i342 = phi i32 [ %157, %if.end113.i ], [ 0, %if.end.i329.get_rsvd.exit_crit_edge ]
  %158 = ptrtoint ptr %reserved to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %retval.0.i342, ptr %reserved, align 4
  br label %cleanup163

cleanup163:                                       ; preds = %get_rsvd.exit, %if.end158.cleanup163_crit_edge, %if.then86, %if.end84.cleanup163_crit_edge, %cleanup.cleanup163_crit_edge, %cleanup.thread, %if.end4.cleanup163_crit_edge, %__es_tree_search.exit.cleanup163_crit_edge, %ext4_es_end.exit45.i.cleanup163_crit_edge, %if.end.cleanup163_crit_edge
  %retval.0 = phi i32 [ 0, %if.then86 ], [ 0, %if.end84.cleanup163_crit_edge ], [ 0, %get_rsvd.exit ], [ 0, %if.end158.cleanup163_crit_edge ], [ %call49, %cleanup.thread ], [ 0, %if.end.cleanup163_crit_edge ], [ 0, %cleanup.cleanup163_crit_edge ], [ 0, %ext4_es_end.exit45.i.cleanup163_crit_edge ], [ 0, %__es_tree_search.exit.cleanup163_crit_edge ], [ 0, %if.end4.cleanup163_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %rc) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %orig_es) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__es_insert_extent(ptr noundef %inode, ptr nocapture noundef readonly %newes) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_es_tree = getelementptr i8, ptr %inode, i32 904
  %0 = ptrtoint ptr %i_es_tree to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_es_tree, align 4
  %tobool.not135 = icmp eq ptr %1, null
  br i1 %tobool.not135, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %es_lblk = getelementptr inbounds %struct.extent_status, ptr %newes, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end34.while.body_crit_edge, %while.body.lr.ph
  %2 = phi ptr [ %1, %while.body.lr.ph ], [ %48, %if.end34.while.body_crit_edge ]
  %p.0136 = phi ptr [ %i_es_tree, %while.body.lr.ph ], [ %p.1, %if.end34.while.body_crit_edge ]
  %3 = ptrtoint ptr %es_lblk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %es_lblk, align 4
  %es_lblk4 = getelementptr inbounds %struct.extent_status, ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %es_lblk4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %es_lblk4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp = icmp ult i32 %4, %6
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %call = tail call fastcc i32 @ext4_es_can_be_merged(ptr noundef %newes, ptr noundef nonnull %2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.end16, label %if.then6

if.then6:                                         ; preds = %if.then
  %es_lblk4.le = getelementptr inbounds %struct.extent_status, ptr %2, i32 0, i32 1
  %7 = ptrtoint ptr %es_lblk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %es_lblk, align 4
  %9 = ptrtoint ptr %es_lblk4.le to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %es_lblk4.le, align 4
  %es_len = getelementptr inbounds %struct.extent_status, ptr %newes, i32 0, i32 2
  %10 = ptrtoint ptr %es_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %es_len, align 8
  %es_len9 = getelementptr inbounds %struct.extent_status, ptr %2, i32 0, i32 2
  %12 = ptrtoint ptr %es_len9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %es_len9, align 8
  %add = add i32 %13, %11
  store i32 %add, ptr %es_len9, align 8
  %es_pblk.i.i = getelementptr inbounds %struct.extent_status, ptr %2, i32 0, i32 3
  %14 = ptrtoint ptr %es_pblk.i.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %es_pblk.i.i, align 8
  %16 = and i64 %15, 1729382256910270464
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %16)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %if.then6.if.end_crit_edge, label %if.then14

if.then6.if.end_crit_edge:                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then14:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  %es_pblk = getelementptr inbounds %struct.extent_status, ptr %newes, i32 0, i32 3
  %18 = ptrtoint ptr %es_pblk to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %es_pblk, align 8
  %and.i85 = and i64 %19, 576460752303423487
  %and1.i = and i64 %15, -576460752303423488
  %or.i = or i64 %and.i85, %and1.i
  %20 = ptrtoint ptr %es_pblk.i.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %or.i, ptr %es_pblk.i.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.then14, %if.then6.if.end_crit_edge
  %call.i = tail call ptr @rb_prev(ptr noundef nonnull %2) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.out_crit_edge, label %if.end.i

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end.i:                                         ; preds = %if.end
  %call4.i = tail call fastcc i32 @ext4_es_can_be_merged(ptr noundef nonnull %call.i, ptr noundef nonnull %2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end.i.out_crit_edge, label %if.then6.i

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then6.i:                                       ; preds = %if.end.i
  %21 = ptrtoint ptr %es_len9 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %es_len9, align 8
  %es_len7.i = getelementptr inbounds %struct.extent_status, ptr %call.i, i32 0, i32 2
  %23 = ptrtoint ptr %es_len7.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %es_len7.i, align 8
  %add.i = add i32 %24, %22
  store i32 %add.i, ptr %es_len7.i, align 8
  %25 = ptrtoint ptr %es_pblk.i.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %es_pblk.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %26)
  %tobool9.not.i = icmp sgt i64 %26, -1
  br i1 %tobool9.not.i, label %if.then6.i.if.end11.i_crit_edge, label %if.then10.i

if.then6.i.if.end11.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i

if.then10.i:                                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #11
  %es_pblk.i.i86 = getelementptr inbounds %struct.extent_status, ptr %call.i, i32 0, i32 3
  %27 = ptrtoint ptr %es_pblk.i.i86 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %es_pblk.i.i86, align 8
  %or.i.i = or i64 %28, -9223372036854775808
  store i64 %or.i.i, ptr %es_pblk.i.i86, align 8
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then10.i, %if.then6.i.if.end11.i_crit_edge
  tail call void @rb_erase(ptr noundef nonnull %2, ptr noundef %i_es_tree) #9
  tail call fastcc void @ext4_es_free_extent(ptr noundef %inode, ptr noundef nonnull %2) #9
  br label %out

if.end16:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %p.0136 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %p.0136, align 4
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %30, i32 0, i32 2
  br label %if.end34

if.else:                                          ; preds = %while.body
  %es_len.i87 = getelementptr inbounds %struct.extent_status, ptr %2, i32 0, i32 2
  %31 = ptrtoint ptr %es_len.i87 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %es_len.i87, align 8
  %add.i88 = add i32 %32, %6
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i88, i32 %6)
  %cmp.i = icmp ult i32 %add.i88, %6
  br i1 %cmp.i, label %do.body3.i, label %ext4_es_end.exit, !prof !107

do.body3.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/extents_status.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 202, 0\0A.popsection", ""() #9, !srcloc !108
  unreachable

ext4_es_end.exit:                                 ; preds = %if.else
  %sub.i = add i32 %add.i88, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %sub.i)
  %cmp19 = icmp ugt i32 %4, %sub.i
  br i1 %cmp19, label %if.then20, label %do.body

if.then20:                                        ; preds = %ext4_es_end.exit
  %call21 = tail call fastcc i32 @ext4_es_can_be_merged(ptr noundef nonnull %2, ptr noundef %newes)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end28, label %if.then23

if.then23:                                        ; preds = %if.then20
  %es_len.i87.le = getelementptr inbounds %struct.extent_status, ptr %2, i32 0, i32 2
  %es_len24 = getelementptr inbounds %struct.extent_status, ptr %newes, i32 0, i32 2
  %33 = ptrtoint ptr %es_len24 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %es_len24, align 8
  %35 = ptrtoint ptr %es_len.i87.le to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %es_len.i87.le, align 8
  %add26 = add i32 %36, %34
  store i32 %add26, ptr %es_len.i87.le, align 8
  %call.i90 = tail call ptr @rb_next(ptr noundef nonnull %2) #9
  %tobool.not.i91 = icmp eq ptr %call.i90, null
  br i1 %tobool.not.i91, label %if.then23.out_crit_edge, label %if.end.i94

if.then23.out_crit_edge:                          ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end.i94:                                       ; preds = %if.then23
  %call4.i92 = tail call fastcc i32 @ext4_es_can_be_merged(ptr noundef nonnull %2, ptr noundef nonnull %call.i90) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i92)
  %tobool5.not.i93 = icmp eq i32 %call4.i92, 0
  br i1 %tobool5.not.i93, label %if.end.i94.out_crit_edge, label %if.then6.i100

if.end.i94.out_crit_edge:                         ; preds = %if.end.i94
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then6.i100:                                    ; preds = %if.end.i94
  %es_len.i95 = getelementptr inbounds %struct.extent_status, ptr %call.i90, i32 0, i32 2
  %37 = ptrtoint ptr %es_len.i95 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %es_len.i95, align 8
  %39 = ptrtoint ptr %es_len.i87.le to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %es_len.i87.le, align 8
  %add.i97 = add i32 %40, %38
  store i32 %add.i97, ptr %es_len.i87.le, align 8
  %es_pblk.i.i.i98 = getelementptr inbounds %struct.extent_status, ptr %call.i90, i32 0, i32 3
  %41 = ptrtoint ptr %es_pblk.i.i.i98 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %es_pblk.i.i.i98, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %42)
  %tobool9.not.i99 = icmp sgt i64 %42, -1
  br i1 %tobool9.not.i99, label %if.then6.i100.if.end11.i104_crit_edge, label %if.then10.i103

if.then6.i100.if.end11.i104_crit_edge:            ; preds = %if.then6.i100
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i104

if.then10.i103:                                   ; preds = %if.then6.i100
  call void @__sanitizer_cov_trace_pc() #11
  %es_pblk.i.i101 = getelementptr inbounds %struct.extent_status, ptr %2, i32 0, i32 3
  %43 = ptrtoint ptr %es_pblk.i.i101 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %es_pblk.i.i101, align 8
  %or.i.i102 = or i64 %44, -9223372036854775808
  store i64 %or.i.i102, ptr %es_pblk.i.i101, align 8
  br label %if.end11.i104

if.end11.i104:                                    ; preds = %if.then10.i103, %if.then6.i100.if.end11.i104_crit_edge
  tail call void @rb_erase(ptr noundef nonnull %call.i90, ptr noundef %i_es_tree) #9
  tail call fastcc void @ext4_es_free_extent(ptr noundef %inode, ptr noundef nonnull %call.i90) #9
  br label %out

if.end28:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %p.0136 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %p.0136, align 4
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %46, i32 0, i32 1
  br label %if.end34

do.body:                                          ; preds = %ext4_es_end.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/extents_status.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 792, 0\0A.popsection", ""() #9, !srcloc !115
  unreachable

if.end34:                                         ; preds = %if.end28, %if.end16
  %p.1 = phi ptr [ %rb_left, %if.end16 ], [ %rb_right, %if.end28 ]
  %47 = ptrtoint ptr %p.1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %p.1, align 4
  %tobool.not = icmp eq ptr %48, null
  br i1 %tobool.not, label %while.cond.while.end_crit_edge, label %if.end34.while.body_crit_edge

if.end34.while.body_crit_edge:                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.cond.while.end_crit_edge:                   ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  %phi.cast.le = ptrtoint ptr %2 to i32
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %entry.while.end_crit_edge
  %p.0.lcssa = phi ptr [ %p.1, %while.cond.while.end_crit_edge ], [ %i_es_tree, %entry.while.end_crit_edge ]
  %parent.0.lcssa = phi i32 [ %phi.cast.le, %while.cond.while.end_crit_edge ], [ 0, %entry.while.end_crit_edge ]
  %es_lblk35 = getelementptr inbounds %struct.extent_status, ptr %newes, i32 0, i32 1
  %49 = ptrtoint ptr %es_lblk35 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %es_lblk35, align 4
  %es_len36 = getelementptr inbounds %struct.extent_status, ptr %newes, i32 0, i32 2
  %51 = ptrtoint ptr %es_len36 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %es_len36, align 8
  %es_pblk37 = getelementptr inbounds %struct.extent_status, ptr %newes, i32 0, i32 3
  %53 = ptrtoint ptr %es_pblk37 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %es_pblk37, align 8
  %55 = load ptr, ptr @ext4_es_cachep, align 4
  %call.i105 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %55, i32 noundef 2592) #9
  %cmp.i106 = icmp eq ptr %call.i105, null
  br i1 %cmp.i106, label %while.end.cleanup_crit_edge, label %if.end.i111

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i111:                                      ; preds = %while.end
  %es_lblk.i107 = getelementptr inbounds %struct.extent_status, ptr %call.i105, i32 0, i32 1
  %56 = ptrtoint ptr %es_lblk.i107 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %50, ptr %es_lblk.i107, align 4
  %es_len.i108 = getelementptr inbounds %struct.extent_status, ptr %call.i105, i32 0, i32 2
  %57 = ptrtoint ptr %es_len.i108 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %52, ptr %es_len.i108, align 8
  %es_pblk.i109 = getelementptr inbounds %struct.extent_status, ptr %call.i105, i32 0, i32 3
  %58 = ptrtoint ptr %es_pblk.i109 to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %54, ptr %es_pblk.i109, align 8
  %59 = and i64 %54, 2305843009213693952
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %59)
  %tobool.not.i110 = icmp eq i64 %59, 0
  br i1 %tobool.not.i110, label %if.then2.i, label %if.end.i111.if.end41_crit_edge

if.end.i111.if.end41_crit_edge:                   ; preds = %if.end.i111
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.then2.i:                                       ; preds = %if.end.i111
  %i_es_shk_nr.i = getelementptr i8, ptr %inode, i32 968
  %60 = ptrtoint ptr %i_es_shk_nr.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %i_es_shk_nr.i, align 8
  %inc.i = add i32 %61, 1
  store i32 %inc.i, ptr %i_es_shk_nr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool3.not.i = icmp eq i32 %61, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.then2.i.if.end5.i_crit_edge

if.then2.i.if.end5.i_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.then4.i:                                       ; preds = %if.then2.i
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %62 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %63, i32 0, i32 33
  %64 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %i_es_list.i.i = getelementptr i8, ptr %inode, i32 956
  %66 = ptrtoint ptr %i_es_list.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile ptr, ptr %i_es_list.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %67, %i_es_list.i.i
  br i1 %cmp.i.not.i.i, label %if.end.i.i, label %if.then4.i.if.end5.i_crit_edge

if.then4.i.if.end5.i_crit_edge:                   ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.end.i.i:                                       ; preds = %if.then4.i
  %s_es_lock.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %65, i32 0, i32 130
  tail call void @_raw_spin_lock(ptr noundef %s_es_lock.i.i) #9
  %68 = ptrtoint ptr %i_es_list.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile ptr, ptr %i_es_list.i.i, align 4
  %cmp.i16.not.i.i = icmp eq ptr %69, %i_es_list.i.i
  br i1 %cmp.i16.not.i.i, label %if.then5.i.i, label %if.end.i.i.if.end7.i.i_crit_edge

if.end.i.i.if.end7.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i.i

if.then5.i.i:                                     ; preds = %if.end.i.i
  %s_es_list.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %65, i32 0, i32 124
  %prev.i.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %65, i32 0, i32 124, i32 1
  %70 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %i_es_list.i.i, ptr noundef %71, ptr noundef %s_es_list.i.i) #9
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then5.i.i.list_add_tail.exit.i.i_crit_edge

if.then5.i.i.list_add_tail.exit.i.i_crit_edge:    ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %72 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %i_es_list.i.i, ptr %prev.i.i.i, align 4
  %73 = ptrtoint ptr %i_es_list.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %s_es_list.i.i, ptr %i_es_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr i8, ptr %inode, i32 960
  %74 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %71, ptr %prev3.i.i.i.i, align 4
  %75 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %i_es_list.i.i, ptr %71, align 4
  br label %list_add_tail.exit.i.i

list_add_tail.exit.i.i:                           ; preds = %if.end.i.i.i.i, %if.then5.i.i.list_add_tail.exit.i.i_crit_edge
  %s_es_nr_inode.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %65, i32 0, i32 125
  %76 = ptrtoint ptr %s_es_nr_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %s_es_nr_inode.i.i, align 64
  %inc.i.i = add i32 %77, 1
  store i32 %inc.i.i, ptr %s_es_nr_inode.i.i, align 64
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %list_add_tail.exit.i.i, %if.end.i.i.if.end7.i.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %s_es_lock.i.i) #9
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.end7.i.i, %if.then4.i.if.end5.i_crit_edge, %if.then2.i.if.end5.i_crit_edge
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %78 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %79, i32 0, i32 33
  %80 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %s_fs_info.i.i, align 16
  %es_stats_shk_cnt.i = getelementptr inbounds %struct.ext4_sb_info, ptr %81, i32 0, i32 126, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %82 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %es_stats_shk_cnt.i, i64 noundef 1, i32 noundef %82) #9
  br label %if.end41

if.end41:                                         ; preds = %if.end5.i, %if.end.i111.if.end41_crit_edge
  %i_es_all_nr.i = getelementptr i8, ptr %inode, i32 964
  %83 = ptrtoint ptr %i_es_all_nr.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %i_es_all_nr.i, align 4
  %inc11.i = add i32 %84, 1
  store i32 %inc11.i, ptr %i_es_all_nr.i, align 4
  %i_sb12.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %85 = ptrtoint ptr %i_sb12.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %i_sb12.i, align 4
  %s_fs_info.i24.i = getelementptr inbounds %struct.super_block, ptr %86, i32 0, i32 33
  %87 = ptrtoint ptr %s_fs_info.i24.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %s_fs_info.i24.i, align 16
  %es_stats_all_cnt.i = getelementptr inbounds %struct.ext4_sb_info, ptr %88, i32 0, i32 126, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %89 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %es_stats_all_cnt.i, i64 noundef 1, i32 noundef %89) #9
  %90 = ptrtoint ptr %call.i105 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %parent.0.lcssa, ptr %call.i105, align 8
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %call.i105, i32 0, i32 1
  %91 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr null, ptr %rb_right.i, align 4
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %call.i105, i32 0, i32 2
  %92 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr null, ptr %rb_left.i, align 8
  %93 = ptrtoint ptr %p.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %call.i105, ptr %p.0.lcssa, align 4
  tail call void @rb_insert_color(ptr noundef nonnull %call.i105, ptr noundef %i_es_tree) #9
  br label %out

out:                                              ; preds = %if.end41, %if.end11.i104, %if.end.i94.out_crit_edge, %if.then23.out_crit_edge, %if.end11.i, %if.end.i.out_crit_edge, %if.end.out_crit_edge
  %es.0 = phi ptr [ %call.i105, %if.end41 ], [ %2, %if.end.out_crit_edge ], [ %call.i, %if.end11.i ], [ %2, %if.end.i.out_crit_edge ], [ %2, %if.then23.out_crit_edge ], [ %2, %if.end.i94.out_crit_edge ], [ %2, %if.end11.i104 ]
  %cache_es = getelementptr i8, ptr %inode, i32 908
  %94 = ptrtoint ptr %cache_es to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %es.0, ptr %cache_es, align 4
  br label %cleanup

cleanup:                                          ; preds = %out, %while.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %out ], [ -12, %while.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__es_shrink(ptr noundef %sbi, i32 noundef %nr_to_scan, ptr noundef %locked_ei) unnamed_addr #2 align 64 {
entry:
  %nr_to_scan.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %nr_to_scan.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %nr_to_scan, ptr %nr_to_scan.addr, align 4
  %call = tail call i64 @ktime_get() #9
  %s_es_lock = getelementptr inbounds %struct.ext4_sb_info, ptr %sbi, i32 0, i32 130
  %s_es_nr_inode = getelementptr inbounds %struct.ext4_sb_info, ptr %sbi, i32 0, i32 125
  %s_es_list = getelementptr inbounds %struct.ext4_sb_info, ptr %sbi, i32 0, i32 124
  %prev.i2.i = getelementptr inbounds %struct.ext4_sb_info, ptr %sbi, i32 0, i32 124, i32 1
  tail call void @_raw_spin_lock(ptr noundef %s_es_lock) #9
  %1 = ptrtoint ptr %s_es_nr_inode to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %s_es_nr_inode, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp130138 = icmp sgt i32 %2, 0
  br i1 %cmp130138, label %entry.while.body.lr.ph_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

entry.while.body.lr.ph_crit_edge:                 ; preds = %entry
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end21.while.body.lr.ph_crit_edge, %entry.while.body.lr.ph_crit_edge
  %dec129141.in = phi i32 [ %dec133, %if.end21.while.body.lr.ph_crit_edge ], [ %2, %entry.while.body.lr.ph_crit_edge ]
  %nr_skipped.1.ph140 = phi i32 [ %nr_skipped.1131, %if.end21.while.body.lr.ph_crit_edge ], [ 0, %entry.while.body.lr.ph_crit_edge ]
  %nr_shrunk.1.ph139 = phi i32 [ %add, %if.end21.while.body.lr.ph_crit_edge ], [ 0, %entry.while.body.lr.ph_crit_edge ]
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %dec133.in = phi i32 [ %dec129141.in, %while.body.lr.ph ], [ %dec133, %while.cond.backedge.while.body_crit_edge ]
  %nr_skipped.1131 = phi i32 [ %nr_skipped.1.ph140, %while.body.lr.ph ], [ %nr_skipped.1.be, %while.cond.backedge.while.body_crit_edge ]
  %dec133 = add nsw i32 %dec133.in, -1
  %3 = ptrtoint ptr %s_es_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %s_es_list, align 4
  %cmp.i.not = icmp eq ptr %4, %s_es_list
  br i1 %cmp.i.not, label %while.body.if.then_crit_edge, label %if.end

while.body.if.then_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %while.body.1.if.then_crit_edge, %while.body.if.then_crit_edge
  %retried.0.lcssa = phi i32 [ 0, %while.body.if.then_crit_edge ], [ 1, %while.body.1.if.then_crit_edge ]
  %nr_shrunk.1.ph139.lcssa = phi i32 [ %nr_shrunk.1.ph139, %while.body.if.then_crit_edge ], [ %nr_shrunk.1.ph139.1, %while.body.1.if.then_crit_edge ]
  %nr_skipped.1131.lcssa = phi i32 [ %nr_skipped.1131, %while.body.if.then_crit_edge ], [ %nr_skipped.1131.1, %while.body.1.if.then_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %s_es_lock) #9
  br label %out

if.end:                                           ; preds = %while.body
  %add.ptr = getelementptr i8, ptr %4, i32 -1420
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %4) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end.__list_del_entry.exit.i_crit_edge

if.end.__list_del_entry.exit.i_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.end.__list_del_entry.exit.i_crit_edge
  %11 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %4, ptr noundef %12, ptr noundef %s_es_list) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.land.lhs.true_crit_edge

__list_del_entry.exit.i.land.lhs.true_crit_edge:  ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %4, ptr %prev.i2.i, align 4
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %s_es_list, ptr %4, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %15 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev3.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %4, ptr %12, align 4
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.land.lhs.true_crit_edge
  %i_state_flags.i = getelementptr i8, ptr %4, i32 -1340
  %17 = ptrtoint ptr %i_state_flags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %i_state_flags.i, align 4
  %19 = and i32 %18, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool7.not = icmp ne i32 %19, 0
  %cmp10 = icmp eq ptr %add.ptr, %locked_ei
  %or.cond172 = select i1 %tobool7.not, i1 true, i1 %cmp10
  br i1 %or.cond172, label %land.lhs.true.while.cond.backedge_crit_edge, label %lor.lhs.false

land.lhs.true.while.cond.backedge_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %lor.lhs.false.while.cond.backedge_crit_edge, %land.lhs.true.while.cond.backedge_crit_edge
  %nr_skipped.1.be = add i32 %nr_skipped.1131, 1
  %cmp = icmp sgt i32 %dec133.in, 1
  br i1 %cmp, label %while.cond.backedge.while.body_crit_edge, label %while.cond.backedge.while.end_crit_edge

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

lor.lhs.false:                                    ; preds = %land.lhs.true
  %i_es_lock = getelementptr i8, ptr %4, i32 -44
  %call11 = tail call i32 @_raw_write_trylock(ptr noundef %i_es_lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %lor.lhs.false.while.cond.backedge_crit_edge, label %if.end15

lor.lhs.false.while.cond.backedge_crit_edge:      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

if.end15:                                         ; preds = %lor.lhs.false
  tail call void @_raw_spin_unlock(ptr noundef %s_es_lock) #9
  %call17 = call fastcc i32 @es_reclaim_extents(ptr noundef %add.ptr, ptr noundef nonnull %nr_to_scan.addr)
  %add = add i32 %call17, %nr_shrunk.1.ph139
  tail call void @_raw_write_unlock(ptr noundef %i_es_lock) #9
  %20 = ptrtoint ptr %nr_to_scan.addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nr_to_scan.addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp19 = icmp slt i32 %21, 1
  br i1 %cmp19, label %if.end15.out_crit_edge, label %if.end21

if.end15.out_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end21:                                         ; preds = %if.end15
  tail call void @_raw_spin_lock(ptr noundef %s_es_lock) #9
  %cmp130 = icmp sgt i32 %dec133.in, 1
  br i1 %cmp130, label %if.end21.while.body.lr.ph_crit_edge, label %if.end21.while.end_crit_edge

if.end21.while.end_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end21.while.body.lr.ph_crit_edge:              ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.lr.ph

while.end:                                        ; preds = %if.end21.while.end_crit_edge, %while.cond.backedge.while.end_crit_edge, %entry.while.end_crit_edge
  %nr_shrunk.1.ph.lcssa123 = phi i32 [ 0, %entry.while.end_crit_edge ], [ %nr_shrunk.1.ph139, %while.cond.backedge.while.end_crit_edge ], [ %add, %if.end21.while.end_crit_edge ]
  %nr_skipped.1.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %nr_skipped.1.be, %while.cond.backedge.while.end_crit_edge ], [ %nr_skipped.1131, %if.end21.while.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %s_es_lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_shrunk.1.ph.lcssa123)
  %cmp24 = icmp ne i32 %nr_shrunk.1.ph.lcssa123, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_skipped.1.lcssa)
  %tobool26.not = icmp eq i32 %nr_skipped.1.lcssa, 0
  %or.cond = select i1 %cmp24, i1 true, i1 %tobool26.not
  br i1 %or.cond, label %while.end.if.end31_crit_edge, label %retry.1

while.end.if.end31_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

retry.1:                                          ; preds = %while.end
  tail call void @_raw_spin_lock(ptr noundef %s_es_lock) #9
  %22 = ptrtoint ptr %s_es_nr_inode to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %s_es_nr_inode, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp130138.1 = icmp sgt i32 %23, 0
  br i1 %cmp130138.1, label %retry.1.while.body.lr.ph.1_crit_edge, label %retry.1.while.end.1_crit_edge

retry.1.while.end.1_crit_edge:                    ; preds = %retry.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.1

retry.1.while.body.lr.ph.1_crit_edge:             ; preds = %retry.1
  br label %while.body.lr.ph.1

while.body.lr.ph.1:                               ; preds = %if.end21.1.while.body.lr.ph.1_crit_edge, %retry.1.while.body.lr.ph.1_crit_edge
  %dec129141.in.1 = phi i32 [ %dec133.1, %if.end21.1.while.body.lr.ph.1_crit_edge ], [ %23, %retry.1.while.body.lr.ph.1_crit_edge ]
  %nr_skipped.1.ph140.1 = phi i32 [ %nr_skipped.1131.1, %if.end21.1.while.body.lr.ph.1_crit_edge ], [ %nr_skipped.1.lcssa, %retry.1.while.body.lr.ph.1_crit_edge ]
  %nr_shrunk.1.ph139.1 = phi i32 [ %add.1, %if.end21.1.while.body.lr.ph.1_crit_edge ], [ 0, %retry.1.while.body.lr.ph.1_crit_edge ]
  br label %while.body.1

while.body.1:                                     ; preds = %while.cond.backedge.1.while.body.1_crit_edge, %while.body.lr.ph.1
  %dec133.in.1 = phi i32 [ %dec129141.in.1, %while.body.lr.ph.1 ], [ %dec133.1, %while.cond.backedge.1.while.body.1_crit_edge ]
  %nr_skipped.1131.1 = phi i32 [ %nr_skipped.1.ph140.1, %while.body.lr.ph.1 ], [ %nr_skipped.1.be.1, %while.cond.backedge.1.while.body.1_crit_edge ]
  %dec133.1 = add nsw i32 %dec133.in.1, -1
  %24 = ptrtoint ptr %s_es_list to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %s_es_list, align 4
  %cmp.i.not.1 = icmp eq ptr %25, %s_es_list
  br i1 %cmp.i.not.1, label %while.body.1.if.then_crit_edge, label %if.end.1

while.body.1.if.then_crit_edge:                   ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.end.1:                                         ; preds = %while.body.1
  %add.ptr.1 = getelementptr i8, ptr %25, i32 -1420
  %call.i.i.1 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %25) #9
  br i1 %call.i.i.1, label %if.end.i.i.1, label %if.end.1.__list_del_entry.exit.i.1_crit_edge

if.end.1.__list_del_entry.exit.i.1_crit_edge:     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %__list_del_entry.exit.i.1

if.end.i.i.1:                                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.1 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i.1, align 4
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %25, align 4
  %prev1.i.i.i.1 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev1.i.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev1.i.i.i.1, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %29, ptr %27, align 4
  br label %__list_del_entry.exit.i.1

__list_del_entry.exit.i.1:                        ; preds = %if.end.i.i.1, %if.end.1.__list_del_entry.exit.i.1_crit_edge
  %32 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i.1 = tail call zeroext i1 @__list_add_valid(ptr noundef %25, ptr noundef %33, ptr noundef %s_es_list) #9
  br i1 %call.i.i.i.1, label %if.end.i.i.i.1, label %__list_del_entry.exit.i.1.if.end9.1_crit_edge

__list_del_entry.exit.i.1.if.end9.1_crit_edge:    ; preds = %__list_del_entry.exit.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.1

if.end.i.i.i.1:                                   ; preds = %__list_del_entry.exit.i.1
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %25, ptr %prev.i2.i, align 4
  %35 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %s_es_list, ptr %25, align 4
  %prev3.i.i.i.1 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %36 = ptrtoint ptr %prev3.i.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev3.i.i.i.1, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %25, ptr %33, align 4
  br label %if.end9.1

if.end9.1:                                        ; preds = %if.end.i.i.i.1, %__list_del_entry.exit.i.1.if.end9.1_crit_edge
  %cmp10.old.1 = icmp eq ptr %add.ptr.1, %locked_ei
  br i1 %cmp10.old.1, label %if.end9.1.while.cond.backedge.1_crit_edge, label %lor.lhs.false.1

if.end9.1.while.cond.backedge.1_crit_edge:        ; preds = %if.end9.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge.1

lor.lhs.false.1:                                  ; preds = %if.end9.1
  %i_es_lock.1 = getelementptr i8, ptr %25, i32 -44
  %call11.1 = tail call i32 @_raw_write_trylock(ptr noundef %i_es_lock.1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.1)
  %tobool12.not.1 = icmp eq i32 %call11.1, 0
  br i1 %tobool12.not.1, label %lor.lhs.false.1.while.cond.backedge.1_crit_edge, label %if.end15.1

lor.lhs.false.1.while.cond.backedge.1_crit_edge:  ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge.1

if.end15.1:                                       ; preds = %lor.lhs.false.1
  tail call void @_raw_spin_unlock(ptr noundef %s_es_lock) #9
  %call17.1 = call fastcc i32 @es_reclaim_extents(ptr noundef %add.ptr.1, ptr noundef nonnull %nr_to_scan.addr)
  %add.1 = add i32 %call17.1, %nr_shrunk.1.ph139.1
  tail call void @_raw_write_unlock(ptr noundef %i_es_lock.1) #9
  %38 = ptrtoint ptr %nr_to_scan.addr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %nr_to_scan.addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %39)
  %cmp19.1 = icmp slt i32 %39, 1
  br i1 %cmp19.1, label %if.end15.1.out_crit_edge, label %if.end21.1

if.end15.1.out_crit_edge:                         ; preds = %if.end15.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end21.1:                                       ; preds = %if.end15.1
  tail call void @_raw_spin_lock(ptr noundef %s_es_lock) #9
  %cmp130.1 = icmp sgt i32 %dec133.in.1, 1
  br i1 %cmp130.1, label %if.end21.1.while.body.lr.ph.1_crit_edge, label %if.end21.1.while.end.1_crit_edge

if.end21.1.while.end.1_crit_edge:                 ; preds = %if.end21.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.1

if.end21.1.while.body.lr.ph.1_crit_edge:          ; preds = %if.end21.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.lr.ph.1

while.cond.backedge.1:                            ; preds = %lor.lhs.false.1.while.cond.backedge.1_crit_edge, %if.end9.1.while.cond.backedge.1_crit_edge
  %nr_skipped.1.be.1 = add i32 %nr_skipped.1131.1, 1
  %cmp.1 = icmp sgt i32 %dec133.in.1, 1
  br i1 %cmp.1, label %while.cond.backedge.1.while.body.1_crit_edge, label %while.cond.backedge.1.while.end.1_crit_edge

while.cond.backedge.1.while.end.1_crit_edge:      ; preds = %while.cond.backedge.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.1

while.cond.backedge.1.while.body.1_crit_edge:     ; preds = %while.cond.backedge.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.1

while.end.1:                                      ; preds = %while.cond.backedge.1.while.end.1_crit_edge, %if.end21.1.while.end.1_crit_edge, %retry.1.while.end.1_crit_edge
  %nr_shrunk.1.ph.lcssa123.1 = phi i32 [ 0, %retry.1.while.end.1_crit_edge ], [ %add.1, %if.end21.1.while.end.1_crit_edge ], [ %nr_shrunk.1.ph139.1, %while.cond.backedge.1.while.end.1_crit_edge ]
  %nr_skipped.1.lcssa.1 = phi i32 [ %nr_skipped.1.lcssa, %retry.1.while.end.1_crit_edge ], [ %nr_skipped.1131.1, %if.end21.1.while.end.1_crit_edge ], [ %nr_skipped.1.be.1, %while.cond.backedge.1.while.end.1_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %s_es_lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_shrunk.1.ph.lcssa123.1)
  %cmp24.1 = icmp ne i32 %nr_shrunk.1.ph.lcssa123.1, 0
  br label %if.end31

if.end31:                                         ; preds = %while.end.1, %while.end.if.end31_crit_edge
  %nr_shrunk.1.ph.lcssa123.lcssa = phi i32 [ %nr_shrunk.1.ph.lcssa123, %while.end.if.end31_crit_edge ], [ %nr_shrunk.1.ph.lcssa123.1, %while.end.1 ]
  %nr_skipped.1.lcssa.lcssa = phi i32 [ %nr_skipped.1.lcssa, %while.end.if.end31_crit_edge ], [ %nr_skipped.1.lcssa.1, %while.end.1 ]
  %cmp24.lcssa = phi i1 [ %cmp24, %while.end.if.end31_crit_edge ], [ %cmp24.1, %while.end.1 ]
  %retried.0.lcssa203 = phi i32 [ 0, %while.end.if.end31_crit_edge ], [ 1, %while.end.1 ]
  %tobool32.not = icmp eq ptr %locked_ei, null
  %brmerge116 = select i1 %tobool32.not, i1 true, i1 %cmp24.lcssa
  br i1 %brmerge116, label %if.end31.out_crit_edge, label %if.then35

if.end31.out_crit_edge:                           ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then35:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  %call36 = call fastcc i32 @es_reclaim_extents(ptr noundef nonnull %locked_ei, ptr noundef nonnull %nr_to_scan.addr)
  br label %out

out:                                              ; preds = %if.then35, %if.end31.out_crit_edge, %if.end15.1.out_crit_edge, %if.end15.out_crit_edge, %if.then
  %retried.0204 = phi i32 [ %retried.0.lcssa, %if.then ], [ %retried.0.lcssa203, %if.then35 ], [ %retried.0.lcssa203, %if.end31.out_crit_edge ], [ 0, %if.end15.out_crit_edge ], [ 1, %if.end15.1.out_crit_edge ]
  %nr_skipped.1121 = phi i32 [ %nr_skipped.1131.lcssa, %if.then ], [ %nr_skipped.1.lcssa.lcssa, %if.then35 ], [ %nr_skipped.1.lcssa.lcssa, %if.end31.out_crit_edge ], [ %nr_skipped.1131, %if.end15.out_crit_edge ], [ %nr_skipped.1131.1, %if.end15.1.out_crit_edge ]
  %nr_shrunk.2 = phi i32 [ %nr_shrunk.1.ph139.lcssa, %if.then ], [ %call36, %if.then35 ], [ %nr_shrunk.1.ph.lcssa123.lcssa, %if.end31.out_crit_edge ], [ %add, %if.end15.out_crit_edge ], [ %add.1, %if.end15.1.out_crit_edge ]
  %call38 = tail call i64 @ktime_get() #9
  %sub = sub i64 %call38, %call
  %es_stats_scan_time = getelementptr inbounds %struct.ext4_sb_info, ptr %sbi, i32 0, i32 126, i32 3
  %40 = ptrtoint ptr %es_stats_scan_time to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %es_stats_scan_time, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %41)
  %tobool40.not = icmp eq i64 %41, 0
  br i1 %tobool40.not, label %out.if.end48_crit_edge, label %if.then43, !prof !107

out.if.end48_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.then43:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  %mul = mul i64 %41, 3
  %add45 = add i64 %mul, %sub
  %div114 = lshr i64 %add45, 2
  br label %if.end48

if.end48:                                         ; preds = %if.then43, %out.if.end48_crit_edge
  %storemerge = phi i64 [ %div114, %if.then43 ], [ %sub, %out.if.end48_crit_edge ]
  %42 = ptrtoint ptr %es_stats_scan_time to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %storemerge, ptr %es_stats_scan_time, align 8
  %es_stats_max_scan_time = getelementptr inbounds %struct.ext4_sb_info, ptr %sbi, i32 0, i32 126, i32 4
  %43 = ptrtoint ptr %es_stats_max_scan_time to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %es_stats_max_scan_time, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %44)
  %cmp49 = icmp ugt i64 %sub, %44
  br i1 %cmp49, label %if.then50, label %if.end48.if.end52_crit_edge

if.end48.if.end52_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.then50:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %es_stats_max_scan_time to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %sub, ptr %es_stats_max_scan_time, align 8
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %if.end48.if.end52_crit_edge
  %s_es_stats = getelementptr inbounds %struct.ext4_sb_info, ptr %sbi, i32 0, i32 126
  %46 = ptrtoint ptr %s_es_stats to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %s_es_stats, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool53.not = icmp eq i32 %47, 0
  %mul62 = mul i32 %47, 3
  %add63 = add i32 %mul62, %nr_shrunk.2
  %div64113 = lshr i32 %add63, 2
  %storemerge112 = select i1 %tobool53.not, i32 %nr_shrunk.2, i32 %div64113, !prof !107
  %48 = ptrtoint ptr %s_es_stats to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %storemerge112, ptr %s_es_stats, align 8
  %s_sb = getelementptr inbounds %struct.ext4_sb_info, ptr %sbi, i32 0, i32 45
  %49 = ptrtoint ptr %s_sb to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %s_sb, align 32
  tail call fastcc void @trace_ext4_es_shrink(ptr noundef %50, i32 noundef %nr_shrunk.2, i64 noundef %sub, i32 noundef %nr_skipped.1121, i32 noundef %retried.0204)
  ret i32 %nr_shrunk.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ext4_es_cache_extent(ptr noundef %inode, i32 noundef %lblk, i32 noundef %len, i64 noundef %pblk, i32 noundef %status) local_unnamed_addr #2 align 64 {
entry:
  %newes = alloca %struct.extent_status, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %newes) #9
  %0 = call ptr @memset(ptr %newes, i32 255, i32 24)
  %add = add i32 %lblk, -1
  %sub = add i32 %add, %len
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %1 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 33
  %3 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_state = getelementptr inbounds %struct.ext4_sb_info, ptr %4, i32 0, i32 25
  %5 = ptrtoint ptr %s_mount_state to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %s_mount_state, align 8
  %7 = and i16 %6, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not = icmp eq i16 %7, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %es_lblk = getelementptr inbounds %struct.extent_status, ptr %newes, i32 0, i32 1
  %8 = ptrtoint ptr %es_lblk to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %lblk, ptr %es_lblk, align 4
  %es_len = getelementptr inbounds %struct.extent_status, ptr %newes, i32 0, i32 2
  %9 = ptrtoint ptr %es_len to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %len, ptr %es_len, align 8
  %conv.i = zext i32 %status to i64
  %shl.i = shl i64 %conv.i, 59
  %and1.i = and i64 %pblk, 576460752303423487
  %or.i = or i64 %shl.i, %and1.i
  %es_pblk.i = getelementptr inbounds %struct.extent_status, ptr %newes, i32 0, i32 3
  %10 = ptrtoint ptr %es_pblk.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %or.i, ptr %es_pblk.i, align 8
  call fastcc void @trace_ext4_es_cache_extent(ptr noundef %inode, ptr noundef nonnull %newes)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool1.not = icmp eq i32 %len, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %lblk)
  %cmp = icmp ult i32 %sub, %lblk
  br i1 %cmp, label %do.body8, label %do.end14, !prof !107

do.body8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/extents_status.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 899, 0\0A.popsection", ""() #9, !srcloc !116
  unreachable

do.end14:                                         ; preds = %do.body
  %i_es_lock = getelementptr i8, ptr %inode, i32 912
  call void @_raw_write_lock(ptr noundef %i_es_lock) #9
  %i_es_tree = getelementptr i8, ptr %inode, i32 904
  %11 = ptrtoint ptr %i_es_tree to i32
  call void @__asan_load4_noabort(i32 %11)
  %node.050.i = load ptr, ptr %i_es_tree, align 4
  %tobool.not51.i = icmp eq ptr %node.050.i, null
  br i1 %tobool.not51.i, label %do.end14.if.then23_crit_edge, label %do.end14.while.body.i_crit_edge

do.end14.while.body.i_crit_edge:                  ; preds = %do.end14
  br label %while.body.i

do.end14.if.then23_crit_edge:                     ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then23

while.body.i:                                     ; preds = %while.body.i.backedge, %do.end14.while.body.i_crit_edge
  %node.052.i = phi ptr [ %node.052.i.be, %while.body.i.backedge ], [ %node.050.i, %do.end14.while.body.i_crit_edge ]
  %es_lblk.i = getelementptr inbounds %struct.extent_status, ptr %node.052.i, i32 0, i32 1
  %12 = ptrtoint ptr %es_lblk.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %es_lblk.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %lblk)
  %cmp.i = icmp ugt i32 %13, %lblk
  br i1 %cmp.i, label %if.end4.i, label %if.else.i

if.else.i:                                        ; preds = %while.body.i
  %es_len.i.i = getelementptr inbounds %struct.extent_status, ptr %node.052.i, i32 0, i32 2
  %14 = ptrtoint ptr %es_len.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %es_len.i.i, align 8
  %add.i.i = add i32 %15, %13
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %13)
  %cmp.i.i = icmp ult i32 %add.i.i, %13
  br i1 %cmp.i.i, label %do.body3.i.i, label %ext4_es_end.exit.i, !prof !107

do.body3.i.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/extents_status.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 202, 0\0A.popsection", ""() #9, !srcloc !108
  unreachable

ext4_es_end.exit.i:                               ; preds = %if.else.i
  %sub.i.i = add i32 %add.i.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %lblk)
  %cmp1.i = icmp ult i32 %sub.i.i, %lblk
  br i1 %cmp1.i, label %if.end4.i.thread, label %ext4_es_end.exit.i.lor.lhs.false_crit_edge

ext4_es_end.exit.i.lor.lhs.false_crit_edge:       ; preds = %ext4_es_end.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

if.end4.i:                                        ; preds = %while.body.i
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %node.052.i, i32 0, i32 2
  %16 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %node.0.i = load ptr, ptr %rb_left.i, align 4
  %tobool.not.i = icmp eq ptr %node.0.i, null
  br i1 %tobool.not.i, label %if.end4.i.lor.lhs.false_crit_edge, label %if.end4.i.while.body.i.backedge_crit_edge

if.end4.i.while.body.i.backedge_crit_edge:        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.backedge

if.end4.i.lor.lhs.false_crit_edge:                ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

while.body.i.backedge:                            ; preds = %if.end4.i.thread.while.body.i.backedge_crit_edge, %if.end4.i.while.body.i.backedge_crit_edge
  %node.052.i.be = phi ptr [ %node.0.i, %if.end4.i.while.body.i.backedge_crit_edge ], [ %node.0.i45, %if.end4.i.thread.while.body.i.backedge_crit_edge ]
  br label %while.body.i

if.end4.i.thread:                                 ; preds = %ext4_es_end.exit.i
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %node.052.i, i32 0, i32 1
  %17 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %node.0.i45 = load ptr, ptr %rb_right.i, align 4
  %tobool.not.i46 = icmp eq ptr %node.0.i45, null
  br i1 %tobool.not.i46, label %land.lhs.true11.critedge.i, label %if.end4.i.thread.while.body.i.backedge_crit_edge

if.end4.i.thread.while.body.i.backedge_crit_edge: ; preds = %if.end4.i.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.backedge

land.lhs.true11.critedge.i:                       ; preds = %if.end4.i.thread
  %es_len.i.i.le = getelementptr inbounds %struct.extent_status, ptr %node.052.i, i32 0, i32 2
  %18 = ptrtoint ptr %es_len.i.i.le to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %es_len.i.i.le, align 8
  %add.i41.i = add i32 %19, %13
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i41.i, i32 %13)
  %cmp.i42.i = icmp ult i32 %add.i41.i, %13
  br i1 %cmp.i42.i, label %do.body3.i43.i, label %ext4_es_end.exit45.i, !prof !107

do.body3.i43.i:                                   ; preds = %land.lhs.true11.critedge.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/extents_status.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 202, 0\0A.popsection", ""() #9, !srcloc !108
  unreachable

ext4_es_end.exit45.i:                             ; preds = %land.lhs.true11.critedge.i
  %sub.i44.i = add i32 %add.i41.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i44.i, i32 %lblk)
  %cmp13.i = icmp ult i32 %sub.i44.i, %lblk
  br i1 %cmp13.i, label %__es_tree_search.exit, label %ext4_es_end.exit45.i.if.then23_crit_edge

ext4_es_end.exit45.i.if.then23_crit_edge:         ; preds = %ext4_es_end.exit45.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then23

__es_tree_search.exit:                            ; preds = %ext4_es_end.exit45.i
  %call16.i = call ptr @rb_next(ptr noundef nonnull %node.052.i) #9
  %tobool19.not = icmp eq ptr %call16.i, null
  br i1 %tobool19.not, label %__es_tree_search.exit.if.then23_crit_edge, label %__es_tree_search.exit.lor.lhs.false_crit_edge

__es_tree_search.exit.lor.lhs.false_crit_edge:    ; preds = %__es_tree_search.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

__es_tree_search.exit.if.then23_crit_edge:        ; preds = %__es_tree_search.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then23

lor.lhs.false:                                    ; preds = %__es_tree_search.exit.lor.lhs.false_crit_edge, %if.end4.i.lor.lhs.false_crit_edge, %ext4_es_end.exit.i.lor.lhs.false_crit_edge
  %retval.0.i53 = phi ptr [ %call16.i, %__es_tree_search.exit.lor.lhs.false_crit_edge ], [ %node.052.i, %ext4_es_end.exit.i.lor.lhs.false_crit_edge ], [ %node.052.i, %if.end4.i.lor.lhs.false_crit_edge ]
  %es_lblk20 = getelementptr inbounds %struct.extent_status, ptr %retval.0.i53, i32 0, i32 1
  %20 = ptrtoint ptr %es_lblk20 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %es_lblk20, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %sub)
  %cmp21 = icmp ugt i32 %21, %sub
  br i1 %cmp21, label %lor.lhs.false.if.then23_crit_edge, label %lor.lhs.false.if.end25_crit_edge

lor.lhs.false.if.end25_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

lor.lhs.false.if.then23_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then23

if.then23:                                        ; preds = %lor.lhs.false.if.then23_crit_edge, %__es_tree_search.exit.if.then23_crit_edge, %ext4_es_end.exit45.i.if.then23_crit_edge, %do.end14.if.then23_crit_edge
  %call24 = call fastcc i32 @__es_insert_extent(ptr noundef %inode, ptr noundef nonnull %newes)
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %lor.lhs.false.if.end25_crit_edge
  call void @_raw_write_unlock(ptr noundef %i_es_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %newes) #9
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ext4_es_cache_extent(ptr noundef %inode, ptr noundef %es) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_es_cache_extent, i32 0, i32 1), ptr blockaddress(@trace_ext4_es_cache_extent, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !101

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !91) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !102

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !91) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !117
  %call42 = tail call i32 @__traceiter_ext4_es_cache_extent(ptr noundef null, ptr noundef %inode, ptr noundef %es) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !118
  %13 = tail call i32 @llvm.read_register.i32(metadata !91) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !91) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !102

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !91) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !105
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_es_cache_extent, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_es_cache_extent, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ext4_es_cache_extent.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_ext4_es_cache_extent.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 2165, ptr noundef nonnull @.str.16) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !106
  %31 = tail call i32 @llvm.read_register.i32(metadata !91) #9
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
define dso_local i32 @ext4_es_lookup_extent(ptr noundef %inode, i32 noundef %lblk, ptr noundef writeonly %next_lblk, ptr noundef %es) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_state = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %s_mount_state to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %s_mount_state, align 8
  %6 = and i16 %5, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not = icmp eq i16 %6, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call fastcc void @trace_ext4_es_lookup_extent_enter(ptr noundef %inode, i32 noundef %lblk)
  %i_es_tree = getelementptr i8, ptr %inode, i32 904
  %i_es_lock = getelementptr i8, ptr %inode, i32 912
  tail call void @_raw_read_lock(ptr noundef %i_es_lock) #9
  %es_pblk = getelementptr inbounds %struct.extent_status, ptr %es, i32 0, i32 3
  %7 = ptrtoint ptr %es_pblk to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 0, ptr %es_pblk, align 8
  %es_len = getelementptr inbounds %struct.extent_status, ptr %es, i32 0, i32 2
  %8 = ptrtoint ptr %es_len to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %es_len, align 8
  %es_lblk = getelementptr inbounds %struct.extent_status, ptr %es, i32 0, i32 1
  %9 = ptrtoint ptr %es_lblk to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %es_lblk, align 4
  %cache_es = getelementptr i8, ptr %inode, i32 908
  %10 = ptrtoint ptr %cache_es to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cache_es, align 4
  %tobool5.not = icmp eq ptr %11, null
  br i1 %tobool5.not, label %if.end.if.end17_crit_edge, label %if.then6

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then6:                                         ; preds = %if.end
  %es_lblk8 = getelementptr inbounds %struct.extent_status, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %es_lblk8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %es_lblk8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %lblk)
  %cmp.not = icmp ugt i32 %13, %lblk
  br i1 %cmp.not, label %if.then6.if.end17_crit_edge, label %land.lhs.true

if.then6.if.end17_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

land.lhs.true:                                    ; preds = %if.then6
  %es_len11 = getelementptr inbounds %struct.extent_status, ptr %11, i32 0, i32 2
  %14 = ptrtoint ptr %es_len11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %es_len11, align 8
  %add = add i32 %13, -1
  %sub = add i32 %add, %15
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %lblk)
  %cmp12.not = icmp ult i32 %sub, %lblk
  br i1 %cmp12.not, label %land.lhs.true.if.end17_crit_edge, label %land.lhs.true.do.end48_crit_edge

land.lhs.true.do.end48_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end48

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.end17:                                         ; preds = %land.lhs.true.if.end17_crit_edge, %if.then6.if.end17_crit_edge, %if.end.if.end17_crit_edge
  %16 = ptrtoint ptr %i_es_tree to i32
  call void @__asan_load4_noabort(i32 %16)
  %node.0133 = load ptr, ptr %i_es_tree, align 4
  %tobool18.not134 = icmp eq ptr %node.0133, null
  br i1 %tobool18.not134, label %if.end17.if.else72_crit_edge, label %if.end17.while.body_crit_edge

if.end17.while.body_crit_edge:                    ; preds = %if.end17
  br label %while.body

if.end17.if.else72_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else72

while.body:                                       ; preds = %if.end32.while.body_crit_edge, %if.end17.while.body_crit_edge
  %node.0135 = phi ptr [ %node.0, %if.end32.while.body_crit_edge ], [ %node.0133, %if.end17.while.body_crit_edge ]
  %es_lblk22 = getelementptr inbounds %struct.extent_status, ptr %node.0135, i32 0, i32 1
  %17 = ptrtoint ptr %es_lblk22 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %es_lblk22, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %lblk)
  %cmp23 = icmp ugt i32 %18, %lblk
  br i1 %cmp23, label %if.then25, label %if.else

if.then25:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %node.0135, i32 0, i32 2
  br label %if.end32

if.else:                                          ; preds = %while.body
  %es_len.i = getelementptr inbounds %struct.extent_status, ptr %node.0135, i32 0, i32 2
  %19 = ptrtoint ptr %es_len.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %es_len.i, align 8
  %add.i = add i32 %20, %18
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %18)
  %cmp.i = icmp ult i32 %add.i, %18
  br i1 %cmp.i, label %do.body3.i, label %ext4_es_end.exit, !prof !107

do.body3.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/extents_status.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 202, 0\0A.popsection", ""() #9, !srcloc !108
  unreachable

ext4_es_end.exit:                                 ; preds = %if.else
  %sub.i = add i32 %add.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %lblk)
  %cmp27 = icmp ult i32 %sub.i, %lblk
  br i1 %cmp27, label %if.then29, label %ext4_es_end.exit.do.end48_crit_edge

ext4_es_end.exit.do.end48_crit_edge:              ; preds = %ext4_es_end.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end48

if.then29:                                        ; preds = %ext4_es_end.exit
  call void @__sanitizer_cov_trace_pc() #11
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %node.0135, i32 0, i32 1
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %if.then25
  %node.1.in = phi ptr [ %rb_left, %if.then25 ], [ %rb_right, %if.then29 ]
  %21 = ptrtoint ptr %node.1.in to i32
  call void @__asan_load4_noabort(i32 %21)
  %node.0 = load ptr, ptr %node.1.in, align 4
  %tobool18.not = icmp eq ptr %node.0, null
  br i1 %tobool18.not, label %if.end32.if.else72_crit_edge, label %if.end32.while.body_crit_edge

if.end32.while.body_crit_edge:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end32.if.else72_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else72

do.end48:                                         ; preds = %ext4_es_end.exit.do.end48_crit_edge, %land.lhs.true.do.end48_crit_edge
  %es1.2.ph = phi ptr [ %11, %land.lhs.true.do.end48_crit_edge ], [ %node.0135, %ext4_es_end.exit.do.end48_crit_edge ]
  %22 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i123127 = getelementptr inbounds %struct.super_block, ptr %23, i32 0, i32 33
  %24 = ptrtoint ptr %s_fs_info.i123127 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %s_fs_info.i123127, align 16
  %es_lblk49 = getelementptr inbounds %struct.extent_status, ptr %es1.2.ph, i32 0, i32 1
  %26 = ptrtoint ptr %es_lblk49 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %es_lblk49, align 4
  %28 = ptrtoint ptr %es_lblk to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %es_lblk, align 4
  %es_len51 = getelementptr inbounds %struct.extent_status, ptr %es1.2.ph, i32 0, i32 2
  %29 = ptrtoint ptr %es_len51 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %es_len51, align 8
  %31 = ptrtoint ptr %es_len to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %es_len, align 8
  %es_pblk53 = getelementptr inbounds %struct.extent_status, ptr %es1.2.ph, i32 0, i32 3
  %32 = ptrtoint ptr %es_pblk53 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %es_pblk53, align 8
  %34 = ptrtoint ptr %es_pblk to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %es_pblk, align 8
  %35 = load i64, ptr %es_pblk53, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %35)
  %tobool56.not = icmp sgt i64 %35, -1
  br i1 %tobool56.not, label %if.then57, label %do.end48.if.end58_crit_edge

do.end48.if.end58_crit_edge:                      ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58

if.then57:                                        ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #11
  %or.i = or i64 %35, -9223372036854775808
  %36 = ptrtoint ptr %es_pblk53 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %or.i, ptr %es_pblk53, align 8
  br label %if.end58

if.end58:                                         ; preds = %if.then57, %do.end48.if.end58_crit_edge
  %es_stats_cache_hits = getelementptr inbounds %struct.ext4_sb_info, ptr %25, i32 0, i32 126, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %37 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %es_stats_cache_hits, i64 noundef 1, i32 noundef %37) #9
  %tobool59.not = icmp eq ptr %next_lblk, null
  br i1 %tobool59.not, label %if.end58.if.end73_crit_edge, label %if.then60

if.end58.if.end73_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end73

if.then60:                                        ; preds = %if.end58
  %call62 = tail call ptr @rb_next(ptr noundef nonnull %es1.2.ph) #9
  %tobool63.not = icmp eq ptr %call62, null
  br i1 %tobool63.not, label %if.else69, label %if.then64

if.then64:                                        ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #11
  %es_lblk68 = getelementptr inbounds %struct.extent_status, ptr %call62, i32 0, i32 1
  %38 = ptrtoint ptr %es_lblk68 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %es_lblk68, align 4
  %40 = ptrtoint ptr %next_lblk to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %next_lblk, align 4
  br label %if.end73

if.else69:                                        ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %next_lblk to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %next_lblk, align 4
  br label %if.end73

if.else72:                                        ; preds = %if.end32.if.else72_crit_edge, %if.end17.if.else72_crit_edge
  %42 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i123 = getelementptr inbounds %struct.super_block, ptr %43, i32 0, i32 33
  %44 = ptrtoint ptr %s_fs_info.i123 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %s_fs_info.i123, align 16
  %es_stats_cache_misses = getelementptr inbounds %struct.ext4_sb_info, ptr %45, i32 0, i32 126, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %46 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %es_stats_cache_misses, i64 noundef 1, i32 noundef %46) #9
  br label %if.end73

if.end73:                                         ; preds = %if.else72, %if.else69, %if.then64, %if.end58.if.end73_crit_edge
  %found.0128 = phi i32 [ 1, %if.end58.if.end73_crit_edge ], [ 1, %if.else69 ], [ 1, %if.then64 ], [ 0, %if.else72 ]
  tail call void @_raw_read_unlock(ptr noundef %i_es_lock) #9
  tail call fastcc void @trace_ext4_es_lookup_extent_exit(ptr noundef %inode, ptr noundef %es, i32 noundef %found.0128)
  br label %cleanup

cleanup:                                          ; preds = %if.end73, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %found.0128, %if.end73 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ext4_es_lookup_extent_enter(ptr noundef %inode, i32 noundef %lblk) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_es_lookup_extent_enter, i32 0, i32 1), ptr blockaddress(@trace_ext4_es_lookup_extent_enter, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !101

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !91) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !102

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !91) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !119
  %call42 = tail call i32 @__traceiter_ext4_es_lookup_extent_enter(ptr noundef null, ptr noundef %inode, i32 noundef %lblk) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !120
  %13 = tail call i32 @llvm.read_register.i32(metadata !91) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !91) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !102

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !91) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !105
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_es_lookup_extent_enter, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_es_lookup_extent_enter, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ext4_es_lookup_extent_enter.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_ext4_es_lookup_extent_enter.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 2264, ptr noundef nonnull @.str.16) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !106
  %31 = tail call i32 @llvm.read_register.i32(metadata !91) #9
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
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ext4_es_lookup_extent_exit(ptr noundef %inode, ptr noundef %es, i32 noundef %found) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_es_lookup_extent_exit, i32 0, i32 1), ptr blockaddress(@trace_ext4_es_lookup_extent_exit, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !101

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !91) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !102

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !91) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !121
  %call42 = tail call i32 @__traceiter_ext4_es_lookup_extent_exit(ptr noundef null, ptr noundef %inode, ptr noundef %es, i32 noundef %found) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !122
  %13 = tail call i32 @llvm.read_register.i32(metadata !91) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !91) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !102

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !91) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !105
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_es_lookup_extent_exit, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_es_lookup_extent_exit, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ext4_es_lookup_extent_exit.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_ext4_es_lookup_extent_exit.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 2298, ptr noundef nonnull @.str.16) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !106
  %31 = tail call i32 @llvm.read_register.i32(metadata !91) #9
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
define dso_local i32 @ext4_es_remove_extent(ptr noundef %inode, i32 noundef %lblk, i32 noundef %len) local_unnamed_addr #2 align 64 {
entry:
  %reserved = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reserved) #9
  %0 = ptrtoint ptr %reserved to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %reserved, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %1 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 33
  %3 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_state = getelementptr inbounds %struct.ext4_sb_info, ptr %4, i32 0, i32 25
  %5 = ptrtoint ptr %s_mount_state to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %s_mount_state, align 8
  %7 = and i16 %6, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not = icmp eq i16 %7, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call fastcc void @trace_ext4_es_remove_extent(ptr noundef %inode, i32 noundef %lblk, i32 noundef %len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool1.not = icmp eq i32 %len, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %add = add i32 %lblk, -1
  %sub = add i32 %add, %len
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %lblk)
  %cmp = icmp ult i32 %sub, %lblk
  br i1 %cmp, label %do.body8, label %do.end14, !prof !107

do.body8:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/extents_status.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1451, 0\0A.popsection", ""() #9, !srcloc !123
  unreachable

do.end14:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  %i_es_lock = getelementptr i8, ptr %inode, i32 912
  tail call void @_raw_write_lock(ptr noundef %i_es_lock) #9
  %call16 = call fastcc i32 @__es_remove_extent(ptr noundef %inode, i32 noundef %lblk, i32 noundef %sub, ptr noundef nonnull %reserved)
  call void @_raw_write_unlock(ptr noundef %i_es_lock) #9
  %8 = ptrtoint ptr %reserved to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reserved, align 4
  call void @ext4_da_release_space(ptr noundef %inode, i32 noundef %9) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end14, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %do.end14 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reserved) #9
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ext4_es_remove_extent(ptr noundef %inode, i32 noundef %lblk, i32 noundef %len) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_es_remove_extent, i32 0, i32 1), ptr blockaddress(@trace_ext4_es_remove_extent, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !101

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !91) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !102

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !91) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !124
  %call42 = tail call i32 @__traceiter_ext4_es_remove_extent(ptr noundef null, ptr noundef %inode, i32 noundef %lblk, i32 noundef %len) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !125
  %13 = tail call i32 @llvm.read_register.i32(metadata !91) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !91) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !102

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !91) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !105
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_es_remove_extent, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_es_remove_extent, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ext4_es_remove_extent.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_ext4_es_remove_extent.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 2190, ptr noundef nonnull @.str.16) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !106
  %31 = tail call i32 @llvm.read_register.i32(metadata !91) #9
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
declare dso_local void @ext4_da_release_space(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_seq_es_shrinker_info_show(ptr noundef %seq, ptr noundef readnone %v) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %s_es_stats = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 126
  %cmp.not = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %s_es_lock = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 130
  tail call void @_raw_spin_lock(ptr noundef %s_es_lock) #9
  %s_es_list = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 124
  %4 = ptrtoint ptr %s_es_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn74 = load ptr, ptr %s_es_list, align 4
  %cmp2.not76 = icmp eq ptr %.pn74, %s_es_list
  br i1 %cmp2.not76, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn79 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn74, %if.end.for.body_crit_edge ]
  %inode_cnt.078 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %max.077 = phi ptr [ %max.1, %for.inc.for.body_crit_edge ], [ null, %if.end.for.body_crit_edge ]
  %ei.080 = getelementptr i8, ptr %.pn79, i32 -1420
  %inc = add i32 %inode_cnt.078, 1
  %tobool.not = icmp eq ptr %max.077, null
  br i1 %tobool.not, label %for.body.if.else_crit_edge, label %land.lhs.true

for.body.if.else_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %for.body
  %i_es_all_nr = getelementptr inbounds %struct.ext4_inode_info, ptr %max.077, i32 0, i32 27
  %5 = ptrtoint ptr %i_es_all_nr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i_es_all_nr, align 4
  %i_es_all_nr3 = getelementptr i8, ptr %.pn79, i32 8
  %7 = ptrtoint ptr %i_es_all_nr3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %i_es_all_nr3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp4 = icmp ult i32 %6, %8
  br i1 %cmp4, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %for.body.if.else_crit_edge
  %spec.select = phi ptr [ %max.077, %land.lhs.true.if.else_crit_edge ], [ %ei.080, %for.body.if.else_crit_edge ]
  br label %for.inc

for.inc:                                          ; preds = %if.else, %land.lhs.true.for.inc_crit_edge
  %max.1 = phi ptr [ %ei.080, %land.lhs.true.for.inc_crit_edge ], [ %spec.select, %if.else ]
  %9 = ptrtoint ptr %.pn79 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn = load ptr, ptr %.pn79, align 4
  %cmp2.not = icmp eq ptr %.pn, %s_es_list
  br i1 %cmp2.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %max.0.lcssa = phi ptr [ null, %if.end.for.end_crit_edge ], [ %max.1, %for.inc.for.end_crit_edge ]
  %inode_cnt.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %s_es_lock) #9
  %es_stats_all_cnt = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 126, i32 5
  %call.i = tail call i64 @__percpu_counter_sum(ptr noundef %es_stats_all_cnt) #9
  %10 = tail call i64 @llvm.smax.i64(i64 %call.i, i64 0) #9
  %es_stats_shk_cnt = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 126, i32 6
  %call.i63 = tail call i64 @__percpu_counter_sum(ptr noundef %es_stats_shk_cnt) #9
  %11 = tail call i64 @llvm.smax.i64(i64 %call.i63, i64 0) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.3, i64 noundef %10, i64 noundef %11) #9
  %es_stats_cache_hits = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 126, i32 1
  %call.i64 = tail call i64 @__percpu_counter_sum(ptr noundef %es_stats_cache_hits) #9
  %12 = tail call i64 @llvm.smax.i64(i64 %call.i64, i64 0) #9
  %es_stats_cache_misses = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 126, i32 2
  %call.i65 = tail call i64 @__percpu_counter_sum(ptr noundef %es_stats_cache_misses) #9
  %13 = tail call i64 @llvm.smax.i64(i64 %call.i65, i64 0) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.4, i64 noundef %12, i64 noundef %13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inode_cnt.0.lcssa)
  %tobool20.not = icmp eq i32 %inode_cnt.0.lcssa, 0
  br i1 %tobool20.not, label %if.end28.critedge, label %if.then21

if.then21:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.5, i32 noundef %inode_cnt.0.lcssa) #9
  %es_stats_scan_time.c = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 126, i32 3
  %14 = ptrtoint ptr %es_stats_scan_time.c to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %es_stats_scan_time.c, align 8
  %16 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %15, i32 0) #12, !srcloc !126
  %asmresult.i.i.i = extractvalue { i64, i32 } %16, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %16, 1
  %17 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %15, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #12, !srcloc !127
  %asmresult10.i.i.i = extractvalue { i64, i32 } %17, 0
  %div1581.i.i = lshr i64 %asmresult10.i.i.i, 9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.6, i64 noundef %div1581.i.i) #9
  %18 = ptrtoint ptr %s_es_stats to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %s_es_stats, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.7, i32 noundef %19) #9
  %i_ino = getelementptr inbounds %struct.ext4_inode_info, ptr %max.0.lcssa, i32 0, i32 17, i32 11
  %20 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %i_ino, align 8
  %i_es_all_nr26 = getelementptr inbounds %struct.ext4_inode_info, ptr %max.0.lcssa, i32 0, i32 27
  %22 = ptrtoint ptr %i_es_all_nr26 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %i_es_all_nr26, align 4
  %i_es_shk_nr = getelementptr inbounds %struct.ext4_inode_info, ptr %max.0.lcssa, i32 0, i32 28
  %24 = ptrtoint ptr %i_es_shk_nr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %i_es_shk_nr, align 8
  %es_stats_max_scan_time = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 126, i32 4
  %26 = ptrtoint ptr %es_stats_max_scan_time to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %es_stats_max_scan_time, align 8
  %28 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %27, i32 0) #12, !srcloc !126
  %asmresult.i.i.i66 = extractvalue { i64, i32 } %28, 0
  %asmresult4.i.i.i67 = extractvalue { i64, i32 } %28, 1
  %29 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %27, i64 %asmresult.i.i.i66, i32 %asmresult4.i.i.i67) #12, !srcloc !127
  %asmresult10.i.i.i68 = extractvalue { i64, i32 } %29, 0
  %div1581.i.i69 = lshr i64 %asmresult10.i.i.i68, 9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.8, i32 noundef %21, i32 noundef %23, i32 noundef %25, i64 noundef %div1581.i.i69) #9
  br label %cleanup

if.end28.critedge:                                ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %es_stats_scan_time.c61 = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 126, i32 3
  %30 = ptrtoint ptr %es_stats_scan_time.c61 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %es_stats_scan_time.c61, align 8
  %32 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %31, i32 0) #12, !srcloc !126
  %asmresult.i.i.i70 = extractvalue { i64, i32 } %32, 0
  %asmresult4.i.i.i71 = extractvalue { i64, i32 } %32, 1
  %33 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %31, i64 %asmresult.i.i.i70, i32 %asmresult4.i.i.i71) #12, !srcloc !127
  %asmresult10.i.i.i72 = extractvalue { i64, i32 } %33, 0
  %div1581.i.i73 = lshr i64 %asmresult10.i.i.i72, 9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.6, i64 noundef %div1581.i.i73) #9
  %34 = ptrtoint ptr %s_es_stats to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %s_es_stats, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.7, i32 noundef %35) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end28.critedge, %if.then21, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_es_register_shrinker(ptr noundef %sbi) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %s_es_list = getelementptr inbounds %struct.ext4_sb_info, ptr %sbi, i32 0, i32 124
  %0 = ptrtoint ptr %s_es_list to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %s_es_list, ptr %s_es_list, align 4
  %prev.i = getelementptr inbounds %struct.ext4_sb_info, ptr %sbi, i32 0, i32 124, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %s_es_list, ptr %prev.i, align 4
  %s_es_nr_inode = getelementptr inbounds %struct.ext4_sb_info, ptr %sbi, i32 0, i32 125
  %2 = ptrtoint ptr %s_es_nr_inode to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %s_es_nr_inode, align 64
  %s_es_lock = getelementptr inbounds %struct.ext4_sb_info, ptr %sbi, i32 0, i32 130
  tail call void @__raw_spin_lock_init(ptr noundef %s_es_lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @ext4_es_register_shrinker.__key, i16 noundef signext 3) #9
  %s_es_stats = getelementptr inbounds %struct.ext4_sb_info, ptr %sbi, i32 0, i32 126
  %3 = ptrtoint ptr %s_es_stats to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %s_es_stats, align 8
  %es_stats_cache_hits = getelementptr inbounds %struct.ext4_sb_info, ptr %sbi, i32 0, i32 126, i32 1
  %call5 = tail call i32 @__percpu_counter_init(ptr noundef %es_stats_cache_hits, i64 noundef 0, i32 noundef 3264, ptr noundef nonnull @ext4_es_register_shrinker.__key.10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %es_stats_cache_misses = getelementptr inbounds %struct.ext4_sb_info, ptr %sbi, i32 0, i32 126, i32 2
  %call8 = tail call i32 @__percpu_counter_init(ptr noundef %es_stats_cache_misses, i64 noundef 0, i32 noundef 3264, ptr noundef nonnull @ext4_es_register_shrinker.__key.11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end.err1_crit_edge

if.end.err1_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %err1

if.end11:                                         ; preds = %if.end
  %es_stats_scan_time = getelementptr inbounds %struct.ext4_sb_info, ptr %sbi, i32 0, i32 126, i32 3
  %es_stats_all_cnt = getelementptr inbounds %struct.ext4_sb_info, ptr %sbi, i32 0, i32 126, i32 5
  %4 = call ptr @memset(ptr %es_stats_scan_time, i32 0, i32 16)
  %call16 = tail call i32 @__percpu_counter_init(ptr noundef %es_stats_all_cnt, i64 noundef 0, i32 noundef 3264, ptr noundef nonnull @ext4_es_register_shrinker.__key.12) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end11.err2_crit_edge

if.end11.err2_crit_edge:                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %err2

if.end19:                                         ; preds = %if.end11
  %es_stats_shk_cnt = getelementptr inbounds %struct.ext4_sb_info, ptr %sbi, i32 0, i32 126, i32 6
  %call22 = tail call i32 @__percpu_counter_init(ptr noundef %es_stats_shk_cnt, i64 noundef 0, i32 noundef 3264, ptr noundef nonnull @ext4_es_register_shrinker.__key.13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end19.err3_crit_edge

if.end19.err3_crit_edge:                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %err3

if.end25:                                         ; preds = %if.end19
  %s_es_shrinker = getelementptr inbounds %struct.ext4_sb_info, ptr %sbi, i32 0, i32 123
  %scan_objects = getelementptr inbounds %struct.ext4_sb_info, ptr %sbi, i32 0, i32 123, i32 1
  %5 = ptrtoint ptr %scan_objects to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @ext4_es_scan, ptr %scan_objects, align 4
  %6 = ptrtoint ptr %s_es_shrinker to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @ext4_es_count, ptr %s_es_shrinker, align 4
  %seeks = getelementptr inbounds %struct.ext4_sb_info, ptr %sbi, i32 0, i32 123, i32 3
  %7 = ptrtoint ptr %seeks to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %seeks, align 4
  %call29 = tail call i32 @register_shrinker(ptr noundef %s_es_shrinker) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end25.cleanup_crit_edge, label %err4

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

err4:                                             ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @percpu_counter_destroy(ptr noundef %es_stats_shk_cnt) #9
  br label %err3

err3:                                             ; preds = %err4, %if.end19.err3_crit_edge
  %err.0 = phi i32 [ %call22, %if.end19.err3_crit_edge ], [ %call29, %err4 ]
  tail call void @percpu_counter_destroy(ptr noundef %es_stats_all_cnt) #9
  br label %err2

err2:                                             ; preds = %err3, %if.end11.err2_crit_edge
  %err.1 = phi i32 [ %call16, %if.end11.err2_crit_edge ], [ %err.0, %err3 ]
  tail call void @percpu_counter_destroy(ptr noundef %es_stats_cache_misses) #9
  br label %err1

err1:                                             ; preds = %err2, %if.end.err1_crit_edge
  %err.2 = phi i32 [ %call8, %if.end.err1_crit_edge ], [ %err.1, %err2 ]
  tail call void @percpu_counter_destroy(ptr noundef %es_stats_cache_hits) #9
  br label %cleanup

cleanup:                                          ; preds = %err1, %if.end25.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.2, %err1 ], [ %call5, %entry.cleanup_crit_edge ], [ 0, %if.end25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__percpu_counter_init(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ext4_es_scan(ptr noundef %shrink, ptr nocapture noundef readonly %sc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %shrink, i32 -1428
  %nr_to_scan1 = getelementptr inbounds %struct.shrink_control, ptr %sc, i32 0, i32 2
  %0 = ptrtoint ptr %nr_to_scan1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_to_scan1, align 4
  %count.i = getelementptr i8, ptr %shrink, i32 340
  %2 = ptrtoint ptr %count.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load volatile i64, ptr %count.i, align 8
  %4 = tail call i64 @llvm.smax.i64(i64 %3, i64 0) #9
  %conv = trunc i64 %4 to i32
  %s_sb = getelementptr i8, ptr %shrink, i32 -692
  %5 = ptrtoint ptr %s_sb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_sb, align 32
  tail call fastcc void @trace_ext4_es_shrink_scan_enter(ptr noundef %6, i32 noundef %1, i32 noundef %conv)
  %call2 = tail call fastcc i32 @__es_shrink(ptr noundef %add.ptr, i32 noundef %1, ptr noundef null)
  %7 = ptrtoint ptr %count.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load volatile i64, ptr %count.i, align 8
  %9 = tail call i64 @llvm.smax.i64(i64 %8, i64 0) #9
  %conv6 = trunc i64 %9 to i32
  %10 = ptrtoint ptr %s_sb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_sb, align 32
  tail call fastcc void @trace_ext4_es_shrink_scan_exit(ptr noundef %11, i32 noundef %call2, i32 noundef %conv6)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ext4_es_count(ptr noundef %shrink, ptr nocapture noundef readonly %sc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %count.i = getelementptr i8, ptr %shrink, i32 340
  %0 = ptrtoint ptr %count.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load volatile i64, ptr %count.i, align 8
  %2 = tail call i64 @llvm.smax.i64(i64 %1, i64 0) #9
  %conv = trunc i64 %2 to i32
  %s_sb = getelementptr i8, ptr %shrink, i32 -692
  %3 = ptrtoint ptr %s_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_sb, align 32
  %nr_to_scan = getelementptr inbounds %struct.shrink_control, ptr %sc, i32 0, i32 2
  %5 = ptrtoint ptr %nr_to_scan to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nr_to_scan, align 4
  tail call fastcc void @trace_ext4_es_shrink_count(ptr noundef %4, i32 noundef %6, i32 noundef %conv)
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_shrinker(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ext4_es_unregister_shrinker(ptr noundef %sbi) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %es_stats_cache_hits = getelementptr inbounds %struct.ext4_sb_info, ptr %sbi, i32 0, i32 126, i32 1
  tail call void @percpu_counter_destroy(ptr noundef %es_stats_cache_hits) #9
  %es_stats_cache_misses = getelementptr inbounds %struct.ext4_sb_info, ptr %sbi, i32 0, i32 126, i32 2
  tail call void @percpu_counter_destroy(ptr noundef %es_stats_cache_misses) #9
  %es_stats_all_cnt = getelementptr inbounds %struct.ext4_sb_info, ptr %sbi, i32 0, i32 126, i32 5
  tail call void @percpu_counter_destroy(ptr noundef %es_stats_all_cnt) #9
  %es_stats_shk_cnt = getelementptr inbounds %struct.ext4_sb_info, ptr %sbi, i32 0, i32 126, i32 6
  tail call void @percpu_counter_destroy(ptr noundef %es_stats_shk_cnt) #9
  %s_es_shrinker = getelementptr inbounds %struct.ext4_sb_info, ptr %sbi, i32 0, i32 123
  tail call void @unregister_shrinker(ptr noundef %s_es_shrinker) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_shrinker(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ext4_clear_inode_es(ptr noundef %inode) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_es_lock = getelementptr i8, ptr %inode, i32 912
  tail call void @_raw_write_lock(ptr noundef %i_es_lock) #9
  %i_es_tree = getelementptr i8, ptr %inode, i32 904
  %cache_es = getelementptr i8, ptr %inode, i32 908
  %0 = ptrtoint ptr %cache_es to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %cache_es, align 4
  %call = tail call ptr @rb_first(ptr noundef %i_es_tree) #9
  %tobool.not23 = icmp eq ptr %call, null
  br i1 %tobool.not23, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %node.024 = phi ptr [ %call7, %if.end.while.body_crit_edge ], [ %call, %entry.while.body_crit_edge ]
  %call7 = tail call ptr @rb_next(ptr noundef nonnull %node.024) #9
  %es_pblk.i.i = getelementptr inbounds %struct.extent_status, ptr %node.024, i32 0, i32 3
  %1 = ptrtoint ptr %es_pblk.i.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %es_pblk.i.i, align 8
  %3 = and i64 %2, 2305843009213693952
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool9.not = icmp eq i64 %3, 0
  br i1 %tobool9.not, label %if.then, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @rb_erase(ptr noundef nonnull %node.024, ptr noundef %i_es_tree) #9
  tail call fastcc void @ext4_es_free_extent(ptr noundef %inode, ptr noundef nonnull %node.024)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  %i_state_flags.i = getelementptr i8, ptr %inode, i32 -384
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %i_state_flags.i) #9
  tail call void @_raw_write_unlock(ptr noundef %i_es_lock) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ext4_es_free_extent(ptr noundef %inode, ptr noundef %es) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_es_all_nr = getelementptr i8, ptr %inode, i32 964
  %0 = ptrtoint ptr %i_es_all_nr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_es_all_nr, align 4
  %dec = add i32 %1, -1
  store i32 %dec, ptr %i_es_all_nr, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %es_stats_all_cnt = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 126, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %6 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %es_stats_all_cnt, i64 noundef -1, i32 noundef %6) #9
  %es_pblk.i.i = getelementptr inbounds %struct.extent_status, ptr %es, i32 0, i32 3
  %7 = ptrtoint ptr %es_pblk.i.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %es_pblk.i.i, align 8
  %9 = and i64 %8, 2305843009213693952
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %tobool.not = icmp eq i64 %9, 0
  br i1 %tobool.not, label %do.body, label %entry.if.end23_crit_edge

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

do.body:                                          ; preds = %entry
  %i_es_shk_nr = getelementptr i8, ptr %inode, i32 968
  %10 = ptrtoint ptr %i_es_shk_nr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i_es_shk_nr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %do.body8, label %do.end11, !prof !107

do.body8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/extents_status.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 488, 0\0A.popsection", ""() #9, !srcloc !128
  unreachable

do.end11:                                         ; preds = %do.body
  %dec16 = add i32 %11, -1
  %12 = ptrtoint ptr %i_es_shk_nr to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %dec16, ptr %i_es_shk_nr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec16)
  %tobool17.not = icmp eq i32 %dec16, 0
  br i1 %tobool17.not, label %if.then18, label %do.end11.if.end19_crit_edge

do.end11.if.end19_crit_edge:                      ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then18:                                        ; preds = %do.end11
  %13 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %14, i32 0, i32 33
  %15 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_es_lock.i = getelementptr inbounds %struct.ext4_sb_info, ptr %16, i32 0, i32 130
  tail call void @_raw_spin_lock(ptr noundef %s_es_lock.i) #9
  %i_es_list.i = getelementptr i8, ptr %inode, i32 956
  %17 = ptrtoint ptr %i_es_list.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %i_es_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %18, %i_es_list.i
  br i1 %cmp.i.not.i, label %if.then18.ext4_es_list_del.exit_crit_edge, label %if.then.i

if.then18.ext4_es_list_del.exit_crit_edge:        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %ext4_es_list_del.exit

if.then.i:                                        ; preds = %if.then18
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %i_es_list.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del_init.exit.i_crit_edge

if.then.i.list_del_init.exit.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr i8, ptr %inode, i32 960
  %19 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i.i, align 4
  %21 = ptrtoint ptr %i_es_list.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i_es_list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.then.i.list_del_init.exit.i_crit_edge
  %25 = ptrtoint ptr %i_es_list.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %i_es_list.i, ptr %i_es_list.i, align 4
  %prev.i3.i.i = getelementptr i8, ptr %inode, i32 960
  %26 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %i_es_list.i, ptr %prev.i3.i.i, align 4
  %s_es_nr_inode.i = getelementptr inbounds %struct.ext4_sb_info, ptr %16, i32 0, i32 125
  %27 = ptrtoint ptr %s_es_nr_inode.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %s_es_nr_inode.i, align 64
  %dec.i = add i32 %28, -1
  store i32 %dec.i, ptr %s_es_nr_inode.i, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp slt i32 %dec.i, 0
  br i1 %cmp.i, label %land.rhs.i, label %list_del_init.exit.i.ext4_es_list_del.exit_crit_edge

list_del_init.exit.i.ext4_es_list_del.exit_crit_edge: ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ext4_es_list_del.exit

land.rhs.i:                                       ; preds = %list_del_init.exit.i
  %.b50.i = load i1, ptr @ext4_es_list_del.__already_done, align 1
  br i1 %.b50.i, label %land.rhs.i.ext4_es_list_del.exit_crit_edge, label %if.then11.i, !prof !102

land.rhs.i.ext4_es_list_del.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ext4_es_list_del.exit

if.then11.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ext4_es_list_del.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 448, i32 noundef 9, ptr noundef null) #9
  br label %ext4_es_list_del.exit

ext4_es_list_del.exit:                            ; preds = %if.then11.i, %land.rhs.i.ext4_es_list_del.exit_crit_edge, %list_del_init.exit.i.ext4_es_list_del.exit_crit_edge, %if.then18.ext4_es_list_del.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %s_es_lock.i) #9
  br label %if.end19

if.end19:                                         ; preds = %ext4_es_list_del.exit, %do.end11.if.end19_crit_edge
  %29 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i30 = getelementptr inbounds %struct.super_block, ptr %30, i32 0, i32 33
  %31 = ptrtoint ptr %s_fs_info.i30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %s_fs_info.i30, align 16
  %es_stats_shk_cnt = getelementptr inbounds %struct.ext4_sb_info, ptr %32, i32 0, i32 126, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %33 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %es_stats_shk_cnt, i64 noundef -1, i32 noundef %33) #9
  br label %if.end23

if.end23:                                         ; preds = %if.end19, %entry.if.end23_crit_edge
  %34 = load ptr, ptr @ext4_es_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %34, ptr noundef %es) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_init_pending() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.14, i32 noundef 16, i32 noundef 0, i32 noundef 131072, ptr noundef null) #9
  store ptr %call, ptr @ext4_pending_cachep, align 4
  %cmp = icmp eq ptr %call, null
  %. = select i1 %cmp, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ext4_exit_pending() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ext4_pending_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #9
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @ext4_init_pending_tree(ptr nocapture noundef writeonly %tree) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tree to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %tree, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ext4_remove_pending(ptr noundef %inode, i32 noundef %lblk) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_es_lock = getelementptr i8, ptr %inode, i32 912
  tail call void @_raw_write_lock(ptr noundef %i_es_lock) #9
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_cluster_bits.i = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %s_cluster_bits.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_cluster_bits.i, align 16
  %shr.i = lshr i32 %lblk, %5
  %i_pending_tree.i.i = getelementptr i8, ptr %inode, i32 984
  %6 = ptrtoint ptr %i_pending_tree.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_pending_tree.i.i, align 4
  %tobool.not24.i.i = icmp eq ptr %7, null
  br i1 %tobool.not24.i.i, label %entry.__remove_pending.exit_crit_edge, label %entry.while.body.i.i_crit_edge

entry.while.body.i.i_crit_edge:                   ; preds = %entry
  br label %while.body.i.i

entry.__remove_pending.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %__remove_pending.exit

while.body.i.i:                                   ; preds = %if.end13.i.i.while.body.i.i_crit_edge, %entry.while.body.i.i_crit_edge
  %node.025.i.i = phi ptr [ %node.1.i.i, %if.end13.i.i.while.body.i.i_crit_edge ], [ %7, %entry.while.body.i.i_crit_edge ]
  %lclu4.i.i = getelementptr inbounds %struct.pending_reservation, ptr %node.025.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %lclu4.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lclu4.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %shr.i)
  %cmp.i.i = icmp ugt i32 %9, %shr.i
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %node.025.i.i, i32 0, i32 2
  br label %if.end13.sink.split.i.i

if.else.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %shr.i)
  %cmp6.i.i = icmp ult i32 %9, %shr.i
  br i1 %cmp6.i.i, label %if.then7.i.i, label %if.else8.i.i

if.then7.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %node.025.i.i, i32 0, i32 1
  br label %if.end13.sink.split.i.i

if.else8.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %shr.i)
  %cmp10.i.i = icmp eq i32 %9, %shr.i
  br i1 %cmp10.i.i, label %if.then.i, label %if.else8.i.i.if.end13.i.i_crit_edge

if.else8.i.i.if.end13.i.i_crit_edge:              ; preds = %if.else8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i.i

if.end13.sink.split.i.i:                          ; preds = %if.then7.i.i, %if.then.i.i
  %rb_right.sink.i.i = phi ptr [ %rb_right.i.i, %if.then7.i.i ], [ %rb_left.i.i, %if.then.i.i ]
  %10 = ptrtoint ptr %rb_right.sink.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rb_right.sink.i.i, align 4
  br label %if.end13.i.i

if.end13.i.i:                                     ; preds = %if.end13.sink.split.i.i, %if.else8.i.i.if.end13.i.i_crit_edge
  %node.1.i.i = phi ptr [ %node.025.i.i, %if.else8.i.i.if.end13.i.i_crit_edge ], [ %11, %if.end13.sink.split.i.i ]
  %tobool.not.i.i = icmp eq ptr %node.1.i.i, null
  br i1 %tobool.not.i.i, label %if.end13.i.i.__remove_pending.exit_crit_edge, label %if.end13.i.i.while.body.i.i_crit_edge

if.end13.i.i.while.body.i.i_crit_edge:            ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i

if.end13.i.i.__remove_pending.exit_crit_edge:     ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__remove_pending.exit

if.then.i:                                        ; preds = %if.else8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @rb_erase(ptr noundef nonnull %node.025.i.i, ptr noundef %i_pending_tree.i.i) #9
  %12 = load ptr, ptr @ext4_pending_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %12, ptr noundef nonnull %node.025.i.i) #9
  br label %__remove_pending.exit

__remove_pending.exit:                            ; preds = %if.then.i, %if.end13.i.i.__remove_pending.exit_crit_edge, %entry.__remove_pending.exit_crit_edge
  tail call void @_raw_write_unlock(ptr noundef %i_es_lock) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ext4_is_pending(ptr noundef %inode, i32 noundef %lblk) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %i_es_lock = getelementptr i8, ptr %inode, i32 912
  tail call void @_raw_read_lock(ptr noundef %i_es_lock) #9
  %s_cluster_bits = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %s_cluster_bits to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_cluster_bits, align 16
  %shr = lshr i32 %lblk, %5
  %i_pending_tree.i = getelementptr i8, ptr %inode, i32 984
  %6 = ptrtoint ptr %i_pending_tree.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_pending_tree.i, align 4
  %tobool.not24.i = icmp eq ptr %7, null
  br i1 %tobool.not24.i, label %entry.__get_pending.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.__get_pending.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %__get_pending.exit

while.body.i:                                     ; preds = %if.end13.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %node.025.i = phi ptr [ %node.1.i, %if.end13.i.while.body.i_crit_edge ], [ %7, %entry.while.body.i_crit_edge ]
  %lclu4.i = getelementptr inbounds %struct.pending_reservation, ptr %node.025.i, i32 0, i32 1
  %8 = ptrtoint ptr %lclu4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lclu4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %shr)
  %cmp.i = icmp ugt i32 %9, %shr
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %node.025.i, i32 0, i32 2
  br label %if.end13.sink.split.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %shr)
  %cmp6.i = icmp ult i32 %9, %shr
  br i1 %cmp6.i, label %if.then7.i, label %if.else8.i

if.then7.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %node.025.i, i32 0, i32 1
  br label %if.end13.sink.split.i

if.else8.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %shr)
  %cmp10.i = icmp eq i32 %9, %shr
  br i1 %cmp10.i, label %if.else8.i.__get_pending.exit_crit_edge, label %if.else8.i.if.end13.i_crit_edge

if.else8.i.if.end13.i_crit_edge:                  ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i

if.else8.i.__get_pending.exit_crit_edge:          ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__get_pending.exit

if.end13.sink.split.i:                            ; preds = %if.then7.i, %if.then.i
  %rb_right.sink.i = phi ptr [ %rb_right.i, %if.then7.i ], [ %rb_left.i, %if.then.i ]
  %10 = ptrtoint ptr %rb_right.sink.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rb_right.sink.i, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.end13.sink.split.i, %if.else8.i.if.end13.i_crit_edge
  %node.1.i = phi ptr [ %node.025.i, %if.else8.i.if.end13.i_crit_edge ], [ %11, %if.end13.sink.split.i ]
  %tobool.not.i = icmp eq ptr %node.1.i, null
  br i1 %tobool.not.i, label %if.end13.i.__get_pending.exit_crit_edge, label %if.end13.i.while.body.i_crit_edge

if.end13.i.while.body.i_crit_edge:                ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

if.end13.i.__get_pending.exit_crit_edge:          ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__get_pending.exit

__get_pending.exit:                               ; preds = %if.end13.i.__get_pending.exit_crit_edge, %if.else8.i.__get_pending.exit_crit_edge, %entry.__get_pending.exit_crit_edge
  %node.0.lcssa.i = phi ptr [ null, %entry.__get_pending.exit_crit_edge ], [ %node.025.i, %if.else8.i.__get_pending.exit_crit_edge ], [ null, %if.end13.i.__get_pending.exit_crit_edge ]
  %cmp = icmp ne ptr %node.0.lcssa.i, null
  tail call void @_raw_read_unlock(ptr noundef %i_es_lock) #9
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_es_insert_delayed_block(ptr noundef %inode, i32 noundef %lblk, i1 noundef zeroext %allocated) local_unnamed_addr #2 align 64 {
entry:
  %newes = alloca %struct.extent_status, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %newes) #9
  %0 = call ptr @memset(ptr %newes, i32 255, i32 24)
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %1 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 33
  %3 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_state = getelementptr inbounds %struct.ext4_sb_info, ptr %4, i32 0, i32 25
  %5 = ptrtoint ptr %s_mount_state to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %s_mount_state, align 8
  %7 = and i16 %6, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not = icmp eq i16 %7, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %es_lblk = getelementptr inbounds %struct.extent_status, ptr %newes, i32 0, i32 1
  %8 = ptrtoint ptr %es_lblk to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %lblk, ptr %es_lblk, align 4
  %es_len = getelementptr inbounds %struct.extent_status, ptr %newes, i32 0, i32 2
  %9 = ptrtoint ptr %es_len to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %es_len, align 8
  %es_pblk.i = getelementptr inbounds %struct.extent_status, ptr %newes, i32 0, i32 3
  %10 = ptrtoint ptr %es_pblk.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 2882303761517117439, ptr %es_pblk.i, align 8
  call fastcc void @trace_ext4_es_insert_delayed_block(ptr noundef %inode, ptr noundef nonnull %newes, i1 noundef zeroext %allocated)
  %add.ptr = getelementptr i8, ptr %inode, i32 -464
  %i_es_lock = getelementptr i8, ptr %inode, i32 912
  call void @_raw_write_lock(ptr noundef %i_es_lock) #9
  %call3 = call fastcc i32 @__es_remove_extent(ptr noundef %inode, i32 noundef %lblk, i32 noundef %lblk, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp.not = icmp eq i32 %call3, 0
  br i1 %cmp.not, label %if.end.retry_crit_edge, label %if.end.error_crit_edge

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end.retry_crit_edge:                           ; preds = %if.end
  br label %retry

retry:                                            ; preds = %land.lhs.true.retry_crit_edge, %if.end.retry_crit_edge
  %call7 = call fastcc i32 @__es_insert_extent(ptr noundef %inode, ptr noundef nonnull %newes)
  %11 = zext i32 %call7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call7, label %retry.error_crit_edge [
    i32 -12, label %land.lhs.true
    i32 0, label %if.end22
  ]

retry.error_crit_edge:                            ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

land.lhs.true:                                    ; preds = %retry
  %12 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i48 = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 33
  %14 = ptrtoint ptr %s_fs_info.i48 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_fs_info.i48, align 16
  %call15 = call fastcc i32 @__es_shrink(ptr noundef %15, i32 noundef 128, ptr noundef %add.ptr)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %land.lhs.true.error_crit_edge, label %land.lhs.true.retry_crit_edge

land.lhs.true.retry_crit_edge:                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %retry

land.lhs.true.error_crit_edge:                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end22:                                         ; preds = %retry
  br i1 %allocated, label %if.then24, label %if.end22.error_crit_edge

if.end22.error_crit_edge:                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.then24:                                        ; preds = %if.end22
  %16 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 33
  %18 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %s_fs_info.i.i, align 16
  %i_pending_tree.i = getelementptr i8, ptr %inode, i32 984
  %s_cluster_bits.i = getelementptr inbounds %struct.ext4_sb_info, ptr %19, i32 0, i32 12
  %20 = ptrtoint ptr %s_cluster_bits.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %s_cluster_bits.i, align 16
  %shr.i = lshr i32 %lblk, %21
  %22 = ptrtoint ptr %i_pending_tree.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_pending_tree.i, align 4
  %tobool.not3.i = icmp eq ptr %23, null
  br i1 %tobool.not3.i, label %if.then24.while.end.i_crit_edge, label %if.then24.while.body.i_crit_edge

if.then24.while.body.i_crit_edge:                 ; preds = %if.then24
  br label %while.body.i

if.then24.while.end.i_crit_edge:                  ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.body.i:                                     ; preds = %if.end9.i.while.body.i_crit_edge, %if.then24.while.body.i_crit_edge
  %24 = phi ptr [ %28, %if.end9.i.while.body.i_crit_edge ], [ %23, %if.then24.while.body.i_crit_edge ]
  %lclu4.i = getelementptr inbounds %struct.pending_reservation, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %lclu4.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %lclu4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %26)
  %cmp.i = icmp ult i32 %shr.i, %26
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %24, i32 0, i32 2
  br label %if.end9.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %26)
  %cmp6.i = icmp ugt i32 %shr.i, %26
  br i1 %cmp6.i, label %if.then7.i, label %if.else.i.error_crit_edge

if.else.i.error_crit_edge:                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.then7.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %24, i32 0, i32 1
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then7.i, %if.then.i
  %p.1.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then7.i ]
  %27 = ptrtoint ptr %p.1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %p.1.i, align 4
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %while.cond.while.end_crit_edge.i, label %if.end9.i.while.body.i_crit_edge

if.end9.i.while.body.i_crit_edge:                 ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.cond.while.end_crit_edge.i:                 ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  %phi.cast.le.i = ptrtoint ptr %24 to i32
  br label %while.end.i

while.end.i:                                      ; preds = %while.cond.while.end_crit_edge.i, %if.then24.while.end.i_crit_edge
  %parent.0.lcssa.i = phi i32 [ %phi.cast.le.i, %while.cond.while.end_crit_edge.i ], [ 0, %if.then24.while.end.i_crit_edge ]
  %p.0.lcssa.i = phi ptr [ %p.1.i, %while.cond.while.end_crit_edge.i ], [ %i_pending_tree.i, %if.then24.while.end.i_crit_edge ]
  %29 = load ptr, ptr @ext4_pending_cachep, align 4
  %call10.i = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %29, i32 noundef 2592) #9
  %cmp11.i = icmp eq ptr %call10.i, null
  br i1 %cmp11.i, label %while.end.i.error_crit_edge, label %if.end13.i

while.end.i.error_crit_edge:                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end13.i:                                       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %lclu14.i = getelementptr inbounds %struct.pending_reservation, ptr %call10.i, i32 0, i32 1
  %30 = ptrtoint ptr %lclu14.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %shr.i, ptr %lclu14.i, align 4
  %31 = ptrtoint ptr %call10.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %parent.0.lcssa.i, ptr %call10.i, align 8
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %call10.i, i32 0, i32 1
  %32 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %rb_right.i.i, align 4
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %call10.i, i32 0, i32 2
  %33 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %rb_left.i.i, align 8
  %34 = ptrtoint ptr %p.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call10.i, ptr %p.0.lcssa.i, align 4
  call void @rb_insert_color(ptr noundef nonnull %call10.i, ptr noundef %i_pending_tree.i) #9
  br label %error

error:                                            ; preds = %if.end13.i, %while.end.i.error_crit_edge, %if.else.i.error_crit_edge, %if.end22.error_crit_edge, %land.lhs.true.error_crit_edge, %retry.error_crit_edge, %if.end.error_crit_edge
  %err.0 = phi i32 [ %call3, %if.end.error_crit_edge ], [ 0, %if.end22.error_crit_edge ], [ 0, %while.end.i.error_crit_edge ], [ 0, %if.end13.i ], [ 0, %if.else.i.error_crit_edge ], [ -12, %land.lhs.true.error_crit_edge ], [ %call7, %retry.error_crit_edge ]
  call void @_raw_write_unlock(ptr noundef %i_es_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %error, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %error ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %newes) #9
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ext4_es_insert_delayed_block(ptr noundef %inode, ptr noundef %es, i1 noundef zeroext %allocated) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_es_insert_delayed_block, i32 0, i32 1), ptr blockaddress(@trace_ext4_es_insert_delayed_block, %do.body)) #9
          to label %if.end49 [label %do.body], !srcloc !101

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !91) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !102

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i76 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i76
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !91) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !129
  %call43 = tail call i32 @__traceiter_ext4_es_insert_delayed_block(ptr noundef null, ptr noundef %inode, ptr noundef %es, i1 noundef zeroext %allocated) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !130
  %13 = tail call i32 @llvm.read_register.i32(metadata !91) #9
  %and.i.i.i74 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i74 to ptr
  %preempt_count.i.i75 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i75 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i75, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i75, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !91) #9
  %and.i77 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i77 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i78 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i78, label %if.end49.cpu_online.exit86_crit_edge, label %land.rhs.i.i.i.i80

if.end49.cpu_online.exit86_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit86

land.rhs.i.i.i.i80:                               ; preds = %if.end49
  %.b37.i.i.i.i79 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !102

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit86

cpu_online.exit86:                                ; preds = %if.then.i.i.i.i81, %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, %if.end49.cpu_online.exit86_crit_edge
  %div3.i.i.i82 = lshr i32 %20, 5
  %arrayidx.i.i.i83 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i82
  %22 = ptrtoint ptr %arrayidx.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i83, align 4
  %and.i.i.i84 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i84
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i85.not = icmp eq i32 %25, 0
  br i1 %tobool.i85.not, label %cpu_online.exit86.if.end70_crit_edge, label %if.then53

cpu_online.exit86.if.end70_crit_edge:             ; preds = %cpu_online.exit86
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit86
  %26 = tail call i32 @llvm.read_register.i32(metadata !91) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !105
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_es_insert_delayed_block, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_es_insert_delayed_block, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b73 = load i1, ptr @trace_ext4_es_insert_delayed_block.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_ext4_es_insert_delayed_block.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 2467, ptr noundef nonnull @.str.16) #9
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !106
  %31 = tail call i32 @llvm.read_register.i32(metadata !91) #9
  %and.i.i.i.i87 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i87 to ptr
  %preempt_count.i.i.i88 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i88, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i88, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit86.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_es_delayed_clu(ptr noundef %inode, i32 noundef %lblk, i32 noundef %len) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp = icmp eq i32 %len, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %add = add i32 %lblk, -1
  %sub = add i32 %add, %len
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %lblk)
  %cmp1 = icmp ult i32 %sub, %lblk
  br i1 %cmp1, label %do.end, label %if.end.if.end15_crit_edge, !prof !107

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2106, i32 noundef 9, ptr noundef null) #9
  br label %if.end15

if.end15:                                         ; preds = %do.end, %if.end.if.end15_crit_edge
  %i_es_lock = getelementptr i8, ptr %inode, i32 912
  tail call void @_raw_read_lock(ptr noundef %i_es_lock) #9
  %i_es_tree.i = getelementptr i8, ptr %inode, i32 904
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  %4 = ptrtoint ptr %i_es_tree.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %node.050.i.i = load ptr, ptr %i_es_tree.i, align 4
  %tobool.not51.i.i = icmp eq ptr %node.050.i.i, null
  br i1 %tobool.not51.i.i, label %if.end15.__es_tree_search.exit.i_crit_edge, label %if.end15.while.body.i.i_crit_edge

if.end15.while.body.i.i_crit_edge:                ; preds = %if.end15
  br label %while.body.i.i

if.end15.__es_tree_search.exit.i_crit_edge:       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %__es_tree_search.exit.i

while.body.i.i:                                   ; preds = %while.body.i.i.backedge, %if.end15.while.body.i.i_crit_edge
  %node.052.i.i = phi ptr [ %node.052.i.i.be, %while.body.i.i.backedge ], [ %node.050.i.i, %if.end15.while.body.i.i_crit_edge ]
  %es_lblk.i.i = getelementptr inbounds %struct.extent_status, ptr %node.052.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %es_lblk.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %es_lblk.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %lblk)
  %cmp.i.i = icmp ugt i32 %6, %lblk
  br i1 %cmp.i.i, label %if.end4.i.i, label %if.else.i.i

if.else.i.i:                                      ; preds = %while.body.i.i
  %es_len.i.i.i = getelementptr inbounds %struct.extent_status, ptr %node.052.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %es_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %es_len.i.i.i, align 8
  %add.i.i.i = add i32 %8, %6
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i, i32 %6)
  %cmp.i.i.i = icmp ult i32 %add.i.i.i, %6
  br i1 %cmp.i.i.i, label %do.body3.i.i.i, label %ext4_es_end.exit.i.i, !prof !107

do.body3.i.i.i:                                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/extents_status.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 202, 0\0A.popsection", ""() #9, !srcloc !108
  unreachable

ext4_es_end.exit.i.i:                             ; preds = %if.else.i.i
  %sub.i.i.i = add i32 %add.i.i.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i, i32 %lblk)
  %cmp1.i.i = icmp ult i32 %sub.i.i.i, %lblk
  br i1 %cmp1.i.i, label %if.end4.i.thread.i, label %ext4_es_end.exit.i.i.__es_tree_search.exit.i_crit_edge

ext4_es_end.exit.i.i.__es_tree_search.exit.i_crit_edge: ; preds = %ext4_es_end.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__es_tree_search.exit.i

if.end4.i.i:                                      ; preds = %while.body.i.i
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %node.052.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %node.0.i.i = load ptr, ptr %rb_left.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %node.0.i.i, null
  br i1 %tobool.not.i.i, label %if.end4.i.i.__es_tree_search.exit.i_crit_edge, label %if.end4.i.i.while.body.i.i.backedge_crit_edge

if.end4.i.i.while.body.i.i.backedge_crit_edge:    ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i.backedge

if.end4.i.i.__es_tree_search.exit.i_crit_edge:    ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__es_tree_search.exit.i

if.end4.i.thread.i:                               ; preds = %ext4_es_end.exit.i.i
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %node.052.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %node.0.i70.i = load ptr, ptr %rb_right.i.i, align 4
  %tobool.not.i71.i = icmp eq ptr %node.0.i70.i, null
  br i1 %tobool.not.i71.i, label %if.then14.i.i, label %if.end4.i.thread.i.while.body.i.i.backedge_crit_edge

if.end4.i.thread.i.while.body.i.i.backedge_crit_edge: ; preds = %if.end4.i.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i.backedge

while.body.i.i.backedge:                          ; preds = %if.end4.i.thread.i.while.body.i.i.backedge_crit_edge, %if.end4.i.i.while.body.i.i.backedge_crit_edge
  %node.052.i.i.be = phi ptr [ %node.0.i.i, %if.end4.i.i.while.body.i.i.backedge_crit_edge ], [ %node.0.i70.i, %if.end4.i.thread.i.while.body.i.i.backedge_crit_edge ]
  br label %while.body.i.i

if.then14.i.i:                                    ; preds = %if.end4.i.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  %call16.i.i = tail call ptr @rb_next(ptr noundef nonnull %node.052.i.i) #9
  br label %__es_tree_search.exit.i

__es_tree_search.exit.i:                          ; preds = %if.then14.i.i, %if.end4.i.i.__es_tree_search.exit.i_crit_edge, %ext4_es_end.exit.i.i.__es_tree_search.exit.i_crit_edge, %if.end15.__es_tree_search.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %call16.i.i, %if.then14.i.i ], [ null, %if.end15.__es_tree_search.exit.i_crit_edge ], [ %node.052.i.i, %ext4_es_end.exit.i.i.__es_tree_search.exit.i_crit_edge ], [ %node.052.i.i, %if.end4.i.i.__es_tree_search.exit.i_crit_edge ]
  %s_cluster_bits.i = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 12
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end29.i.while.cond.i_crit_edge, %__es_tree_search.exit.i
  %last_counted_lclu.0.i = phi i64 [ -1, %__es_tree_search.exit.i ], [ %last_counted_lclu.1.i, %if.end29.i.while.cond.i_crit_edge ]
  %n.0.i = phi i32 [ 0, %__es_tree_search.exit.i ], [ %n.2.i, %if.end29.i.while.cond.i_crit_edge ]
  %es.0.i = phi ptr [ %retval.0.i.i, %__es_tree_search.exit.i ], [ %call30.i, %if.end29.i.while.cond.i_crit_edge ]
  %tobool.not.i = icmp eq ptr %es.0.i, null
  br i1 %tobool.not.i, label %while.cond.i.__es_delayed_clu.exit_crit_edge, label %land.rhs.i

while.cond.i.__es_delayed_clu.exit_crit_edge:     ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__es_delayed_clu.exit

land.rhs.i:                                       ; preds = %while.cond.i
  %es_lblk.i = getelementptr inbounds %struct.extent_status, ptr %es.0.i, i32 0, i32 1
  %11 = ptrtoint ptr %es_lblk.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %es_lblk.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %sub)
  %cmp.not.i = icmp ugt i32 %12, %sub
  br i1 %cmp.not.i, label %land.rhs.i.__es_delayed_clu.exit_crit_edge, label %while.body.i

land.rhs.i.__es_delayed_clu.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__es_delayed_clu.exit

while.body.i:                                     ; preds = %land.rhs.i
  %es_pblk.i.i.i.i = getelementptr inbounds %struct.extent_status, ptr %es.0.i, i32 0, i32 3
  %13 = ptrtoint ptr %es_pblk.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %es_pblk.i.i.i.i, align 8
  %15 = and i64 %14, 3458764513820540928
  call void @__sanitizer_cov_trace_const_cmp8(i64 2305843009213693952, i64 %15)
  %.not.i = icmp eq i64 %15, 2305843009213693952
  br i1 %.not.i, label %if.then.i, label %while.body.i.if.end29.i_crit_edge

while.body.i.if.end29.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29.i

if.then.i:                                        ; preds = %while.body.i
  %es_len.i.i = getelementptr inbounds %struct.extent_status, ptr %es.0.i, i32 0, i32 2
  %16 = ptrtoint ptr %es_len.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %es_len.i.i, align 8
  %add.i.i = add i32 %17, %12
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %12)
  %cmp.i61.i = icmp ult i32 %add.i.i, %12
  br i1 %cmp.i61.i, label %do.body3.i.i, label %ext4_es_end.exit.i, !prof !107

do.body3.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/extents_status.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 202, 0\0A.popsection", ""() #9, !srcloc !108
  unreachable

ext4_es_end.exit.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %18 = tail call i32 @llvm.umax.i32(i32 %12, i32 %lblk) #9
  %19 = ptrtoint ptr %s_cluster_bits.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %s_cluster_bits.i, align 16
  %shr9.i = lshr i32 %18, %20
  %sub.i.i = add i32 %add.i.i, -1
  %21 = tail call i32 @llvm.umin.i32(i32 %sub.i.i, i32 %sub) #9
  %shr18.i = lshr i32 %21, %20
  %conv.i = zext i32 %shr9.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %last_counted_lclu.0.i, i64 %conv.i)
  %cmp20.i = icmp ne i64 %last_counted_lclu.0.i, %conv.i
  %add25.i = zext i1 %cmp20.i to i32
  %sub.i = sub i32 %n.0.i, %shr9.i
  %sub.pn.i = add i32 %sub.i, %shr18.i
  %n.1.i = add i32 %sub.pn.i, %add25.i
  %conv28.i = zext i32 %shr18.i to i64
  br label %if.end29.i

if.end29.i:                                       ; preds = %ext4_es_end.exit.i, %while.body.i.if.end29.i_crit_edge
  %last_counted_lclu.1.i = phi i64 [ %conv28.i, %ext4_es_end.exit.i ], [ %last_counted_lclu.0.i, %while.body.i.if.end29.i_crit_edge ]
  %n.2.i = phi i32 [ %n.1.i, %ext4_es_end.exit.i ], [ %n.0.i, %while.body.i.if.end29.i_crit_edge ]
  %call30.i = tail call ptr @rb_next(ptr noundef nonnull %es.0.i) #9
  %tobool31.not.i = icmp eq ptr %call30.i, null
  br i1 %tobool31.not.i, label %if.end29.i.__es_delayed_clu.exit_crit_edge, label %if.end29.i.while.cond.i_crit_edge

if.end29.i.while.cond.i_crit_edge:                ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i

if.end29.i.__es_delayed_clu.exit_crit_edge:       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__es_delayed_clu.exit

__es_delayed_clu.exit:                            ; preds = %if.end29.i.__es_delayed_clu.exit_crit_edge, %land.rhs.i.__es_delayed_clu.exit_crit_edge, %while.cond.i.__es_delayed_clu.exit_crit_edge
  %n.3.i = phi i32 [ %n.2.i, %if.end29.i.__es_delayed_clu.exit_crit_edge ], [ %n.0.i, %land.rhs.i.__es_delayed_clu.exit_crit_edge ], [ %n.0.i, %while.cond.i.__es_delayed_clu.exit_crit_edge ]
  tail call void @_raw_read_unlock(ptr noundef %i_es_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %__es_delayed_clu.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %n.3.i, %__es_delayed_clu.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_es_find_extent_range_enter(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_es_find_extent_range_exit(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_es_insert_extent(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ext4_es_can_be_merged(ptr nocapture noundef readonly %es1, ptr nocapture noundef readonly %es2) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %es_pblk.i = getelementptr inbounds %struct.extent_status, ptr %es1, i32 0, i32 3
  %0 = ptrtoint ptr %es_pblk.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %es_pblk.i, align 8
  %es_pblk.i80 = getelementptr inbounds %struct.extent_status, ptr %es2, i32 0, i32 3
  %2 = ptrtoint ptr %es_pblk.i80 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %es_pblk.i80, align 8
  %and.i106 = xor i64 %3, %1
  %4 = and i64 %and.i106, 8646911284551352320
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %cmp.not = icmp eq i64 %4, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %es_len = getelementptr inbounds %struct.extent_status, ptr %es1, i32 0, i32 2
  %5 = ptrtoint ptr %es_len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %es_len, align 8
  %conv = zext i32 %6 to i64
  %es_len2 = getelementptr inbounds %struct.extent_status, ptr %es2, i32 0, i32 2
  %7 = ptrtoint ptr %es_len2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %es_len2, align 8
  %conv3 = zext i32 %8 to i64
  %add = add nuw nsw i64 %conv3, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %add)
  %cmp4 = icmp ugt i64 %add, 4294967295
  br i1 %cmp4, label %do.end, label %if.end29

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %6, i32 noundef %8, i32 noundef -1) #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 516, i32 noundef 9, ptr noundef null) #9
  br label %return

if.end29:                                         ; preds = %if.end
  %es_lblk = getelementptr inbounds %struct.extent_status, ptr %es1, i32 0, i32 1
  %9 = ptrtoint ptr %es_lblk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %es_lblk, align 4
  %conv30 = zext i32 %10 to i64
  %add33 = add nuw nsw i64 %conv30, %conv
  %es_lblk34 = getelementptr inbounds %struct.extent_status, ptr %es2, i32 0, i32 1
  %11 = ptrtoint ptr %es_lblk34 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %es_lblk34, align 4
  %conv35 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add33, i64 %conv35)
  %cmp36.not = icmp eq i64 %add33, %conv35
  br i1 %cmp36.not, label %if.end39, label %if.end29.return_crit_edge

if.end29.return_crit_edge:                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end39:                                         ; preds = %if.end29
  %13 = and i64 %1, 1729382256910270464
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %13)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %if.end52, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end39
  %and.i86 = and i64 %1, 576460752303423487
  %add47 = add nuw nsw i64 %and.i86, %conv
  %and.i88 = and i64 %3, 576460752303423487
  call void @__sanitizer_cov_trace_cmp8(i64 %add47, i64 %and.i88)
  %cmp49 = icmp ne i64 %add47, %and.i88
  %15 = and i64 %1, 4611686018427387904
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %15)
  %tobool54.not = icmp eq i64 %15, 0
  %or.cond107 = select i1 %cmp49, i1 %tobool54.not, i1 false
  br i1 %or.cond107, label %land.lhs.true.if.end56_crit_edge, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

land.lhs.true.if.end56_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

if.end52:                                         ; preds = %if.end39
  %.old = and i64 %1, 4611686018427387904
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.old)
  %tobool54.not.old = icmp eq i64 %.old, 0
  br i1 %tobool54.not.old, label %if.end52.if.end56_crit_edge, label %if.end52.return_crit_edge

if.end52.return_crit_edge:                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end52.if.end56_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

if.end56:                                         ; preds = %if.end52.if.end56_crit_edge, %land.lhs.true.if.end56_crit_edge
  %16 = and i64 %1, 3458764513820540928
  call void @__sanitizer_cov_trace_const_cmp8(i64 2305843009213693952, i64 %16)
  %17 = icmp eq i64 %16, 2305843009213693952
  %spec.select = zext i1 %17 to i32
  br label %return

return:                                           ; preds = %if.end56, %if.end52.return_crit_edge, %land.lhs.true.return_crit_edge, %if.end29.return_crit_edge, %do.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %entry.return_crit_edge ], [ 0, %if.end29.return_crit_edge ], [ 1, %land.lhs.true.return_crit_edge ], [ 1, %if.end52.return_crit_edge ], [ %spec.select, %if.end56 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_prev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_es_cache_extent(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_es_lookup_extent_enter(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_add_batch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_es_lookup_extent_exit(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @count_rsvd(ptr nocapture noundef readonly %inode, i32 noundef %lblk, i32 noundef %len, ptr nocapture noundef readonly %es, ptr nocapture noundef %rc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %es_pblk.i.i.i = getelementptr inbounds %struct.extent_status, ptr %es, i32 0, i32 3
  %4 = ptrtoint ptr %es_pblk.i.i.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %es_pblk.i.i.i, align 8
  %6 = and i64 %5, 3458764513820540928
  call void @__sanitizer_cov_trace_const_cmp8(i64 2305843009213693952, i64 %6)
  %.not = icmp eq i64 %6, 2305843009213693952
  br i1 %.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %len)
  %cmp = icmp slt i32 %len, 1
  br i1 %cmp, label %do.end, label %if.end.if.end16_crit_edge, !prof !107

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1061, i32 noundef 9, ptr noundef null) #9
  br label %if.end16

if.end16:                                         ; preds = %do.end, %if.end.if.end16_crit_edge
  %s_cluster_ratio = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 11
  %7 = ptrtoint ptr %s_cluster_ratio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_cluster_ratio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp23 = icmp eq i32 %8, 1
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rc, align 4
  %add = add i32 %10, %len
  store i32 %add, ptr %rc, align 4
  br label %cleanup

if.end25:                                         ; preds = %if.end16
  %es_lblk = getelementptr inbounds %struct.extent_status, ptr %es, i32 0, i32 1
  %11 = ptrtoint ptr %es_lblk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %es_lblk, align 4
  %13 = tail call i32 @llvm.umax.i32(i32 %12, i32 %lblk)
  %es_len.i = getelementptr inbounds %struct.extent_status, ptr %es, i32 0, i32 2
  %14 = ptrtoint ptr %es_len.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %es_len.i, align 8
  %add.i = add i32 %15, %12
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %12)
  %cmp.i = icmp ult i32 %add.i, %12
  br i1 %cmp.i, label %do.body3.i, label %ext4_es_end.exit, !prof !107

do.body3.i:                                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/extents_status.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 202, 0\0A.popsection", ""() #9, !srcloc !108
  unreachable

ext4_es_end.exit:                                 ; preds = %if.end25
  %add28 = add i32 %lblk, -1
  %sub = add i32 %add28, %len
  %sub.i = add i32 %add.i, -1
  %16 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %sub.i)
  %first_do_lblk_found = getelementptr inbounds %struct.rsvd_count, ptr %rc, i32 0, i32 1
  %17 = ptrtoint ptr %first_do_lblk_found to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %first_do_lblk_found, align 4, !range !114
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool36.not = icmp eq i8 %18, 0
  br i1 %tobool36.not, label %if.then37, label %ext4_es_end.exit.if.end39_crit_edge

ext4_es_end.exit.if.end39_crit_edge:              ; preds = %ext4_es_end.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.then37:                                        ; preds = %ext4_es_end.exit
  call void @__sanitizer_cov_trace_pc() #11
  %first_do_lblk = getelementptr inbounds %struct.rsvd_count, ptr %rc, i32 0, i32 2
  %19 = ptrtoint ptr %first_do_lblk to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %13, ptr %first_do_lblk, align 4
  %20 = ptrtoint ptr %first_do_lblk_found to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %first_do_lblk_found, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %ext4_es_end.exit.if.end39_crit_edge
  %last_do_lblk = getelementptr inbounds %struct.rsvd_count, ptr %rc, i32 0, i32 3
  %21 = ptrtoint ptr %last_do_lblk to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %16, ptr %last_do_lblk, align 4
  %partial = getelementptr inbounds %struct.rsvd_count, ptr %rc, i32 0, i32 5
  %22 = ptrtoint ptr %partial to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %partial, align 4, !range !114
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool40.not = icmp eq i8 %23, 0
  br i1 %tobool40.not, label %if.end39.if.end45_crit_edge, label %land.lhs.true

if.end39.if.end45_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

land.lhs.true:                                    ; preds = %if.end39
  %lclu = getelementptr inbounds %struct.rsvd_count, ptr %rc, i32 0, i32 6
  %24 = ptrtoint ptr %lclu to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %lclu, align 4
  %s_cluster_bits = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 12
  %26 = ptrtoint ptr %s_cluster_bits to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %s_cluster_bits, align 16
  %shr = lshr i32 %13, %27
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %shr)
  %cmp41.not = icmp eq i32 %25, %shr
  br i1 %cmp41.not, label %land.lhs.true.if.end45_crit_edge, label %if.then42

land.lhs.true.if.end45_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.then42:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rc, align 4
  %inc = add i32 %29, 1
  store i32 %inc, ptr %rc, align 4
  %30 = ptrtoint ptr %partial to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %partial, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %land.lhs.true.if.end45_crit_edge, %if.end39.if.end45_crit_edge
  %31 = ptrtoint ptr %s_cluster_ratio to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %s_cluster_ratio, align 4
  %sub47 = add i32 %32, -1
  %and = and i32 %sub47, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp48.not = icmp eq i32 %and, 0
  %or = or i32 %sub47, %13
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %or)
  %cmp52.not = icmp ult i32 %16, %or
  %or.cond = select i1 %cmp48.not, i1 true, i1 %cmp52.not
  br i1 %or.cond, label %if.end45.if.end62_crit_edge, label %if.then53

if.end45.if.end62_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.then53:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rc, align 4
  %inc55 = add i32 %34, 1
  store i32 %inc55, ptr %rc, align 4
  %35 = ptrtoint ptr %partial to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %partial, align 4
  %36 = ptrtoint ptr %s_cluster_ratio to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %s_cluster_ratio, align 4
  %sub58 = add i32 %37, -1
  %or59 = or i32 %sub58, %13
  %add60 = add i32 %or59, 1
  br label %if.end62

if.end62:                                         ; preds = %if.then53, %if.end45.if.end62_crit_edge
  %i.0 = phi i32 [ %add60, %if.then53 ], [ %13, %if.end45.if.end62_crit_edge ]
  %38 = ptrtoint ptr %s_cluster_ratio to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %s_cluster_ratio, align 4
  %add64 = add i32 %i.0, -1
  %sub65 = add i32 %add64, %39
  call void @__sanitizer_cov_trace_cmp4(i32 %sub65, i32 %16)
  %cmp66.not = icmp ugt i32 %sub65, %16
  br i1 %cmp66.not, label %if.end62.if.end76_crit_edge, label %if.then67

if.end62.if.end76_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76

if.then67:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  %sub68 = add i32 %16, 1
  %add69 = sub i32 %sub68, %i.0
  %s_cluster_bits70 = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 12
  %40 = ptrtoint ptr %s_cluster_bits70 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %s_cluster_bits70, align 16
  %shr71 = lshr i32 %add69, %41
  %42 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rc, align 4
  %add73 = add i32 %43, %shr71
  store i32 %add73, ptr %rc, align 4
  %44 = load i32, ptr %s_cluster_bits70, align 16
  %shl = shl i32 %shr71, %44
  %add75 = add i32 %shl, %i.0
  br label %if.end76

if.end76:                                         ; preds = %if.then67, %if.end62.if.end76_crit_edge
  %i.1 = phi i32 [ %add75, %if.then67 ], [ %i.0, %if.end62.if.end76_crit_edge ]
  %45 = ptrtoint ptr %partial to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %partial, align 4, !range !114
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool78.not = icmp ne i8 %46, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1, i32 %16)
  %cmp80.not = icmp ugt i32 %i.1, %16
  %or.cond137 = select i1 %tobool78.not, i1 true, i1 %cmp80.not
  br i1 %or.cond137, label %if.end76.cleanup_crit_edge, label %if.then81

if.end76.cleanup_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then81:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %partial to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %partial, align 4
  %s_cluster_bits83 = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 12
  %48 = ptrtoint ptr %s_cluster_bits83 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %s_cluster_bits83, align 16
  %shr84 = lshr i32 %i.1, %49
  %lclu85 = getelementptr inbounds %struct.rsvd_count, ptr %rc, i32 0, i32 6
  %50 = ptrtoint ptr %lclu85 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %shr84, ptr %lclu85, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then81, %if.end76.cleanup_crit_edge, %if.then24, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_es_remove_extent(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_write_trylock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @es_reclaim_extents(ptr noundef %ei, ptr nocapture noundef %nr_to_scan) unnamed_addr #2 align 64 {
entry:
  %nr_shrunk = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nr_shrunk) #9
  %0 = ptrtoint ptr %nr_shrunk to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %nr_shrunk, align 4
  %i_es_shrink_lblk = getelementptr inbounds %struct.ext4_inode_info, ptr %ei, i32 0, i32 29
  %1 = ptrtoint ptr %i_es_shrink_lblk to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %i_es_shrink_lblk, align 4
  %i_es_shk_nr = getelementptr inbounds %struct.ext4_inode_info, ptr %ei, i32 0, i32 28
  %3 = ptrtoint ptr %i_es_shk_nr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %i_es_shk_nr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_state_flags.i = getelementptr %struct.ext4_inode_info, ptr %ei, i32 0, i32 5
  %5 = ptrtoint ptr %i_state_flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %i_state_flags.i, align 4
  %7 = and i32 %6, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %land.lhs.true

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %call1 = tail call i32 @___ratelimit(ptr noundef nonnull @es_reclaim_extents._rs, ptr noundef nonnull @__func__.es_reclaim_extents) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end4_crit_edge, label %if.then3

land.lhs.true.if.end4_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %i_sb = getelementptr inbounds %struct.ext4_inode_info, ptr %ei, i32 0, i32 17, i32 8
  %8 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %9, ptr noundef nonnull @__func__.es_reclaim_extents, i32 noundef 1749, ptr noundef nonnull @.str.21) #9
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %land.lhs.true.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %call5 = call fastcc i32 @es_do_reclaim_extents(ptr noundef %ei, i32 noundef -1, ptr noundef %nr_to_scan, ptr noundef nonnull %nr_shrunk)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp ne i32 %call5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp8.not = icmp eq i32 %2, 0
  %or.cond = select i1 %tobool6.not, i1 true, i1 %cmp8.not
  br i1 %or.cond, label %if.end4.if.end11_crit_edge, label %if.then9

if.end4.if.end11_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then9:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %sub = add i32 %2, -1
  %call10 = call fastcc i32 @es_do_reclaim_extents(ptr noundef %ei, i32 noundef %sub, ptr noundef %nr_to_scan, ptr noundef nonnull %nr_shrunk)
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end4.if.end11_crit_edge
  %cache_es = getelementptr inbounds %struct.ext4_inode_info, ptr %ei, i32 0, i32 24, i32 1
  %10 = ptrtoint ptr %cache_es to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %cache_es, align 4
  %11 = ptrtoint ptr %nr_shrunk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nr_shrunk, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %12, %if.end11 ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr_shrunk) #9
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ext4_es_shrink(ptr noundef %sb, i32 noundef %nr_shrunk, i64 noundef %scan_time, i32 noundef %nr_skipped, i32 noundef %retried) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_es_shrink, i32 0, i32 1), ptr blockaddress(@trace_ext4_es_shrink, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !101

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !91) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !102

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !91) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !131
  %call42 = tail call i32 @__traceiter_ext4_es_shrink(ptr noundef null, ptr noundef %sb, i32 noundef %nr_shrunk, i64 noundef %scan_time, i32 noundef %nr_skipped, i32 noundef %retried) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !132
  %13 = tail call i32 @llvm.read_register.i32(metadata !91) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !91) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !102

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !91) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !105
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_es_shrink, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_es_shrink, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ext4_es_shrink.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_ext4_es_shrink.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 2432, ptr noundef nonnull @.str.16) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !106
  %31 = tail call i32 @llvm.read_register.i32(metadata !91) #9
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
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @es_do_reclaim_extents(ptr noundef %ei, i32 noundef %end, ptr nocapture noundef %nr_to_scan, ptr nocapture noundef %nr_shrunk) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vfs_inode = getelementptr inbounds %struct.ext4_inode_info, ptr %ei, i32 0, i32 17
  %i_es_tree = getelementptr inbounds %struct.ext4_inode_info, ptr %ei, i32 0, i32 24
  %i_es_shrink_lblk = getelementptr inbounds %struct.ext4_inode_info, ptr %ei, i32 0, i32 29
  %0 = ptrtoint ptr %i_es_shrink_lblk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_es_shrink_lblk, align 4
  %2 = ptrtoint ptr %i_es_tree to i32
  call void @__asan_load4_noabort(i32 %2)
  %node.050.i = load ptr, ptr %i_es_tree, align 4
  %tobool.not51.i = icmp eq ptr %node.050.i, null
  br i1 %tobool.not51.i, label %entry.cleanup_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body.i:                                     ; preds = %while.body.i.backedge, %entry.while.body.i_crit_edge
  %node.052.i = phi ptr [ %node.052.i.be, %while.body.i.backedge ], [ %node.050.i, %entry.while.body.i_crit_edge ]
  %es_lblk.i = getelementptr inbounds %struct.extent_status, ptr %node.052.i, i32 0, i32 1
  %3 = ptrtoint ptr %es_lblk.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %es_lblk.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %1)
  %cmp.i = icmp ugt i32 %4, %1
  br i1 %cmp.i, label %if.end4.i, label %if.else.i

if.else.i:                                        ; preds = %while.body.i
  %es_len.i.i = getelementptr inbounds %struct.extent_status, ptr %node.052.i, i32 0, i32 2
  %5 = ptrtoint ptr %es_len.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %es_len.i.i, align 8
  %add.i.i = add i32 %6, %4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %4)
  %cmp.i.i = icmp ult i32 %add.i.i, %4
  br i1 %cmp.i.i, label %do.body3.i.i, label %ext4_es_end.exit.i, !prof !107

do.body3.i.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/extents_status.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 202, 0\0A.popsection", ""() #9, !srcloc !108
  unreachable

ext4_es_end.exit.i:                               ; preds = %if.else.i
  %sub.i.i = add i32 %add.i.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %1)
  %cmp1.i = icmp ult i32 %sub.i.i, %1
  br i1 %cmp1.i, label %if.end4.i.thread, label %ext4_es_end.exit.i.while.cond.preheader_crit_edge

ext4_es_end.exit.i.while.cond.preheader_crit_edge: ; preds = %ext4_es_end.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.preheader

if.end4.i:                                        ; preds = %while.body.i
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %node.052.i, i32 0, i32 2
  %7 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %node.0.i = load ptr, ptr %rb_left.i, align 4
  %tobool.not.i = icmp eq ptr %node.0.i, null
  br i1 %tobool.not.i, label %if.end4.i.while.cond.preheader_crit_edge, label %if.end4.i.while.body.i.backedge_crit_edge

if.end4.i.while.body.i.backedge_crit_edge:        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.backedge

if.end4.i.while.cond.preheader_crit_edge:         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.preheader

while.body.i.backedge:                            ; preds = %if.end4.i.thread.while.body.i.backedge_crit_edge, %if.end4.i.while.body.i.backedge_crit_edge
  %node.052.i.be = phi ptr [ %node.0.i, %if.end4.i.while.body.i.backedge_crit_edge ], [ %node.0.i45, %if.end4.i.thread.while.body.i.backedge_crit_edge ]
  br label %while.body.i

if.end4.i.thread:                                 ; preds = %ext4_es_end.exit.i
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %node.052.i, i32 0, i32 1
  %8 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %node.0.i45 = load ptr, ptr %rb_right.i, align 4
  %tobool.not.i46 = icmp eq ptr %node.0.i45, null
  br i1 %tobool.not.i46, label %land.lhs.true11.critedge.i, label %if.end4.i.thread.while.body.i.backedge_crit_edge

if.end4.i.thread.while.body.i.backedge_crit_edge: ; preds = %if.end4.i.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.backedge

land.lhs.true11.critedge.i:                       ; preds = %if.end4.i.thread
  %es_len.i.i.le = getelementptr inbounds %struct.extent_status, ptr %node.052.i, i32 0, i32 2
  %9 = ptrtoint ptr %es_len.i.i.le to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %es_len.i.i.le, align 8
  %add.i41.i = add i32 %10, %4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i41.i, i32 %4)
  %cmp.i42.i = icmp ult i32 %add.i41.i, %4
  br i1 %cmp.i42.i, label %do.body3.i43.i, label %ext4_es_end.exit45.i, !prof !107

do.body3.i43.i:                                   ; preds = %land.lhs.true11.critedge.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/extents_status.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 202, 0\0A.popsection", ""() #9, !srcloc !108
  unreachable

ext4_es_end.exit45.i:                             ; preds = %land.lhs.true11.critedge.i
  %sub.i44.i = add i32 %add.i41.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i44.i, i32 %1)
  %cmp13.i = icmp ult i32 %sub.i44.i, %1
  br i1 %cmp13.i, label %__es_tree_search.exit, label %ext4_es_end.exit45.i.cleanup_crit_edge

ext4_es_end.exit45.i.cleanup_crit_edge:           ; preds = %ext4_es_end.exit45.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

__es_tree_search.exit:                            ; preds = %ext4_es_end.exit45.i
  %call16.i = tail call ptr @rb_next(ptr noundef nonnull %node.052.i) #9
  %tobool.not = icmp eq ptr %call16.i, null
  br i1 %tobool.not, label %__es_tree_search.exit.cleanup_crit_edge, label %__es_tree_search.exit.while.cond.preheader_crit_edge

__es_tree_search.exit.while.cond.preheader_crit_edge: ; preds = %__es_tree_search.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.preheader

__es_tree_search.exit.cleanup_crit_edge:          ; preds = %__es_tree_search.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.cond.preheader:                             ; preds = %__es_tree_search.exit.while.cond.preheader_crit_edge, %if.end4.i.while.cond.preheader_crit_edge, %ext4_es_end.exit.i.while.cond.preheader_crit_edge
  %es.0.ph = phi ptr [ %call16.i, %__es_tree_search.exit.while.cond.preheader_crit_edge ], [ %node.052.i, %ext4_es_end.exit.i.while.cond.preheader_crit_edge ], [ %node.052.i, %if.end4.i.while.cond.preheader_crit_edge ]
  br label %while.cond

while.cond:                                       ; preds = %next.while.cond_crit_edge, %while.cond.preheader
  %es.0 = phi ptr [ %call5, %next.while.cond_crit_edge ], [ %es.0.ph, %while.cond.preheader ]
  %11 = ptrtoint ptr %nr_to_scan to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nr_to_scan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp = icmp sgt i32 %12, 0
  %es_lblk = getelementptr inbounds %struct.extent_status, ptr %es.0, i32 0, i32 1
  %13 = ptrtoint ptr %es_lblk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %es_lblk, align 4
  br i1 %cmp, label %while.body, label %while.cond.cleanup_crit_edge

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body:                                       ; preds = %while.cond
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %end)
  %cmp1 = icmp ugt i32 %14, %end
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %add = add nuw i32 %end, 1
  br label %cleanup

if.end4:                                          ; preds = %while.body
  %dec = add nsw i32 %12, -1
  %15 = ptrtoint ptr %nr_to_scan to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %dec, ptr %nr_to_scan, align 4
  %call5 = tail call ptr @rb_next(ptr noundef nonnull %es.0) #9
  %es_pblk.i.i = getelementptr inbounds %struct.extent_status, ptr %es.0, i32 0, i32 3
  %16 = ptrtoint ptr %es_pblk.i.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %es_pblk.i.i, align 8
  %18 = and i64 %17, 2305843009213693952
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %18)
  %tobool7.not = icmp eq i64 %18, 0
  br i1 %tobool7.not, label %if.end9, label %if.end4.next_crit_edge

if.end4.next_crit_edge:                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %next

if.end9:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %17)
  %tobool11.not = icmp sgt i64 %17, -1
  br i1 %tobool11.not, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %and.i = and i64 %17, 9223372036854775807
  %19 = ptrtoint ptr %es_pblk.i.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %and.i, ptr %es_pblk.i.i, align 8
  br label %next

if.end13:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @rb_erase(ptr noundef nonnull %es.0, ptr noundef %i_es_tree) #9
  tail call fastcc void @ext4_es_free_extent(ptr noundef %vfs_inode, ptr noundef nonnull %es.0)
  %20 = ptrtoint ptr %nr_shrunk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nr_shrunk, align 4
  %inc = add i32 %21, 1
  store i32 %inc, ptr %nr_shrunk, align 4
  br label %next

next:                                             ; preds = %if.end13, %if.then12, %if.end4.next_crit_edge
  %tobool16.not = icmp eq ptr %call5, null
  br i1 %tobool16.not, label %next.cleanup_crit_edge, label %next.while.cond_crit_edge

next.while.cond_crit_edge:                        ; preds = %next
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

next.cleanup_crit_edge:                           ; preds = %next
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %next.cleanup_crit_edge, %if.then2, %while.cond.cleanup_crit_edge, %__es_tree_search.exit.cleanup_crit_edge, %ext4_es_end.exit45.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %.sink = phi i32 [ %add, %if.then2 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %ext4_es_end.exit45.i.cleanup_crit_edge ], [ 0, %__es_tree_search.exit.cleanup_crit_edge ], [ 0, %next.cleanup_crit_edge ], [ %14, %while.cond.cleanup_crit_edge ]
  %retval.0 = phi i32 [ 0, %if.then2 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %ext4_es_end.exit45.i.cleanup_crit_edge ], [ 0, %__es_tree_search.exit.cleanup_crit_edge ], [ 0, %next.cleanup_crit_edge ], [ 1, %while.cond.cleanup_crit_edge ]
  %22 = ptrtoint ptr %i_es_shrink_lblk to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %.sink, ptr %i_es_shrink_lblk, align 4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_es_shrink(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__percpu_counter_sum(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ext4_es_shrink_scan_enter(ptr noundef %sb, i32 noundef %nr_to_scan, i32 noundef %cache_cnt) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_es_shrink_scan_enter, i32 0, i32 1), ptr blockaddress(@trace_ext4_es_shrink_scan_enter, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !101

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !91) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !102

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !91) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !133
  %call42 = tail call i32 @__traceiter_ext4_es_shrink_scan_enter(ptr noundef null, ptr noundef %sb, i32 noundef %nr_to_scan, i32 noundef %cache_cnt) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !134
  %13 = tail call i32 @llvm.read_register.i32(metadata !91) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !91) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !102

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !91) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !105
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_es_shrink_scan_enter, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_es_shrink_scan_enter, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ext4_es_shrink_scan_enter.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_ext4_es_shrink_scan_enter.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 2332, ptr noundef nonnull @.str.16) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !106
  %31 = tail call i32 @llvm.read_register.i32(metadata !91) #9
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
define internal fastcc void @trace_ext4_es_shrink_scan_exit(ptr noundef %sb, i32 noundef %nr_shrunk, i32 noundef %cache_cnt) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_es_shrink_scan_exit, i32 0, i32 1), ptr blockaddress(@trace_ext4_es_shrink_scan_exit, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !101

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !91) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !102

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !91) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !135
  %call42 = tail call i32 @__traceiter_ext4_es_shrink_scan_exit(ptr noundef null, ptr noundef %sb, i32 noundef %nr_shrunk, i32 noundef %cache_cnt) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !136
  %13 = tail call i32 @llvm.read_register.i32(metadata !91) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !91) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !102

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !91) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !105
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_es_shrink_scan_exit, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_es_shrink_scan_exit, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ext4_es_shrink_scan_exit.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_ext4_es_shrink_scan_exit.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 2354, ptr noundef nonnull @.str.16) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !106
  %31 = tail call i32 @llvm.read_register.i32(metadata !91) #9
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
declare dso_local i32 @__traceiter_ext4_es_shrink_scan_enter(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_es_shrink_scan_exit(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ext4_es_shrink_count(ptr noundef %sb, i32 noundef %nr_to_scan, i32 noundef %cache_cnt) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_es_shrink_count, i32 0, i32 1), ptr blockaddress(@trace_ext4_es_shrink_count, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !101

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !91) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !102

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !91) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !137
  %call42 = tail call i32 @__traceiter_ext4_es_shrink_count(ptr noundef null, ptr noundef %sb, i32 noundef %nr_to_scan, i32 noundef %cache_cnt) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !138
  %13 = tail call i32 @llvm.read_register.i32(metadata !91) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !91) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !102

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !91) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !105
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_es_shrink_count, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_es_shrink_count, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ext4_es_shrink_count.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_ext4_es_shrink_count.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 2326, ptr noundef nonnull @.str.16) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !106
  %31 = tail call i32 @llvm.read_register.i32(metadata !91) #9
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
declare dso_local i32 @__traceiter_ext4_es_shrink_count(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_es_insert_delayed_block(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind readnone }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15, !17, !19, !21, !22, !24, !26, !28, !30, !32, !34, !36, !38, !39, !40, !41, !43, !44, !46, !47, !49, !50, !52, !53, !54, !55, !57, !58, !60, !61, !63, !64, !66, !67, !69, !70, !72, !74, !76, !77, !79, !80, !82, !83, !85, !86, !88, !90}
!llvm.named.register.sp = !{!91}
!llvm.module.flags = !{!92, !93, !94, !95, !96, !97, !98, !99}
!llvm.ident = !{!100}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ext4/extents_status.c", i32 158, i32 37}
!2 = !{ptr @__func__.ext4_es_insert_extent, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/ext4/extents_status.c", i32 837, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/ext4/extents_status.c", i32 840, i32 3}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/ext4/extents_status.c", i32 1605, i32 18}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/ext4/extents_status.c", i32 1608, i32 18}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/ext4/extents_status.c", i32 1612, i32 19}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/ext4/extents_status.c", i32 1614, i32 18}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/ext4/extents_status.c", i32 1616, i32 18}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/ext4/extents_status.c", i32 1619, i32 7}
!19 = !{ptr @ext4_es_register_shrinker.__key, !20, !"__key", i1 false, i1 false}
!20 = !{!"../fs/ext4/extents_status.c", i32 1635, i32 2}
!21 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ext4_es_register_shrinker.__key.10, !23, !"__key", i1 false, i1 false}
!23 = !{!"../fs/ext4/extents_status.c", i32 1637, i32 8}
!24 = !{ptr @ext4_es_register_shrinker.__key.11, !25, !"__key", i1 false, i1 false}
!25 = !{!"../fs/ext4/extents_status.c", i32 1641, i32 8}
!26 = !{ptr @ext4_es_register_shrinker.__key.12, !27, !"__key", i1 false, i1 false}
!27 = !{!"../fs/ext4/extents_status.c", i32 1647, i32 8}
!28 = !{ptr @ext4_es_register_shrinker.__key.13, !29, !"__key", i1 false, i1 false}
!29 = !{!"../fs/ext4/extents_status.c", i32 1650, i32 8}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/ext4/extents_status.c", i32 1810, i32 42}
!32 = !{ptr @ext4_es_cachep, !33, !"ext4_es_cachep", i1 false, i1 false}
!33 = !{!"../fs/ext4/extents_status.c", i32 144, i32 27}
!34 = !{ptr @ext4_pending_cachep, !35, !"ext4_pending_cachep", i1 false, i1 false}
!35 = !{!"../fs/ext4/extents_status.c", i32 145, i32 27}
!36 = distinct !{null, !37, !"__already_done", i1 false, i1 false}
!37 = !{!"../include/trace/events/ext4.h", i32 2192, i32 1}
!38 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!39 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!40 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!41 = distinct !{null, !42, !"__already_done", i1 false, i1 false}
!42 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!43 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!44 = distinct !{null, !45, !"__already_done", i1 false, i1 false}
!45 = !{!"../include/trace/events/ext4.h", i32 2214, i32 1}
!46 = distinct !{null, !45, !"__warned", i1 false, i1 false}
!47 = distinct !{null, !48, !"__already_done", i1 false, i1 false}
!48 = !{!"../include/trace/events/ext4.h", i32 2155, i32 1}
!49 = distinct !{null, !48, !"__warned", i1 false, i1 false}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/ext4/extents_status.c", i32 512, i32 3}
!52 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @ext4_es_can_be_merged._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @ext4_es_can_be_merged._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = distinct !{null, !56, !"__already_done", i1 false, i1 false}
!56 = !{!"../include/trace/events/ext4.h", i32 2161, i32 1}
!57 = distinct !{null, !56, !"__warned", i1 false, i1 false}
!58 = distinct !{null, !59, !"__already_done", i1 false, i1 false}
!59 = !{!"../include/trace/events/ext4.h", i32 2244, i32 1}
!60 = distinct !{null, !59, !"__warned", i1 false, i1 false}
!61 = distinct !{null, !62, !"__already_done", i1 false, i1 false}
!62 = !{!"../include/trace/events/ext4.h", i32 2266, i32 1}
!63 = distinct !{null, !62, !"__warned", i1 false, i1 false}
!64 = distinct !{null, !65, !"__already_done", i1 false, i1 false}
!65 = !{!"../include/trace/events/ext4.h", i32 2167, i32 1}
!66 = distinct !{null, !65, !"__warned", i1 false, i1 false}
!67 = !{ptr @.str.20, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/ext4/extents_status.c", i32 1741, i32 9}
!69 = !{ptr @es_reclaim_extents._rs, !68, !"_rs", i1 false, i1 false}
!70 = !{ptr @__func__.es_reclaim_extents, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/ext4/extents_status.c", i32 1748, i32 6}
!72 = !{ptr @.str.21, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/ext4/extents_status.c", i32 1749, i32 3}
!74 = distinct !{null, !75, !"__already_done", i1 false, i1 false}
!75 = !{!"../include/trace/events/ext4.h", i32 2406, i32 1}
!76 = distinct !{null, !75, !"__warned", i1 false, i1 false}
!77 = distinct !{null, !78, !"__already_done", i1 false, i1 false}
!78 = !{!"../include/trace/events/ext4.h", i32 2328, i32 1}
!79 = distinct !{null, !78, !"__warned", i1 false, i1 false}
!80 = distinct !{null, !81, !"__already_done", i1 false, i1 false}
!81 = !{!"../include/trace/events/ext4.h", i32 2334, i32 1}
!82 = distinct !{null, !81, !"__warned", i1 false, i1 false}
!83 = distinct !{null, !84, !"__already_done", i1 false, i1 false}
!84 = !{!"../include/trace/events/ext4.h", i32 2322, i32 1}
!85 = distinct !{null, !84, !"__warned", i1 false, i1 false}
!86 = distinct !{null, !87, !"__already_done", i1 false, i1 false}
!87 = !{!"../fs/ext4/extents_status.c", i32 448, i32 3}
!88 = distinct !{null, !89, !"__already_done", i1 false, i1 false}
!89 = !{!"../include/trace/events/ext4.h", i32 2434, i32 1}
!90 = distinct !{null, !89, !"__warned", i1 false, i1 false}
!91 = !{!"sp"}
!92 = !{i32 1, !"wchar_size", i32 2}
!93 = !{i32 1, !"min_enum_size", i32 4}
!94 = !{i32 8, !"branch-target-enforcement", i32 0}
!95 = !{i32 8, !"sign-return-address", i32 0}
!96 = !{i32 8, !"sign-return-address-all", i32 0}
!97 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!98 = !{i32 7, !"uwtable", i32 1}
!99 = !{i32 7, !"frame-pointer", i32 2}
!100 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!101 = !{i64 2148545963, i64 2148545968, i64 2148545981, i64 2148546025, i64 2148546059, i64 2148546080}
!102 = !{!"branch_weights", i32 2000, i32 1}
!103 = !{i64 2157129561}
!104 = !{i64 2157129808}
!105 = !{i64 2149542370}
!106 = !{i64 2149543406}
!107 = !{!"branch_weights", i32 1, i32 2000}
!108 = !{i64 2157718943, i64 2157719432, i64 2157718980, i64 2157719036, i64 2157719070, i64 2157719094, i64 2157719135, i64 2157719156, i64 2157719184, i64 2157719218}
!109 = !{i64 2157151561}
!110 = !{i64 2157151802}
!111 = !{i64 2157770557, i64 2157771046, i64 2157770594, i64 2157770650, i64 2157770684, i64 2157770708, i64 2157770749, i64 2157770770, i64 2157770798, i64 2157770832}
!112 = !{i64 2157073872}
!113 = !{i64 2157074095}
!114 = !{i8 0, i8 2}
!115 = !{i64 2157767063, i64 2157767552, i64 2157767100, i64 2157767156, i64 2157767190, i64 2157767214, i64 2157767255, i64 2157767276, i64 2157767304, i64 2157767338}
!116 = !{i64 2157777843, i64 2157778332, i64 2157777880, i64 2157777936, i64 2157777970, i64 2157777994, i64 2157778035, i64 2157778056, i64 2157778084, i64 2157778118}
!117 = !{i64 2157094952}
!118 = !{i64 2157095173}
!119 = !{i64 2157169238}
!120 = !{i64 2157169477}
!121 = !{i64 2157187068}
!122 = !{i64 2157187315}
!123 = !{i64 2157819164, i64 2157819654, i64 2157819201, i64 2157819257, i64 2157819291, i64 2157819315, i64 2157819356, i64 2157819377, i64 2157819405, i64 2157819439}
!124 = !{i64 2157112144}
!125 = !{i64 2157112381}
!126 = !{i64 1085606, i64 1085633, i64 1085655, i64 1085683}
!127 = !{i64 1086014, i64 1086041, i64 1086074, i64 1086095, i64 1086122, i64 1086148}
!128 = !{i64 2157753226, i64 2157753715, i64 2157753263, i64 2157753319, i64 2157753353, i64 2157753377, i64 2157753418, i64 2157753439, i64 2157753467, i64 2157753501}
!129 = !{i64 2157317671}
!130 = !{i64 2157317930}
!131 = !{i64 2157299995}
!132 = !{i64 2157300276}
!133 = !{i64 2157226313}
!134 = !{i64 2157226576}
!135 = !{i64 2157244077}
!136 = !{i64 2157244336}
!137 = !{i64 2157208758}
!138 = !{i64 2157209011}
