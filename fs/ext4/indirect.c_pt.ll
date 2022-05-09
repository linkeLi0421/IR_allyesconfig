; ModuleID = '/llk/IR_all_yes/fs/ext4/indirect.c_pt.bc'
source_filename = "../fs/ext4/indirect.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.58 }
%struct.atomic_t = type { i32 }
%union.anon.58 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.ext4_allocation_request = type { ptr, i32, i32, i32, i32, i64, i64, i64, i32 }
%struct.Indirect = type { ptr, i32, ptr }
%struct.ext4_map_blocks = type { i64, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.77, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.78, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.79, ptr, %struct.address_space, %struct.list_head, %union.anon.80, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.77 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.78 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.79 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.80 = type { ptr }
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
%struct.ext4_super_block = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i16, i16, i32, i16, i16, i32, i32, i32, [16 x i8], [16 x i8], [64 x i8], i32, i8, i8, i16, [16 x i8], i32, i32, i32, [4 x i32], i8, i8, i16, i32, i32, i32, [17 x i32], i32, i32, i32, i16, i16, i32, i16, i16, i64, i32, i8, i8, i8, i8, i64, i32, i32, i64, i32, i32, i32, i32, i64, [32 x i8], i32, i32, i32, i32, i64, [32 x i8], [64 x i8], i32, i32, i32, [2 x i32], [4 x i8], [16 x i8], i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, [94 x i32], i32 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.jbd2_journal_handle = type { %union.anon, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.anon = type { ptr }
%struct.transaction_s = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, i32, i32, i32, %struct.transaction_chp_stats_s, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, i32, i64, i8, i32, %struct.list_head }
%struct.transaction_chp_stats_s = type { i32, i32, i32, i32 }

@ext4_ind_map_blocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 539, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\010Assertion failure in %s() at %s:%d: '%s'\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ext4_ind_map_blocks\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/ext4/indirect.c\00", [45 x i8] zeroinitializer }, align 32
@ext4_ind_map_blocks._entry_ptr = internal global ptr @ext4_ind_map_blocks._entry, section ".printk_index", align 4
@.str.3 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"!(ext4_test_inode_flag(inode, EXT4_INODE_EXTENTS))\00", [45 x i8] zeroinitializer }, align 32
@ext4_ind_map_blocks._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 540, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ext4_ind_map_blocks._entry_ptr.5 = internal global ptr @ext4_ind_map_blocks._entry.4, section ".printk_index", align 4
@.str.6 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"handle != NULL || (flags & EXT4_GET_BLOCKS_CREATE) == 0\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"Can't allocate blocks for non-extent mapped inodes with bigalloc\00", [63 x i8] zeroinitializer }, align 32
@__tracepoint_ext4_ind_map_blocks_enter = external dso_local global %struct.tracepoint, align 4
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/trace/events/ext4.h\00", [36 x i8] zeroinitializer }, align 32
@trace_ext4_ind_map_blocks_enter.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__func__.ext4_block_to_path = private unnamed_addr constant [19 x i8] c"ext4_block_to_path\00", align 1
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"block %lu > max in inode %lu\00", [35 x i8] zeroinitializer }, align 32
@__func__.ext4_get_branch = private unnamed_addr constant [16 x i8] c"ext4_get_branch\00", align 1
@__func__.ext4_alloc_branch = private unnamed_addr constant [18 x i8] c"ext4_alloc_branch\00", align 1
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/buffer_head.h\00", [36 x i8] zeroinitializer }, align 32
@__func__.ext4_splice_branch = private unnamed_addr constant [19 x i8] c"ext4_splice_branch\00", align 1
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"splicing indirect only\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"splicing direct\0A\00", [47 x i8] zeroinitializer }, align 32
@__tracepoint_ext4_ind_map_blocks_exit = external dso_local global %struct.tracepoint, align 4
@trace_ext4_ind_map_blocks_exit.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.ext4_free_data = private unnamed_addr constant [15 x i8] c"ext4_free_data\00", align 1
@.str.15 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"circular indirect block detected at block %llu\00", [49 x i8] zeroinitializer }, align 32
@__func__.ext4_clear_blocks = private unnamed_addr constant [18 x i8] c"ext4_clear_blocks\00", align 1
@.str.16 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"attempt to clear invalid blocks %llu len %lu\00", [51 x i8] zeroinitializer }, align 32
@__func__.ext4_ind_truncate_ensure_credits = private unnamed_addr constant [33 x i8] c"ext4_ind_truncate_ensure_credits\00", align 1
@__func__.ext4_ind_trunc_restart_fn = private unnamed_addr constant [26 x i8] c"ext4_ind_trunc_restart_fn\00", align 1
@__func__.ext4_free_branches = private unnamed_addr constant [19 x i8] c"ext4_free_branches\00", align 1
@.str.17 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"invalid indirect mapped block %lu (level %d)\00", [51 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Read failure\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 12, i64 13, i64 14]
@__sancov_gen_cov_switch_values.19 = internal global [5 x i64] [i64 3, i64 32, i64 12, i64 13, i64 14]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 16, i64 16384, i64 40960]
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 539, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 540, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 596, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant [31 x i8] c"../include/trace/events/ext4.h\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 1639, i32 1 }
@___asan_gen_.52 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 108, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 105, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant [31 x i8] c"../include/linux/buffer_head.h\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 366, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 463, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 475, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 972, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 866, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 1012, i32 5 }
@___asan_gen_.75 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.76 = private constant [22 x i8] c"../fs/ext4/indirect.c\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 1027, i32 5 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @ext4_ind_map_blocks._entry, ptr @ext4_ind_map_blocks._entry.4, ptr @ext4_ind_map_blocks._entry_ptr, ptr @ext4_ind_map_blocks._entry_ptr.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_ind_map_blocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_ind_map_blocks._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_ind_map_blocks(ptr noundef %handle, ptr noundef %inode, ptr noundef %map, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %new_blocks.i = alloca [4 x i64], align 8
  %err.i = alloca i32, align 4
  %ar = alloca %struct.ext4_allocation_request, align 8
  %err = alloca i32, align 4
  %offsets = alloca [4 x i32], align 4
  %chain = alloca [4 x %struct.Indirect], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %ar) #10
  %0 = call ptr @memset(ptr %ar, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #10
  %1 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -5, ptr %err, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %offsets) #10
  %2 = getelementptr inbounds [4 x i32], ptr %offsets, i32 0, i32 1
  %3 = getelementptr inbounds [4 x i32], ptr %offsets, i32 0, i32 2
  %4 = getelementptr inbounds [4 x i32], ptr %offsets, i32 0, i32 3
  %5 = call ptr @memset(ptr %offsets, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %chain) #10
  %6 = call ptr @memset(ptr %chain, i32 255, i32 48)
  %m_lblk = getelementptr inbounds %struct.ext4_map_blocks, ptr %map, i32 0, i32 1
  %7 = ptrtoint ptr %m_lblk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %m_lblk, align 8
  %m_len = getelementptr inbounds %struct.ext4_map_blocks, ptr %map, i32 0, i32 2
  %9 = ptrtoint ptr %m_len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %m_len, align 4
  tail call fastcc void @trace_ext4_ind_map_blocks_enter(ptr noundef %inode, i32 noundef %8, i32 noundef %10, i32 noundef %flags)
  %i_flags.i = getelementptr i8, ptr %inode, i32 -380
  %11 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %i_flags.i, align 4
  %13 = and i32 %12, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %do.body15, label %do.end, !prof !65

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 539, ptr noundef nonnull @.str.3) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/indirect.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 539, 0\0A.popsection", ""() #10, !srcloc !66
  unreachable

do.body15:                                        ; preds = %entry
  %cmp.not = icmp ne ptr %handle, null
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp16 = icmp eq i32 %and, 0
  %14 = or i1 %cmp.not, %cmp16
  br i1 %14, label %do.end39, label %do.end28, !prof !65

do.end28:                                         ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #12
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 540, ptr noundef nonnull @.str.6) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/indirect.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 540, 0\0A.popsection", ""() #10, !srcloc !67
  unreachable

do.end39:                                         ; preds = %do.body15
  %15 = ptrtoint ptr %m_lblk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %m_lblk, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %17 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i_sb.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %s_blocksize.i, align 16
  %div104.i = lshr i32 %20, 2
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %18, i32 0, i32 33
  %21 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_addr_per_block_bits.i = getelementptr inbounds %struct.ext4_sb_info, ptr %22, i32 0, i32 27
  %23 = ptrtoint ptr %s_addr_per_block_bits.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %s_addr_per_block_bits.i, align 4
  %mul.i = shl i32 %24, 1
  %shl.i = shl nuw i32 1, %mul.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %16)
  %cmp.i = icmp ult i32 %16, 12
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %offsets to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %16, ptr %offsets, align 4
  br label %if.end44

if.else.i:                                        ; preds = %do.end39
  %sub.i = add i32 %16, -12
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %div104.i)
  %cmp2.i = icmp ult i32 %sub.i, %div104.i
  br i1 %cmp2.i, label %if.then3.i, label %if.else8.i

if.then3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %offsets to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 12, ptr %offsets, align 4
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %sub.i, ptr %2, align 4
  br label %if.end44

if.else8.i:                                       ; preds = %if.else.i
  %sub9.i = sub i32 %sub.i, %div104.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub9.i, i32 %shl.i)
  %cmp10.i = icmp ult i32 %sub9.i, %shl.i
  br i1 %cmp10.i, label %if.then11.i, label %if.else19.i

if.then11.i:                                      ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %offsets to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 13, ptr %offsets, align 4
  %shr.i = lshr i32 %sub9.i, %24
  %29 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %shr.i, ptr %2, align 4
  %sub16.i = add nsw i32 %div104.i, -1
  %and.i = and i32 %sub9.i, %sub16.i
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %and.i, ptr %3, align 4
  br label %if.end44

if.else19.i:                                      ; preds = %if.else8.i
  %sub20.i = sub i32 %sub9.i, %shl.i
  %shr22.i = lshr i32 %sub20.i, %mul.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shr22.i, i32 %div104.i)
  %cmp23.i = icmp ult i32 %shr22.i, %div104.i
  br i1 %cmp23.i, label %if.then24.i, label %ext4_block_to_path.exit

if.then24.i:                                      ; preds = %if.else19.i
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %offsets to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 14, ptr %offsets, align 4
  %32 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %shr22.i, ptr %2, align 4
  %shr31.i = lshr i32 %sub20.i, %24
  %sub32.i = add nsw i32 %div104.i, -1
  %and33.i = and i32 %shr31.i, %sub32.i
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %and33.i, ptr %3, align 4
  %and37.i = and i32 %sub20.i, %sub32.i
  %34 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %and37.i, ptr %4, align 4
  br label %if.end44

ext4_block_to_path.exit:                          ; preds = %if.else19.i
  call void @__sanitizer_cov_trace_pc() #12
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %35 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %i_ino.i, align 8
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %18, ptr noundef nonnull @__func__.ext4_block_to_path, i32 noundef 107, ptr noundef nonnull @.str.11, i32 noundef %16, i32 noundef %36) #10
  br label %out

if.end44:                                         ; preds = %if.then24.i, %if.then11.i, %if.then3.i, %if.then.i
  %i_block.addr.0.i.ph = phi i32 [ %sub20.i, %if.then24.i ], [ %sub9.i, %if.then11.i ], [ %sub.i, %if.then3.i ], [ %16, %if.then.i ]
  %n.0.i.ph = phi i32 [ 4, %if.then24.i ], [ 3, %if.then11.i ], [ 2, %if.then3.i ], [ 1, %if.then.i ]
  %final.0.i.ph = phi i32 [ %div104.i, %if.then24.i ], [ %div104.i, %if.then11.i ], [ %div104.i, %if.then3.i ], [ 12, %if.then.i ]
  %sub49.i279 = add nsw i32 %div104.i, -1
  %and50.i280 = and i32 %i_block.addr.0.i.ph, %sub49.i279
  %37 = xor i32 %and50.i280, -1
  %sub51.i281 = add i32 %final.0.i.ph, %37
  %call47 = call fastcc ptr @ext4_get_branch(ptr noundef %inode, i32 noundef %n.0.i.ph, ptr noundef nonnull %offsets, ptr noundef nonnull %chain, ptr noundef nonnull %err)
  %tobool48.not = icmp eq ptr %call47, null
  br i1 %tobool48.not, label %if.then49, label %if.end64

if.then49:                                        ; preds = %if.end44
  %sub = add nsw i32 %n.0.i.ph, -1
  %arrayidx = getelementptr [4 x %struct.Indirect], ptr %chain, i32 0, i32 %sub
  %key = getelementptr [4 x %struct.Indirect], ptr %chain, i32 0, i32 %sub, i32 1
  %38 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %key, align 4
  %40 = call i32 @llvm.bswap.i32(i32 %39)
  %conv = zext i32 %40 to i64
  %41 = ptrtoint ptr %m_len to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %m_len, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %if.then49
  %count.0 = phi i32 [ 1, %if.then49 ], [ %inc62, %while.body.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %count.0, i32 %42)
  %cmp51 = icmp uge i32 %count.0, %42
  call void @__sanitizer_cov_trace_cmp4(i32 %count.0, i32 %sub51.i281)
  %cmp53.not = icmp sgt i32 %count.0, %sub51.i281
  %or.cond = select i1 %cmp51, i1 true, i1 %cmp53.not
  br i1 %or.cond, label %while.cond.got_it_crit_edge, label %while.body

while.cond.got_it_crit_edge:                      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %got_it

while.body:                                       ; preds = %while.cond
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx, align 4
  %add.ptr = getelementptr i32, ptr %44, i32 %count.0
  %45 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %add.ptr, align 4
  %47 = call i32 @llvm.bswap.i32(i32 %46)
  %conv57 = zext i32 %47 to i64
  %conv58 = sext i32 %count.0 to i64
  %add = add nsw i64 %conv58, %conv
  %cmp59 = icmp eq i64 %add, %conv57
  %inc62 = add nuw i32 %count.0, 1
  br i1 %cmp59, label %while.body.while.cond_crit_edge, label %while.body.got_it_crit_edge

while.body.got_it_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %got_it

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

if.end64:                                         ; preds = %if.end44
  br i1 %cmp16, label %if.then68, label %if.end86

if.then68:                                        ; preds = %if.end64
  %48 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %i_sb.i, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %s_blocksize, align 16
  %div252 = lshr i32 %51, 2
  %sub.ptr.lhs.cast = ptrtoint ptr %call47 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %chain to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 12
  %i.0295 = add nsw i32 %sub.ptr.div, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0295, i32 %n.0.i.ph)
  %cmp71296 = icmp slt i32 %i.0295, %n.0.i.ph
  br i1 %cmp71296, label %if.then68.for.body_crit_edge, label %if.then68.for.end_crit_edge

if.then68.for.end_crit_edge:                      ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.then68.for.body_crit_edge:                     ; preds = %if.then68
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then68.for.body_crit_edge
  %i.0298 = phi i32 [ %i.0, %for.body.for.body_crit_edge ], [ %i.0295, %if.then68.for.body_crit_edge ]
  %count.2297 = phi i32 [ %add76, %for.body.for.body_crit_edge ], [ 0, %if.then68.for.body_crit_edge ]
  %mul = mul i32 %count.2297, %div252
  %arrayidx73 = getelementptr [4 x i32], ptr %offsets, i32 0, i32 %i.0298
  %52 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx73, align 4
  %54 = xor i32 %53, -1
  %sub75 = add i32 %mul, %div252
  %add76 = add i32 %sub75, %54
  %i.0 = add nsw i32 %i.0298, 1
  %exitcond307.not = icmp eq i32 %i.0, %n.0.i.ph
  br i1 %exitcond307.not, label %for.end.loopexit, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %phi.bo = sub i32 %sub75, %53
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.then68.for.end_crit_edge
  %count.2.lcssa = phi i32 [ 1, %if.then68.for.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  %55 = ptrtoint ptr %map to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 0, ptr %map, align 8
  %56 = ptrtoint ptr %m_len to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %m_len, align 4
  %58 = call i32 @llvm.umin.i32(i32 %57, i32 %count.2.lcssa)
  %59 = ptrtoint ptr %m_len to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %m_len, align 4
  br label %cleanup161

if.end86:                                         ; preds = %if.end64
  %60 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %61)
  %cmp87 = icmp eq i32 %61, -5
  br i1 %cmp87, label %if.end86.cleanup161_crit_edge, label %if.end90

if.end86.cleanup161_crit_edge:                    ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup161

if.end90:                                         ; preds = %if.end86
  %62 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i253 = getelementptr inbounds %struct.super_block, ptr %63, i32 0, i32 33
  %64 = ptrtoint ptr %s_fs_info.i.i253 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %s_fs_info.i.i253, align 16
  %s_es.i = getelementptr inbounds %struct.ext4_sb_info, ptr %65, i32 0, i32 15
  %66 = ptrtoint ptr %s_es.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %s_es.i, align 4
  %s_feature_ro_compat.i = getelementptr inbounds %struct.ext4_super_block, ptr %67, i32 0, i32 30
  %68 = ptrtoint ptr %s_feature_ro_compat.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %s_feature_ro_compat.i, align 4
  %and.i254 = and i32 %69, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i254)
  %cmp.i255.not = icmp eq i32 %and.i254, 0
  br i1 %cmp.i255.not, label %if.end94, label %if.then93

if.then93:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %inode, ptr noundef nonnull @.str.1, i32 noundef 597, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.7) #10
  %70 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 -117, ptr %err, align 4
  br label %out

if.end94:                                         ; preds = %if.end90
  %71 = call ptr @memset(ptr %ar, i32 0, i32 56)
  %72 = ptrtoint ptr %ar to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %inode, ptr %ar, align 8
  %73 = ptrtoint ptr %m_lblk to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %m_lblk, align 8
  %logical = getelementptr inbounds %struct.ext4_allocation_request, ptr %ar, i32 0, i32 2
  %75 = ptrtoint ptr %logical to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %logical, align 8
  %76 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %inode, align 8
  %78 = and i16 %77, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %78)
  %cmp99 = icmp eq i16 %78, -32768
  br i1 %cmp99, label %if.then101, label %if.end94.if.end103_crit_edge

if.end94.if.end103_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end103

if.then101:                                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #12
  %flags102 = getelementptr inbounds %struct.ext4_allocation_request, ptr %ar, i32 0, i32 8
  %79 = ptrtoint ptr %flags102 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 32, ptr %flags102, align 8
  br label %if.end103

if.end103:                                        ; preds = %if.then101, %if.end94.if.end103_crit_edge
  %and104 = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104)
  %tobool105.not = icmp eq i32 %and104, 0
  br i1 %tobool105.not, label %if.end103.if.end108_crit_edge, label %if.then106

if.end103.if.end108_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end108

if.then106:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #12
  %flags107 = getelementptr inbounds %struct.ext4_allocation_request, ptr %ar, i32 0, i32 8
  %80 = ptrtoint ptr %flags107 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %flags107, align 8
  %or = or i32 %81, 1024
  store i32 %or, ptr %flags107, align 8
  br label %if.end108

if.end108:                                        ; preds = %if.then106, %if.end103.if.end108_crit_edge
  %and109 = and i32 %flags, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109)
  %tobool110.not = icmp eq i32 %and109, 0
  br i1 %tobool110.not, label %if.end108.if.end114_crit_edge, label %if.then111

if.end108.if.end114_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end114

if.then111:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #12
  %flags112 = getelementptr inbounds %struct.ext4_allocation_request, ptr %ar, i32 0, i32 8
  %82 = ptrtoint ptr %flags112 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %flags112, align 8
  %or113 = or i32 %83, 8192
  store i32 %or113, ptr %flags112, align 8
  br label %if.end114

if.end114:                                        ; preds = %if.then111, %if.end108.if.end114_crit_edge
  %bh.i.i = getelementptr inbounds %struct.Indirect, ptr %call47, i32 0, i32 2
  %84 = ptrtoint ptr %bh.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %bh.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %85, null
  br i1 %tobool.not.i.i, label %cond.false.i.i, label %cond.true.i.i

cond.true.i.i:                                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #12
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %85, i32 0, i32 5
  %86 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %b_data.i.i, align 4
  br label %cond.end.i.i

cond.false.i.i:                                   ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i = getelementptr i8, ptr %inode, i32 -464
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i = phi ptr [ %87, %cond.true.i.i ], [ %add.ptr.i.i, %cond.false.i.i ]
  %88 = ptrtoint ptr %call47 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %call47, align 4
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %cond.end.i.i
  %.pn.i.i = phi ptr [ %89, %cond.end.i.i ], [ %p.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %p.0.i.i = getelementptr i32, ptr %.pn.i.i, i32 -1
  %cmp.not.i.i = icmp ult ptr %p.0.i.i, %cond.i.i
  br i1 %cmp.not.i.i, label %for.end.i.i, label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %90 = ptrtoint ptr %p.0.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %p.0.i.i, align 4
  %tobool4.not.i.i = icmp eq i32 %91, 0
  br i1 %tobool4.not.i.i, label %for.body.i.i.for.cond.i.i_crit_edge, label %if.then.i.i

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %92 = call i32 @llvm.bswap.i32(i32 %91) #10
  %conv.i.i = zext i32 %92 to i64
  br label %ext4_find_goal.exit

for.end.i.i:                                      ; preds = %for.cond.i.i
  br i1 %tobool.not.i.i, label %if.end9.i.i, label %if.then7.i.i

if.then7.i.i:                                     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %b_blocknr.i.i = getelementptr inbounds %struct.buffer_head, ptr %85, i32 0, i32 3
  %93 = ptrtoint ptr %b_blocknr.i.i to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %b_blocknr.i.i, align 8
  br label %ext4_find_goal.exit

if.end9.i.i:                                      ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = call i64 @ext4_inode_to_goal_block(ptr noundef %inode) #10
  br label %ext4_find_goal.exit

ext4_find_goal.exit:                              ; preds = %if.end9.i.i, %if.then7.i.i, %if.then.i.i
  %retval.0.i.i = phi i64 [ %conv.i.i, %if.then.i.i ], [ %94, %if.then7.i.i ], [ %call.i.i, %if.end9.i.i ]
  %and.i256 = and i64 %retval.0.i.i, 4294967295
  %goal = getelementptr inbounds %struct.ext4_allocation_request, ptr %ar, i32 0, i32 5
  %95 = ptrtoint ptr %goal to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 %and.i256, ptr %goal, align 8
  %add.ptr118 = getelementptr %struct.Indirect, ptr %chain, i32 %n.0.i.ph
  %sub.ptr.lhs.cast119 = ptrtoint ptr %add.ptr118 to i32
  %sub.ptr.rhs.cast120 = ptrtoint ptr %call47 to i32
  %sub.ptr.sub121 = sub i32 %sub.ptr.lhs.cast119, %sub.ptr.rhs.cast120
  %sub.ptr.div122 = sdiv i32 %sub.ptr.sub121, 12
  %sub123 = add nsw i32 %sub.ptr.div122, -1
  %96 = ptrtoint ptr %m_len to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %m_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %sub.ptr.sub121)
  %cmp.i257 = icmp sgt i32 %sub.ptr.sub121, 12
  br i1 %cmp.i257, label %if.then.i258, label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %ext4_find_goal.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %97)
  %cmp724.i = icmp ult i32 %97, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub51.i281)
  %cmp8.not25.i = icmp eq i32 %sub51.i281, 0
  %or.cond26.i = or i1 %cmp8.not25.i, %cmp724.i
  br i1 %or.cond26.i, label %while.cond.preheader.i.ext4_blks_to_allocate.exit_crit_edge, label %land.rhs.lr.ph.i

while.cond.preheader.i.ext4_blks_to_allocate.exit_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ext4_blks_to_allocate.exit

land.rhs.lr.ph.i:                                 ; preds = %while.cond.preheader.i
  %98 = ptrtoint ptr %call47 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %call47, align 4
  %100 = add i32 %sub51.i281, -1
  %101 = add i32 %97, -2
  %umin.i = call i32 @llvm.umin.i32(i32 %100, i32 %101) #10
  %102 = add nuw i32 %umin.i, 2
  br label %land.rhs.i

if.then.i258:                                     ; preds = %ext4_find_goal.exit
  call void @__sanitizer_cov_trace_pc() #12
  %add.i = sub i32 %final.0.i.ph, %and50.i280
  %103 = call i32 @llvm.umin.i32(i32 %add.i, i32 %97) #10
  br label %ext4_blks_to_allocate.exit

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %count.127.i = phi i32 [ 1, %land.rhs.lr.ph.i ], [ %inc10.i, %while.body.i.land.rhs.i_crit_edge ]
  %add.ptr.i = getelementptr i32, ptr %99, i32 %count.127.i
  %104 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %cmp9.i = icmp eq i32 %105, 0
  br i1 %cmp9.i, label %while.body.i, label %land.rhs.i.ext4_blks_to_allocate.exit_crit_edge

land.rhs.i.ext4_blks_to_allocate.exit_crit_edge:  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ext4_blks_to_allocate.exit

while.body.i:                                     ; preds = %land.rhs.i
  %inc10.i = add nuw i32 %count.127.i, 1
  %exitcond.i = icmp eq i32 %inc10.i, %102
  br i1 %exitcond.i, label %while.body.i.ext4_blks_to_allocate.exit_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i

while.body.i.ext4_blks_to_allocate.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ext4_blks_to_allocate.exit

ext4_blks_to_allocate.exit:                       ; preds = %while.body.i.ext4_blks_to_allocate.exit_crit_edge, %land.rhs.i.ext4_blks_to_allocate.exit_crit_edge, %if.then.i258, %while.cond.preheader.i.ext4_blks_to_allocate.exit_crit_edge
  %retval.0.i = phi i32 [ %103, %if.then.i258 ], [ 1, %while.cond.preheader.i.ext4_blks_to_allocate.exit_crit_edge ], [ %count.127.i, %land.rhs.i.ext4_blks_to_allocate.exit_crit_edge ], [ %102, %while.body.i.ext4_blks_to_allocate.exit_crit_edge ]
  %len = getelementptr inbounds %struct.ext4_allocation_request, ptr %ar, i32 0, i32 1
  %106 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %retval.0.i, ptr %len, align 4
  %sub.ptr.rhs.cast129 = ptrtoint ptr %chain to i32
  %sub.ptr.sub130 = sub i32 %sub.ptr.rhs.cast120, %sub.ptr.rhs.cast129
  %sub.ptr.div131 = sdiv exact i32 %sub.ptr.sub130, 12
  %add.ptr132 = getelementptr i32, ptr %offsets, i32 %sub.ptr.div131
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %new_blocks.i) #10
  %107 = call ptr @memset(ptr %new_blocks.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err.i) #10
  %108 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 -1, ptr %err.i, align 4, !annotation !68
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %sub.ptr.sub121)
  %cmp.not161.i = icmp slt i32 %sub.ptr.sub121, 12
  br i1 %cmp.not161.i, label %ext4_blks_to_allocate.exit.ext4_alloc_branch.exit.thread_crit_edge, label %for.body.lr.ph.i

ext4_blks_to_allocate.exit.ext4_alloc_branch.exit.thread_crit_edge: ; preds = %ext4_blks_to_allocate.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %ext4_alloc_branch.exit.thread

for.body.lr.ph.i:                                 ; preds = %ext4_blks_to_allocate.exit
  %flags.i = getelementptr inbounds %struct.ext4_allocation_request, ptr %ar, i32 0, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc59.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %len.0164.i = phi i32 [ 1, %for.body.lr.ph.i ], [ %len.2.i, %for.inc59.i.for.body.i_crit_edge ]
  %i.0162.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc60.i, %for.inc59.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0162.i, i32 %sub123)
  %cmp1.i = icmp eq i32 %i.0162.i, %sub123
  br i1 %cmp1.i, label %if.then.i259, label %if.else.i262

if.then.i259:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = call i64 @ext4_mb_new_blocks(ptr noundef %handle, ptr noundef nonnull %ar, ptr noundef nonnull %err.i) #10
  br label %if.end.i

if.else.i262:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %109 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %ar, align 8
  %111 = ptrtoint ptr %goal to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %goal, align 8
  %113 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %flags.i, align 8
  %and.i260 = and i32 %114, 1024
  %call2.i = call i64 @ext4_new_meta_blocks(ptr noundef %handle, ptr noundef %110, i64 noundef %112, i32 noundef %and.i260, ptr noundef null, ptr noundef nonnull %err.i) #10
  %115 = ptrtoint ptr %goal to i32
  call void @__asan_store8_noabort(i32 %115)
  store i64 %call2.i, ptr %goal, align 8
  %add.i261 = add nuw nsw i32 %i.0162.i, 1
  %bh6.i = getelementptr %struct.Indirect, ptr %call47, i32 %add.i261, i32 2
  %116 = ptrtoint ptr %bh6.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr null, ptr %bh6.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i262, %if.then.i259
  %call2.sink.i = phi i64 [ %call.i, %if.then.i259 ], [ %call2.i, %if.else.i262 ]
  %117 = getelementptr [4 x i64], ptr %new_blocks.i, i32 0, i32 %i.0162.i
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_store8_noabort(i32 %118)
  store i64 %call2.sink.i, ptr %117, align 8
  %119 = ptrtoint ptr %err.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool.not.i = icmp eq i32 %120, 0
  br i1 %tobool.not.i, label %if.end8.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %dec.i = add nsw i32 %i.0162.i, -1
  br label %failed.i

if.end8.i:                                        ; preds = %if.end.i
  %conv.i = trunc i64 %call2.sink.i to i32
  %121 = call i32 @llvm.bswap.i32(i32 %conv.i) #10
  %arrayidx10.i = getelementptr %struct.Indirect, ptr %call47, i32 %i.0162.i
  %key.i = getelementptr %struct.Indirect, ptr %call47, i32 %i.0162.i, i32 1
  %122 = ptrtoint ptr %key.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %121, ptr %key.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0162.i)
  %cmp11.i = icmp eq i32 %i.0162.i, 0
  br i1 %cmp11.i, label %if.end8.i.for.inc59.i_crit_edge, label %if.end14.i

if.end8.i.for.inc59.i_crit_edge:                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc59.i

if.end14.i:                                       ; preds = %if.end8.i
  %123 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %ar, align 8
  %i_sb.i263 = getelementptr inbounds %struct.inode, ptr %124, i32 0, i32 8
  %125 = ptrtoint ptr %i_sb.i263 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %i_sb.i263, align 4
  %sub.i264 = add nsw i32 %i.0162.i, -1
  %arrayidx16.i = getelementptr [4 x i64], ptr %new_blocks.i, i32 0, i32 %sub.i264
  %127 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load8_noabort(i32 %127)
  %128 = load i64, ptr %arrayidx16.i, align 8
  %s_bdev.i.i = getelementptr inbounds %struct.super_block, ptr %126, i32 0, i32 26
  %129 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %s_bdev.i.i, align 4
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %126, i32 0, i32 3
  %131 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %s_blocksize.i.i, align 16
  %call.i.i265 = call ptr @__getblk_gfp(ptr noundef %130, i64 noundef %128, i32 noundef %132, i32 noundef 8) #10
  %bh19.i = getelementptr %struct.Indirect, ptr %call47, i32 %i.0162.i, i32 2
  %133 = ptrtoint ptr %bh19.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %call.i.i265, ptr %bh19.i, align 4
  %tobool20.not.i = icmp eq ptr %call.i.i265, null
  br i1 %tobool20.not.i, label %if.then24.i266, label %if.end25.i, !prof !69

if.then24.i266:                                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  %134 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 -12, ptr %err.i, align 4
  br label %failed.i

if.end25.i:                                       ; preds = %if.end14.i
  call void @__might_sleep(ptr noundef nonnull @.str.12, i32 noundef 366) #10
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i.i265, i32 noundef 4) #10
  %135 = ptrtoint ptr %call.i.i265 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load volatile i32, ptr %call.i.i265, align 4
  %and.i.i.i.i.i = and i32 %136, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %trylock_buffer.exit.i.i, label %if.end25.i.if.then.i150.i_crit_edge

if.end25.i.if.then.i150.i_crit_edge:              ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i150.i

trylock_buffer.exit.i.i:                          ; preds = %if.end25.i
  call void @llvm.prefetch.p0(ptr nonnull %call.i.i265, i32 1, i32 3, i32 1) #10
  %137 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call.i.i265, ptr nonnull %call.i.i265, i32 4, ptr nonnull elementtype(i32) %call.i.i265) #10, !srcloc !70
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %137, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !71
  %138 = and i32 %asmresult.i.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %tobool.not.not.i.i = icmp eq i32 %138, 0
  br i1 %tobool.not.not.i.i, label %trylock_buffer.exit.i.i.lock_buffer.exit.i_crit_edge, label %trylock_buffer.exit.i.i.if.then.i150.i_crit_edge

trylock_buffer.exit.i.i.if.then.i150.i_crit_edge: ; preds = %trylock_buffer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i150.i

trylock_buffer.exit.i.i.lock_buffer.exit.i_crit_edge: ; preds = %trylock_buffer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lock_buffer.exit.i

if.then.i150.i:                                   ; preds = %trylock_buffer.exit.i.i.if.then.i150.i_crit_edge, %if.end25.i.if.then.i150.i_crit_edge
  call void @__lock_buffer(ptr noundef nonnull %call.i.i265) #10
  br label %lock_buffer.exit.i

lock_buffer.exit.i:                               ; preds = %if.then.i150.i, %trylock_buffer.exit.i.i.lock_buffer.exit.i_crit_edge
  %139 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %ar, align 8
  %i_sb27.i = getelementptr inbounds %struct.inode, ptr %140, i32 0, i32 8
  %141 = ptrtoint ptr %i_sb27.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %i_sb27.i, align 4
  %call28.i = call i32 @__ext4_journal_get_create_access(ptr noundef nonnull @__func__.ext4_alloc_branch, i32 noundef 358, ptr noundef %handle, ptr noundef %142, ptr noundef nonnull %call.i.i265, i32 noundef 1) #10
  %143 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %call28.i, ptr %err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %if.end31.i, label %if.then30.i

if.then30.i:                                      ; preds = %lock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @unlock_buffer(ptr noundef nonnull %call.i.i265) #10
  br label %failed.i

if.end31.i:                                       ; preds = %lock_buffer.exit.i
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %call.i.i265, i32 0, i32 5
  %144 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %b_data.i, align 4
  %b_size.i = getelementptr inbounds %struct.buffer_head, ptr %call.i.i265, i32 0, i32 4
  %146 = ptrtoint ptr %b_size.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %b_size.i, align 8
  %148 = call ptr @memset(ptr %145, i32 0, i32 %147)
  %149 = load ptr, ptr %b_data.i, align 4
  %arrayidx33.i = getelementptr i32, ptr %add.ptr132, i32 %i.0162.i
  %150 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %arrayidx33.i, align 4
  %add.ptr.i267 = getelementptr i32, ptr %149, i32 %151
  %152 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %add.ptr.i267, ptr %arrayidx10.i, align 4
  br i1 %cmp1.i, label %if.then39.i, label %if.end31.i.if.end41.i_crit_edge

if.end31.i.if.end41.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41.i

if.then39.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  %153 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %len, align 4
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then39.i, %if.end31.i.if.end41.i_crit_edge
  %len.1.i = phi i32 [ %154, %if.then39.i ], [ %len.0164.i, %if.end31.i.if.end41.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.1.i)
  %cmp43157.i = icmp sgt i32 %len.1.i, 0
  br i1 %cmp43157.i, label %if.end41.i.for.body45.i_crit_edge, label %if.end41.i.do.end50.i_crit_edge

if.end41.i.do.end50.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end50.i

if.end41.i.for.body45.i_crit_edge:                ; preds = %if.end41.i
  br label %for.body45.i

for.body45.i:                                     ; preds = %for.body45.i.for.body45.i_crit_edge, %if.end41.i.for.body45.i_crit_edge
  %j.0160.i = phi i32 [ %inc47.i, %for.body45.i.for.body45.i_crit_edge ], [ 0, %if.end41.i.for.body45.i_crit_edge ]
  %p.0159.i = phi ptr [ %incdec.ptr.i, %for.body45.i.for.body45.i_crit_edge ], [ %add.ptr.i267, %if.end41.i.for.body45.i_crit_edge ]
  %b.0158.i = phi i64 [ %inc.i, %for.body45.i.for.body45.i_crit_edge ], [ %call2.sink.i, %if.end41.i.for.body45.i_crit_edge ]
  %inc.i = add i64 %b.0158.i, 1
  %conv46.i = trunc i64 %b.0158.i to i32
  %155 = call i32 @llvm.bswap.i32(i32 %conv46.i) #10
  %incdec.ptr.i = getelementptr i32, ptr %p.0159.i, i32 1
  %156 = ptrtoint ptr %p.0159.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %155, ptr %p.0159.i, align 4
  %inc47.i = add nuw nsw i32 %j.0160.i, 1
  %exitcond.not.i = icmp eq i32 %inc47.i, %len.1.i
  br i1 %exitcond.not.i, label %for.body45.i.do.end50.i_crit_edge, label %for.body45.i.for.body45.i_crit_edge

for.body45.i.for.body45.i_crit_edge:              ; preds = %for.body45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body45.i

for.body45.i.do.end50.i_crit_edge:                ; preds = %for.body45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end50.i

do.end50.i:                                       ; preds = %for.body45.i.do.end50.i_crit_edge, %if.end41.i.do.end50.i_crit_edge
  %157 = ptrtoint ptr %call.i.i265 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load volatile i32, ptr %call.i.i265, align 4
  %and1.i.i.i = and i32 %158, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i.i268 = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i.i268, label %if.then.i.i269, label %do.end50.i.set_buffer_uptodate.exit.i_crit_edge

do.end50.i.set_buffer_uptodate.exit.i_crit_edge:  ; preds = %do.end50.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %set_buffer_uptodate.exit.i

if.then.i.i269:                                   ; preds = %do.end50.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @_set_bit(i32 noundef 0, ptr noundef nonnull %call.i.i265) #10
  br label %set_buffer_uptodate.exit.i

set_buffer_uptodate.exit.i:                       ; preds = %if.then.i.i269, %do.end50.i.set_buffer_uptodate.exit.i_crit_edge
  call void @unlock_buffer(ptr noundef nonnull %call.i.i265) #10
  %159 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %ar, align 8
  %call55.i = call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_alloc_branch, i32 noundef 378, ptr noundef %handle, ptr noundef %160, ptr noundef nonnull %call.i.i265) #10
  %161 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %call55.i, ptr %err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i)
  %tobool56.not.i = icmp eq i32 %call55.i, 0
  br i1 %tobool56.not.i, label %set_buffer_uptodate.exit.i.for.inc59.i_crit_edge, label %set_buffer_uptodate.exit.i.failed.i_crit_edge

set_buffer_uptodate.exit.i.failed.i_crit_edge:    ; preds = %set_buffer_uptodate.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed.i

set_buffer_uptodate.exit.i.for.inc59.i_crit_edge: ; preds = %set_buffer_uptodate.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc59.i

for.inc59.i:                                      ; preds = %set_buffer_uptodate.exit.i.for.inc59.i_crit_edge, %if.end8.i.for.inc59.i_crit_edge
  %len.2.i = phi i32 [ %len.0164.i, %if.end8.i.for.inc59.i_crit_edge ], [ %len.1.i, %set_buffer_uptodate.exit.i.for.inc59.i_crit_edge ]
  %inc60.i = add nuw nsw i32 %i.0162.i, 1
  %exitcond.not = icmp eq i32 %inc60.i, %sub.ptr.div122
  br i1 %exitcond.not, label %for.inc59.i.ext4_alloc_branch.exit.thread_crit_edge, label %for.inc59.i.for.body.i_crit_edge

for.inc59.i.for.body.i_crit_edge:                 ; preds = %for.inc59.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc59.i.ext4_alloc_branch.exit.thread_crit_edge: ; preds = %for.inc59.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ext4_alloc_branch.exit.thread

failed.i:                                         ; preds = %set_buffer_uptodate.exit.i.failed.i_crit_edge, %if.then30.i, %if.then24.i266, %if.then7.i
  %i.1.i = phi i32 [ %dec.i, %if.then7.i ], [ %i.0162.i, %if.then24.i266 ], [ %i.0162.i, %if.then30.i ], [ %i.0162.i, %set_buffer_uptodate.exit.i.failed.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1.i, i32 %sub123)
  %cmp62.i = icmp eq i32 %i.1.i, %sub123
  br i1 %cmp62.i, label %if.then64.i, label %failed.i.if.end69.i_crit_edge

failed.i.if.end69.i_crit_edge:                    ; preds = %failed.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69.i

if.then64.i:                                      ; preds = %failed.i
  call void @__sanitizer_cov_trace_pc() #12
  %162 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %ar, align 8
  %arrayidx66.i = getelementptr [4 x i64], ptr %new_blocks.i, i32 0, i32 %sub123
  %164 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_load8_noabort(i32 %164)
  %165 = load i64, ptr %arrayidx66.i, align 8
  %166 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %len, align 4
  call void @ext4_free_blocks(ptr noundef %handle, ptr noundef %163, ptr noundef null, i64 noundef %165, i32 noundef %167, i32 noundef 0) #10
  %dec68.i = add nsw i32 %sub.ptr.div122, -2
  br label %if.end69.i

if.end69.i:                                       ; preds = %if.then64.i, %failed.i.if.end69.i_crit_edge
  %i.2.i = phi i32 [ %dec68.i, %if.then64.i ], [ %i.1.i, %failed.i.if.end69.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.2.i)
  %cmp71165.i = icmp sgt i32 %i.2.i, -1
  br i1 %cmp71165.i, label %if.end69.i.for.body73.i_crit_edge, label %if.end69.i.ext4_alloc_branch.exit_crit_edge

if.end69.i.ext4_alloc_branch.exit_crit_edge:      ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ext4_alloc_branch.exit

if.end69.i.for.body73.i_crit_edge:                ; preds = %if.end69.i
  br label %for.body73.i

for.body73.i:                                     ; preds = %for.body73.i.for.body73.i_crit_edge, %if.end69.i.for.body73.i_crit_edge
  %i.3166.i = phi i32 [ %dec84.i, %for.body73.i.for.body73.i_crit_edge ], [ %i.2.i, %if.end69.i.for.body73.i_crit_edge ]
  %168 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %ar, align 8
  %add75.i = add nuw nsw i32 %i.3166.i, 1
  %bh77.i = getelementptr %struct.Indirect, ptr %call47, i32 %add75.i, i32 2
  %170 = ptrtoint ptr %bh77.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %bh77.i, align 4
  %arrayidx78.i = getelementptr [4 x i64], ptr %new_blocks.i, i32 0, i32 %i.3166.i
  %172 = ptrtoint ptr %arrayidx78.i to i32
  call void @__asan_load8_noabort(i32 %172)
  %173 = load i64, ptr %arrayidx78.i, align 8
  %tobool82.not.i = icmp eq ptr %171, null
  %cond.i = select i1 %tobool82.not.i, i32 0, i32 2
  call void @ext4_free_blocks(ptr noundef %handle, ptr noundef %169, ptr noundef %171, i64 noundef %173, i32 noundef 1, i32 noundef %cond.i) #10
  %dec84.i = add nsw i32 %i.3166.i, -1
  %cmp71.not.i = icmp eq i32 %i.3166.i, 0
  br i1 %cmp71.not.i, label %for.body73.i.ext4_alloc_branch.exit_crit_edge, label %for.body73.i.for.body73.i_crit_edge

for.body73.i.for.body73.i_crit_edge:              ; preds = %for.body73.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body73.i

for.body73.i.ext4_alloc_branch.exit_crit_edge:    ; preds = %for.body73.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ext4_alloc_branch.exit

ext4_alloc_branch.exit.thread:                    ; preds = %for.inc59.i.ext4_alloc_branch.exit.thread_crit_edge, %ext4_blks_to_allocate.exit.ext4_alloc_branch.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err.i) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %new_blocks.i) #10
  br label %if.end137

ext4_alloc_branch.exit:                           ; preds = %for.body73.i.ext4_alloc_branch.exit_crit_edge, %if.end69.i.ext4_alloc_branch.exit_crit_edge
  %174 = ptrtoint ptr %err.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %err.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err.i) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %new_blocks.i) #10
  %176 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %175, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %175)
  %tobool134.not = icmp eq i32 %175, 0
  br i1 %tobool134.not, label %ext4_alloc_branch.exit.if.end137_crit_edge, label %ext4_alloc_branch.exit.cleanup161_crit_edge

ext4_alloc_branch.exit.cleanup161_crit_edge:      ; preds = %ext4_alloc_branch.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup161

ext4_alloc_branch.exit.if.end137_crit_edge:       ; preds = %ext4_alloc_branch.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end137

if.end137:                                        ; preds = %ext4_alloc_branch.exit.if.end137_crit_edge, %ext4_alloc_branch.exit.thread
  %call136 = call fastcc i32 @ext4_splice_branch(ptr noundef %handle, ptr noundef nonnull %ar, ptr noundef nonnull %call47, i32 noundef %sub123)
  %177 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %call136, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %tobool138.not = icmp eq i32 %call136, 0
  br i1 %tobool138.not, label %if.end140, label %if.end137.cleanup161_crit_edge

if.end137.cleanup161_crit_edge:                   ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup161

if.end140:                                        ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #12
  %m_flags = getelementptr inbounds %struct.ext4_map_blocks, ptr %map, i32 0, i32 3
  %178 = ptrtoint ptr %m_flags to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %m_flags, align 8
  %or141 = or i32 %179, 32
  store i32 %or141, ptr %m_flags, align 8
  call fastcc void @ext4_update_inode_fsync_trans(ptr noundef %handle, ptr noundef %inode)
  %180 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %len, align 4
  %.pre = add nsw i32 %n.0.i.ph, -1
  br label %got_it

got_it:                                           ; preds = %if.end140, %while.body.got_it_crit_edge, %while.cond.got_it_crit_edge
  %sub145.pre-phi = phi i32 [ %.pre, %if.end140 ], [ %sub, %while.cond.got_it_crit_edge ], [ %sub, %while.body.got_it_crit_edge ]
  %count.3 = phi i32 [ %181, %if.end140 ], [ %count.0, %while.cond.got_it_crit_edge ], [ %count.0, %while.body.got_it_crit_edge ]
  %m_flags143 = getelementptr inbounds %struct.ext4_map_blocks, ptr %map, i32 0, i32 3
  %182 = ptrtoint ptr %m_flags143 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %m_flags143, align 8
  %or144 = or i32 %183, 16
  store i32 %or144, ptr %m_flags143, align 8
  %key147 = getelementptr [4 x %struct.Indirect], ptr %chain, i32 0, i32 %sub145.pre-phi, i32 1
  %184 = ptrtoint ptr %key147 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %key147, align 4
  %186 = call i32 @llvm.bswap.i32(i32 %185)
  %conv148 = zext i32 %186 to i64
  %187 = ptrtoint ptr %map to i32
  call void @__asan_store8_noabort(i32 %187)
  store i64 %conv148, ptr %map, align 8
  %188 = ptrtoint ptr %m_len to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %count.3, ptr %m_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %count.3, i32 %sub51.i281)
  %cmp151 = icmp sgt i32 %count.3, %sub51.i281
  br i1 %cmp151, label %if.then153, label %got_it.if.end156_crit_edge

got_it.if.end156_crit_edge:                       ; preds = %got_it
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end156

if.then153:                                       ; preds = %got_it
  call void @__sanitizer_cov_trace_pc() #12
  %or155 = or i32 %183, 528
  %189 = ptrtoint ptr %m_flags143 to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %or155, ptr %m_flags143, align 8
  br label %if.end156

if.end156:                                        ; preds = %if.then153, %got_it.if.end156_crit_edge
  %190 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %count.3, ptr %err, align 4
  %add.ptr158 = getelementptr %struct.Indirect, ptr %chain, i32 %n.0.i.ph
  %add.ptr159 = getelementptr %struct.Indirect, ptr %add.ptr158, i32 -1
  br label %cleanup161

cleanup161:                                       ; preds = %if.end156, %if.end137.cleanup161_crit_edge, %ext4_alloc_branch.exit.cleanup161_crit_edge, %if.end86.cleanup161_crit_edge, %for.end
  %partial.0 = phi ptr [ %call47, %for.end ], [ %call47, %if.end86.cleanup161_crit_edge ], [ %call47, %if.end137.cleanup161_crit_edge ], [ %add.ptr159, %if.end156 ], [ %call47, %ext4_alloc_branch.exit.cleanup161_crit_edge ]
  %cmp164299 = icmp ugt ptr %partial.0, %chain
  br i1 %cmp164299, label %cleanup161.do.end169_crit_edge, label %cleanup161.out_crit_edge

cleanup161.out_crit_edge:                         ; preds = %cleanup161
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

cleanup161.do.end169_crit_edge:                   ; preds = %cleanup161
  br label %do.end169

do.end169:                                        ; preds = %brelse.exit.do.end169_crit_edge, %cleanup161.do.end169_crit_edge
  %partial.1300 = phi ptr [ %incdec.ptr, %brelse.exit.do.end169_crit_edge ], [ %partial.0, %cleanup161.do.end169_crit_edge ]
  %bh = getelementptr inbounds %struct.Indirect, ptr %partial.1300, i32 0, i32 2
  %191 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %bh, align 4
  %tobool.not.i271 = icmp eq ptr %192, null
  br i1 %tobool.not.i271, label %do.end169.brelse.exit_crit_edge, label %if.then.i272

do.end169.brelse.exit_crit_edge:                  ; preds = %do.end169
  call void @__sanitizer_cov_trace_pc() #12
  br label %brelse.exit

if.then.i272:                                     ; preds = %do.end169
  call void @__sanitizer_cov_trace_pc() #12
  call void @__brelse(ptr noundef nonnull %192) #10
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i272, %do.end169.brelse.exit_crit_edge
  %incdec.ptr = getelementptr %struct.Indirect, ptr %partial.1300, i32 -1
  %cmp164 = icmp ugt ptr %incdec.ptr, %chain
  br i1 %cmp164, label %brelse.exit.do.end169_crit_edge, label %brelse.exit.out_crit_edge

brelse.exit.out_crit_edge:                        ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

brelse.exit.do.end169_crit_edge:                  ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end169

out:                                              ; preds = %brelse.exit.out_crit_edge, %cleanup161.out_crit_edge, %if.then93, %ext4_block_to_path.exit
  %193 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %err, align 4
  call fastcc void @trace_ext4_ind_map_blocks_exit(ptr noundef %inode, i32 noundef %flags, ptr noundef %map, i32 noundef %194)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %chain) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %offsets) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %ar) #10
  ret i32 %194
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ext4_ind_map_blocks_enter(ptr noundef %inode, i32 noundef %lblk, i32 noundef %len, i32 noundef %flags) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_ind_map_blocks_enter, i32 0, i32 1), ptr blockaddress(@trace_ext4_ind_map_blocks_enter, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !72

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !55) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !65

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !55) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !73
  %call42 = tail call i32 @__traceiter_ext4_ind_map_blocks_enter(ptr noundef null, ptr noundef %inode, i32 noundef %lblk, i32 noundef %len, i32 noundef %flags) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !74
  %13 = tail call i32 @llvm.read_register.i32(metadata !55) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !55) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !65

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !55) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !75
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_ind_map_blocks_enter, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_ind_map_blocks_enter, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ext4_ind_map_blocks_enter.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_ext4_ind_map_blocks_enter.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 1644, ptr noundef nonnull @.str.9) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !76
  %31 = tail call i32 @llvm.read_register.i32(metadata !55) #10
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

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ext4_get_branch(ptr noundef %inode, i32 noundef %depth, ptr nocapture noundef readonly %offsets, ptr noundef %chain, ptr nocapture noundef writeonly %err) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %2 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %err, align 4
  %add.ptr = getelementptr i8, ptr %inode, i32 -464
  %3 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %offsets, align 4
  %add.ptr1 = getelementptr i32, ptr %add.ptr, i32 %4
  %5 = ptrtoint ptr %chain to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %add.ptr1, ptr %chain, align 4
  %6 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr1, align 4
  %key.i = getelementptr inbounds %struct.Indirect, ptr %chain, i32 0, i32 1
  %8 = ptrtoint ptr %key.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %key.i, align 4
  %bh2.i = getelementptr inbounds %struct.Indirect, ptr %chain, i32 0, i32 2
  %9 = ptrtoint ptr %bh2.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %bh2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  br label %while.cond

while.cond:                                       ; preds = %if.end22.while.cond_crit_edge, %while.cond.preheader
  %offsets.addr.0 = phi ptr [ %incdec.ptr24, %if.end22.while.cond_crit_edge ], [ %offsets, %while.cond.preheader ]
  %p.0 = phi ptr [ %incdec.ptr, %if.end22.while.cond_crit_edge ], [ %chain, %while.cond.preheader ]
  %depth.addr.0 = phi i32 [ %dec, %if.end22.while.cond_crit_edge ], [ %depth, %while.cond.preheader ]
  %dec = add i32 %depth.addr.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool2.not = icmp eq i32 %dec, 0
  br i1 %tobool2.not, label %while.cond.cleanup_crit_edge, label %while.body

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body:                                       ; preds = %while.cond
  %key3 = getelementptr inbounds %struct.Indirect, ptr %p.0, i32 0, i32 1
  %10 = ptrtoint ptr %key3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %key3, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %conv = zext i32 %12 to i64
  %13 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_bdev.i, align 4
  %15 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %s_blocksize.i, align 16
  %call.i = tail call ptr @__getblk_gfp(ptr noundef %14, i64 noundef %conv, i32 noundef %16, i32 noundef 8) #10
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %while.body.failure_crit_edge, label %if.end9, !prof !69

while.body.failure_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %failure

if.end9:                                          ; preds = %while.body
  %call10 = tail call i32 @bh_uptodate_or_lock(ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then12, label %if.end9.if.end22_crit_edge

if.end9.if.end22_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then12:                                        ; preds = %if.end9
  %call13 = tail call i32 @ext4_read_bh(ptr noundef nonnull %call.i, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp slt i32 %call13, 0
  br i1 %cmp, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !77
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #10
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #10, !srcloc !78
  br label %failure

if.end16:                                         ; preds = %if.then12
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %18 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %b_data, align 4
  %20 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i_sb, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %s_blocksize, align 16
  %div50 = lshr i32 %23, 2
  %call18 = tail call i32 @ext4_check_blockref(ptr noundef nonnull @__func__.ext4_get_branch, i32 noundef 171, ptr noundef %inode, ptr noundef %19, i32 noundef %div50) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end16.if.end22_crit_edge, label %if.then20

if.end16.if.end22_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !77
  %b_count.i51 = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 11
  %call.i.i.i52 = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i51, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %b_count.i51, i32 1, i32 3, i32 1) #10
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i51, ptr %b_count.i51, i32 1, ptr elementtype(i32) %b_count.i51) #10, !srcloc !78
  br label %failure

if.end22:                                         ; preds = %if.end16.if.end22_crit_edge, %if.end9.if.end22_crit_edge
  %incdec.ptr = getelementptr %struct.Indirect, ptr %p.0, i32 1
  %b_data23 = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %25 = ptrtoint ptr %b_data23 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %b_data23, align 4
  %incdec.ptr24 = getelementptr i32, ptr %offsets.addr.0, i32 1
  %27 = ptrtoint ptr %incdec.ptr24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %incdec.ptr24, align 4
  %add.ptr25 = getelementptr i32, ptr %26, i32 %28
  %29 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %add.ptr25, ptr %incdec.ptr, align 4
  %30 = ptrtoint ptr %add.ptr25 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr25, align 4
  %key.i53 = getelementptr %struct.Indirect, ptr %p.0, i32 1, i32 1
  %32 = ptrtoint ptr %key.i53 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %key.i53, align 4
  %bh2.i54 = getelementptr %struct.Indirect, ptr %p.0, i32 1, i32 2
  %33 = ptrtoint ptr %bh2.i54 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i, ptr %bh2.i54, align 4
  %tobool27.not = icmp eq i32 %31, 0
  br i1 %tobool27.not, label %if.end22.cleanup_crit_edge, label %if.end22.while.cond_crit_edge

if.end22.while.cond_crit_edge:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

failure:                                          ; preds = %if.then20, %if.then15, %while.body.failure_crit_edge
  %ret.0 = phi i32 [ -5, %if.then15 ], [ -5, %if.then20 ], [ -12, %while.body.failure_crit_edge ]
  %34 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %ret.0, ptr %err, align 4
  br label %cleanup

cleanup:                                          ; preds = %failure, %if.end22.cleanup_crit_edge, %while.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %p.0, %failure ], [ %chain, %entry.cleanup_crit_edge ], [ %incdec.ptr, %if.end22.cleanup_crit_edge ], [ null, %while.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_error_inode(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ext4_splice_branch(ptr noundef %handle, ptr nocapture noundef readonly %ar, ptr nocapture noundef readonly %where, i32 noundef %num) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bh = getelementptr inbounds %struct.Indirect, ptr %where, i32 0, i32 2
  %0 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bh, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %do.end

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

do.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ar, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %call = tail call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_splice_branch, i32 noundef 434, ptr noundef %handle, ptr noundef %5, ptr noundef nonnull %1, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %do.end.if.end4_crit_edge, label %do.end.err_out_crit_edge

do.end.err_out_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_out

do.end.if.end4_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.end4:                                          ; preds = %do.end.if.end4_crit_edge, %entry.if.end4_crit_edge
  %key = getelementptr inbounds %struct.Indirect, ptr %where, i32 0, i32 1
  %6 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %key, align 4
  %8 = ptrtoint ptr %where to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %where, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %7, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp = icmp eq i32 %num, 0
  br i1 %cmp, label %land.lhs.true, label %if.end4.if.end14_crit_edge

if.end4.if.end14_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

land.lhs.true:                                    ; preds = %if.end4
  %len = getelementptr inbounds %struct.ext4_allocation_request, ptr %ar, i32 0, i32 1
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp5 = icmp ugt i32 %12, 1
  br i1 %cmp5, label %if.then6, label %land.lhs.true.if.end14_crit_edge

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then6:                                         ; preds = %land.lhs.true
  %13 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp982 = icmp ugt i32 %14, 1
  br i1 %cmp982, label %for.body.preheader, label %if.then6.if.end14_crit_edge

if.then6.if.end14_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

for.body.preheader:                               ; preds = %if.then6
  %15 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %key, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %add = add i32 %17, 1
  %conv = zext i32 %add to i64
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %current_block.084 = phi i64 [ %inc, %for.body.for.body_crit_edge ], [ %conv, %for.body.preheader ]
  %i.083 = phi i32 [ %inc13, %for.body.for.body_crit_edge ], [ 1, %for.body.preheader ]
  %inc = add nuw nsw i64 %current_block.084, 1
  %conv11 = trunc i64 %current_block.084 to i32
  %18 = tail call i32 @llvm.bswap.i32(i32 %conv11)
  %19 = ptrtoint ptr %where to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %where, align 4
  %add.ptr = getelementptr i32, ptr %20, i32 %i.083
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %18, ptr %add.ptr, align 4
  %inc13 = add nuw i32 %i.083, 1
  %22 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len, align 4
  %cmp9 = icmp ult i32 %inc13, %23
  br i1 %cmp9, label %for.body.for.body_crit_edge, label %for.body.if.end14_crit_edge

for.body.if.end14_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end14:                                         ; preds = %for.body.if.end14_crit_edge, %if.then6.if.end14_crit_edge, %land.lhs.true.if.end14_crit_edge, %if.end4.if.end14_crit_edge
  %24 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bh, align 4
  %tobool16.not = icmp eq ptr %25, null
  br i1 %tobool16.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.end14
  tail call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 5, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.ext4_splice_branch, i32 noundef 463, ptr noundef nonnull @.str.13) #10
  %26 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ar, align 8
  %28 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bh, align 4
  %call23 = tail call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_splice_branch, i32 noundef 465, ptr noundef %handle, ptr noundef %27, ptr noundef %29) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then17.cleanup_crit_edge, label %if.then17.err_out_crit_edge

if.then17.err_out_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_out

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else:                                          ; preds = %if.end14
  %30 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ar, align 8
  %call28 = tail call i32 @__ext4_mark_inode_dirty(ptr noundef %handle, ptr noundef %31, ptr noundef nonnull @__func__.ext4_splice_branch, i32 noundef 472) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end33, label %if.else.err_out_crit_edge, !prof !65

if.else.err_out_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_out

if.end33:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 5, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.ext4_splice_branch, i32 noundef 475, ptr noundef nonnull @.str.14) #10
  br label %cleanup

err_out:                                          ; preds = %if.else.err_out_crit_edge, %if.then17.err_out_crit_edge, %do.end.err_out_crit_edge
  %err.1 = phi i32 [ %call, %do.end.err_out_crit_edge ], [ %call23, %if.then17.err_out_crit_edge ], [ %call28, %if.else.err_out_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num)
  %cmp36.not85 = icmp slt i32 %num, 1
  br i1 %cmp36.not85, label %err_out.for.end43_crit_edge, label %err_out.for.body38_crit_edge

err_out.for.body38_crit_edge:                     ; preds = %err_out
  br label %for.body38

err_out.for.end43_crit_edge:                      ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end43

for.body38:                                       ; preds = %for.body38.for.body38_crit_edge, %err_out.for.body38_crit_edge
  %i.186 = phi i32 [ %inc42, %for.body38.for.body38_crit_edge ], [ 1, %err_out.for.body38_crit_edge ]
  %32 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ar, align 8
  %bh40 = getelementptr %struct.Indirect, ptr %where, i32 %i.186, i32 2
  %34 = ptrtoint ptr %bh40 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bh40, align 4
  tail call void @ext4_free_blocks(ptr noundef %handle, ptr noundef %33, ptr noundef %35, i64 noundef 0, i32 noundef 1, i32 noundef 2) #10
  %inc42 = add i32 %i.186, 1
  %cmp36.not = icmp sgt i32 %inc42, %num
  br i1 %cmp36.not, label %for.body38.for.end43_crit_edge, label %for.body38.for.body38_crit_edge

for.body38.for.body38_crit_edge:                  ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body38

for.body38.for.end43_crit_edge:                   ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end43

for.end43:                                        ; preds = %for.body38.for.end43_crit_edge, %err_out.for.end43_crit_edge
  %36 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ar, align 8
  %key46 = getelementptr %struct.Indirect, ptr %where, i32 %num, i32 1
  %38 = ptrtoint ptr %key46 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %key46, align 4
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  %conv47 = zext i32 %40 to i64
  %len48 = getelementptr inbounds %struct.ext4_allocation_request, ptr %ar, i32 0, i32 1
  %41 = ptrtoint ptr %len48 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %len48, align 4
  tail call void @ext4_free_blocks(ptr noundef %handle, ptr noundef %37, ptr noundef null, i64 noundef %conv47, i32 noundef %42, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end43, %if.end33, %if.then17.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %for.end43 ], [ 0, %if.then17.cleanup_crit_edge ], [ 0, %if.end33 ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @ext4_update_inode_fsync_trans(ptr noundef readonly %handle, ptr nocapture noundef writeonly %inode) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %cmp.i.not = icmp ult ptr %handle, inttoptr (i32 4096 to ptr)
  br i1 %cmp.i.not, label %entry.if.end7_crit_edge, label %land.lhs.true

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

land.lhs.true:                                    ; preds = %entry
  %h_aborted.i = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 7
  %0 = ptrtoint ptr %h_aborted.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load.i = load i32, ptr %h_aborted.i, align 4
  %1 = and i32 %bf.load.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

lor.lhs.false.i:                                  ; preds = %land.lhs.true
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handle, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.if.end7_crit_edge, label %is_handle_aborted.exit

lor.lhs.false.i.if.end7_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

is_handle_aborted.exit:                           ; preds = %lor.lhs.false.i
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %and.i.i = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool3.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool3.not, label %if.then, label %is_handle_aborted.exit.if.end7_crit_edge

is_handle_aborted.exit.if.end7_crit_edge:         ; preds = %is_handle_aborted.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then:                                          ; preds = %is_handle_aborted.exit
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %handle, align 4
  %t_tid = getelementptr inbounds %struct.transaction_s, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %t_tid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %t_tid, align 4
  %i_sync_tid = getelementptr i8, ptr %inode, i32 1152
  %12 = ptrtoint ptr %i_sync_tid to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %i_sync_tid, align 8
  %13 = load ptr, ptr %handle, align 4
  %t_tid6 = getelementptr inbounds %struct.transaction_s, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %t_tid6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %t_tid6, align 4
  %i_datasync_tid = getelementptr i8, ptr %inode, i32 1156
  %16 = ptrtoint ptr %i_datasync_tid to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %i_datasync_tid, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then, %is_handle_aborted.exit.if.end7_crit_edge, %lor.lhs.false.i.if.end7_crit_edge, %land.lhs.true.if.end7_crit_edge, %entry.if.end7_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ext4_ind_map_blocks_exit(ptr noundef %inode, i32 noundef %flags, ptr noundef %map, i32 noundef %ret) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_ind_map_blocks_exit, i32 0, i32 1), ptr blockaddress(@trace_ext4_ind_map_blocks_exit, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !72

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !55) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !65

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !55) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !79
  %call42 = tail call i32 @__traceiter_ext4_ind_map_blocks_exit(ptr noundef null, ptr noundef %inode, i32 noundef %flags, ptr noundef %map, i32 noundef %ret) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !80
  %13 = tail call i32 @llvm.read_register.i32(metadata !55) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !55) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !65

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !55) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !75
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_ind_map_blocks_exit, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_ind_map_blocks_exit, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ext4_ind_map_blocks_exit.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_ext4_ind_map_blocks_exit.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 1694, ptr noundef nonnull @.str.9) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !76
  %31 = tail call i32 @llvm.read_register.i32(metadata !55) #10
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ext4_ind_trans_blocks(ptr nocapture noundef readonly %inode, i32 noundef %nrblocks) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_blocksize, align 16
  %div7 = lshr i32 %3, 2
  %add = add i32 %nrblocks, -1
  %sub = add i32 %add, %div7
  %div4 = udiv i32 %sub, %div7
  %add5 = add i32 %div4, 4
  ret i32 %add5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ext4_ind_truncate(ptr noundef %handle, ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  %offsets = alloca [4 x i32], align 4
  %chain = alloca [4 x %struct.Indirect], align 4
  %nr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %inode, i32 -464
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_blocksize, align 16
  %div167 = lshr i32 %3, 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %offsets) #10
  %4 = getelementptr inbounds [4 x i32], ptr %offsets, i32 0, i32 1
  %5 = getelementptr inbounds [4 x i32], ptr %offsets, i32 0, i32 2
  %6 = getelementptr inbounds [4 x i32], ptr %offsets, i32 0, i32 3
  %7 = call ptr @memset(ptr %offsets, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %chain) #10
  %8 = call ptr @memset(ptr %chain, i32 255, i32 48)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nr) #10
  %9 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %nr, align 4
  %10 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_blocksize, align 16
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %12 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %i_size, align 8
  %conv = zext i32 %11 to i64
  %add = add nsw i64 %conv, -1
  %sub = add i64 %add, %13
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %s_blocksize_bits, align 4
  %sh_prom = zext i8 %15 to i64
  %shr = ashr i64 %sub, %sh_prom
  %conv6 = trunc i64 %shr to i32
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %16 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_fs_info.i, align 16
  %s_bitmap_maxbytes = getelementptr inbounds %struct.ext4_sb_info, ptr %17, i32 0, i32 13
  %18 = ptrtoint ptr %s_bitmap_maxbytes to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %s_bitmap_maxbytes, align 8
  %sub10 = add i64 %add, %19
  %shr15 = ashr i64 %sub10, %sh_prom
  %conv16 = trunc i64 %shr15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv6, i32 %conv16)
  %cmp.not = icmp eq i32 %conv6, %conv16
  br i1 %cmp.not, label %entry.if.end23_crit_edge, label %if.then

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then:                                          ; preds = %entry
  %div104.i = lshr i32 %11, 2
  %s_addr_per_block_bits.i = getelementptr inbounds %struct.ext4_sb_info, ptr %17, i32 0, i32 27
  %20 = ptrtoint ptr %s_addr_per_block_bits.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %s_addr_per_block_bits.i, align 4
  %mul.i = shl i32 %21, 1
  %shl.i = shl nuw i32 1, %mul.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %conv6)
  %cmp.i = icmp ult i32 %conv6, 12
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %offsets to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv6, ptr %offsets, align 4
  br label %if.end23

if.else.i:                                        ; preds = %if.then
  %sub.i = add i32 %conv6, -12
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %div104.i)
  %cmp2.i = icmp ult i32 %sub.i, %div104.i
  br i1 %cmp2.i, label %if.then3.i, label %if.else8.i

if.then3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %offsets to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 12, ptr %offsets, align 4
  %24 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %sub.i, ptr %4, align 4
  br label %if.end23

if.else8.i:                                       ; preds = %if.else.i
  %sub9.i = sub i32 %sub.i, %div104.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub9.i, i32 %shl.i)
  %cmp10.i = icmp ult i32 %sub9.i, %shl.i
  br i1 %cmp10.i, label %if.then11.i, label %if.else19.i

if.then11.i:                                      ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %offsets to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 13, ptr %offsets, align 4
  %shr.i = lshr i32 %sub9.i, %21
  %26 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %shr.i, ptr %4, align 4
  %sub16.i = add nsw i32 %div104.i, -1
  %and.i = and i32 %sub9.i, %sub16.i
  %27 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %and.i, ptr %5, align 4
  br label %if.end23

if.else19.i:                                      ; preds = %if.else8.i
  %sub20.i = sub i32 %sub9.i, %shl.i
  %shr22.i = lshr i32 %sub20.i, %mul.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shr22.i, i32 %div104.i)
  %cmp23.i = icmp ult i32 %shr22.i, %div104.i
  br i1 %cmp23.i, label %if.then24.i, label %ext4_block_to_path.exit

if.then24.i:                                      ; preds = %if.else19.i
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %offsets to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 14, ptr %offsets, align 4
  %29 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %shr22.i, ptr %4, align 4
  %shr31.i = lshr i32 %sub20.i, %21
  %sub32.i = add nsw i32 %div104.i, -1
  %and33.i = and i32 %shr31.i, %sub32.i
  %30 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %and33.i, ptr %5, align 4
  %and37.i = and i32 %sub20.i, %sub32.i
  %31 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %and37.i, ptr %6, align 4
  br label %if.end23

ext4_block_to_path.exit:                          ; preds = %if.else19.i
  call void @__sanitizer_cov_trace_pc() #12
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %32 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %i_ino.i, align 8
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %1, ptr noundef nonnull @__func__.ext4_block_to_path, i32 noundef 107, ptr noundef nonnull @.str.11, i32 noundef %conv6, i32 noundef %33) #10
  br label %cleanup

if.end23:                                         ; preds = %if.then24.i, %if.then11.i, %if.then3.i, %if.then.i, %entry.if.end23_crit_edge
  %cmp30 = phi i1 [ false, %if.then24.i ], [ false, %if.then11.i ], [ false, %if.then3.i ], [ true, %if.then.i ], [ false, %entry.if.end23_crit_edge ]
  %n.0 = phi i32 [ 4, %if.then24.i ], [ 3, %if.then11.i ], [ 2, %if.then3.i ], [ 1, %if.then.i ], [ 0, %entry.if.end23_crit_edge ]
  %sub24 = xor i32 %conv6, -1
  %call25 = tail call i32 @ext4_es_remove_extent(ptr noundef %inode, i32 noundef %conv6, i32 noundef %sub24) #10
  %34 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %i_size, align 8
  %i_disksize = getelementptr i8, ptr %inode, i32 -104
  %36 = ptrtoint ptr %i_disksize to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %i_disksize, align 8
  br i1 %cmp.not, label %if.end23.cleanup_crit_edge, label %if.else

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else:                                          ; preds = %if.end23
  br i1 %cmp30, label %if.then32, label %if.end36

if.then32:                                        ; preds = %if.else
  %37 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %offsets, align 4
  %add.ptr33 = getelementptr i32, ptr %add.ptr, i32 %38
  %add.ptr34 = getelementptr i8, ptr %inode, i32 -416
  %cmp93.i = icmp ult ptr %add.ptr33, %add.ptr34
  br i1 %cmp93.i, label %if.then32.for.body.i_crit_edge, label %if.then32.do_indirects_crit_edge

if.then32.do_indirects_crit_edge:                 ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_indirects

if.then32.for.body.i_crit_edge:                   ; preds = %if.then32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then32.for.body.i_crit_edge
  %p.097.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr33, %if.then32.for.body.i_crit_edge ]
  %block_to_free_p.096.i = phi ptr [ %block_to_free_p.1.i, %for.inc.i.for.body.i_crit_edge ], [ null, %if.then32.for.body.i_crit_edge ]
  %count.095.i = phi i32 [ %count.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then32.for.body.i_crit_edge ]
  %block_to_free.094.i = phi i64 [ %block_to_free.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then32.for.body.i_crit_edge ]
  %39 = ptrtoint ptr %p.097.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %p.097.i, align 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #10
  %conv.i = zext i32 %41 to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool4.not.i = icmp eq i32 %40, 0
  br i1 %tobool4.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then5.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then5.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.095.i)
  %cmp6.i = icmp eq i32 %count.095.i, 0
  br i1 %cmp6.i, label %if.then5.i.for.inc.i_crit_edge, label %if.else.i169

if.then5.i.for.inc.i_crit_edge:                   ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.else.i169:                                     ; preds = %if.then5.i
  %conv9.i = zext i32 %count.095.i to i64
  %add.i = add i64 %block_to_free.094.i, %conv9.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %conv.i)
  %cmp10.i168 = icmp eq i64 %add.i, %conv.i
  br i1 %cmp10.i168, label %if.then12.i, label %if.else13.i

if.then12.i:                                      ; preds = %if.else.i169
  call void @__sanitizer_cov_trace_pc() #12
  %inc.i = add i32 %count.095.i, 1
  br label %for.inc.i

if.else13.i:                                      ; preds = %if.else.i169
  %call14.i = tail call fastcc i32 @ext4_clear_blocks(ptr noundef %handle, ptr noundef %inode, ptr noundef null, i64 noundef %block_to_free.094.i, i32 noundef %count.095.i, ptr noundef %block_to_free_p.096.i, ptr noundef %p.097.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.else13.i.for.inc.i_crit_edge, label %if.else13.i.do_indirectsthread-pre-split_crit_edge

if.else13.i.do_indirectsthread-pre-split_crit_edge: ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_indirectsthread-pre-split

if.else13.i.for.inc.i_crit_edge:                  ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else13.i.for.inc.i_crit_edge, %if.then12.i, %if.then5.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %block_to_free.1.i = phi i64 [ %block_to_free.094.i, %if.then12.i ], [ %block_to_free.094.i, %for.body.i.for.inc.i_crit_edge ], [ %conv.i, %if.then5.i.for.inc.i_crit_edge ], [ %conv.i, %if.else13.i.for.inc.i_crit_edge ]
  %count.1.i = phi i32 [ %inc.i, %if.then12.i ], [ %count.095.i, %for.body.i.for.inc.i_crit_edge ], [ 1, %if.then5.i.for.inc.i_crit_edge ], [ 1, %if.else13.i.for.inc.i_crit_edge ]
  %block_to_free_p.1.i = phi ptr [ %block_to_free_p.096.i, %if.then12.i ], [ %block_to_free_p.096.i, %for.body.i.for.inc.i_crit_edge ], [ %p.097.i, %if.then5.i.for.inc.i_crit_edge ], [ %p.097.i, %if.else13.i.for.inc.i_crit_edge ]
  %incdec.ptr.i = getelementptr i32, ptr %p.097.i, i32 1
  %cmp.i170 = icmp ult ptr %incdec.ptr.i, %add.ptr34
  br i1 %cmp.i170, label %for.inc.i.for.body.i_crit_edge, label %land.lhs.true.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

land.lhs.true.i:                                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.1.i)
  %cmp22.not.i = icmp eq i32 %count.1.i, 0
  br i1 %cmp22.not.i, label %land.lhs.true.i.do_indirectsthread-pre-split_crit_edge, label %if.then24.i171

land.lhs.true.i.do_indirectsthread-pre-split_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_indirectsthread-pre-split

if.then24.i171:                                   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %call25.i = tail call fastcc i32 @ext4_clear_blocks(ptr noundef %handle, ptr noundef %inode, ptr noundef null, i64 noundef %block_to_free.1.i, i32 noundef %count.1.i, ptr noundef %block_to_free_p.1.i, ptr noundef %incdec.ptr.i) #10
  br label %do_indirectsthread-pre-split

if.end36:                                         ; preds = %if.else
  %call39 = call fastcc ptr @ext4_find_shared(ptr noundef %inode, i32 noundef %n.0, ptr noundef nonnull %offsets, ptr noundef nonnull %chain, ptr noundef nonnull %nr)
  %42 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not = icmp eq i32 %43, 0
  br i1 %tobool.not, label %if.end36.if.end61_crit_edge, label %if.then40

if.end36.if.end61_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

if.then40:                                        ; preds = %if.end36
  %cmp42 = icmp eq ptr %call39, %chain
  br i1 %cmp42, label %if.then44, label %do.end

if.then44:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr45 = getelementptr inbounds i32, ptr %nr, i32 1
  %add.ptr47 = getelementptr %struct.Indirect, ptr %chain, i32 %n.0
  %add.ptr48 = getelementptr %struct.Indirect, ptr %add.ptr47, i32 -1
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr48 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %chain to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 12
  call fastcc void @ext4_free_branches(ptr noundef %handle, ptr noundef %inode, ptr noundef null, ptr noundef nonnull %nr, ptr noundef %add.ptr45, i32 noundef %sub.ptr.div)
  %44 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %chain, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %45, align 4
  br label %if.end61

do.end:                                           ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #12
  %bh = getelementptr inbounds %struct.Indirect, ptr %call39, i32 0, i32 2
  %47 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bh, align 4
  %49 = ptrtoint ptr %call39 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %call39, align 4
  %add.ptr52 = getelementptr i32, ptr %50, i32 1
  %add.ptr54 = getelementptr %struct.Indirect, ptr %chain, i32 %n.0
  %add.ptr55 = getelementptr %struct.Indirect, ptr %add.ptr54, i32 -1
  %sub.ptr.lhs.cast56 = ptrtoint ptr %add.ptr55 to i32
  %sub.ptr.rhs.cast57 = ptrtoint ptr %call39 to i32
  %sub.ptr.sub58 = sub i32 %sub.ptr.lhs.cast56, %sub.ptr.rhs.cast57
  %sub.ptr.div59 = sdiv exact i32 %sub.ptr.sub58, 12
  call fastcc void @ext4_free_branches(ptr noundef %handle, ptr noundef %inode, ptr noundef %48, ptr noundef %50, ptr noundef %add.ptr52, i32 noundef %sub.ptr.div59)
  br label %if.end61

if.end61:                                         ; preds = %do.end, %if.then44, %if.end36.if.end61_crit_edge
  %cmp63176 = icmp ugt ptr %call39, %chain
  br i1 %cmp63176, label %while.body.lr.ph, label %if.end61.do_indirectsthread-pre-split_crit_edge

if.end61.do_indirectsthread-pre-split_crit_edge:  ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_indirectsthread-pre-split

while.body.lr.ph:                                 ; preds = %if.end61
  %add.ptr71 = getelementptr %struct.Indirect, ptr %chain, i32 %n.0
  %add.ptr72 = getelementptr %struct.Indirect, ptr %add.ptr71, i32 -1
  %sub.ptr.lhs.cast73 = ptrtoint ptr %add.ptr72 to i32
  br label %while.body

while.body:                                       ; preds = %brelse.exit.while.body_crit_edge, %while.body.lr.ph
  %partial.0177 = phi ptr [ %call39, %while.body.lr.ph ], [ %incdec.ptr, %brelse.exit.while.body_crit_edge ]
  %bh65 = getelementptr inbounds %struct.Indirect, ptr %partial.0177, i32 0, i32 2
  %51 = ptrtoint ptr %bh65 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bh65, align 4
  %53 = ptrtoint ptr %partial.0177 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %partial.0177, align 4
  %add.ptr67 = getelementptr i32, ptr %54, i32 1
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %52, i32 0, i32 5
  %55 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %b_data, align 4
  %add.ptr69 = getelementptr i32, ptr %56, i32 %div167
  %sub.ptr.rhs.cast74 = ptrtoint ptr %partial.0177 to i32
  %sub.ptr.sub75 = sub i32 %sub.ptr.lhs.cast73, %sub.ptr.rhs.cast74
  %sub.ptr.div76 = sdiv exact i32 %sub.ptr.sub75, 12
  call fastcc void @ext4_free_branches(ptr noundef %handle, ptr noundef %inode, ptr noundef %52, ptr noundef %add.ptr67, ptr noundef %add.ptr69, i32 noundef %sub.ptr.div76)
  %57 = ptrtoint ptr %bh65 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %bh65, align 4
  %tobool.not.i = icmp eq ptr %58, null
  br i1 %tobool.not.i, label %while.body.brelse.exit_crit_edge, label %if.then.i172

while.body.brelse.exit_crit_edge:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %brelse.exit

if.then.i172:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  call void @__brelse(ptr noundef nonnull %58) #10
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i172, %while.body.brelse.exit_crit_edge
  %incdec.ptr = getelementptr %struct.Indirect, ptr %partial.0177, i32 -1
  %cmp63 = icmp ugt ptr %incdec.ptr, %chain
  br i1 %cmp63, label %brelse.exit.while.body_crit_edge, label %brelse.exit.do_indirectsthread-pre-split_crit_edge

brelse.exit.do_indirectsthread-pre-split_crit_edge: ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_indirectsthread-pre-split

brelse.exit.while.body_crit_edge:                 ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

do_indirectsthread-pre-split:                     ; preds = %brelse.exit.do_indirectsthread-pre-split_crit_edge, %if.end61.do_indirectsthread-pre-split_crit_edge, %if.then24.i171, %land.lhs.true.i.do_indirectsthread-pre-split_crit_edge, %if.else13.i.do_indirectsthread-pre-split_crit_edge
  %59 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %59)
  %.pr = load i32, ptr %offsets, align 4
  br label %do_indirects

do_indirects:                                     ; preds = %do_indirectsthread-pre-split, %if.then32.do_indirects_crit_edge
  %60 = phi i32 [ %.pr, %do_indirectsthread-pre-split ], [ %38, %if.then32.do_indirects_crit_edge ]
  %61 = zext i32 %60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values)
  switch i32 %60, label %sw.default [
    i32 12, label %do_indirects.sw.bb_crit_edge
    i32 13, label %do_indirects.sw.bb94_crit_edge
    i32 14, label %do_indirects.cleanup_crit_edge
  ]

do_indirects.cleanup_crit_edge:                   ; preds = %do_indirects
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do_indirects.sw.bb94_crit_edge:                   ; preds = %do_indirects
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb94

do_indirects.sw.bb_crit_edge:                     ; preds = %do_indirects
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

sw.default:                                       ; preds = %do_indirects
  %arrayidx82 = getelementptr i8, ptr %inode, i32 -416
  %62 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx82, align 4
  %64 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool83.not = icmp eq i32 %63, 0
  br i1 %tobool83.not, label %sw.default.sw.bb_crit_edge, label %if.then84

sw.default.sw.bb_crit_edge:                       ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.then84:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr85 = getelementptr inbounds i32, ptr %nr, i32 1
  call fastcc void @ext4_free_branches(ptr noundef %handle, ptr noundef %inode, ptr noundef null, ptr noundef nonnull %nr, ptr noundef %add.ptr85, i32 noundef 1)
  %65 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %arrayidx82, align 4
  br label %sw.bb

sw.bb:                                            ; preds = %if.then84, %sw.default.sw.bb_crit_edge, %do_indirects.sw.bb_crit_edge
  %arrayidx88 = getelementptr i8, ptr %inode, i32 -412
  %66 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx88, align 4
  %68 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool89.not = icmp eq i32 %67, 0
  br i1 %tobool89.not, label %sw.bb.sw.bb94_crit_edge, label %if.then90

sw.bb.sw.bb94_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb94

if.then90:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr91 = getelementptr inbounds i32, ptr %nr, i32 1
  call fastcc void @ext4_free_branches(ptr noundef %handle, ptr noundef %inode, ptr noundef null, ptr noundef nonnull %nr, ptr noundef %add.ptr91, i32 noundef 2)
  %69 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %arrayidx88, align 4
  br label %sw.bb94

sw.bb94:                                          ; preds = %if.then90, %sw.bb.sw.bb94_crit_edge, %do_indirects.sw.bb94_crit_edge
  %arrayidx95 = getelementptr i8, ptr %inode, i32 -408
  %70 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx95, align 4
  %72 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool96.not = icmp eq i32 %71, 0
  br i1 %tobool96.not, label %sw.bb94.cleanup_crit_edge, label %if.then97

sw.bb94.cleanup_crit_edge:                        ; preds = %sw.bb94
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then97:                                        ; preds = %sw.bb94
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr98 = getelementptr inbounds i32, ptr %nr, i32 1
  call fastcc void @ext4_free_branches(ptr noundef %handle, ptr noundef %inode, ptr noundef null, ptr noundef nonnull %nr, ptr noundef %add.ptr98, i32 noundef 3)
  %73 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %arrayidx95, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then97, %sw.bb94.cleanup_crit_edge, %do_indirects.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %ext4_block_to_path.exit
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr) #10
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %chain) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %offsets) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_es_remove_extent(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ext4_free_data(ptr noundef %handle, ptr noundef %inode, ptr noundef %this_bh, ptr noundef %first, ptr noundef readnone %last) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %this_bh, null
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %do.end

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

do.end:                                           ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %call = tail call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_free_data, i32 noundef 923, ptr noundef %handle, ptr noundef %1, ptr noundef nonnull %this_bh, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %do.end.if.end3_crit_edge, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end.if.end3_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.end3:                                          ; preds = %do.end.if.end3_crit_edge, %entry.if.end3_crit_edge
  %cmp93 = icmp ult ptr %first, %last
  br i1 %cmp93, label %if.end3.for.body_crit_edge, label %if.end3.if.end26_crit_edge

if.end3.if.end26_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.end3.for.body_crit_edge:                       ; preds = %if.end3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end3.for.body_crit_edge
  %p.097 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %first, %if.end3.for.body_crit_edge ]
  %block_to_free_p.096 = phi ptr [ %block_to_free_p.1, %for.inc.for.body_crit_edge ], [ null, %if.end3.for.body_crit_edge ]
  %count.095 = phi i32 [ %count.1, %for.inc.for.body_crit_edge ], [ 0, %if.end3.for.body_crit_edge ]
  %block_to_free.094 = phi i64 [ %block_to_free.1, %for.inc.for.body_crit_edge ], [ 0, %if.end3.for.body_crit_edge ]
  %2 = ptrtoint ptr %p.097 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %p.097, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %conv = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool4.not = icmp eq i32 %3, 0
  br i1 %tobool4.not, label %for.body.for.inc_crit_edge, label %if.then5

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then5:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.095)
  %cmp6 = icmp eq i32 %count.095, 0
  br i1 %cmp6, label %if.then5.for.inc_crit_edge, label %if.else

if.then5.for.inc_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.else:                                          ; preds = %if.then5
  %conv9 = zext i32 %count.095 to i64
  %add = add i64 %block_to_free.094, %conv9
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv)
  %cmp10 = icmp eq i64 %add, %conv
  br i1 %cmp10, label %if.then12, label %if.else13

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %inc = add i32 %count.095, 1
  br label %for.inc

if.else13:                                        ; preds = %if.else
  %call14 = tail call fastcc i32 @ext4_clear_blocks(ptr noundef %handle, ptr noundef %inode, ptr noundef %this_bh, i64 noundef %block_to_free.094, i32 noundef %count.095, ptr noundef %block_to_free_p.096, ptr noundef %p.097)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.else13.for.inc_crit_edge, label %if.else13.if.end26_crit_edge

if.else13.if.end26_crit_edge:                     ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.else13.for.inc_crit_edge:                      ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc:                                          ; preds = %if.else13.for.inc_crit_edge, %if.then12, %if.then5.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %block_to_free.1 = phi i64 [ %block_to_free.094, %if.then12 ], [ %block_to_free.094, %for.body.for.inc_crit_edge ], [ %conv, %if.then5.for.inc_crit_edge ], [ %conv, %if.else13.for.inc_crit_edge ]
  %count.1 = phi i32 [ %inc, %if.then12 ], [ %count.095, %for.body.for.inc_crit_edge ], [ 1, %if.then5.for.inc_crit_edge ], [ 1, %if.else13.for.inc_crit_edge ]
  %block_to_free_p.1 = phi ptr [ %block_to_free_p.096, %if.then12 ], [ %block_to_free_p.096, %for.body.for.inc_crit_edge ], [ %p.097, %if.then5.for.inc_crit_edge ], [ %p.097, %if.else13.for.inc_crit_edge ]
  %incdec.ptr = getelementptr i32, ptr %p.097, i32 1
  %cmp = icmp ult ptr %incdec.ptr, %last
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %land.lhs.true

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

land.lhs.true:                                    ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.1)
  %cmp22.not = icmp eq i32 %count.1, 0
  br i1 %cmp22.not, label %land.lhs.true.if.end26_crit_edge, label %if.then24

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then24:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call25 = tail call fastcc i32 @ext4_clear_blocks(ptr noundef %handle, ptr noundef %inode, ptr noundef %this_bh, i64 noundef %block_to_free.1, i32 noundef %count.1, ptr noundef %block_to_free_p.1, ptr noundef %incdec.ptr)
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %land.lhs.true.if.end26_crit_edge, %if.else13.if.end26_crit_edge, %if.end3.if.end26_crit_edge
  %err.4 = phi i32 [ %call25, %if.then24 ], [ 0, %land.lhs.true.if.end26_crit_edge ], [ 0, %if.end3.if.end26_crit_edge ], [ %call14, %if.else13.if.end26_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.4)
  %cmp27 = icmp slt i32 %err.4, 0
  %brmerge = or i1 %tobool.not, %cmp27
  br i1 %brmerge, label %if.end26.cleanup_crit_edge, label %do.end35

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end35:                                         ; preds = %if.end26
  %i_sb36 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %5 = ptrtoint ptr %i_sb36 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb36, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 33
  %7 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal = getelementptr inbounds %struct.ext4_sb_info, ptr %8, i32 0, i32 47
  %9 = ptrtoint ptr %s_journal to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_journal, align 8
  %cmp38 = icmp eq ptr %10, null
  br i1 %cmp38, label %do.end35.if.then42_crit_edge, label %lor.lhs.false

do.end35.if.then42_crit_edge:                     ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then42

lor.lhs.false:                                    ; preds = %do.end35
  %b_private.i = getelementptr inbounds %struct.buffer_head, ptr %this_bh, i32 0, i32 8
  %11 = ptrtoint ptr %b_private.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %b_private.i, align 8
  %tobool41.not = icmp eq ptr %12, null
  br i1 %tobool41.not, label %if.else44, label %lor.lhs.false.if.then42_crit_edge

lor.lhs.false.if.then42_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then42

if.then42:                                        ; preds = %lor.lhs.false.if.then42_crit_edge, %do.end35.if.then42_crit_edge
  %call43 = tail call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_free_data, i32 noundef 970, ptr noundef %handle, ptr noundef %inode, ptr noundef nonnull %this_bh) #10
  br label %cleanup

if.else44:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %this_bh, i32 0, i32 3
  %13 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %b_blocknr, align 8
  tail call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %inode, ptr noundef nonnull @__func__.ext4_free_data, i32 noundef 975, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.15, i64 noundef %14) #10
  br label %cleanup

cleanup:                                          ; preds = %if.else44, %if.then42, %if.end26.cleanup_crit_edge, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ext4_find_shared(ptr noundef %inode, i32 noundef %depth, ptr nocapture noundef readonly %offsets, ptr noundef %chain, ptr nocapture noundef writeonly %top) unnamed_addr #0 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #10
  %0 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %err, align 4, !annotation !68
  %1 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %top, align 4
  %smin = call i32 @llvm.smin.i32(i32 %depth, i32 1)
  br label %for.cond

for.cond:                                         ; preds = %land.rhs.for.cond_crit_edge, %entry
  %k.0 = phi i32 [ %depth, %entry ], [ %sub, %land.rhs.for.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %k.0)
  %cmp = icmp sgt i32 %k.0, 1
  br i1 %cmp, label %land.rhs, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

land.rhs:                                         ; preds = %for.cond
  %sub = add nsw i32 %k.0, -1
  %arrayidx = getelementptr i32, ptr %offsets, i32 %sub
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %land.rhs.for.cond_crit_edge, label %land.rhs.for.end_crit_edge

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

land.rhs.for.cond_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

for.end:                                          ; preds = %land.rhs.for.end_crit_edge, %for.cond.for.end_crit_edge
  %k.0.lcssa = phi i32 [ %smin, %for.cond.for.end_crit_edge ], [ %k.0, %land.rhs.for.end_crit_edge ]
  %call = call fastcc ptr @ext4_get_branch(ptr noundef %inode, i32 noundef %k.0.lcssa, ptr noundef %offsets, ptr noundef %chain, ptr noundef nonnull %err)
  %tobool1.not = icmp eq ptr %call, null
  %add.ptr = getelementptr %struct.Indirect, ptr %chain, i32 %k.0.lcssa
  %add.ptr2 = getelementptr %struct.Indirect, ptr %add.ptr, i32 -1
  %partial.0 = select i1 %tobool1.not, ptr %add.ptr2, ptr %call
  %key = getelementptr inbounds %struct.Indirect, ptr %partial.0, i32 0, i32 1
  %4 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %key, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %land.lhs.true, label %for.end.if.end7_crit_edge

for.end.if.end7_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

land.lhs.true:                                    ; preds = %for.end
  %6 = ptrtoint ptr %partial.0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %partial.0, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool5.not = icmp eq i32 %9, 0
  br i1 %tobool5.not, label %land.lhs.true.if.end7_crit_edge, label %land.lhs.true.no_top_crit_edge

land.lhs.true.no_top_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %no_top

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.end7:                                          ; preds = %land.lhs.true.if.end7_crit_edge, %for.end.if.end7_crit_edge
  %cmp968 = icmp ugt ptr %partial.0, %chain
  br i1 %cmp968, label %if.end7.land.rhs10_crit_edge, label %if.end7.if.else_crit_edge

if.end7.if.else_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.end7.land.rhs10_crit_edge:                     ; preds = %if.end7
  br label %land.rhs10

land.rhs10:                                       ; preds = %for.inc16.land.rhs10_crit_edge, %if.end7.land.rhs10_crit_edge
  %p.069 = phi ptr [ %incdec.ptr, %for.inc16.land.rhs10_crit_edge ], [ %partial.0, %if.end7.land.rhs10_crit_edge ]
  %bh = getelementptr inbounds %struct.Indirect, ptr %p.069, i32 0, i32 2
  %10 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bh, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %b_data, align 4
  %14 = ptrtoint ptr %p.069 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %p.069, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %land.rhs10
  %p.addr.0.i = phi ptr [ %13, %land.rhs10 ], [ %incdec.ptr.i, %while.body.i.while.cond.i_crit_edge ]
  %cmp.i = icmp ult ptr %p.addr.0.i, %15
  br i1 %cmp.i, label %while.body.i, label %for.inc16

while.body.i:                                     ; preds = %while.cond.i
  %incdec.ptr.i = getelementptr i32, ptr %p.addr.0.i, i32 1
  %16 = ptrtoint ptr %p.addr.0.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %p.addr.0.i, align 4
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %while.body.i.while.cond.i_crit_edge, label %for.end17

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i

for.inc16:                                        ; preds = %while.cond.i
  %incdec.ptr = getelementptr %struct.Indirect, ptr %p.069, i32 -1
  %cmp9 = icmp ugt ptr %incdec.ptr, %chain
  br i1 %cmp9, label %for.inc16.land.rhs10_crit_edge, label %for.inc16.if.else_crit_edge

for.inc16.if.else_crit_edge:                      ; preds = %for.inc16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

for.inc16.land.rhs10_crit_edge:                   ; preds = %for.inc16
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs10

for.end17:                                        ; preds = %while.body.i
  %cmp20 = icmp eq ptr %p.069, %add.ptr2
  br i1 %cmp20, label %if.then23, label %for.end17.if.else_crit_edge

for.end17.if.else_crit_edge:                      ; preds = %for.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then23:                                        ; preds = %for.end17
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %add.ptr2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr2, align 4
  %incdec.ptr25 = getelementptr i32, ptr %19, i32 -1
  store ptr %incdec.ptr25, ptr %add.ptr2, align 4
  br label %if.end27

if.else:                                          ; preds = %for.end17.if.else_crit_edge, %for.inc16.if.else_crit_edge, %if.end7.if.else_crit_edge
  %p.066 = phi ptr [ %p.069, %for.end17.if.else_crit_edge ], [ %partial.0, %if.end7.if.else_crit_edge ], [ %incdec.ptr, %for.inc16.if.else_crit_edge ]
  %20 = ptrtoint ptr %p.066 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %p.066, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %24 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %top, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then23
  %p.067 = phi ptr [ %p.066, %if.else ], [ %add.ptr2, %if.then23 ]
  %cmp2871 = icmp ugt ptr %partial.0, %p.067
  br i1 %cmp2871, label %if.end27.while.body_crit_edge, label %if.end27.no_top_crit_edge

if.end27.no_top_crit_edge:                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %no_top

if.end27.while.body_crit_edge:                    ; preds = %if.end27
  br label %while.body

while.body:                                       ; preds = %brelse.exit.while.body_crit_edge, %if.end27.while.body_crit_edge
  %partial.172 = phi ptr [ %incdec.ptr30, %brelse.exit.while.body_crit_edge ], [ %partial.0, %if.end27.while.body_crit_edge ]
  %bh29 = getelementptr inbounds %struct.Indirect, ptr %partial.172, i32 0, i32 2
  %25 = ptrtoint ptr %bh29 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bh29, align 4
  %tobool.not.i57 = icmp eq ptr %26, null
  br i1 %tobool.not.i57, label %while.body.brelse.exit_crit_edge, label %if.then.i

while.body.brelse.exit_crit_edge:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %brelse.exit

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__brelse(ptr noundef nonnull %26) #10
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %while.body.brelse.exit_crit_edge
  %incdec.ptr30 = getelementptr %struct.Indirect, ptr %partial.172, i32 -1
  %cmp28 = icmp ugt ptr %incdec.ptr30, %p.067
  br i1 %cmp28, label %brelse.exit.while.body_crit_edge, label %brelse.exit.no_top_crit_edge

brelse.exit.no_top_crit_edge:                     ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %no_top

brelse.exit.while.body_crit_edge:                 ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

no_top:                                           ; preds = %brelse.exit.no_top_crit_edge, %if.end27.no_top_crit_edge, %land.lhs.true.no_top_crit_edge
  %partial.2 = phi ptr [ %partial.0, %land.lhs.true.no_top_crit_edge ], [ %partial.0, %if.end27.no_top_crit_edge ], [ %incdec.ptr30, %brelse.exit.no_top_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #10
  ret ptr %partial.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ext4_free_branches(ptr noundef %handle, ptr noundef %inode, ptr noundef %parent_bh, ptr noundef %first, ptr noundef %last, i32 noundef %depth) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.i.not.i = icmp ult ptr %handle, inttoptr (i32 4096 to ptr)
  br i1 %cmp.i.not.i, label %entry.if.end_crit_edge, label %if.then.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.i:                                        ; preds = %entry
  %h_aborted.i.i = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 7
  %0 = ptrtoint ptr %h_aborted.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load.i.i = load i32, ptr %h_aborted.i.i, align 4
  %1 = and i32 %bf.load.i.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %if.then.i.cleanup49_crit_edge

if.then.i.cleanup49_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup49

lor.lhs.false.i.i:                                ; preds = %if.then.i
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handle, align 4
  %tobool1.not.i.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.cleanup49_crit_edge, label %ext4_handle_is_aborted.exit

lor.lhs.false.i.i.cleanup49_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup49

ext4_handle_is_aborted.exit:                      ; preds = %lor.lhs.false.i.i
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %and.i.i.i = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not, label %ext4_handle_is_aborted.exit.if.end_crit_edge, label %ext4_handle_is_aborted.exit.cleanup49_crit_edge

ext4_handle_is_aborted.exit.cleanup49_crit_edge:  ; preds = %ext4_handle_is_aborted.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup49

ext4_handle_is_aborted.exit.if.end_crit_edge:     ; preds = %ext4_handle_is_aborted.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %ext4_handle_is_aborted.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %dec = add i32 %depth, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %depth)
  %tobool1.not = icmp eq i32 %depth, 0
  br i1 %tobool1.not, label %do.end47, label %if.then2

if.then2:                                         ; preds = %if.end
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %8 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_blocksize, align 16
  %div90 = lshr i32 %11, 2
  %incdec.ptr114 = getelementptr i32, ptr %last, i32 -1
  %cmp.not115 = icmp ult ptr %incdec.ptr114, %first
  br i1 %cmp.not115, label %if.then2.cleanup49_crit_edge, label %while.body.lr.ph

if.then2.cleanup49_crit_edge:                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup49

while.body.lr.ph:                                 ; preds = %if.then2
  %h_aborted.i.i94 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 7
  %tobool29.not = icmp eq ptr %parent_bh, null
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %incdec.ptr116 = phi ptr [ %incdec.ptr114, %while.body.lr.ph ], [ %incdec.ptr, %while.cond.backedge.while.body_crit_edge ]
  %12 = ptrtoint ptr %incdec.ptr116 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %incdec.ptr116, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %conv = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool3.not = icmp eq i32 %13, 0
  br i1 %tobool3.not, label %while.body.while.cond.backedge_crit_edge, label %if.end5

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

if.end5:                                          ; preds = %while.body
  %call6 = tail call i32 @ext4_inode_block_valid(ptr noundef %inode, i64 noundef %conv, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %inode, ptr noundef nonnull @__func__.ext4_free_branches, i32 noundef 1015, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.17, i32 noundef %14, i32 noundef %dec) #10
  br label %cleanup49

if.end10:                                         ; preds = %if.end5
  %15 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i_sb, align 4
  %call12 = tail call ptr @ext4_sb_bread(ptr noundef %16, i64 noundef %conv, i32 noundef 0) #10
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then14, label %do.end

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %call12 to i32
  %sub = sub i32 0, %17
  tail call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %inode, ptr noundef nonnull @__func__.ext4_free_branches, i32 noundef 1028, i64 noundef %conv, i32 noundef %sub, ptr noundef nonnull @.str.18) #10
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then37, %do.end33.while.cond.backedge_crit_edge, %if.end28.while.cond.backedge_crit_edge, %if.then14, %while.body.while.cond.backedge_crit_edge
  %incdec.ptr = getelementptr i32, ptr %incdec.ptr116, i32 -1
  %cmp.not = icmp ult ptr %incdec.ptr, %first
  br i1 %cmp.not, label %while.cond.backedge.cleanup49_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.cond.backedge.cleanup49_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup49

do.end:                                           ; preds = %if.end10
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call12, i32 0, i32 5
  %18 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %b_data, align 4
  %add.ptr = getelementptr i32, ptr %19, i32 %div90
  tail call fastcc void @ext4_free_branches(ptr noundef %handle, ptr noundef %inode, ptr noundef %call12, ptr noundef %19, ptr noundef %add.ptr, i32 noundef %dec)
  %tobool.not.i = icmp eq ptr %call12, null
  br i1 %tobool.not.i, label %do.end.brelse.exit_crit_edge, label %if.then.i92

do.end.brelse.exit_crit_edge:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %brelse.exit

if.then.i92:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__brelse(ptr noundef nonnull %call12) #10
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i92, %do.end.brelse.exit_crit_edge
  br i1 %cmp.i.not.i, label %brelse.exit.if.end21_crit_edge, label %if.then.i97

brelse.exit.if.end21_crit_edge:                   ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then.i97:                                      ; preds = %brelse.exit
  %20 = ptrtoint ptr %h_aborted.i.i94 to i32
  call void @__asan_load4_noabort(i32 %20)
  %bf.load.i.i95 = load i32, ptr %h_aborted.i.i94, align 4
  %21 = and i32 %bf.load.i.i95, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i.i96 = icmp eq i32 %21, 0
  br i1 %tobool.not.i.i96, label %lor.lhs.false.i.i99, label %if.then.i97.cleanup49_crit_edge

if.then.i97.cleanup49_crit_edge:                  ; preds = %if.then.i97
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup49

lor.lhs.false.i.i99:                              ; preds = %if.then.i97
  %22 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %handle, align 4
  %tobool1.not.i.i98 = icmp eq ptr %23, null
  br i1 %tobool1.not.i.i98, label %lor.lhs.false.i.i99.cleanup49_crit_edge, label %ext4_handle_is_aborted.exit103

lor.lhs.false.i.i99.cleanup49_crit_edge:          ; preds = %lor.lhs.false.i.i99
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup49

ext4_handle_is_aborted.exit103:                   ; preds = %lor.lhs.false.i.i99
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 8
  %and.i.i.i100 = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i100)
  %tobool19.not = icmp eq i32 %and.i.i.i100, 0
  br i1 %tobool19.not, label %ext4_handle_is_aborted.exit103.if.end21_crit_edge, label %ext4_handle_is_aborted.exit103.cleanup49_crit_edge

ext4_handle_is_aborted.exit103.cleanup49_crit_edge: ; preds = %ext4_handle_is_aborted.exit103
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup49

ext4_handle_is_aborted.exit103.if.end21_crit_edge: ; preds = %ext4_handle_is_aborted.exit103
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.end21:                                         ; preds = %ext4_handle_is_aborted.exit103.if.end21_crit_edge, %brelse.exit.if.end21_crit_edge
  %28 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %29, i32 0, i32 33
  %30 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_cluster_ratio.i = getelementptr inbounds %struct.ext4_sb_info, ptr %31, i32 0, i32 11
  %32 = ptrtoint ptr %s_cluster_ratio.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %s_cluster_ratio.i, align 4
  %call24 = tail call fastcc i32 @ext4_ind_truncate_ensure_credits(ptr noundef %handle, ptr noundef %inode, ptr noundef null, i32 noundef %33)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %if.end21.cleanup49_crit_edge, label %if.end28

if.end21.cleanup49_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup49

if.end28:                                         ; preds = %if.end21
  tail call void @ext4_free_blocks(ptr noundef %handle, ptr noundef %inode, ptr noundef null, i64 noundef %conv, i32 noundef 1, i32 noundef 3) #10
  br i1 %tobool29.not, label %if.end28.while.cond.backedge_crit_edge, label %do.end33

if.end28.while.cond.backedge_crit_edge:           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

do.end33:                                         ; preds = %if.end28
  %34 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i_sb, align 4
  %call35 = tail call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_free_branches, i32 noundef 1087, ptr noundef %handle, ptr noundef %35, ptr noundef nonnull %parent_bh, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.then37, label %do.end33.while.cond.backedge_crit_edge

do.end33.while.cond.backedge_crit_edge:           ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

if.then37:                                        ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %incdec.ptr116 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %incdec.ptr116, align 4
  %call41 = tail call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_free_branches, i32 noundef 1093, ptr noundef %handle, ptr noundef %inode, ptr noundef nonnull %parent_bh) #10
  br label %while.cond.backedge

do.end47:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @ext4_free_data(ptr noundef %handle, ptr noundef %inode, ptr noundef %parent_bh, ptr noundef %first, ptr noundef %last)
  br label %cleanup49

cleanup49:                                        ; preds = %do.end47, %if.end21.cleanup49_crit_edge, %ext4_handle_is_aborted.exit103.cleanup49_crit_edge, %lor.lhs.false.i.i99.cleanup49_crit_edge, %if.then.i97.cleanup49_crit_edge, %while.cond.backedge.cleanup49_crit_edge, %if.then8, %if.then2.cleanup49_crit_edge, %ext4_handle_is_aborted.exit.cleanup49_crit_edge, %lor.lhs.false.i.i.cleanup49_crit_edge, %if.then.i.cleanup49_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_ind_remove_space(ptr noundef %handle, ptr noundef %inode, i32 noundef %start, i32 noundef %end) local_unnamed_addr #0 align 64 {
entry:
  %offsets = alloca [4 x i32], align 4
  %offsets2 = alloca [4 x i32], align 4
  %chain = alloca [4 x %struct.Indirect], align 4
  %chain2 = alloca [4 x %struct.Indirect], align 4
  %nr = alloca i32, align 4
  %nr2 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %inode, i32 -464
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_blocksize, align 16
  %div512 = lshr i32 %3, 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %offsets) #10
  %4 = getelementptr inbounds [4 x i32], ptr %offsets, i32 0, i32 1
  %5 = getelementptr inbounds [4 x i32], ptr %offsets, i32 0, i32 2
  %6 = getelementptr inbounds [4 x i32], ptr %offsets, i32 0, i32 3
  %7 = call ptr @memset(ptr %offsets, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %offsets2) #10
  %8 = getelementptr inbounds [4 x i32], ptr %offsets2, i32 0, i32 1
  %9 = getelementptr inbounds [4 x i32], ptr %offsets2, i32 0, i32 2
  %10 = getelementptr inbounds [4 x i32], ptr %offsets2, i32 0, i32 3
  %11 = call ptr @memset(ptr %offsets2, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %chain) #10
  %12 = call ptr @memset(ptr %chain, i32 255, i32 48)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %chain2) #10
  %13 = call ptr @memset(ptr %chain2, i32 255, i32 48)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nr) #10
  %14 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %nr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nr2) #10
  %15 = ptrtoint ptr %nr2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %nr2, align 4
  %16 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %s_blocksize, align 16
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %18 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %s_fs_info.i, align 16
  %s_bitmap_maxbytes = getelementptr inbounds %struct.ext4_sb_info, ptr %19, i32 0, i32 13
  %20 = ptrtoint ptr %s_bitmap_maxbytes to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %s_bitmap_maxbytes, align 8
  %conv = zext i32 %17 to i64
  %add = add nsw i64 %conv, -1
  %sub = add i64 %add, %21
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %s_blocksize_bits, align 4
  %sh_prom = zext i8 %23 to i64
  %shr = ashr i64 %sub, %sh_prom
  %conv7 = trunc i64 %shr to i32
  %24 = tail call i32 @llvm.umin.i32(i32 %conv7, i32 %end)
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %start)
  %cmp9.not = icmp ule i32 %24, %start
  call void @__sanitizer_cov_trace_cmp4(i32 %conv7, i32 %start)
  %cmp11 = icmp ult i32 %conv7, %start
  %or.cond = select i1 %cmp9.not, i1 true, i1 %cmp11
  br i1 %or.cond, label %entry.cleanup349_crit_edge, label %if.end14

entry.cleanup349_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup349

if.end14:                                         ; preds = %entry
  %div104.i = lshr i32 %17, 2
  %s_addr_per_block_bits.i = getelementptr inbounds %struct.ext4_sb_info, ptr %19, i32 0, i32 27
  %25 = ptrtoint ptr %s_addr_per_block_bits.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %s_addr_per_block_bits.i, align 4
  %mul.i = shl i32 %26, 1
  %shl.i = shl nuw i32 1, %mul.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %start)
  %cmp.i = icmp ult i32 %start, 12
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %offsets to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %start, ptr %offsets, align 4
  br label %ext4_block_to_path.exit

if.else.i:                                        ; preds = %if.end14
  %sub.i = add i32 %start, -12
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %div104.i)
  %cmp2.i = icmp ult i32 %sub.i, %div104.i
  br i1 %cmp2.i, label %if.then3.i, label %if.else8.i

if.then3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %offsets to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 12, ptr %offsets, align 4
  %29 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %sub.i, ptr %4, align 4
  br label %ext4_block_to_path.exit

if.else8.i:                                       ; preds = %if.else.i
  %sub9.i = sub i32 %sub.i, %div104.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub9.i, i32 %shl.i)
  %cmp10.i = icmp ult i32 %sub9.i, %shl.i
  br i1 %cmp10.i, label %if.then11.i, label %if.else19.i

if.then11.i:                                      ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %offsets to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 13, ptr %offsets, align 4
  %shr.i = lshr i32 %sub9.i, %26
  %31 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %shr.i, ptr %4, align 4
  %sub16.i = add nsw i32 %div104.i, -1
  %and.i = and i32 %sub9.i, %sub16.i
  %32 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %and.i, ptr %5, align 4
  br label %ext4_block_to_path.exit

if.else19.i:                                      ; preds = %if.else8.i
  %sub20.i = sub i32 %sub9.i, %shl.i
  %shr22.i = lshr i32 %sub20.i, %mul.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shr22.i, i32 %div104.i)
  %cmp23.i = icmp ult i32 %shr22.i, %div104.i
  br i1 %cmp23.i, label %if.then24.i, label %if.else40.i

if.then24.i:                                      ; preds = %if.else19.i
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %offsets to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 14, ptr %offsets, align 4
  %34 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %shr22.i, ptr %4, align 4
  %shr31.i = lshr i32 %sub20.i, %26
  %sub32.i = add nsw i32 %div104.i, -1
  %and33.i = and i32 %shr31.i, %sub32.i
  %35 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %and33.i, ptr %5, align 4
  %and37.i = and i32 %sub20.i, %sub32.i
  %36 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %and37.i, ptr %6, align 4
  br label %ext4_block_to_path.exit

if.else40.i:                                      ; preds = %if.else19.i
  call void @__sanitizer_cov_trace_pc() #12
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %37 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %i_ino.i, align 8
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %1, ptr noundef nonnull @__func__.ext4_block_to_path, i32 noundef 107, ptr noundef nonnull @.str.11, i32 noundef %start, i32 noundef %38) #10
  br label %ext4_block_to_path.exit

ext4_block_to_path.exit:                          ; preds = %if.else40.i, %if.then24.i, %if.then11.i, %if.then3.i, %if.then.i
  %n.0.i = phi i32 [ 1, %if.then.i ], [ 2, %if.then3.i ], [ 3, %if.then11.i ], [ 4, %if.then24.i ], [ 0, %if.else40.i ]
  %39 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %i_sb, align 4
  %s_blocksize.i521 = getelementptr inbounds %struct.super_block, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %s_blocksize.i521 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %s_blocksize.i521, align 16
  %div104.i522 = lshr i32 %42, 2
  %s_fs_info.i.i523 = getelementptr inbounds %struct.super_block, ptr %40, i32 0, i32 33
  %43 = ptrtoint ptr %s_fs_info.i.i523 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %s_fs_info.i.i523, align 16
  %s_addr_per_block_bits.i524 = getelementptr inbounds %struct.ext4_sb_info, ptr %44, i32 0, i32 27
  %45 = ptrtoint ptr %s_addr_per_block_bits.i524 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %s_addr_per_block_bits.i524, align 4
  %mul.i525 = shl i32 %46, 1
  %shl.i526 = shl nuw i32 1, %mul.i525
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %24)
  %cmp.i527 = icmp ult i32 %24, 12
  br i1 %cmp.i527, label %if.then.i528, label %if.else.i531

if.then.i528:                                     ; preds = %ext4_block_to_path.exit
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %offsets2 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %24, ptr %offsets2, align 4
  br label %ext4_block_to_path.exit560

if.else.i531:                                     ; preds = %ext4_block_to_path.exit
  %sub.i529 = add i32 %24, -12
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i529, i32 %div104.i522)
  %cmp2.i530 = icmp ult i32 %sub.i529, %div104.i522
  br i1 %cmp2.i530, label %if.then3.i533, label %if.else8.i536

if.then3.i533:                                    ; preds = %if.else.i531
  call void @__sanitizer_cov_trace_pc() #12
  %48 = ptrtoint ptr %offsets2 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 12, ptr %offsets2, align 4
  %49 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %sub.i529, ptr %8, align 4
  br label %ext4_block_to_path.exit560

if.else8.i536:                                    ; preds = %if.else.i531
  %sub9.i534 = sub i32 %sub.i529, %div104.i522
  call void @__sanitizer_cov_trace_cmp4(i32 %sub9.i534, i32 %shl.i526)
  %cmp10.i535 = icmp ult i32 %sub9.i534, %shl.i526
  br i1 %cmp10.i535, label %if.then11.i542, label %if.else19.i546

if.then11.i542:                                   ; preds = %if.else8.i536
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %offsets2 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 13, ptr %offsets2, align 4
  %shr.i537 = lshr i32 %sub9.i534, %46
  %51 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %shr.i537, ptr %8, align 4
  %sub16.i539 = add nsw i32 %div104.i522, -1
  %and.i540 = and i32 %sub9.i534, %sub16.i539
  %52 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %and.i540, ptr %9, align 4
  br label %ext4_block_to_path.exit560

if.else19.i546:                                   ; preds = %if.else8.i536
  %sub20.i543 = sub i32 %sub9.i534, %shl.i526
  %shr22.i544 = lshr i32 %sub20.i543, %mul.i525
  call void @__sanitizer_cov_trace_cmp4(i32 %shr22.i544, i32 %div104.i522)
  %cmp23.i545 = icmp ult i32 %shr22.i544, %div104.i522
  br i1 %cmp23.i545, label %if.then24.i554, label %if.else40.i556

if.then24.i554:                                   ; preds = %if.else19.i546
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %offsets2 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 14, ptr %offsets2, align 4
  %54 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %shr22.i544, ptr %8, align 4
  %shr31.i548 = lshr i32 %sub20.i543, %46
  %sub32.i549 = add nsw i32 %div104.i522, -1
  %and33.i550 = and i32 %shr31.i548, %sub32.i549
  %55 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %and33.i550, ptr %9, align 4
  %and37.i552 = and i32 %sub20.i543, %sub32.i549
  %56 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %and37.i552, ptr %10, align 4
  br label %ext4_block_to_path.exit560

if.else40.i556:                                   ; preds = %if.else19.i546
  call void @__sanitizer_cov_trace_pc() #12
  %i_ino.i555 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %57 = ptrtoint ptr %i_ino.i555 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %i_ino.i555, align 8
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %40, ptr noundef nonnull @__func__.ext4_block_to_path, i32 noundef 107, ptr noundef nonnull @.str.11, i32 noundef %24, i32 noundef %58) #10
  br label %ext4_block_to_path.exit560

ext4_block_to_path.exit560:                       ; preds = %if.else40.i556, %if.then24.i554, %if.then11.i542, %if.then3.i533, %if.then.i528
  %n.0.i558 = phi i32 [ 1, %if.then.i528 ], [ 2, %if.then3.i533 ], [ 3, %if.then11.i542 ], [ 4, %if.then24.i554 ], [ 0, %if.else40.i556 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %n.0.i, i32 %n.0.i558)
  %cmp19 = icmp ugt i32 %n.0.i, %n.0.i558
  br i1 %cmp19, label %do.body23, label %do.end29, !prof !69

do.body23:                                        ; preds = %ext4_block_to_path.exit560
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/indirect.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1244, 0\0A.popsection", ""() #10, !srcloc !81
  unreachable

do.end29:                                         ; preds = %ext4_block_to_path.exit560
  %or.cond513 = select i1 %cmp.i, i1 %cmp.i527, i1 false
  br i1 %or.cond513, label %if.then34, label %if.else

if.then34:                                        ; preds = %do.end29
  %59 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %offsets, align 4
  %add.ptr35 = getelementptr i32, ptr %add.ptr, i32 %60
  %61 = ptrtoint ptr %offsets2 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %offsets2, align 4
  %add.ptr37 = getelementptr i32, ptr %add.ptr, i32 %62
  %cmp93.i = icmp ult ptr %add.ptr35, %add.ptr37
  br i1 %cmp93.i, label %if.then34.for.body.i_crit_edge, label %if.then34.cleanup349_crit_edge

if.then34.cleanup349_crit_edge:                   ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup349

if.then34.for.body.i_crit_edge:                   ; preds = %if.then34
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then34.for.body.i_crit_edge
  %p.097.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr35, %if.then34.for.body.i_crit_edge ]
  %block_to_free_p.096.i = phi ptr [ %block_to_free_p.1.i, %for.inc.i.for.body.i_crit_edge ], [ null, %if.then34.for.body.i_crit_edge ]
  %count.095.i = phi i32 [ %count.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then34.for.body.i_crit_edge ]
  %block_to_free.094.i = phi i64 [ %block_to_free.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then34.for.body.i_crit_edge ]
  %63 = ptrtoint ptr %p.097.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %p.097.i, align 4
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #10
  %conv.i = zext i32 %65 to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool4.not.i = icmp eq i32 %64, 0
  br i1 %tobool4.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then5.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then5.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.095.i)
  %cmp6.i = icmp eq i32 %count.095.i, 0
  br i1 %cmp6.i, label %if.then5.i.for.inc.i_crit_edge, label %if.else.i562

if.then5.i.for.inc.i_crit_edge:                   ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.else.i562:                                     ; preds = %if.then5.i
  %conv9.i = zext i32 %count.095.i to i64
  %add.i = add i64 %block_to_free.094.i, %conv9.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %conv.i)
  %cmp10.i561 = icmp eq i64 %add.i, %conv.i
  br i1 %cmp10.i561, label %if.then12.i, label %if.else13.i

if.then12.i:                                      ; preds = %if.else.i562
  call void @__sanitizer_cov_trace_pc() #12
  %inc.i = add i32 %count.095.i, 1
  br label %for.inc.i

if.else13.i:                                      ; preds = %if.else.i562
  %call14.i = tail call fastcc i32 @ext4_clear_blocks(ptr noundef %handle, ptr noundef %inode, ptr noundef null, i64 noundef %block_to_free.094.i, i32 noundef %count.095.i, ptr noundef %block_to_free_p.096.i, ptr noundef %p.097.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.else13.i.for.inc.i_crit_edge, label %if.else13.i.cleanup349_crit_edge

if.else13.i.cleanup349_crit_edge:                 ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup349

if.else13.i.for.inc.i_crit_edge:                  ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else13.i.for.inc.i_crit_edge, %if.then12.i, %if.then5.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %block_to_free.1.i = phi i64 [ %block_to_free.094.i, %if.then12.i ], [ %block_to_free.094.i, %for.body.i.for.inc.i_crit_edge ], [ %conv.i, %if.then5.i.for.inc.i_crit_edge ], [ %conv.i, %if.else13.i.for.inc.i_crit_edge ]
  %count.1.i = phi i32 [ %inc.i, %if.then12.i ], [ %count.095.i, %for.body.i.for.inc.i_crit_edge ], [ 1, %if.then5.i.for.inc.i_crit_edge ], [ 1, %if.else13.i.for.inc.i_crit_edge ]
  %block_to_free_p.1.i = phi ptr [ %block_to_free_p.096.i, %if.then12.i ], [ %block_to_free_p.096.i, %for.body.i.for.inc.i_crit_edge ], [ %p.097.i, %if.then5.i.for.inc.i_crit_edge ], [ %p.097.i, %if.else13.i.for.inc.i_crit_edge ]
  %incdec.ptr.i = getelementptr i32, ptr %p.097.i, i32 1
  %cmp.i563 = icmp ult ptr %incdec.ptr.i, %add.ptr37
  br i1 %cmp.i563, label %for.inc.i.for.body.i_crit_edge, label %land.lhs.true.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

land.lhs.true.i:                                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.1.i)
  %cmp22.not.i = icmp eq i32 %count.1.i, 0
  br i1 %cmp22.not.i, label %land.lhs.true.i.cleanup349_crit_edge, label %if.then24.i564

land.lhs.true.i.cleanup349_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup349

if.then24.i564:                                   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %call25.i = tail call fastcc i32 @ext4_clear_blocks(ptr noundef %handle, ptr noundef %inode, ptr noundef null, i64 noundef %block_to_free.1.i, i32 noundef %count.1.i, ptr noundef %block_to_free_p.1.i, ptr noundef %incdec.ptr.i) #10
  br label %cleanup349

if.else:                                          ; preds = %do.end29
  call void @__sanitizer_cov_trace_cmp4(i32 %n.0.i558, i32 %n.0.i)
  %cmp38 = icmp ugt i32 %n.0.i558, %n.0.i
  br i1 %cmp38, label %if.then40, label %if.end126

if.then40:                                        ; preds = %if.else
  br i1 %cmp.i, label %if.then43, label %if.end47

if.then43:                                        ; preds = %if.then40
  %66 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %offsets, align 4
  %add.ptr45 = getelementptr i32, ptr %add.ptr, i32 %67
  %add.ptr46 = getelementptr i8, ptr %inode, i32 -416
  %cmp93.i565 = icmp ult ptr %add.ptr45, %add.ptr46
  br i1 %cmp93.i565, label %if.then43.for.body.i572_crit_edge, label %if.then43.end_range_crit_edge

if.then43.end_range_crit_edge:                    ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #12
  br label %end_range

if.then43.for.body.i572_crit_edge:                ; preds = %if.then43
  br label %for.body.i572

for.body.i572:                                    ; preds = %for.inc.i589.for.body.i572_crit_edge, %if.then43.for.body.i572_crit_edge
  %p.097.i566 = phi ptr [ %incdec.ptr.i587, %for.inc.i589.for.body.i572_crit_edge ], [ %add.ptr45, %if.then43.for.body.i572_crit_edge ]
  %block_to_free_p.096.i567 = phi ptr [ %block_to_free_p.1.i586, %for.inc.i589.for.body.i572_crit_edge ], [ null, %if.then43.for.body.i572_crit_edge ]
  %count.095.i568 = phi i32 [ %count.1.i585, %for.inc.i589.for.body.i572_crit_edge ], [ 0, %if.then43.for.body.i572_crit_edge ]
  %block_to_free.094.i569 = phi i64 [ %block_to_free.1.i584, %for.inc.i589.for.body.i572_crit_edge ], [ 0, %if.then43.for.body.i572_crit_edge ]
  %68 = ptrtoint ptr %p.097.i566 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %p.097.i566, align 4
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #10
  %conv.i570 = zext i32 %70 to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool4.not.i571 = icmp eq i32 %69, 0
  br i1 %tobool4.not.i571, label %for.body.i572.for.inc.i589_crit_edge, label %if.then5.i574

for.body.i572.for.inc.i589_crit_edge:             ; preds = %for.body.i572
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i589

if.then5.i574:                                    ; preds = %for.body.i572
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.095.i568)
  %cmp6.i573 = icmp eq i32 %count.095.i568, 0
  br i1 %cmp6.i573, label %if.then5.i574.for.inc.i589_crit_edge, label %if.else.i578

if.then5.i574.for.inc.i589_crit_edge:             ; preds = %if.then5.i574
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i589

if.else.i578:                                     ; preds = %if.then5.i574
  %conv9.i575 = zext i32 %count.095.i568 to i64
  %add.i576 = add i64 %block_to_free.094.i569, %conv9.i575
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i576, i64 %conv.i570)
  %cmp10.i577 = icmp eq i64 %add.i576, %conv.i570
  br i1 %cmp10.i577, label %if.then12.i580, label %if.else13.i583

if.then12.i580:                                   ; preds = %if.else.i578
  call void @__sanitizer_cov_trace_pc() #12
  %inc.i579 = add i32 %count.095.i568, 1
  br label %for.inc.i589

if.else13.i583:                                   ; preds = %if.else.i578
  %call14.i581 = tail call fastcc i32 @ext4_clear_blocks(ptr noundef %handle, ptr noundef %inode, ptr noundef null, i64 noundef %block_to_free.094.i569, i32 noundef %count.095.i568, ptr noundef %block_to_free_p.096.i567, ptr noundef %p.097.i566) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i581)
  %tobool15.not.i582 = icmp eq i32 %call14.i581, 0
  br i1 %tobool15.not.i582, label %if.else13.i583.for.inc.i589_crit_edge, label %if.else13.i583.end_range_crit_edge

if.else13.i583.end_range_crit_edge:               ; preds = %if.else13.i583
  call void @__sanitizer_cov_trace_pc() #12
  br label %end_range

if.else13.i583.for.inc.i589_crit_edge:            ; preds = %if.else13.i583
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i589

for.inc.i589:                                     ; preds = %if.else13.i583.for.inc.i589_crit_edge, %if.then12.i580, %if.then5.i574.for.inc.i589_crit_edge, %for.body.i572.for.inc.i589_crit_edge
  %block_to_free.1.i584 = phi i64 [ %block_to_free.094.i569, %if.then12.i580 ], [ %block_to_free.094.i569, %for.body.i572.for.inc.i589_crit_edge ], [ %conv.i570, %if.then5.i574.for.inc.i589_crit_edge ], [ %conv.i570, %if.else13.i583.for.inc.i589_crit_edge ]
  %count.1.i585 = phi i32 [ %inc.i579, %if.then12.i580 ], [ %count.095.i568, %for.body.i572.for.inc.i589_crit_edge ], [ 1, %if.then5.i574.for.inc.i589_crit_edge ], [ 1, %if.else13.i583.for.inc.i589_crit_edge ]
  %block_to_free_p.1.i586 = phi ptr [ %block_to_free_p.096.i567, %if.then12.i580 ], [ %block_to_free_p.096.i567, %for.body.i572.for.inc.i589_crit_edge ], [ %p.097.i566, %if.then5.i574.for.inc.i589_crit_edge ], [ %p.097.i566, %if.else13.i583.for.inc.i589_crit_edge ]
  %incdec.ptr.i587 = getelementptr i32, ptr %p.097.i566, i32 1
  %cmp.i588 = icmp ult ptr %incdec.ptr.i587, %add.ptr46
  br i1 %cmp.i588, label %for.inc.i589.for.body.i572_crit_edge, label %land.lhs.true.i591

for.inc.i589.for.body.i572_crit_edge:             ; preds = %for.inc.i589
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i572

land.lhs.true.i591:                               ; preds = %for.inc.i589
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.1.i585)
  %cmp22.not.i590 = icmp eq i32 %count.1.i585, 0
  br i1 %cmp22.not.i590, label %land.lhs.true.i591.end_range_crit_edge, label %if.then24.i593

land.lhs.true.i591.end_range_crit_edge:           ; preds = %land.lhs.true.i591
  call void @__sanitizer_cov_trace_pc() #12
  br label %end_range

if.then24.i593:                                   ; preds = %land.lhs.true.i591
  call void @__sanitizer_cov_trace_pc() #12
  %call25.i592 = tail call fastcc i32 @ext4_clear_blocks(ptr noundef %handle, ptr noundef %inode, ptr noundef null, i64 noundef %block_to_free.1.i584, i32 noundef %count.1.i585, ptr noundef %block_to_free_p.1.i586, ptr noundef %incdec.ptr.i587) #10
  br label %end_range

if.end47:                                         ; preds = %if.then40
  %call50 = call fastcc ptr @ext4_find_shared(ptr noundef %inode, i32 noundef %n.0.i, ptr noundef nonnull %offsets, ptr noundef nonnull %chain, ptr noundef nonnull %nr)
  %71 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool51.not = icmp eq i32 %72, 0
  br i1 %tobool51.not, label %if.end47.if.end77_crit_edge, label %if.then52

if.end47.if.end77_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end77

if.then52:                                        ; preds = %if.end47
  %cmp54 = icmp eq ptr %call50, %chain
  br i1 %cmp54, label %if.then56, label %do.end65

if.then56:                                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr57 = getelementptr inbounds i32, ptr %nr, i32 1
  %add.ptr59 = getelementptr %struct.Indirect, ptr %chain, i32 %n.0.i
  %add.ptr60 = getelementptr %struct.Indirect, ptr %add.ptr59, i32 -1
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr60 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %chain to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 12
  call fastcc void @ext4_free_branches(ptr noundef %handle, ptr noundef %inode, ptr noundef null, ptr noundef nonnull %nr, ptr noundef %add.ptr57, i32 noundef %sub.ptr.div)
  %73 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %chain, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %74, align 4
  br label %if.end77

do.end65:                                         ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  %bh = getelementptr inbounds %struct.Indirect, ptr %call50, i32 0, i32 2
  %76 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %bh, align 4
  %78 = ptrtoint ptr %call50 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %call50, align 4
  %add.ptr68 = getelementptr i32, ptr %79, i32 1
  %add.ptr70 = getelementptr %struct.Indirect, ptr %chain, i32 %n.0.i
  %add.ptr71 = getelementptr %struct.Indirect, ptr %add.ptr70, i32 -1
  %sub.ptr.lhs.cast72 = ptrtoint ptr %add.ptr71 to i32
  %sub.ptr.rhs.cast73 = ptrtoint ptr %call50 to i32
  %sub.ptr.sub74 = sub i32 %sub.ptr.lhs.cast72, %sub.ptr.rhs.cast73
  %sub.ptr.div75 = sdiv exact i32 %sub.ptr.sub74, 12
  call fastcc void @ext4_free_branches(ptr noundef %handle, ptr noundef %inode, ptr noundef %77, ptr noundef %79, ptr noundef %add.ptr68, i32 noundef %sub.ptr.div75)
  br label %if.end77

if.end77:                                         ; preds = %do.end65, %if.then56, %if.end47.if.end77_crit_edge
  %cmp79619 = icmp ugt ptr %call50, %chain
  br i1 %cmp79619, label %while.body.lr.ph, label %if.end77.end_range_crit_edge

if.end77.end_range_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  br label %end_range

while.body.lr.ph:                                 ; preds = %if.end77
  %add.ptr87 = getelementptr %struct.Indirect, ptr %chain, i32 %n.0.i
  %add.ptr88 = getelementptr %struct.Indirect, ptr %add.ptr87, i32 -1
  %sub.ptr.lhs.cast89 = ptrtoint ptr %add.ptr88 to i32
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %partial.0620 = phi ptr [ %call50, %while.body.lr.ph ], [ %incdec.ptr, %while.body.while.body_crit_edge ]
  %bh81 = getelementptr inbounds %struct.Indirect, ptr %partial.0620, i32 0, i32 2
  %80 = ptrtoint ptr %bh81 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %bh81, align 4
  %82 = ptrtoint ptr %partial.0620 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %partial.0620, align 4
  %add.ptr83 = getelementptr i32, ptr %83, i32 1
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %81, i32 0, i32 5
  %84 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %b_data, align 4
  %add.ptr85 = getelementptr i32, ptr %85, i32 %div512
  %sub.ptr.rhs.cast90 = ptrtoint ptr %partial.0620 to i32
  %sub.ptr.sub91 = sub i32 %sub.ptr.lhs.cast89, %sub.ptr.rhs.cast90
  %sub.ptr.div92 = sdiv exact i32 %sub.ptr.sub91, 12
  call fastcc void @ext4_free_branches(ptr noundef %handle, ptr noundef %inode, ptr noundef %81, ptr noundef %add.ptr83, ptr noundef %add.ptr85, i32 noundef %sub.ptr.div92)
  %incdec.ptr = getelementptr %struct.Indirect, ptr %partial.0620, i32 -1
  %cmp79 = icmp ugt ptr %incdec.ptr, %chain
  br i1 %cmp79, label %while.body.while.body_crit_edge, label %while.body.end_range_crit_edge

while.body.end_range_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %end_range

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

end_range:                                        ; preds = %while.body.end_range_crit_edge, %if.end77.end_range_crit_edge, %if.then24.i593, %land.lhs.true.i591.end_range_crit_edge, %if.else13.i583.end_range_crit_edge, %if.then43.end_range_crit_edge
  %p.0 = phi ptr [ null, %if.then43.end_range_crit_edge ], [ null, %land.lhs.true.i591.end_range_crit_edge ], [ null, %if.then24.i593 ], [ %call50, %if.end77.end_range_crit_edge ], [ null, %if.else13.i583.end_range_crit_edge ], [ %call50, %while.body.end_range_crit_edge ]
  %call95 = call fastcc ptr @ext4_find_shared(ptr noundef %inode, i32 noundef %n.0.i558, ptr noundef nonnull %offsets2, ptr noundef nonnull %chain2, ptr noundef nonnull %nr2)
  %86 = ptrtoint ptr %nr2 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %nr2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool96.not = icmp eq i32 %87, 0
  br i1 %tobool96.not, label %if.else103, label %if.then97

if.then97:                                        ; preds = %end_range
  %cmp109621 = icmp ugt ptr %call95, %chain2
  br i1 %cmp109621, label %if.then97.while.body111.lr.ph_crit_edge, label %if.then97.do_indirects_crit_edge

if.then97.do_indirects_crit_edge:                 ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_indirects

if.then97.while.body111.lr.ph_crit_edge:          ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body111.lr.ph

if.else103:                                       ; preds = %end_range
  %88 = ptrtoint ptr %call95 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %call95, align 4
  %incdec.ptr105 = getelementptr i32, ptr %89, i32 1
  store ptr %incdec.ptr105, ptr %call95, align 4
  %cmp109621.old = icmp ugt ptr %call95, %chain2
  br i1 %cmp109621.old, label %if.else103.while.body111.lr.ph_crit_edge, label %if.else103.do_indirects_crit_edge

if.else103.do_indirects_crit_edge:                ; preds = %if.else103
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_indirects

if.else103.while.body111.lr.ph_crit_edge:         ; preds = %if.else103
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body111.lr.ph

while.body111.lr.ph:                              ; preds = %if.else103.while.body111.lr.ph_crit_edge, %if.then97.while.body111.lr.ph_crit_edge
  %add.ptr117 = getelementptr %struct.Indirect, ptr %chain2, i32 %n.0.i558
  %add.ptr118 = getelementptr %struct.Indirect, ptr %add.ptr117, i32 -1
  %sub.ptr.lhs.cast119 = ptrtoint ptr %add.ptr118 to i32
  br label %while.body111

while.body111:                                    ; preds = %while.body111.while.body111_crit_edge, %while.body111.lr.ph
  %partial2.0622 = phi ptr [ %call95, %while.body111.lr.ph ], [ %incdec.ptr123, %while.body111.while.body111_crit_edge ]
  %bh112 = getelementptr inbounds %struct.Indirect, ptr %partial2.0622, i32 0, i32 2
  %90 = ptrtoint ptr %bh112 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %bh112, align 4
  %b_data114 = getelementptr inbounds %struct.buffer_head, ptr %91, i32 0, i32 5
  %92 = ptrtoint ptr %b_data114 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %b_data114, align 4
  %94 = ptrtoint ptr %partial2.0622 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %partial2.0622, align 4
  %sub.ptr.rhs.cast120 = ptrtoint ptr %partial2.0622 to i32
  %sub.ptr.sub121 = sub i32 %sub.ptr.lhs.cast119, %sub.ptr.rhs.cast120
  %sub.ptr.div122 = sdiv exact i32 %sub.ptr.sub121, 12
  call fastcc void @ext4_free_branches(ptr noundef %handle, ptr noundef %inode, ptr noundef %91, ptr noundef %93, ptr noundef %95, i32 noundef %sub.ptr.div122)
  %incdec.ptr123 = getelementptr %struct.Indirect, ptr %partial2.0622, i32 -1
  %cmp109 = icmp ugt ptr %incdec.ptr123, %chain2
  br i1 %cmp109, label %while.body111.while.body111_crit_edge, label %while.body111.do_indirects_crit_edge

while.body111.do_indirects_crit_edge:             ; preds = %while.body111
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_indirects

while.body111.while.body111_crit_edge:            ; preds = %while.body111
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body111

if.end126:                                        ; preds = %if.else
  %call129 = call fastcc ptr @ext4_find_shared(ptr noundef %inode, i32 noundef %n.0.i, ptr noundef nonnull %offsets, ptr noundef nonnull %chain, ptr noundef nonnull %nr)
  %call132 = call fastcc ptr @ext4_find_shared(ptr noundef %inode, i32 noundef %n.0.i558, ptr noundef nonnull %offsets2, ptr noundef nonnull %chain2, ptr noundef nonnull %nr2)
  %96 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool133.not = icmp eq i32 %97, 0
  br i1 %tobool133.not, label %if.end126.if.end188_crit_edge, label %if.then134

if.end126.if.end188_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end188

if.then134:                                       ; preds = %if.end126
  %sub.ptr.lhs.cast136 = ptrtoint ptr %call129 to i32
  %sub.ptr.rhs.cast137 = ptrtoint ptr %chain to i32
  %sub.ptr.sub138 = sub i32 %sub.ptr.lhs.cast136, %sub.ptr.rhs.cast137
  %sub.ptr.div139 = sdiv exact i32 %sub.ptr.sub138, 12
  %sub.ptr.lhs.cast141 = ptrtoint ptr %call132 to i32
  %sub.ptr.rhs.cast142 = ptrtoint ptr %chain2 to i32
  %sub.ptr.sub143 = sub i32 %sub.ptr.lhs.cast141, %sub.ptr.rhs.cast142
  %sub.ptr.div144 = sdiv exact i32 %sub.ptr.sub143, 12
  %98 = call i32 @llvm.smin.i32(i32 %sub.ptr.div139, i32 %sub.ptr.div144)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp148.not608 = icmp slt i32 %98, 0
  br i1 %cmp148.not608, label %if.then134.if.end188_crit_edge, label %if.then134.for.body_crit_edge

if.then134.for.body_crit_edge:                    ; preds = %if.then134
  br label %for.body

if.then134.if.end188_crit_edge:                   ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end188

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0609, 1
  %exitcond = icmp eq i32 %i.0609, %98
  br i1 %exitcond, label %for.cond.if.end188_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.if.end188_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end188

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.then134.for.body_crit_edge
  %i.0609 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.then134.for.body_crit_edge ]
  %arrayidx150 = getelementptr [4 x i32], ptr %offsets, i32 0, i32 %i.0609
  %99 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx150, align 4
  %arrayidx151 = getelementptr [4 x i32], ptr %offsets2, i32 0, i32 %i.0609
  %101 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx151, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %100, i32 %102)
  %cmp152.not = icmp eq i32 %100, %102
  br i1 %cmp152.not, label %for.cond, label %if.then157.critedge

if.then157.critedge:                              ; preds = %for.body
  %cmp159 = icmp eq ptr %call129, %chain
  br i1 %cmp159, label %if.then161, label %do.end174

if.then161:                                       ; preds = %if.then157.critedge
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr162 = getelementptr inbounds i32, ptr %nr, i32 1
  %add.ptr164 = getelementptr %struct.Indirect, ptr %chain, i32 %n.0.i
  %add.ptr165 = getelementptr %struct.Indirect, ptr %add.ptr164, i32 -1
  %sub.ptr.lhs.cast166 = ptrtoint ptr %add.ptr165 to i32
  %sub.ptr.sub168 = sub i32 %sub.ptr.lhs.cast166, %sub.ptr.lhs.cast136
  %sub.ptr.div169 = sdiv exact i32 %sub.ptr.sub168, 12
  call fastcc void @ext4_free_branches(ptr noundef %handle, ptr noundef %inode, ptr noundef null, ptr noundef nonnull %nr, ptr noundef %add.ptr162, i32 noundef %sub.ptr.div169)
  %103 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %chain, align 4
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 0, ptr %104, align 4
  br label %if.end188

do.end174:                                        ; preds = %if.then157.critedge
  call void @__sanitizer_cov_trace_pc() #12
  %bh175 = getelementptr inbounds %struct.Indirect, ptr %call129, i32 0, i32 2
  %106 = ptrtoint ptr %bh175 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %bh175, align 4
  %108 = ptrtoint ptr %call129 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %call129, align 4
  %add.ptr178 = getelementptr i32, ptr %109, i32 1
  %add.ptr180 = getelementptr %struct.Indirect, ptr %chain, i32 %n.0.i
  %add.ptr181 = getelementptr %struct.Indirect, ptr %add.ptr180, i32 -1
  %sub.ptr.lhs.cast182 = ptrtoint ptr %add.ptr181 to i32
  %sub.ptr.sub184 = sub i32 %sub.ptr.lhs.cast182, %sub.ptr.lhs.cast136
  %sub.ptr.div185 = sdiv exact i32 %sub.ptr.sub184, 12
  call fastcc void @ext4_free_branches(ptr noundef %handle, ptr noundef %inode, ptr noundef %107, ptr noundef %109, ptr noundef %add.ptr178, i32 noundef %sub.ptr.div185)
  br label %if.end188

if.end188:                                        ; preds = %do.end174, %if.then161, %for.cond.if.end188_crit_edge, %if.then134.if.end188_crit_edge, %if.end126.if.end188_crit_edge
  %110 = ptrtoint ptr %nr2 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %nr2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool189.not = icmp eq i32 %111, 0
  br i1 %tobool189.not, label %if.then190, label %if.end188.if.end193_crit_edge

if.end188.if.end193_crit_edge:                    ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end193

if.then190:                                       ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #12
  %112 = ptrtoint ptr %call132 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %call132, align 4
  %incdec.ptr192 = getelementptr i32, ptr %113, i32 1
  store ptr %incdec.ptr192, ptr %call132, align 4
  br label %if.end193

if.end193:                                        ; preds = %if.then190, %if.end188.if.end193_crit_edge
  %cmp196610 = icmp ugt ptr %call129, %chain
  %cmp199611 = icmp ugt ptr %call132, %chain2
  %or.cond514612 = select i1 %cmp196610, i1 true, i1 %cmp199611
  br i1 %or.cond514612, label %while.body201.lr.ph, label %if.end193.cleanup286_crit_edge

if.end193.cleanup286_crit_edge:                   ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup286

while.body201.lr.ph:                              ; preds = %if.end193
  %add.ptr203 = getelementptr %struct.Indirect, ptr %chain, i32 %n.0.i
  %add.ptr204 = getelementptr %struct.Indirect, ptr %add.ptr203, i32 -1
  %sub.ptr.lhs.cast205 = ptrtoint ptr %add.ptr204 to i32
  %add.ptr210 = getelementptr %struct.Indirect, ptr %chain2, i32 %n.0.i558
  %add.ptr211 = getelementptr %struct.Indirect, ptr %add.ptr210, i32 -1
  %sub.ptr.lhs.cast212 = ptrtoint ptr %add.ptr211 to i32
  br label %while.body201

while.body201:                                    ; preds = %cleanup.while.body201_crit_edge, %while.body201.lr.ph
  %cmp199618 = phi i1 [ %cmp199611, %while.body201.lr.ph ], [ %cmp199, %cleanup.while.body201_crit_edge ]
  %cmp196617 = phi i1 [ %cmp196610, %while.body201.lr.ph ], [ %cmp196, %cleanup.while.body201_crit_edge ]
  %partial2.1615 = phi ptr [ %call132, %while.body201.lr.ph ], [ %partial2.3, %cleanup.while.body201_crit_edge ]
  %partial.1613 = phi ptr [ %call129, %while.body201.lr.ph ], [ %partial.2, %cleanup.while.body201_crit_edge ]
  %sub.ptr.rhs.cast206 = ptrtoint ptr %partial.1613 to i32
  %sub.ptr.sub207 = sub i32 %sub.ptr.lhs.cast205, %sub.ptr.rhs.cast206
  %sub.ptr.div208 = sdiv exact i32 %sub.ptr.sub207, 12
  %sub.ptr.rhs.cast213 = ptrtoint ptr %partial2.1615 to i32
  %sub.ptr.sub214 = sub i32 %sub.ptr.lhs.cast212, %sub.ptr.rhs.cast213
  %sub.ptr.div215 = sdiv exact i32 %sub.ptr.sub214, 12
  %or.cond515 = select i1 %cmp196617, i1 %cmp199618, i1 false
  br i1 %or.cond515, label %land.lhs.true223, label %while.body201.if.end241_crit_edge

while.body201.if.end241_crit_edge:                ; preds = %while.body201
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end241

land.lhs.true223:                                 ; preds = %while.body201
  %bh224 = getelementptr inbounds %struct.Indirect, ptr %partial.1613, i32 0, i32 2
  %114 = ptrtoint ptr %bh224 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %bh224, align 4
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %115, i32 0, i32 3
  %116 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %b_blocknr, align 8
  %bh225 = getelementptr inbounds %struct.Indirect, ptr %partial2.1615, i32 0, i32 2
  %118 = ptrtoint ptr %bh225 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %bh225, align 4
  %b_blocknr226 = getelementptr inbounds %struct.buffer_head, ptr %119, i32 0, i32 3
  %120 = ptrtoint ptr %b_blocknr226 to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %b_blocknr226, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %117, i64 %121)
  %cmp227 = icmp eq i64 %117, %121
  br i1 %cmp227, label %cleanup.thread, label %land.lhs.true223.if.end241_crit_edge

land.lhs.true223.if.end241_crit_edge:             ; preds = %land.lhs.true223
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end241

cleanup.thread:                                   ; preds = %land.lhs.true223
  call void @__sanitizer_cov_trace_pc() #12
  %122 = ptrtoint ptr %partial.1613 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %partial.1613, align 4
  %add.ptr232 = getelementptr i32, ptr %123, i32 1
  %124 = ptrtoint ptr %partial2.1615 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %partial2.1615, align 4
  call fastcc void @ext4_free_branches(ptr noundef %handle, ptr noundef %inode, ptr noundef %115, ptr noundef %add.ptr232, ptr noundef %125, i32 noundef %sub.ptr.div208)
  br label %cleanup286

if.end241:                                        ; preds = %land.lhs.true223.if.end241_crit_edge, %while.body201.if.end241_crit_edge
  %cmp196.not = xor i1 %cmp196617, true
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.div208, i32 %sub.ptr.div215)
  %cmp246.not = icmp sgt i32 %sub.ptr.div208, %sub.ptr.div215
  %or.cond516 = select i1 %cmp196.not, i1 true, i1 %cmp246.not
  br i1 %or.cond516, label %if.end241.if.end263_crit_edge, label %if.then248

if.end241.if.end263_crit_edge:                    ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end263

if.then248:                                       ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #12
  %bh249 = getelementptr inbounds %struct.Indirect, ptr %partial.1613, i32 0, i32 2
  %126 = ptrtoint ptr %bh249 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %bh249, align 4
  %128 = ptrtoint ptr %partial.1613 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %partial.1613, align 4
  %add.ptr251 = getelementptr i32, ptr %129, i32 1
  %b_data253 = getelementptr inbounds %struct.buffer_head, ptr %127, i32 0, i32 5
  %130 = ptrtoint ptr %b_data253 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %b_data253, align 4
  %add.ptr254 = getelementptr i32, ptr %131, i32 %div512
  call fastcc void @ext4_free_branches(ptr noundef %handle, ptr noundef %inode, ptr noundef %127, ptr noundef %add.ptr251, ptr noundef %add.ptr254, i32 noundef %sub.ptr.div208)
  %incdec.ptr262 = getelementptr %struct.Indirect, ptr %partial.1613, i32 -1
  br label %if.end263

if.end263:                                        ; preds = %if.then248, %if.end241.if.end263_crit_edge
  %partial.2 = phi ptr [ %incdec.ptr262, %if.then248 ], [ %partial.1613, %if.end241.if.end263_crit_edge ]
  %cmp265 = icmp ule ptr %partial2.1615, %chain2
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.div215, i32 %sub.ptr.div208)
  %cmp268.not = icmp sgt i32 %sub.ptr.div215, %sub.ptr.div208
  %or.cond517 = select i1 %cmp265, i1 true, i1 %cmp268.not
  br i1 %or.cond517, label %if.end263.cleanup_crit_edge, label %if.then270

if.end263.cleanup_crit_edge:                      ; preds = %if.end263
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then270:                                       ; preds = %if.end263
  call void @__sanitizer_cov_trace_pc() #12
  %bh271 = getelementptr inbounds %struct.Indirect, ptr %partial2.1615, i32 0, i32 2
  %132 = ptrtoint ptr %bh271 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %bh271, align 4
  %b_data273 = getelementptr inbounds %struct.buffer_head, ptr %133, i32 0, i32 5
  %134 = ptrtoint ptr %b_data273 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %b_data273, align 4
  %136 = ptrtoint ptr %partial2.1615 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %partial2.1615, align 4
  call fastcc void @ext4_free_branches(ptr noundef %handle, ptr noundef %inode, ptr noundef %133, ptr noundef %135, ptr noundef %137, i32 noundef %sub.ptr.div215)
  %incdec.ptr282 = getelementptr %struct.Indirect, ptr %partial2.1615, i32 -1
  br label %cleanup

cleanup:                                          ; preds = %if.then270, %if.end263.cleanup_crit_edge
  %partial2.3 = phi ptr [ %incdec.ptr282, %if.then270 ], [ %partial2.1615, %if.end263.cleanup_crit_edge ]
  %cmp196 = icmp ugt ptr %partial.2, %chain
  %cmp199 = icmp ugt ptr %partial2.3, %chain2
  %or.cond514 = select i1 %cmp196, i1 true, i1 %cmp199
  br i1 %or.cond514, label %cleanup.while.body201_crit_edge, label %cleanup.cleanup286_crit_edge

cleanup.cleanup286_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup286

cleanup.while.body201_crit_edge:                  ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body201

cleanup286:                                       ; preds = %if.then344, %if.end341.cleanup286_crit_edge, %sw.bb336.cleanup286_crit_edge, %sw.bb.cleanup286_crit_edge, %sw.default.cleanup286_crit_edge, %do_indirects.cleanup286_crit_edge, %cleanup.cleanup286_crit_edge, %cleanup.thread, %if.end193.cleanup286_crit_edge
  %p.1 = phi ptr [ %p.0, %sw.default.cleanup286_crit_edge ], [ %p.0, %sw.bb.cleanup286_crit_edge ], [ %p.0, %sw.bb336.cleanup286_crit_edge ], [ %p.0, %if.then344 ], [ %p.0, %if.end341.cleanup286_crit_edge ], [ %p.0, %do_indirects.cleanup286_crit_edge ], [ %call129, %cleanup.thread ], [ %call129, %if.end193.cleanup286_crit_edge ], [ %call129, %cleanup.cleanup286_crit_edge ]
  %p2.0 = phi ptr [ %call95, %sw.default.cleanup286_crit_edge ], [ %call95, %sw.bb.cleanup286_crit_edge ], [ %call95, %sw.bb336.cleanup286_crit_edge ], [ %call95, %if.then344 ], [ %call95, %if.end341.cleanup286_crit_edge ], [ %call95, %do_indirects.cleanup286_crit_edge ], [ %call132, %cleanup.thread ], [ %call132, %if.end193.cleanup286_crit_edge ], [ %call132, %cleanup.cleanup286_crit_edge ]
  %cmp290623 = icmp ugt ptr %p.1, %chain
  br i1 %cmp290623, label %cleanup286.do.end295_crit_edge, label %cleanup286.while.cond299.preheader_crit_edge

cleanup286.while.cond299.preheader_crit_edge:     ; preds = %cleanup286
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond299.preheader

cleanup286.do.end295_crit_edge:                   ; preds = %cleanup286
  br label %do.end295

while.cond299.preheader:                          ; preds = %brelse.exit.while.cond299.preheader_crit_edge, %cleanup286.while.cond299.preheader_crit_edge
  %cmp303625 = icmp ugt ptr %p2.0, %chain2
  br i1 %cmp303625, label %while.cond299.preheader.do.end309_crit_edge, label %while.cond299.preheader.cleanup349_crit_edge

while.cond299.preheader.cleanup349_crit_edge:     ; preds = %while.cond299.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup349

while.cond299.preheader.do.end309_crit_edge:      ; preds = %while.cond299.preheader
  br label %do.end309

do.end295:                                        ; preds = %brelse.exit.do.end295_crit_edge, %cleanup286.do.end295_crit_edge
  %p.2624 = phi ptr [ %incdec.ptr297, %brelse.exit.do.end295_crit_edge ], [ %p.1, %cleanup286.do.end295_crit_edge ]
  %bh296 = getelementptr inbounds %struct.Indirect, ptr %p.2624, i32 0, i32 2
  %138 = ptrtoint ptr %bh296 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %bh296, align 4
  %tobool.not.i = icmp eq ptr %139, null
  br i1 %tobool.not.i, label %do.end295.brelse.exit_crit_edge, label %if.then.i597

do.end295.brelse.exit_crit_edge:                  ; preds = %do.end295
  call void @__sanitizer_cov_trace_pc() #12
  br label %brelse.exit

if.then.i597:                                     ; preds = %do.end295
  call void @__sanitizer_cov_trace_pc() #12
  call void @__brelse(ptr noundef nonnull %139) #10
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i597, %do.end295.brelse.exit_crit_edge
  %incdec.ptr297 = getelementptr %struct.Indirect, ptr %p.2624, i32 -1
  %cmp290 = icmp ugt ptr %incdec.ptr297, %chain
  br i1 %cmp290, label %brelse.exit.do.end295_crit_edge, label %brelse.exit.while.cond299.preheader_crit_edge

brelse.exit.while.cond299.preheader_crit_edge:    ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond299.preheader

brelse.exit.do.end295_crit_edge:                  ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end295

do.end309:                                        ; preds = %brelse.exit600.do.end309_crit_edge, %while.cond299.preheader.do.end309_crit_edge
  %p2.1626 = phi ptr [ %incdec.ptr311, %brelse.exit600.do.end309_crit_edge ], [ %p2.0, %while.cond299.preheader.do.end309_crit_edge ]
  %bh310 = getelementptr inbounds %struct.Indirect, ptr %p2.1626, i32 0, i32 2
  %140 = ptrtoint ptr %bh310 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %bh310, align 4
  %tobool.not.i598 = icmp eq ptr %141, null
  br i1 %tobool.not.i598, label %do.end309.brelse.exit600_crit_edge, label %if.then.i599

do.end309.brelse.exit600_crit_edge:               ; preds = %do.end309
  call void @__sanitizer_cov_trace_pc() #12
  br label %brelse.exit600

if.then.i599:                                     ; preds = %do.end309
  call void @__sanitizer_cov_trace_pc() #12
  call void @__brelse(ptr noundef nonnull %141) #10
  br label %brelse.exit600

brelse.exit600:                                   ; preds = %if.then.i599, %do.end309.brelse.exit600_crit_edge
  %incdec.ptr311 = getelementptr %struct.Indirect, ptr %p2.1626, i32 -1
  %cmp303 = icmp ugt ptr %incdec.ptr311, %chain2
  br i1 %cmp303, label %brelse.exit600.do.end309_crit_edge, label %brelse.exit600.cleanup349_crit_edge

brelse.exit600.cleanup349_crit_edge:              ; preds = %brelse.exit600
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup349

brelse.exit600.do.end309_crit_edge:               ; preds = %brelse.exit600
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end309

do_indirects:                                     ; preds = %while.body111.do_indirects_crit_edge, %if.else103.do_indirects_crit_edge, %if.then97.do_indirects_crit_edge
  %142 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %offsets, align 4
  %144 = zext i32 %143 to i64
  call void @__sanitizer_cov_trace_switch(i64 %144, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %143, label %sw.default [
    i32 12, label %do_indirects.sw.bb_crit_edge
    i32 13, label %do_indirects.sw.bb336_crit_edge
    i32 14, label %do_indirects.cleanup286_crit_edge
  ]

do_indirects.cleanup286_crit_edge:                ; preds = %do_indirects
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup286

do_indirects.sw.bb336_crit_edge:                  ; preds = %do_indirects
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb336

do_indirects.sw.bb_crit_edge:                     ; preds = %do_indirects
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

sw.default:                                       ; preds = %do_indirects
  %inc314 = add nuw nsw i32 %n.0.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc314, i32 %n.0.i558)
  %cmp315.not = icmp ult i32 %inc314, %n.0.i558
  br i1 %cmp315.not, label %if.end318, label %sw.default.cleanup286_crit_edge

sw.default.cleanup286_crit_edge:                  ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup286

if.end318:                                        ; preds = %sw.default
  %arrayidx319 = getelementptr i8, ptr %inode, i32 -416
  %145 = ptrtoint ptr %arrayidx319 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %arrayidx319, align 4
  %147 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %146, ptr %nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %tobool320.not = icmp eq i32 %146, 0
  br i1 %tobool320.not, label %if.end318.sw.bb_crit_edge, label %if.then321

if.end318.sw.bb_crit_edge:                        ; preds = %if.end318
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.then321:                                       ; preds = %if.end318
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr322 = getelementptr inbounds i32, ptr %nr, i32 1
  call fastcc void @ext4_free_branches(ptr noundef %handle, ptr noundef %inode, ptr noundef null, ptr noundef nonnull %nr, ptr noundef %add.ptr322, i32 noundef 1)
  %148 = ptrtoint ptr %arrayidx319 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 0, ptr %arrayidx319, align 4
  br label %sw.bb

sw.bb:                                            ; preds = %if.then321, %if.end318.sw.bb_crit_edge, %do_indirects.sw.bb_crit_edge
  %n.0 = phi i32 [ %inc314, %if.then321 ], [ %inc314, %if.end318.sw.bb_crit_edge ], [ %n.0.i, %do_indirects.sw.bb_crit_edge ]
  %inc325 = add nsw i32 %n.0, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc325, i32 %n.0.i558)
  %cmp326.not = icmp slt i32 %inc325, %n.0.i558
  br i1 %cmp326.not, label %if.end329, label %sw.bb.cleanup286_crit_edge

sw.bb.cleanup286_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup286

if.end329:                                        ; preds = %sw.bb
  %arrayidx330 = getelementptr i8, ptr %inode, i32 -412
  %149 = ptrtoint ptr %arrayidx330 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %arrayidx330, align 4
  %151 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %150, ptr %nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %tobool331.not = icmp eq i32 %150, 0
  br i1 %tobool331.not, label %if.end329.sw.bb336_crit_edge, label %if.then332

if.end329.sw.bb336_crit_edge:                     ; preds = %if.end329
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb336

if.then332:                                       ; preds = %if.end329
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr333 = getelementptr inbounds i32, ptr %nr, i32 1
  call fastcc void @ext4_free_branches(ptr noundef %handle, ptr noundef %inode, ptr noundef null, ptr noundef nonnull %nr, ptr noundef %add.ptr333, i32 noundef 2)
  %152 = ptrtoint ptr %arrayidx330 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 0, ptr %arrayidx330, align 4
  br label %sw.bb336

sw.bb336:                                         ; preds = %if.then332, %if.end329.sw.bb336_crit_edge, %do_indirects.sw.bb336_crit_edge
  %n.1 = phi i32 [ %inc325, %if.then332 ], [ %inc325, %if.end329.sw.bb336_crit_edge ], [ %n.0.i, %do_indirects.sw.bb336_crit_edge ]
  %inc337 = add nsw i32 %n.1, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc337, i32 %n.0.i558)
  %cmp338.not = icmp slt i32 %inc337, %n.0.i558
  br i1 %cmp338.not, label %if.end341, label %sw.bb336.cleanup286_crit_edge

sw.bb336.cleanup286_crit_edge:                    ; preds = %sw.bb336
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup286

if.end341:                                        ; preds = %sw.bb336
  %arrayidx342 = getelementptr i8, ptr %inode, i32 -408
  %153 = ptrtoint ptr %arrayidx342 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %arrayidx342, align 4
  %155 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %154, ptr %nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %tobool343.not = icmp eq i32 %154, 0
  br i1 %tobool343.not, label %if.end341.cleanup286_crit_edge, label %if.then344

if.end341.cleanup286_crit_edge:                   ; preds = %if.end341
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup286

if.then344:                                       ; preds = %if.end341
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr345 = getelementptr inbounds i32, ptr %nr, i32 1
  call fastcc void @ext4_free_branches(ptr noundef %handle, ptr noundef %inode, ptr noundef null, ptr noundef nonnull %nr, ptr noundef %add.ptr345, i32 noundef 3)
  %156 = ptrtoint ptr %arrayidx342 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 0, ptr %arrayidx342, align 4
  br label %cleanup286

cleanup349:                                       ; preds = %brelse.exit600.cleanup349_crit_edge, %while.cond299.preheader.cleanup349_crit_edge, %if.then24.i564, %land.lhs.true.i.cleanup349_crit_edge, %if.else13.i.cleanup349_crit_edge, %if.then34.cleanup349_crit_edge, %entry.cleanup349_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr2) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr) #10
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %chain2) #10
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %chain) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %offsets2) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %offsets) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_ind_map_blocks_enter(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_warning(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bh_uptodate_or_lock(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_read_bh(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_check_blockref(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__getblk_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ext4_inode_to_goal_block(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ext4_mb_new_blocks(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ext4_new_meta_blocks(ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_journal_get_create_access(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_buffer(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_handle_dirty_metadata(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_free_blocks(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_buffer(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_journal_get_write_access(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__jbd2_debug(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_mark_inode_dirty(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_ind_map_blocks_exit(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ext4_clear_blocks(ptr noundef %handle, ptr noundef %inode, ptr noundef %bh, i64 noundef %block_to_free, i32 noundef %count, ptr noundef writeonly %first, ptr noundef readnone %last) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %inode, align 8
  %2 = and i16 %1, -4096
  %3 = zext i16 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.20)
  switch i16 %2, label %lor.lhs.false7 [
    i16 16384, label %entry.if.end12_crit_edge
    i16 -24576, label %entry.if.end12_crit_edge55
  ]

entry.if.end12_crit_edge55:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

lor.lhs.false7:                                   ; preds = %entry
  %i_flags.i = getelementptr i8, ptr %inode, i32 -380
  %4 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %i_flags.i, align 4
  %6 = and i32 %5, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.else, label %lor.lhs.false7.if.end12_crit_edge

lor.lhs.false7.if.end12_crit_edge:                ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.else:                                          ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 @ext4_inode_journal_mode(ptr noundef %inode) #10
  %and.i = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool9.not = icmp eq i32 %and.i, 0
  %spec.select = select i1 %tobool9.not, i32 4, i32 6
  br label %if.end12

if.end12:                                         ; preds = %if.else, %lor.lhs.false7.if.end12_crit_edge, %entry.if.end12_crit_edge, %entry.if.end12_crit_edge55
  %flags.0 = phi i32 [ 7, %entry.if.end12_crit_edge ], [ 7, %entry.if.end12_crit_edge55 ], [ 7, %lor.lhs.false7.if.end12_crit_edge ], [ %spec.select, %if.else ]
  %call13 = tail call i32 @ext4_inode_block_valid(ptr noundef %inode, i64 noundef %block_to_free, i32 noundef %count) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %inode, ptr noundef nonnull @__func__.ext4_clear_blocks, i32 noundef 868, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.16, i64 noundef %block_to_free, i32 noundef %count) #10
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %7 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 33
  %9 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_mount_opt.i = getelementptr inbounds %struct.ext4_sb_info, ptr %10, i32 0, i32 17
  %11 = ptrtoint ptr %s_mount_opt.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %s_mount_opt.i, align 4
  %and.i52 = and i32 %12, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %and.i52)
  %cmp.i = icmp eq i32 %and.i52, 1024
  br i1 %cmp.i, label %if.end16.ext4_free_data_revoke_credits.exit_crit_edge, label %if.end.i

if.end16.ext4_free_data_revoke_credits.exit_crit_edge: ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %ext4_free_data_revoke_credits.exit

if.end.i:                                         ; preds = %if.end16
  %call.i.i = tail call i32 @ext4_inode_journal_mode(ptr noundef %inode) #10
  %and.i.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.end.i.ext4_free_data_revoke_credits.exit_crit_edge, label %if.end3.i

if.end.i.ext4_free_data_revoke_credits.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ext4_free_data_revoke_credits.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i8.i = getelementptr inbounds %struct.super_block, ptr %14, i32 0, i32 33
  %15 = ptrtoint ptr %s_fs_info.i8.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_fs_info.i8.i, align 16
  %s_cluster_ratio.i = getelementptr inbounds %struct.ext4_sb_info, ptr %16, i32 0, i32 11
  %17 = ptrtoint ptr %s_cluster_ratio.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %s_cluster_ratio.i, align 4
  %sub.i = shl i32 %18, 1
  %mul.i = add i32 %count, -2
  %add.i = add i32 %mul.i, %sub.i
  br label %ext4_free_data_revoke_credits.exit

ext4_free_data_revoke_credits.exit:               ; preds = %if.end3.i, %if.end.i.ext4_free_data_revoke_credits.exit_crit_edge, %if.end16.ext4_free_data_revoke_credits.exit_crit_edge
  %retval.0.i = phi i32 [ %add.i, %if.end3.i ], [ 0, %if.end16.ext4_free_data_revoke_credits.exit_crit_edge ], [ 0, %if.end.i.ext4_free_data_revoke_credits.exit_crit_edge ]
  %call18 = tail call fastcc i32 @ext4_ind_truncate_ensure_credits(ptr noundef %handle, ptr noundef %inode, ptr noundef %bh, i32 noundef %retval.0.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.then26, label %for.cond.preheader

for.cond.preheader:                               ; preds = %ext4_free_data_revoke_credits.exit
  %cmp2353 = icmp ult ptr %first, %last
  br i1 %cmp2353, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %p.054 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %first, %for.cond.preheader.for.body_crit_edge ]
  %19 = ptrtoint ptr %p.054 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %p.054, align 4
  %incdec.ptr = getelementptr i32, ptr %p.054, i32 1
  %cmp23 = icmp ult ptr %incdec.ptr, %last
  br i1 %cmp23, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void @ext4_free_blocks(ptr noundef %handle, ptr noundef %inode, ptr noundef null, i64 noundef %block_to_free, i32 noundef %count, i32 noundef %flags.0) #10
  br label %cleanup

if.then26:                                        ; preds = %ext4_free_data_revoke_credits.exit
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i_sb.i, align 4
  tail call void @__ext4_std_error(ptr noundef %21, ptr noundef nonnull @__func__.ext4_clear_blocks, i32 noundef 883, i32 noundef %call18) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %for.end, %if.then15
  %retval.0 = phi i32 [ %call18, %if.then26 ], [ 0, %for.end ], [ 1, %if.then15 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_inode_block_valid(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ext4_ind_truncate_ensure_credits(ptr noundef %handle, ptr noundef %inode, ptr noundef %bh, i32 noundef %revoke_creds) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_blocks.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %0 = ptrtoint ptr %i_blocks.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %i_blocks.i, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %s_blocksize_bits.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_es.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 15
  %8 = ptrtoint ptr %s_es.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_es.i.i, align 4
  %s_feature_incompat.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %9, i32 0, i32 29
  %10 = ptrtoint ptr %s_feature_incompat.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_feature_incompat.i.i, align 8
  %s_mount_opt.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 17
  %12 = ptrtoint ptr %s_mount_opt.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_mount_opt.i.i, align 4
  %and.i23.i = and i32 %13, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i23.i)
  %tobool.not.i.i = icmp eq i32 %and.i23.i, 0
  br i1 %tobool.not.i.i, label %ext4_quota_capable.exit.i, label %entry.ext4_quota_capable.exit.thread.i_crit_edge

entry.ext4_quota_capable.exit.thread.i_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %ext4_quota_capable.exit.thread.i

ext4_quota_capable.exit.i:                        ; preds = %entry
  %s_feature_ro_compat.i.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %9, i32 0, i32 30
  %14 = ptrtoint ptr %s_feature_ro_compat.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %s_feature_ro_compat.i.i.i, align 4
  %and.i.i.i = and i32 %15, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i.not.i, label %ext4_quota_capable.exit.i.ext4_blocks_for_truncate.exit_crit_edge, label %ext4_quota_capable.exit.i.ext4_quota_capable.exit.thread.i_crit_edge

ext4_quota_capable.exit.i.ext4_quota_capable.exit.thread.i_crit_edge: ; preds = %ext4_quota_capable.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ext4_quota_capable.exit.thread.i

ext4_quota_capable.exit.i.ext4_blocks_for_truncate.exit_crit_edge: ; preds = %ext4_quota_capable.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ext4_blocks_for_truncate.exit

ext4_quota_capable.exit.thread.i:                 ; preds = %ext4_quota_capable.exit.i.ext4_quota_capable.exit.thread.i_crit_edge, %entry.ext4_quota_capable.exit.thread.i_crit_edge
  br label %ext4_blocks_for_truncate.exit

ext4_blocks_for_truncate.exit:                    ; preds = %ext4_quota_capable.exit.thread.i, %ext4_quota_capable.exit.i.ext4_blocks_for_truncate.exit_crit_edge
  %16 = phi i32 [ 3, %ext4_quota_capable.exit.thread.i ], [ 0, %ext4_quota_capable.exit.i.ext4_blocks_for_truncate.exit_crit_edge ]
  %and.i.i = and i32 %11, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 0
  %sub9.i = select i1 %cmp.i.not.i, i32 12, i32 24
  %conv.i = zext i8 %5 to i32
  %sub.i = add nsw i32 %conv.i, -9
  %sh_prom.i = zext i32 %sub.i to i64
  %shr.i = lshr i64 %1, %sh_prom.i
  %conv1.i = trunc i64 %shr.i to i32
  %17 = tail call i32 @llvm.umax.i32(i32 %conv1.i, i32 2) #10
  %18 = tail call i32 @llvm.umin.i32(i32 %17, i32 64) #10
  %add14.i = add nuw nsw i32 %18, %sub9.i
  %add15.i = add nuw nsw i32 %add14.i, %16
  %call1 = tail call i32 @__ext4_journal_ensure_credits(ptr noundef %handle, i32 noundef 12, i32 noundef %add15.i, i32 noundef %revoke_creds) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp = icmp slt i32 %call1, 1
  br i1 %cmp, label %ext4_blocks_for_truncate.exit.cleanup_crit_edge, label %if.end

ext4_blocks_for_truncate.exit.cleanup_crit_edge:  ; preds = %ext4_blocks_for_truncate.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %ext4_blocks_for_truncate.exit
  %tobool.not.i = icmp eq ptr %bh, null
  br i1 %tobool.not.i, label %if.end.if.end5.i_crit_edge, label %do.end.i

if.end.if.end5.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

do.end.i:                                         ; preds = %if.end
  %call.i = tail call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_ind_trunc_restart_fn, i32 noundef 688, ptr noundef %handle, ptr noundef %inode, ptr noundef nonnull %bh) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %do.end.i.if.end5.i_crit_edge, label %do.end.i.ext4_ind_trunc_restart_fn.exit_crit_edge, !prof !65

do.end.i.ext4_ind_trunc_restart_fn.exit_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ext4_ind_trunc_restart_fn.exit

do.end.i.if.end5.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

if.end5.i:                                        ; preds = %do.end.i.if.end5.i_crit_edge, %if.end.if.end5.i_crit_edge
  %call6.i = tail call i32 @__ext4_mark_inode_dirty(ptr noundef %handle, ptr noundef %inode, ptr noundef nonnull @__func__.ext4_ind_trunc_restart_fn, i32 noundef 692) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %do.body16.i, label %if.end5.i.ext4_ind_trunc_restart_fn.exit_crit_edge, !prof !65

if.end5.i.ext4_ind_trunc_restart_fn.exit_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ext4_ind_trunc_restart_fn.exit

do.body16.i:                                      ; preds = %if.end5.i
  %19 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %20, i32 0, i32 33
  %21 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_journal.i = getelementptr inbounds %struct.ext4_sb_info, ptr %22, i32 0, i32 47
  %23 = ptrtoint ptr %s_journal.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_journal.i, align 8
  %cmp.i = icmp eq ptr %24, null
  br i1 %cmp.i, label %do.body25.i, label %ext4_ind_trunc_restart_fn.exit.thread, !prof !69

do.body25.i:                                      ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/indirect.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 701, 0\0A.popsection", ""() #10, !srcloc !82
  unreachable

ext4_ind_trunc_restart_fn.exit.thread:            ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ext4_discard_preallocations(ptr noundef %inode, i32 noundef 0) #10
  %i_data_sem.i = getelementptr i8, ptr %inode, i32 -96
  tail call void @up_write(ptr noundef %i_data_sem.i) #10
  br label %if.end5

ext4_ind_trunc_restart_fn.exit:                   ; preds = %if.end5.i.ext4_ind_trunc_restart_fn.exit_crit_edge, %do.end.i.ext4_ind_trunc_restart_fn.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %do.end.i.ext4_ind_trunc_restart_fn.exit_crit_edge ], [ %call6.i, %if.end5.i.ext4_ind_trunc_restart_fn.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp3 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp3, label %ext4_ind_trunc_restart_fn.exit.cleanup_crit_edge, label %ext4_ind_trunc_restart_fn.exit.if.end5_crit_edge

ext4_ind_trunc_restart_fn.exit.if.end5_crit_edge: ; preds = %ext4_ind_trunc_restart_fn.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

ext4_ind_trunc_restart_fn.exit.cleanup_crit_edge: ; preds = %ext4_ind_trunc_restart_fn.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %ext4_ind_trunc_restart_fn.exit.if.end5_crit_edge, %ext4_ind_trunc_restart_fn.exit.thread
  %tobool.not = phi i1 [ false, %ext4_ind_trunc_restart_fn.exit.thread ], [ true, %ext4_ind_trunc_restart_fn.exit.if.end5_crit_edge ]
  %25 = ptrtoint ptr %i_blocks.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %i_blocks.i, align 8
  %27 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i_sb.i, align 4
  %s_blocksize_bits.i46 = getelementptr inbounds %struct.super_block, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %s_blocksize_bits.i46 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %s_blocksize_bits.i46, align 4
  %s_fs_info.i.i.i47 = getelementptr inbounds %struct.super_block, ptr %28, i32 0, i32 33
  %31 = ptrtoint ptr %s_fs_info.i.i.i47 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %s_fs_info.i.i.i47, align 16
  %s_es.i.i48 = getelementptr inbounds %struct.ext4_sb_info, ptr %32, i32 0, i32 15
  %33 = ptrtoint ptr %s_es.i.i48 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %s_es.i.i48, align 4
  %s_feature_incompat.i.i49 = getelementptr inbounds %struct.ext4_super_block, ptr %34, i32 0, i32 29
  %35 = ptrtoint ptr %s_feature_incompat.i.i49 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %s_feature_incompat.i.i49, align 8
  %s_mount_opt.i.i50 = getelementptr inbounds %struct.ext4_sb_info, ptr %32, i32 0, i32 17
  %37 = ptrtoint ptr %s_mount_opt.i.i50 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %s_mount_opt.i.i50, align 4
  %and.i23.i51 = and i32 %38, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i23.i51)
  %tobool.not.i.i52 = icmp eq i32 %and.i23.i51, 0
  br i1 %tobool.not.i.i52, label %ext4_quota_capable.exit.i56, label %if.end5.ext4_quota_capable.exit.thread.i57_crit_edge

if.end5.ext4_quota_capable.exit.thread.i57_crit_edge: ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %ext4_quota_capable.exit.thread.i57

ext4_quota_capable.exit.i56:                      ; preds = %if.end5
  %s_feature_ro_compat.i.i.i53 = getelementptr inbounds %struct.ext4_super_block, ptr %34, i32 0, i32 30
  %39 = ptrtoint ptr %s_feature_ro_compat.i.i.i53 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %s_feature_ro_compat.i.i.i53, align 4
  %and.i.i.i54 = and i32 %40, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i54)
  %cmp.i.i.not.i55 = icmp eq i32 %and.i.i.i54, 0
  br i1 %cmp.i.i.not.i55, label %ext4_quota_capable.exit.i56.ext4_blocks_for_truncate.exit68_crit_edge, label %ext4_quota_capable.exit.i56.ext4_quota_capable.exit.thread.i57_crit_edge

ext4_quota_capable.exit.i56.ext4_quota_capable.exit.thread.i57_crit_edge: ; preds = %ext4_quota_capable.exit.i56
  call void @__sanitizer_cov_trace_pc() #12
  br label %ext4_quota_capable.exit.thread.i57

ext4_quota_capable.exit.i56.ext4_blocks_for_truncate.exit68_crit_edge: ; preds = %ext4_quota_capable.exit.i56
  call void @__sanitizer_cov_trace_pc() #12
  br label %ext4_blocks_for_truncate.exit68

ext4_quota_capable.exit.thread.i57:               ; preds = %ext4_quota_capable.exit.i56.ext4_quota_capable.exit.thread.i57_crit_edge, %if.end5.ext4_quota_capable.exit.thread.i57_crit_edge
  br label %ext4_blocks_for_truncate.exit68

ext4_blocks_for_truncate.exit68:                  ; preds = %ext4_quota_capable.exit.thread.i57, %ext4_quota_capable.exit.i56.ext4_blocks_for_truncate.exit68_crit_edge
  %41 = phi i32 [ 3, %ext4_quota_capable.exit.thread.i57 ], [ 0, %ext4_quota_capable.exit.i56.ext4_blocks_for_truncate.exit68_crit_edge ]
  %cmp.i.not.i69 = icmp ult ptr %handle, inttoptr (i32 4096 to ptr)
  br i1 %cmp.i.not.i69, label %ext4_blocks_for_truncate.exit68.ext4_journal_restart.exit.thread_crit_edge, label %ext4_journal_restart.exit

ext4_blocks_for_truncate.exit68.ext4_journal_restart.exit.thread_crit_edge: ; preds = %ext4_blocks_for_truncate.exit68
  call void @__sanitizer_cov_trace_pc() #12
  br label %ext4_journal_restart.exit.thread

ext4_journal_restart.exit:                        ; preds = %ext4_blocks_for_truncate.exit68
  %conv.i61 = zext i8 %30 to i32
  %sub.i62 = add nsw i32 %conv.i61, -9
  %sh_prom.i63 = zext i32 %sub.i62 to i64
  %shr.i64 = lshr i64 %26, %sh_prom.i63
  %conv1.i65 = trunc i64 %shr.i64 to i32
  %42 = tail call i32 @llvm.umax.i32(i32 %conv1.i65, i32 2) #10
  %43 = tail call i32 @llvm.umin.i32(i32 %42, i32 64) #10
  %and.i.i58 = and i32 %36, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i58)
  %cmp.i.not.i59 = icmp eq i32 %and.i.i58, 0
  %sub9.i60 = select i1 %cmp.i.not.i59, i32 12, i32 24
  %add14.i66 = add nuw nsw i32 %43, %sub9.i60
  %add15.i67 = add nuw nsw i32 %add14.i66, %41
  %call1.i = tail call i32 @jbd2__journal_restart(ptr noundef %handle, i32 noundef %add15.i67, i32 noundef %revoke_creds, i32 noundef 3136) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp8 = icmp eq i32 %call1.i, 0
  br i1 %cmp8, label %ext4_journal_restart.exit.ext4_journal_restart.exit.thread_crit_edge, label %ext4_journal_restart.exit.__ensure_end_crit_edge

ext4_journal_restart.exit.__ensure_end_crit_edge: ; preds = %ext4_journal_restart.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %__ensure_end

ext4_journal_restart.exit.ext4_journal_restart.exit.thread_crit_edge: ; preds = %ext4_journal_restart.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %ext4_journal_restart.exit.thread

ext4_journal_restart.exit.thread:                 ; preds = %ext4_journal_restart.exit.ext4_journal_restart.exit.thread_crit_edge, %ext4_blocks_for_truncate.exit68.ext4_journal_restart.exit.thread_crit_edge
  br label %__ensure_end

__ensure_end:                                     ; preds = %ext4_journal_restart.exit.thread, %ext4_journal_restart.exit.__ensure_end_crit_edge
  %err.0 = phi i32 [ 1, %ext4_journal_restart.exit.thread ], [ %call1.i, %ext4_journal_restart.exit.__ensure_end_crit_edge ]
  br i1 %tobool.not, label %__ensure_end.if.end13_crit_edge, label %if.then11

__ensure_end.if.end13_crit_edge:                  ; preds = %__ensure_end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then11:                                        ; preds = %__ensure_end
  call void @__sanitizer_cov_trace_pc() #12
  %i_data_sem = getelementptr i8, ptr %inode, i32 -96
  tail call void @down_write(ptr noundef %i_data_sem) #10
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %__ensure_end.if.end13_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %err.0)
  %cmp14 = icmp slt i32 %err.0, 1
  br i1 %cmp14, label %if.end13.cleanup_crit_edge, label %if.end16

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %if.end13
  br i1 %tobool.not.i, label %if.end16.if.end25_crit_edge, label %do.end

if.end16.if.end25_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

do.end:                                           ; preds = %if.end16
  %44 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %i_sb.i, align 4
  %call19 = tail call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_ind_truncate_ensure_credits, i32 noundef 734, ptr noundef %handle, ptr noundef %45, ptr noundef nonnull %bh, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %do.end.if.end25_crit_edge, label %do.end.cleanup_crit_edge, !prof !65

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end.if.end25_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.end25:                                         ; preds = %do.end.if.end25_crit_edge, %if.end16.if.end25_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %do.end.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %ext4_ind_trunc_restart_fn.exit.cleanup_crit_edge, %ext4_blocks_for_truncate.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end25 ], [ %err.0, %if.end13.cleanup_crit_edge ], [ %call19, %do.end.cleanup_crit_edge ], [ %retval.0.i, %ext4_ind_trunc_restart_fn.exit.cleanup_crit_edge ], [ %call1, %ext4_blocks_for_truncate.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_std_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_inode_journal_mode(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_journal_ensure_credits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_discard_preallocations(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2__journal_restart(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ext4_sb_bread(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !13, !15, !16, !17, !18, !20, !21, !23, !24, !26, !28, !30, !32, !34, !36, !38, !39, !41, !43, !45, !46, !48, !50, !52, !53}
!llvm.named.register.sp = !{!55}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ext4/indirect.c", i32 539, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @ext4_ind_map_blocks._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @ext4_ind_map_blocks._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @ext4_ind_map_blocks._entry.4, !8, !"_entry", i1 false, i1 false}
!8 = !{!"../fs/ext4/indirect.c", i32 540, i32 2}
!9 = !{ptr @ext4_ind_map_blocks._entry_ptr.5, !8, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/ext4/indirect.c", i32 596, i32 3}
!13 = distinct !{null, !14, !"__already_done", i1 false, i1 false}
!14 = !{!"../include/trace/events/ext4.h", i32 1639, i32 1}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!17 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!18 = distinct !{null, !19, !"__already_done", i1 false, i1 false}
!19 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @__func__.ext4_block_to_path, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/ext4/indirect.c", i32 105, i32 3}
!23 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @__func__.ext4_get_branch, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/ext4/indirect.c", i32 171, i32 8}
!26 = !{ptr @__func__.ext4_alloc_branch, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/ext4/indirect.c", i32 357, i32 9}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../include/linux/buffer_head.h", i32 366, i32 2}
!30 = !{ptr @__func__.ext4_splice_branch, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/ext4/indirect.c", i32 433, i32 9}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/ext4/indirect.c", i32 463, i32 3}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/ext4/indirect.c", i32 475, i32 3}
!36 = distinct !{null, !37, !"__already_done", i1 false, i1 false}
!37 = !{!"../include/trace/events/ext4.h", i32 1689, i32 1}
!38 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!39 = !{ptr @__func__.ext4_free_data, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/ext4/indirect.c", i32 922, i32 9}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/ext4/indirect.c", i32 972, i32 4}
!43 = !{ptr @__func__.ext4_clear_blocks, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/ext4/indirect.c", i32 866, i32 3}
!45 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @__func__.ext4_ind_truncate_ensure_credits, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/ext4/indirect.c", i32 733, i32 9}
!48 = !{ptr @__func__.ext4_ind_trunc_restart_fn, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/ext4/indirect.c", i32 688, i32 9}
!50 = !{ptr @__func__.ext4_free_branches, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/ext4/indirect.c", i32 1012, i32 5}
!52 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/ext4/indirect.c", i32 1027, i32 5}
!55 = !{!"sp"}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{!"branch_weights", i32 2000, i32 1}
!66 = !{i64 2157733199, i64 2157733682, i64 2157733236, i64 2157733292, i64 2157733326, i64 2157733350, i64 2157733391, i64 2157733412, i64 2157733440, i64 2157733474}
!67 = !{i64 2157736818, i64 2157737301, i64 2157736855, i64 2157736911, i64 2157736945, i64 2157736969, i64 2157737010, i64 2157737031, i64 2157737059, i64 2157737093}
!68 = !{!"auto-init"}
!69 = !{!"branch_weights", i32 1, i32 2000}
!70 = !{i64 2148720555, i64 2148720587, i64 2148720616, i64 2148720650, i64 2148720681, i64 2148720704}
!71 = !{i64 2148809660}
!72 = !{i64 2148536295, i64 2148536300, i64 2148536313, i64 2148536357, i64 2148536391, i64 2148536412}
!73 = !{i64 2156761461}
!74 = !{i64 2156761720}
!75 = !{i64 2149532702}
!76 = !{i64 2149533738}
!77 = !{i64 2153907395}
!78 = !{i64 2148714162, i64 2148714188, i64 2148714217, i64 2148714251, i64 2148714282, i64 2148714305}
!79 = !{i64 2156797611}
!80 = !{i64 2156797866}
!81 = !{i64 2157757403, i64 2157757887, i64 2157757440, i64 2157757496, i64 2157757530, i64 2157757554, i64 2157757595, i64 2157757616, i64 2157757644, i64 2157757678}
!82 = !{i64 2157746199, i64 2157746682, i64 2157746236, i64 2157746292, i64 2157746326, i64 2157746350, i64 2157746391, i64 2157746412, i64 2157746440, i64 2157746474}
