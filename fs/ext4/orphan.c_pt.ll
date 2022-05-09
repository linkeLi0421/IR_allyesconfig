; ModuleID = '/llk/IR_all_yes/fs/ext4/orphan.c_pt.bc'
source_filename = "../fs/ext4/orphan.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ext4_iloc = type { ptr, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.72, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.73, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.74, ptr, %struct.address_space, %struct.list_head, %union.anon.75, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.72 = type { i32 }
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
%union.anon.73 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.74 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.75 = type { ptr }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ext4_orphan_block = type { %struct.atomic_t, ptr }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.ext4_super_block = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i16, i16, i32, i16, i16, i32, i32, i32, [16 x i8], [16 x i8], [64 x i8], i32, i8, i8, i16, [16 x i8], i32, i32, i32, [4 x i32], i8, i8, i16, i32, i32, i32, [17 x i32], i32, i32, i32, i16, i16, i32, i16, i16, i64, i32, i8, i8, i8, i8, i64, i32, i32, i64, i32, i32, i32, i32, i64, [32 x i8], i32, i32, i32, i32, i64, [32 x i8], [64 x i8], i32, i32, i32, [2 x i32], [4 x i8], [16 x i8], i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, [94 x i32], i32 }
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
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.anon.81 = type { %struct.shash_desc, [4 x i8], [4 x i8] }
%struct.shash_desc = type { ptr, [4 x i8], [0 x ptr] }
%struct.ext4_orphan_block_tail = type { i32, i32 }

@ext4_orphan_add.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/ext4/orphan.c\00", [47 x i8] zeroinitializer }, align 32
@ext4_orphan_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 126, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\010Assertion failure in %s() at %s:%d: '%s'\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ext4_orphan_add\00", [16 x i8] zeroinitializer }, align 32
@ext4_orphan_add._entry_ptr = internal global ptr @ext4_orphan_add._entry, section ".printk_index", align 4
@.str.3 = internal constant { [100 x i8], [60 x i8] } { [100 x i8] c"(S_ISREG(inode->i_mode) || S_ISDIR(inode->i_mode) || S_ISLNK(inode->i_mode)) || inode->i_nlink == 0\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"superblock will point to %lu\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"orphan inode %lu will point to %d\0A\00", [61 x i8] zeroinitializer }, align 32
@ext4_orphan_del.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.ext4_orphan_del = private unnamed_addr constant [16 x i8] c"ext4_orphan_del\00", align 1
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"remove inode %lu from orphan list\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"superblock will point to %u\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"orphan inode %lu will point to %u\0A\00", [61 x i8] zeroinitializer }, align 32
@__func__.ext4_orphan_cleanup = private unnamed_addr constant [20 x i8] c"ext4_orphan_cleanup\00", align 1
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"no orphan inodes to clean up\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"write access unavailable, skipping orphan cleanup\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Skipping orphan cleanup due to unknown ROCOMPAT features\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Errors on filesystem, clearing orphan list.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Skipping orphan recovery on fs with errors.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"orphan cleanup on readonly fs\00", [34 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Cannot turn on quotas: error %d\00", [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Cannot turn on journaled quota: type %d: error %d\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%d orphan inode%s deleted\00", [38 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"s\00", [30 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%d truncate%s cleaned up\00", [39 x i8] zeroinitializer }, align 32
@__func__.ext4_init_orphan_info = private unnamed_addr constant [22 x i8] c"ext4_init_orphan_info\00", align 1
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"get orphan inode failed\00", [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"orphan file block %d: bad magic\00", [32 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"orphan file block %d: bad checksum\00", [61 x i8] zeroinitializer }, align 32
@__func__.ext4_orphan_file_add = private unnamed_addr constant [21 x i8] c"ext4_orphan_file_add\00", align 1
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/buffer_head.h\00", [36 x i8] zeroinitializer }, align 32
@ext4_orphan_file_del.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.ext4_orphan_file_del = private unnamed_addr constant [21 x i8] c"ext4_orphan_file_del\00", align 1
@ext4_quota_on_mount.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.27 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: truncating inode %lu to %lld bytes\00", [57 x i8] zeroinitializer }, align 32
@__func__.ext4_process_orphan = private unnamed_addr constant [20 x i8] c"ext4_process_orphan\00", align 1
@.str.30 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"truncating inode %lu to %lld bytes\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: deleting unreferenced inode %lu\00", [60 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"deleting unreferenced inode %lu\0A\00", [63 x i8] zeroinitializer }, align 32
@ext4_has_metadata_csum.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/ext4/ext4.h\00", [17 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 16384, i64 32768, i64 40960]
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 110, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 125, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 184, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 185, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 254, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 270, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 289, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 394, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 399, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 406, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 414, i32 4 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 418, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 423, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 437, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 449, i32 5 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 494, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 497, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 588, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 611, i32 4 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 617, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant [31 x i8] c"../include/linux/buffer_head.h\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 366, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 317, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 332, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 335, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 353, i32 4 }
@___asan_gen_.134 = private constant [20 x i8] c"../fs/ext4/orphan.c\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 356, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.137 = private unnamed_addr constant [18 x i8] c"../fs/ext4/ext4.h\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 3288, i32 2 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @ext4_orphan_add._entry, ptr @ext4_orphan_add._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_orphan_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_orphan_add(ptr noundef %handle, ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  %iloc = alloca %struct.ext4_iloc, align 4
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
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %iloc) #9
  %4 = ptrtoint ptr %iloc to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %iloc, align 4, !annotation !89
  %5 = getelementptr inbounds %struct.ext4_iloc, ptr %iloc, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !89
  %7 = getelementptr inbounds %struct.ext4_iloc, ptr %iloc, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4, !annotation !89
  %s_journal = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 47
  %9 = ptrtoint ptr %s_journal to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_journal, align 8
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call zeroext i1 @is_bad_inode(ptr noundef %inode) #9
  br i1 %call1, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %i_state = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 24
  %11 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i_state, align 8
  %and = and i32 %12, 40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %land.rhs, label %if.end.if.end37_crit_edge

if.end.if.end37_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

land.rhs:                                         ; preds = %if.end
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 25
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_rwsem.i, i32 noundef 4) #9
  %13 = ptrtoint ptr %i_rwsem.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %i_rwsem.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i.i.not = icmp eq i32 %14, 0
  br i1 %cmp.i.i.not, label %land.rhs8, label %land.rhs.if.end37_crit_edge

land.rhs.if.end37_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

land.rhs8:                                        ; preds = %land.rhs
  %.b211 = load i1, ptr @ext4_orphan_add.__already_done, align 1
  br i1 %.b211, label %land.rhs8.if.end37_crit_edge, label %if.then15, !prof !90

land.rhs8.if.end37_crit_edge:                     ; preds = %land.rhs8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.then15:                                        ; preds = %land.rhs8
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ext4_orphan_add.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 111, i32 noundef 9, ptr noundef null) #9
  br label %if.end37

if.end37:                                         ; preds = %if.then15, %land.rhs8.if.end37_crit_edge, %land.rhs.if.end37_crit_edge, %if.end.if.end37_crit_edge
  %i_state_flags.i = getelementptr i8, ptr %inode, i32 -384
  %15 = ptrtoint ptr %i_state_flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %i_state_flags.i, align 4
  %17 = and i32 %16, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool46.not = icmp eq i32 %17, 0
  br i1 %tobool46.not, label %lor.lhs.false47, label %if.end37.cleanup_crit_edge

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false47:                                  ; preds = %if.end37
  %18 = getelementptr i8, ptr %inode, i32 -280
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %18, align 4
  %cmp.i.not = icmp eq ptr %20, %18
  br i1 %cmp.i.not, label %do.body53, label %lor.lhs.false47.cleanup_crit_edge

lor.lhs.false47.cleanup_crit_edge:                ; preds = %lor.lhs.false47
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body53:                                        ; preds = %lor.lhs.false47
  %21 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %inode, align 8
  %23 = and i16 %22, -4096
  %24 = zext i16 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i16 %23, label %lor.rhs [
    i16 -32768, label %do.body53.do.end92_crit_edge
    i16 16384, label %do.body53.do.end92_crit_edge253
    i16 -24576, label %do.body53.do.end92_crit_edge254
  ]

do.body53.do.end92_crit_edge254:                  ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end92

do.body53.do.end92_crit_edge253:                  ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end92

do.body53.do.end92_crit_edge:                     ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end92

lor.rhs:                                          ; preds = %do.body53
  %25 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp68.not = icmp eq i32 %27, 0
  br i1 %cmp68.not, label %lor.rhs.do.end92_crit_edge, label %do.end81, !prof !90

lor.rhs.do.end92_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end92

do.end81:                                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  %call83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str, i32 noundef 126, ptr noundef nonnull @.str.3) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/orphan.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 126, 0\0A.popsection", ""() #9, !srcloc !91
  unreachable

do.end92:                                         ; preds = %lor.rhs.do.end92_crit_edge, %do.body53.do.end92_crit_edge, %do.body53.do.end92_crit_edge253, %do.body53.do.end92_crit_edge254
  %s_orphan_info = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 51
  %28 = ptrtoint ptr %s_orphan_info to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %s_orphan_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool93.not = icmp eq i32 %29, 0
  br i1 %tobool93.not, label %do.end92.do.end103_crit_edge, label %if.then94

do.end92.do.end103_crit_edge:                     ; preds = %do.end92
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end103

if.then94:                                        ; preds = %do.end92
  %30 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %31, i32 0, i32 33
  %32 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_orphan_info.i = getelementptr inbounds %struct.ext4_sb_info, ptr %33, i32 0, i32 51
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %31, i32 0, i32 3
  %34 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %s_blocksize.i.i, align 16
  %sub.i.i = add i32 %35, -8
  %div1.i.i = lshr i32 %sub.i.i, 2
  %36 = tail call i32 @llvm.read_register.i32(metadata !79) #9
  %and.i.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cpu.i, align 4
  %mul.i = mul i32 %39, 13
  %40 = ptrtoint ptr %s_orphan_info.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %s_orphan_info.i, align 4
  %rem.i = urem i32 %mul.i, %41
  %of_binfo.i = getelementptr inbounds %struct.ext4_sb_info, ptr %33, i32 0, i32 51, i32 2
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %if.then94
  %i.0.i = phi i32 [ %rem.i, %if.then94 ], [ %spec.store.select.i, %if.end.i.do.body.i_crit_edge ]
  %42 = ptrtoint ptr %of_binfo.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %of_binfo.i, align 4
  %arrayidx.i = getelementptr %struct.ext4_orphan_block, ptr %43, i32 %i.0.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i, i32 noundef 4) #9
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %arrayidx.i, align 4
  br label %do.body1.i.i.i

do.body1.i.i.i:                                   ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge, %do.body.i
  %c.0.i.i.i = phi i32 [ %45, %do.body.i ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge ]
  %sub.i.i.i = add i32 %c.0.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %cmp.i.i.i = icmp slt i32 %sub.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.body1.i.i.i.if.end.i_crit_edge, label %do.cond3.i.i.i, !prof !92

do.body1.i.i.i.if.end.i_crit_edge:                ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.cond3.i.i.i:                                   ; preds = %do.body1.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !93
  tail call void @llvm.prefetch.p0(ptr %arrayidx.i, i32 1, i32 3, i32 1) #9
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond3.i.i.i
  %46 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i, ptr %arrayidx.i, i32 %c.0.i.i.i, i32 %sub.i.i.i, ptr elementtype(i32) %arrayidx.i) #9, !srcloc !94
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %46, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg.exit.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg.exit.i.i.i.i:                 ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %46, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !95
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %c.0.i.i.i
  br i1 %cmp.not.i.i.i.i, label %atomic_dec_if_positive.exit.i, label %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge, !prof !90

arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body1.i.i.i

atomic_dec_if_positive.exit.i:                    ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i.i)
  %cmp.i213 = icmp sgt i32 %sub.i.i.i, -1
  br i1 %cmp.i213, label %if.end11.i, label %atomic_dec_if_positive.exit.i.if.end.i_crit_edge

atomic_dec_if_positive.exit.i.if.end.i_crit_edge: ; preds = %atomic_dec_if_positive.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i:                                         ; preds = %atomic_dec_if_positive.exit.i.if.end.i_crit_edge, %do.body1.i.i.i.if.end.i_crit_edge
  %inc.i = add i32 %i.0.i, 1
  %47 = ptrtoint ptr %s_orphan_info.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %s_orphan_info.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %48)
  %cmp6.not.i = icmp slt i32 %inc.i, %48
  %spec.store.select.i = select i1 %cmp6.not.i, i32 %inc.i, i32 0
  %cmp9.not.i = icmp eq i32 %spec.store.select.i, %rem.i
  br i1 %cmp9.not.i, label %if.end.i.do.end103_crit_edge, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

if.end.i.do.end103_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end103

if.end11.i:                                       ; preds = %atomic_dec_if_positive.exit.i
  %49 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %i_sb, align 4
  %51 = ptrtoint ptr %of_binfo.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %of_binfo.i, align 4
  %ob_bh.i = getelementptr %struct.ext4_orphan_block, ptr %52, i32 %i.0.i, i32 1
  %53 = ptrtoint ptr %ob_bh.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ob_bh.i, align 4
  %call15.i = tail call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_orphan_file_add, i32 noundef 48, ptr noundef %handle, ptr noundef %50, ptr noundef %54, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  %55 = ptrtoint ptr %of_binfo.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %of_binfo.i, align 4
  br i1 %tobool16.not.i, label %if.end21.i, label %if.then17.i

if.then17.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx19.i = getelementptr %struct.ext4_orphan_block, ptr %56, i32 %i.0.i
  %call.i.i112.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx19.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %arrayidx19.i, i32 1, i32 3, i32 1) #9
  %57 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx19.i, ptr %arrayidx19.i, i32 1, ptr elementtype(i32) %arrayidx19.i) #9, !srcloc !96
  br label %ext4_orphan_file_add.exit

if.end21.i:                                       ; preds = %if.end11.i
  %ob_bh24.i = getelementptr %struct.ext4_orphan_block, ptr %56, i32 %i.0.i, i32 1
  %58 = ptrtoint ptr %ob_bh24.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ob_bh24.i, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %59, i32 0, i32 5
  %60 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %b_data.i, align 4
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  br label %do.body25.i

do.body25.i:                                      ; preds = %__cmpxchg.exit.i.do.body25.i_crit_edge, %if.end21.i
  %looped.0.i = phi i32 [ 0, %if.end21.i ], [ %looped.1.lcssa.i, %__cmpxchg.exit.i.do.body25.i_crit_edge ]
  %j.0.i = phi i32 [ 0, %if.end21.i ], [ %j.1.lcssa125.i, %__cmpxchg.exit.i.do.body25.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %looped.0.i)
  %tobool26.not.i = icmp eq i32 %looped.0.i, 0
  br i1 %tobool26.not.i, label %do.body25.i.if.end35.i_crit_edge, label %if.then27.i

do.body25.i.if.end35.i_crit_edge:                 ; preds = %do.body25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35.i

if.then27.i:                                      ; preds = %do.body25.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %looped.0.i)
  %cmp28.i = icmp sgt i32 %looped.0.i, 3
  br i1 %cmp28.i, label %if.then29.i, label %if.end33.i

if.then29.i:                                      ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #11
  %62 = ptrtoint ptr %of_binfo.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %of_binfo.i, align 4
  %arrayidx31.i = getelementptr %struct.ext4_orphan_block, ptr %63, i32 %i.0.i
  %call.i.i113.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx31.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %arrayidx31.i, i32 1, i32 3, i32 1) #9
  %64 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx31.i, ptr %arrayidx31.i, i32 1, ptr elementtype(i32) %arrayidx31.i) #9, !srcloc !96
  br label %do.end103

if.end33.i:                                       ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 70, i32 noundef 0) #9
  %call.i114.i = tail call i32 @__cond_resched() #9
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.end33.i, %do.body25.i.if.end35.i_crit_edge
  %arrayidx36126.i = getelementptr i32, ptr %61, i32 %j.0.i
  %65 = ptrtoint ptr %arrayidx36126.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx36126.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool37.not127.i = icmp eq i32 %66, 0
  br i1 %tobool37.not127.i, label %if.end35.i.do.cond43.i_crit_edge, label %if.end35.i.while.body.i_crit_edge

if.end35.i.while.body.i_crit_edge:                ; preds = %if.end35.i
  br label %while.body.i

if.end35.i.do.cond43.i_crit_edge:                 ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond43.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end35.i.while.body.i_crit_edge
  %j.1129.i = phi i32 [ %spec.select111.i, %while.body.i.while.body.i_crit_edge ], [ %j.0.i, %if.end35.i.while.body.i_crit_edge ]
  %looped.1128.i = phi i32 [ %spec.select.i, %while.body.i.while.body.i_crit_edge ], [ %looped.0.i, %if.end35.i.while.body.i_crit_edge ]
  %inc38.i = add i32 %j.1129.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc38.i, i32 %div1.i.i)
  %cmp39.not.i = icmp slt i32 %inc38.i, %div1.i.i
  %not.cmp39.not.i = xor i1 %cmp39.not.i, true
  %inc41.i = zext i1 %not.cmp39.not.i to i32
  %spec.select.i = add i32 %looped.1128.i, %inc41.i
  %spec.select111.i = select i1 %cmp39.not.i, i32 %inc38.i, i32 0
  %arrayidx36.i = getelementptr i32, ptr %61, i32 %spec.select111.i
  %67 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx36.i, align 4
  %tobool37.not.i = icmp eq i32 %68, 0
  br i1 %tobool37.not.i, label %while.body.i.do.cond43.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.do.cond43.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond43.i

do.cond43.i:                                      ; preds = %while.body.i.do.cond43.i_crit_edge, %if.end35.i.do.cond43.i_crit_edge
  %j.1.lcssa125.i = phi i32 [ %j.0.i, %if.end35.i.do.cond43.i_crit_edge ], [ %spec.select111.i, %while.body.i.do.cond43.i_crit_edge ]
  %looped.1.lcssa.i = phi i32 [ %looped.0.i, %if.end35.i.do.cond43.i_crit_edge ], [ %spec.select.i, %while.body.i.do.cond43.i_crit_edge ]
  %arrayidx36.le.i = getelementptr i32, ptr %61, i32 %j.1.lcssa125.i
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx36.le.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !97
  %69 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %i_ino.i, align 8
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #9
  tail call void @llvm.prefetch.p0(ptr %arrayidx36.le.i, i32 1, i32 3, i32 1) #9
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %do.cond43.i
  %72 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %arrayidx36.le.i, i32 0, i32 %71) #9, !srcloc !98
  %asmresult.i.i = extractvalue { i32, i32 } %72, 0
  %tobool.not.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not.i.i, label %__cmpxchg.exit.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i

__cmpxchg.exit.i:                                 ; preds = %do.body.i.i
  %asmresult1.i.i = extractvalue { i32, i32 } %72, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !99
  %cmp64.not.i = icmp eq i32 %asmresult1.i.i, 0
  br i1 %cmp64.not.i, label %do.end65.i, label %__cmpxchg.exit.i.do.body25.i_crit_edge

__cmpxchg.exit.i.do.body25.i_crit_edge:           ; preds = %__cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body25.i

do.end65.i:                                       ; preds = %__cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %mul66.i = mul i32 %i.0.i, %div1.i.i
  %add.i = add i32 %j.1.lcssa125.i, %mul66.i
  %73 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %add.i, ptr %18, align 8
  tail call void @_set_bit(i32 noundef 12, ptr noundef %i_state_flags.i) #9
  %74 = ptrtoint ptr %of_binfo.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %of_binfo.i, align 4
  %ob_bh70.i = getelementptr %struct.ext4_orphan_block, ptr %75, i32 %i.0.i, i32 1
  %76 = ptrtoint ptr %ob_bh70.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ob_bh70.i, align 4
  %call71.i = tail call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_orphan_file_add, i32 noundef 84, ptr noundef %handle, ptr noundef null, ptr noundef %77) #9
  br label %ext4_orphan_file_add.exit

ext4_orphan_file_add.exit:                        ; preds = %do.end65.i, %if.then17.i
  %retval.0.i = phi i32 [ %call15.i, %if.then17.i ], [ %call71.i, %do.end65.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %retval.0.i)
  %cmp96.not = icmp eq i32 %retval.0.i, -28
  br i1 %cmp96.not, label %ext4_orphan_file_add.exit.do.end103_crit_edge, label %ext4_orphan_file_add.exit.cleanup_crit_edge

ext4_orphan_file_add.exit.cleanup_crit_edge:      ; preds = %ext4_orphan_file_add.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

ext4_orphan_file_add.exit.do.end103_crit_edge:    ; preds = %ext4_orphan_file_add.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end103

do.end103:                                        ; preds = %ext4_orphan_file_add.exit.do.end103_crit_edge, %if.then29.i, %if.end.i.do.end103_crit_edge, %do.end92.do.end103_crit_edge
  %s_sbh = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 14
  %78 = ptrtoint ptr %s_sbh to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %s_sbh, align 64
  %call104 = tail call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @.str.2, i32 noundef 140, ptr noundef %handle, ptr noundef %1, ptr noundef %79, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %if.end107, label %do.end103.if.then151_crit_edge

do.end103.if.then151_crit_edge:                   ; preds = %do.end103
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then151

if.end107:                                        ; preds = %do.end103
  %call108 = call i32 @ext4_reserve_inode_write(ptr noundef %handle, ptr noundef %inode, ptr noundef nonnull %iloc) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %if.end111, label %if.end107.if.then151_crit_edge

if.end107.if.then151_crit_edge:                   ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then151

if.end111:                                        ; preds = %if.end107
  %s_orphan_lock = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 49
  call void @mutex_lock_nested(ptr noundef %s_orphan_lock, i32 noundef 0) #9
  %i_dtime = getelementptr i8, ptr %inode, i32 -404
  %80 = ptrtoint ptr %i_dtime to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %i_dtime, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool113.not = icmp eq i32 %81, 0
  br i1 %tobool113.not, label %if.end111.if.then119_crit_edge, label %lor.lhs.false114

if.end111.if.then119_crit_edge:                   ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then119

lor.lhs.false114:                                 ; preds = %if.end111
  %s_es = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 15
  %82 = ptrtoint ptr %s_es to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %s_es, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %83, align 8
  %86 = call i32 @llvm.bswap.i32(i32 %85)
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %86)
  %cmp117 = icmp ugt i32 %81, %86
  br i1 %cmp117, label %lor.lhs.false114.if.then119_crit_edge, label %if.end127

lor.lhs.false114.if.then119_crit_edge:            ; preds = %lor.lhs.false114
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then119

if.then119:                                       ; preds = %lor.lhs.false114.if.then119_crit_edge, %if.end111.if.then119_crit_edge
  %s_es120 = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 15
  %87 = ptrtoint ptr %s_es120 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %s_es120, align 4
  %s_last_orphan = getelementptr inbounds %struct.ext4_super_block, ptr %88, i32 0, i32 41
  %89 = ptrtoint ptr %s_last_orphan to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %s_last_orphan, align 8
  %91 = call i32 @llvm.bswap.i32(i32 %90)
  %92 = ptrtoint ptr %i_dtime to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %i_dtime, align 4
  %93 = ptrtoint ptr %s_sbh to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %s_sbh, align 64
  call fastcc void @lock_buffer(ptr noundef %94)
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %95 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %i_ino, align 8
  %97 = call i32 @llvm.bswap.i32(i32 %96)
  %98 = ptrtoint ptr %s_es120 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %s_es120, align 4
  %s_last_orphan125 = getelementptr inbounds %struct.ext4_super_block, ptr %99, i32 0, i32 41
  %100 = ptrtoint ptr %s_last_orphan125 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %97, ptr %s_last_orphan125, align 8
  call void @ext4_superblock_csum_set(ptr noundef %1) #9
  %101 = ptrtoint ptr %s_sbh to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %s_sbh, align 64
  call void @unlock_buffer(ptr noundef %102) #9
  %s_orphan.c = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 50
  %103 = ptrtoint ptr %s_orphan.c to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %s_orphan.c, align 4
  %call.i.i218 = call zeroext i1 @__list_add_valid(ptr noundef %18, ptr noundef %s_orphan.c, ptr noundef %104) #9
  br i1 %call.i.i218, label %if.end.i.i, label %if.then119.list_add.exit_crit_edge

if.then119.list_add.exit_crit_edge:               ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %18, ptr %prev1.i.i, align 4
  %106 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %104, ptr %18, align 4
  %prev3.i.i = getelementptr i8, ptr %inode, i32 -276
  %107 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %s_orphan.c, ptr %prev3.i.i, align 4
  %108 = ptrtoint ptr %s_orphan.c to i32
  call void @__asan_store4_noabort(i32 %108)
  store volatile ptr %18, ptr %s_orphan.c, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.then119.list_add.exit_crit_edge
  call void @mutex_unlock(ptr noundef %s_orphan_lock) #9
  %109 = ptrtoint ptr %s_sbh to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %s_sbh, align 64
  %call133 = call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @.str.2, i32 noundef 167, ptr noundef %handle, ptr noundef null, ptr noundef %110) #9
  %call134 = call i32 @ext4_mark_iloc_dirty(ptr noundef %handle, ptr noundef %inode, ptr noundef nonnull %iloc) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %tobool135.not = icmp eq i32 %call133, 0
  %err.0 = select i1 %tobool135.not, i32 %call134, i32 %call133
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool138.not = icmp eq i32 %err.0, 0
  br i1 %tobool138.not, label %list_add.exit.do.body149_crit_edge, label %if.then139

list_add.exit.do.body149_crit_edge:               ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body149

if.end127:                                        ; preds = %lor.lhs.false114
  %s_orphan = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 50
  %111 = ptrtoint ptr %s_orphan to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %s_orphan, align 4
  %call.i.i220 = call zeroext i1 @__list_add_valid(ptr noundef %18, ptr noundef %s_orphan, ptr noundef %112) #9
  br i1 %call.i.i220, label %if.end.i.i223, label %if.end127.list_add.exit224_crit_edge

if.end127.list_add.exit224_crit_edge:             ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add.exit224

if.end.i.i223:                                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i221 = getelementptr inbounds %struct.list_head, ptr %112, i32 0, i32 1
  %113 = ptrtoint ptr %prev1.i.i221 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %18, ptr %prev1.i.i221, align 4
  %114 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %112, ptr %18, align 4
  %prev3.i.i222 = getelementptr i8, ptr %inode, i32 -276
  %115 = ptrtoint ptr %prev3.i.i222 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %s_orphan, ptr %prev3.i.i222, align 4
  %116 = ptrtoint ptr %s_orphan to i32
  call void @__asan_store4_noabort(i32 %116)
  store volatile ptr %18, ptr %s_orphan, align 4
  br label %list_add.exit224

list_add.exit224:                                 ; preds = %if.end.i.i223, %if.end127.list_add.exit224_crit_edge
  call void @mutex_unlock(ptr noundef %s_orphan_lock) #9
  %117 = ptrtoint ptr %iloc to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %iloc, align 4
  %tobool.not.i = icmp eq ptr %118, null
  br i1 %tobool.not.i, label %list_add.exit224.do.body149_crit_edge, label %if.then.i

list_add.exit224.do.body149_crit_edge:            ; preds = %list_add.exit224
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body149

if.then.i:                                        ; preds = %list_add.exit224
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %118) #9
  br label %do.body149

if.then139:                                       ; preds = %list_add.exit
  call void @mutex_lock_nested(ptr noundef %s_orphan_lock, i32 noundef 0) #9
  %call.i.i227 = call zeroext i1 @__list_del_entry_valid(ptr noundef %18) #9
  br i1 %call.i.i227, label %if.end.i.i228, label %if.then139.list_del_init.exit_crit_edge

if.then139.list_del_init.exit_crit_edge:          ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i228:                                    ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr i8, ptr %inode, i32 -276
  %119 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %prev.i.i, align 4
  %121 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %18, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %122, i32 0, i32 1
  %123 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %120, ptr %prev1.i.i.i, align 4
  %124 = ptrtoint ptr %120 to i32
  call void @__asan_store4_noabort(i32 %124)
  store volatile ptr %122, ptr %120, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i228, %if.then139.list_del_init.exit_crit_edge
  %125 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %125)
  store volatile ptr %18, ptr %18, align 4
  %prev.i3.i = getelementptr i8, ptr %inode, i32 -276
  %126 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %18, ptr %prev.i3.i, align 4
  call void @mutex_unlock(ptr noundef %s_orphan_lock) #9
  br label %do.body149

do.body149:                                       ; preds = %list_del_init.exit, %if.then.i, %list_add.exit224.do.body149_crit_edge, %list_add.exit.do.body149_crit_edge
  %err.1 = phi i32 [ %err.0, %list_del_init.exit ], [ 0, %list_add.exit.do.body149_crit_edge ], [ 0, %list_add.exit224.do.body149_crit_edge ], [ 0, %if.then.i ]
  %i_ino145 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %127 = ptrtoint ptr %i_ino145 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %i_ino145, align 8
  call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 184, ptr noundef nonnull @.str.4, i32 noundef %128) #9
  %129 = ptrtoint ptr %i_ino145 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %i_ino145, align 8
  %131 = ptrtoint ptr %i_dtime to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %i_dtime, align 4
  call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 186, ptr noundef nonnull @.str.5, i32 noundef %130, i32 noundef %132) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool150.not = icmp eq i32 %err.1, 0
  br i1 %tobool150.not, label %do.body149.cleanup_crit_edge, label %do.body149.if.then151_crit_edge

do.body149.if.then151_crit_edge:                  ; preds = %do.body149
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then151

do.body149.cleanup_crit_edge:                     ; preds = %do.body149
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then151:                                       ; preds = %do.body149.if.then151_crit_edge, %if.end107.if.then151_crit_edge, %do.end103.if.then151_crit_edge
  %err.2234 = phi i32 [ %err.1, %do.body149.if.then151_crit_edge ], [ %call108, %if.end107.if.then151_crit_edge ], [ %call104, %do.end103.if.then151_crit_edge ]
  call void @__ext4_std_error(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef 188, i32 noundef %err.2234) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then151, %do.body149.cleanup_crit_edge, %ext4_orphan_file_add.exit.cleanup_crit_edge, %lor.lhs.false47.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %lor.lhs.false47.cleanup_crit_edge ], [ 0, %if.end37.cleanup_crit_edge ], [ %retval.0.i, %ext4_orphan_file_add.exit.cleanup_crit_edge ], [ %err.2234, %if.then151 ], [ 0, %do.body149.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %iloc) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_bad_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_journal_get_write_access(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_reserve_inode_write(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lock_buffer(ptr noundef %bh) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__might_sleep(ptr noundef nonnull @.str.26, i32 noundef 366) #9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bh, i32 noundef 4) #9
  %0 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bh, align 4
  %and.i.i.i = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %trylock_buffer.exit, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

trylock_buffer.exit:                              ; preds = %entry
  tail call void @llvm.prefetch.p0(ptr %bh, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bh, ptr %bh, i32 4, ptr elementtype(i32) %bh) #9, !srcloc !100
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !101
  %3 = and i32 %asmresult.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.not = icmp eq i32 %3, 0
  br i1 %tobool.not.not, label %trylock_buffer.exit.if.end_crit_edge, label %trylock_buffer.exit.if.then_crit_edge

trylock_buffer.exit.if.then_crit_edge:            ; preds = %trylock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

trylock_buffer.exit.if.end_crit_edge:             ; preds = %trylock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %trylock_buffer.exit.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @__lock_buffer(ptr noundef %bh) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %trylock_buffer.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_superblock_csum_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_handle_dirty_metadata(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_mark_iloc_dirty(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__jbd2_debug(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_std_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_orphan_del(ptr noundef %handle, ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  %iloc = alloca %struct.ext4_iloc, align 4
  %iloc2 = alloca %struct.ext4_iloc, align 4
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
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %iloc) #9
  %4 = ptrtoint ptr %iloc to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %iloc, align 4, !annotation !89
  %5 = getelementptr inbounds %struct.ext4_iloc, ptr %iloc, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !89
  %7 = getelementptr inbounds %struct.ext4_iloc, ptr %iloc, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4, !annotation !89
  %s_journal = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 47
  %9 = ptrtoint ptr %s_journal to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_journal, align 8
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %s_mount_state = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 25
  %11 = ptrtoint ptr %s_mount_state to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %s_mount_state, align 8
  %13 = and i16 %12, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool2.not = icmp eq i16 %13, 0
  br i1 %tobool2.not, label %land.lhs.true.cleanup111_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true.cleanup111_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup111

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %i_state = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 24
  %14 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %i_state, align 8
  %and3 = and i32 %15, 40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %land.rhs, label %if.end.if.end40_crit_edge

if.end.if.end40_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

land.rhs:                                         ; preds = %if.end
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 25
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_rwsem.i, i32 noundef 4) #9
  %16 = ptrtoint ptr %i_rwsem.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %i_rwsem.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i.i.not = icmp eq i32 %17, 0
  br i1 %cmp.i.i.not, label %land.rhs11, label %land.rhs.if.end40_crit_edge

land.rhs.if.end40_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

land.rhs11:                                       ; preds = %land.rhs
  %.b168 = load i1, ptr @ext4_orphan_del.__already_done, align 1
  br i1 %.b168, label %land.rhs11.if.end40_crit_edge, label %if.then18, !prof !90

land.rhs11.if.end40_crit_edge:                    ; preds = %land.rhs11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.then18:                                        ; preds = %land.rhs11
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ext4_orphan_del.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 240, i32 noundef 9, ptr noundef null) #9
  br label %if.end40

if.end40:                                         ; preds = %if.then18, %land.rhs11.if.end40_crit_edge, %land.rhs.if.end40_crit_edge, %if.end.if.end40_crit_edge
  %i_state_flags.i = getelementptr i8, ptr %inode, i32 -384
  %18 = ptrtoint ptr %i_state_flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %i_state_flags.i, align 4
  %20 = and i32 %19, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool49.not = icmp eq i32 %20, 0
  br i1 %tobool49.not, label %if.end52, label %if.then50

if.then50:                                        ; preds = %if.end40
  %21 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %22, i32 0, i32 33
  %23 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_fs_info.i.i, align 16
  %tobool.not.i = icmp eq ptr %handle, null
  br i1 %tobool.not.i, label %if.then50.ext4_orphan_file_del.exit_crit_edge, label %if.end.i

if.then50.ext4_orphan_file_del.exit_crit_edge:    ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #11
  br label %ext4_orphan_file_del.exit

if.end.i:                                         ; preds = %if.then50
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %22, i32 0, i32 3
  %25 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %s_blocksize.i.i, align 16
  %sub.i.i = add i32 %26, -8
  %div1.i.i = lshr i32 %sub.i.i, 2
  %s_orphan_info.i = getelementptr inbounds %struct.ext4_sb_info, ptr %24, i32 0, i32 51
  %27 = getelementptr i8, ptr %inode, i32 -280
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 8
  %.frozen = freeze i32 %29
  %div1.i.i.frozen = freeze i32 %div1.i.i
  %div.i = udiv i32 %.frozen, %div1.i.i.frozen
  %30 = mul i32 %div.i, %div1.i.i.frozen
  %rem.i.decomposed = sub i32 %.frozen, %30
  %31 = ptrtoint ptr %s_orphan_info.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %s_orphan_info.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %32)
  %cmp.not.i = icmp slt i32 %div.i, %32
  br i1 %cmp.not.i, label %if.end44.critedge.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %if.end.i
  %.b81.i = load i1, ptr @ext4_orphan_file_del.__already_done, align 1
  br i1 %.b81.i, label %land.rhs.i.ext4_orphan_file_del.exit_crit_edge, label %if.then12.i, !prof !90

land.rhs.i.ext4_orphan_file_del.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ext4_orphan_file_del.exit

if.then12.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ext4_orphan_file_del.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 204, i32 noundef 9, ptr noundef null) #9
  br label %ext4_orphan_file_del.exit

if.end44.critedge.i:                              ; preds = %if.end.i
  %of_binfo.i = getelementptr inbounds %struct.ext4_sb_info, ptr %24, i32 0, i32 51, i32 2
  %33 = ptrtoint ptr %of_binfo.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %of_binfo.i, align 4
  %ob_bh.i = getelementptr %struct.ext4_orphan_block, ptr %34, i32 %div.i, i32 1
  %35 = ptrtoint ptr %ob_bh.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ob_bh.i, align 4
  %call46.i = tail call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_orphan_file_del, i32 noundef 208, ptr noundef nonnull %handle, ptr noundef %22, ptr noundef %36, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %tobool47.not.i = icmp eq i32 %call46.i, 0
  br i1 %tobool47.not.i, label %if.end49.i, label %if.end44.critedge.i.ext4_orphan_file_del.exit_crit_edge

if.end44.critedge.i.ext4_orphan_file_del.exit_crit_edge: ; preds = %if.end44.critedge.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ext4_orphan_file_del.exit

if.end49.i:                                       ; preds = %if.end44.critedge.i
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %of_binfo.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %of_binfo.i, align 4
  %ob_bh52.i = getelementptr %struct.ext4_orphan_block, ptr %38, i32 %div.i, i32 1
  %39 = ptrtoint ptr %ob_bh52.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ob_bh52.i, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %40, i32 0, i32 5
  %41 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %b_data.i, align 4
  %arrayidx53.i = getelementptr i32, ptr %42, i32 %rem.i.decomposed
  %43 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %arrayidx53.i, align 4
  %44 = load ptr, ptr %of_binfo.i, align 4
  %arrayidx55.i = getelementptr %struct.ext4_orphan_block, ptr %44, i32 %div.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx55.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %arrayidx55.i, i32 1, i32 3, i32 1) #9
  %45 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx55.i, ptr %arrayidx55.i, i32 1, ptr elementtype(i32) %arrayidx55.i) #9, !srcloc !96
  %46 = ptrtoint ptr %of_binfo.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %of_binfo.i, align 4
  %ob_bh58.i = getelementptr %struct.ext4_orphan_block, ptr %47, i32 %div.i, i32 1
  %48 = ptrtoint ptr %ob_bh58.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ob_bh58.i, align 4
  %call59.i = tail call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_orphan_file_del, i32 noundef 215, ptr noundef nonnull %handle, ptr noundef null, ptr noundef %49) #9
  br label %ext4_orphan_file_del.exit

ext4_orphan_file_del.exit:                        ; preds = %if.end49.i, %if.end44.critedge.i.ext4_orphan_file_del.exit_crit_edge, %if.then12.i, %land.rhs.i.ext4_orphan_file_del.exit_crit_edge, %if.then50.ext4_orphan_file_del.exit_crit_edge
  %ret.0.i = phi i32 [ %call46.i, %if.end44.critedge.i.ext4_orphan_file_del.exit_crit_edge ], [ %call59.i, %if.end49.i ], [ 0, %if.then50.ext4_orphan_file_del.exit_crit_edge ], [ 0, %if.then12.i ], [ 0, %land.rhs.i.ext4_orphan_file_del.exit_crit_edge ]
  tail call void @_clear_bit(i32 noundef 12, ptr noundef %i_state_flags.i) #9
  %50 = getelementptr i8, ptr %inode, i32 -280
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %50, ptr %50, align 4
  %prev.i.i = getelementptr i8, ptr %inode, i32 -276
  %52 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %50, ptr %prev.i.i, align 4
  br label %cleanup111

if.end52:                                         ; preds = %if.end40
  %53 = getelementptr i8, ptr %inode, i32 -280
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile ptr, ptr %53, align 4
  %cmp.i.not = icmp eq ptr %55, %53
  br i1 %cmp.i.not, label %if.end52.cleanup111_crit_edge, label %if.end56

if.end52.cleanup111_crit_edge:                    ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup111

if.end56:                                         ; preds = %if.end52
  %tobool57.not = icmp eq ptr %handle, null
  br i1 %tobool57.not, label %if.end56.if.end60_crit_edge, label %if.then58

if.end56.if.end60_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

if.then58:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  %call59 = call i32 @ext4_reserve_inode_write(ptr noundef nonnull %handle, ptr noundef %inode, ptr noundef nonnull %iloc) #9
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %if.end56.if.end60_crit_edge
  %err.0 = phi i32 [ %call59, %if.then58 ], [ 0, %if.end56.if.end60_crit_edge ]
  %s_orphan_lock = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 49
  call void @mutex_lock_nested(ptr noundef %s_orphan_lock, i32 noundef 0) #9
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %56 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %i_ino, align 8
  call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 4, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ext4_orphan_del, i32 noundef 254, ptr noundef nonnull @.str.6, i32 noundef %57) #9
  %prev61 = getelementptr i8, ptr %inode, i32 -276
  %58 = ptrtoint ptr %prev61 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %prev61, align 4
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %53) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end60.list_del_init.exit_crit_edge

if.end60.list_del_init.exit_crit_edge:            ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  %60 = ptrtoint ptr %prev61 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %prev61, align 4
  %62 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %53, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %61, ptr %prev1.i.i.i, align 4
  %65 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %63, ptr %61, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end60.list_del_init.exit_crit_edge
  %66 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %53, ptr %53, align 4
  %67 = ptrtoint ptr %prev61 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %53, ptr %prev61, align 4
  %tobool57.not.not = xor i1 %tobool57.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool63.not = icmp eq i32 %err.0, 0
  %or.cond = select i1 %tobool57.not.not, i1 %tobool63.not, i1 false
  br i1 %or.cond, label %if.end66, label %if.then64

if.then64:                                        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @mutex_unlock(ptr noundef %s_orphan_lock) #9
  br label %do.body104

if.end66:                                         ; preds = %list_del_init.exit
  %i_dtime = getelementptr i8, ptr %inode, i32 -404
  %68 = ptrtoint ptr %i_dtime to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %i_dtime, align 4
  %s_orphan = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 50
  %cmp = icmp eq ptr %59, %s_orphan
  br i1 %cmp, label %if.then69, label %if.else

if.then69:                                        ; preds = %if.end66
  call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 4, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ext4_orphan_del, i32 noundef 270, ptr noundef nonnull @.str.7, i32 noundef %69) #9
  %70 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %i_sb, align 4
  %s_sbh = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 14
  %72 = ptrtoint ptr %s_sbh to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %s_sbh, align 64
  %call74 = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_orphan_del, i32 noundef 273, ptr noundef nonnull %handle, ptr noundef %71, ptr noundef %73, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end78, label %if.then76

if.then76:                                        ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #11
  call void @mutex_unlock(ptr noundef %s_orphan_lock) #9
  br label %out_brelse

if.end78:                                         ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #11
  %74 = ptrtoint ptr %s_sbh to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %s_sbh, align 64
  call fastcc void @lock_buffer(ptr noundef %75)
  %76 = call i32 @llvm.bswap.i32(i32 %69)
  %s_es = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 15
  %77 = ptrtoint ptr %s_es to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %s_es, align 4
  %s_last_orphan = getelementptr inbounds %struct.ext4_super_block, ptr %78, i32 0, i32 41
  %79 = ptrtoint ptr %s_last_orphan to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %76, ptr %s_last_orphan, align 8
  %80 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %i_sb, align 4
  call void @ext4_superblock_csum_set(ptr noundef %81) #9
  %82 = ptrtoint ptr %s_sbh to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %s_sbh, align 64
  call void @unlock_buffer(ptr noundef %83) #9
  call void @mutex_unlock(ptr noundef %s_orphan_lock) #9
  %84 = ptrtoint ptr %s_sbh to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %s_sbh, align 64
  %call84 = call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_orphan_del, i32 noundef 283, ptr noundef nonnull %handle, ptr noundef null, ptr noundef %85) #9
  br label %if.end97

if.else:                                          ; preds = %if.end66
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %iloc2) #9
  %86 = ptrtoint ptr %iloc2 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr inttoptr (i32 -1 to ptr), ptr %iloc2, align 4, !annotation !89
  %87 = getelementptr inbounds %struct.ext4_iloc, ptr %iloc2, i32 0, i32 1
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 -1, ptr %87, align 4, !annotation !89
  %89 = getelementptr inbounds %struct.ext4_iloc, ptr %iloc2, i32 0, i32 2
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 -1, ptr %89, align 4, !annotation !89
  %vfs_inode = getelementptr i8, ptr %59, i32 280
  %i_ino86 = getelementptr i8, ptr %59, i32 320
  %91 = ptrtoint ptr %i_ino86 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %i_ino86, align 8
  call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 4, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ext4_orphan_del, i32 noundef 290, ptr noundef nonnull @.str.8, i32 noundef %92, i32 noundef %69) #9
  %call87 = call i32 @ext4_reserve_inode_write(ptr noundef nonnull %handle, ptr noundef %vfs_inode, ptr noundef nonnull %iloc2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %i_dtime93 = getelementptr i8, ptr %59, i32 -124
  %93 = ptrtoint ptr %i_dtime93 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %69, ptr %i_dtime93, align 4
  %call94 = call i32 @ext4_mark_iloc_dirty(ptr noundef nonnull %handle, ptr noundef %vfs_inode, ptr noundef nonnull %iloc2) #9
  call void @mutex_unlock(ptr noundef %s_orphan_lock) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %iloc2) #9
  br label %if.end97

cleanup:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  call void @mutex_unlock(ptr noundef %s_orphan_lock) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %iloc2) #9
  br label %out_brelse

if.end97:                                         ; preds = %cleanup.thread, %if.end78
  %err.2 = phi i32 [ %call84, %if.end78 ], [ %call94, %cleanup.thread ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2)
  %tobool98.not = icmp eq i32 %err.2, 0
  br i1 %tobool98.not, label %if.end100, label %if.end97.out_brelse_crit_edge

if.end97.out_brelse_crit_edge:                    ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_brelse

if.end100:                                        ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #11
  %94 = ptrtoint ptr %i_dtime to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %i_dtime, align 4
  %call103 = call i32 @ext4_mark_iloc_dirty(ptr noundef nonnull %handle, ptr noundef %inode, ptr noundef nonnull %iloc) #9
  br label %do.body104

do.body104:                                       ; preds = %if.end100, %if.then64
  %err.3 = phi i32 [ %err.0, %if.then64 ], [ %call103, %if.end100 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.3)
  %tobool105.not = icmp eq i32 %err.3, 0
  br i1 %tobool105.not, label %do.body104.cleanup111_crit_edge, label %do.body104.if.then106_crit_edge

do.body104.if.then106_crit_edge:                  ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then106

do.body104.cleanup111_crit_edge:                  ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup111

if.then106:                                       ; preds = %if.then.i, %out_brelse.if.then106_crit_edge, %do.body104.if.then106_crit_edge
  %err.3180 = phi i32 [ %err.3, %do.body104.if.then106_crit_edge ], [ %err.4, %if.then.i ], [ %err.4, %out_brelse.if.then106_crit_edge ]
  %95 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %i_sb, align 4
  call void @__ext4_std_error(ptr noundef %96, ptr noundef nonnull @__func__.ext4_orphan_del, i32 noundef 305, i32 noundef %err.3180) #9
  br label %cleanup111

out_brelse:                                       ; preds = %if.end97.out_brelse_crit_edge, %cleanup, %if.then76
  %err.4 = phi i32 [ %call74, %if.then76 ], [ %err.2, %if.end97.out_brelse_crit_edge ], [ %call87, %cleanup ]
  %97 = ptrtoint ptr %iloc to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %iloc, align 4
  %tobool.not.i174 = icmp eq ptr %98, null
  br i1 %tobool.not.i174, label %out_brelse.if.then106_crit_edge, label %if.then.i

out_brelse.if.then106_crit_edge:                  ; preds = %out_brelse
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then106

if.then.i:                                        ; preds = %out_brelse
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %98) #9
  br label %if.then106

cleanup111:                                       ; preds = %if.then106, %do.body104.cleanup111_crit_edge, %if.end52.cleanup111_crit_edge, %ext4_orphan_file_del.exit, %land.lhs.true.cleanup111_crit_edge
  %retval.0 = phi i32 [ %ret.0.i, %ext4_orphan_file_del.exit ], [ 0, %land.lhs.true.cleanup111_crit_edge ], [ 0, %if.end52.cleanup111_crit_edge ], [ %err.3180, %if.then106 ], [ 0, %do.body104.cleanup111_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %iloc) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ext4_orphan_cleanup(ptr noundef %sb, ptr nocapture noundef %es) local_unnamed_addr #0 align 64 {
entry:
  %nr_orphans = alloca i32, align 4
  %nr_truncates = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %s_flags1 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %0 = ptrtoint ptr %s_flags1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %s_flags1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nr_orphans) #9
  %2 = ptrtoint ptr %nr_orphans to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %nr_orphans, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nr_truncates) #9
  %3 = ptrtoint ptr %nr_truncates to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %nr_truncates, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %s_orphan_info = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 51
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %6 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_blocksize.i, align 16
  %sub.i = add i32 %7, -8
  %div1.i = lshr i32 %sub.i, 2
  %s_last_orphan = getelementptr inbounds %struct.ext4_super_block, ptr %es, i32 0, i32 41
  %8 = ptrtoint ptr %s_last_orphan to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_last_orphan, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %10 = ptrtoint ptr %s_orphan_info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_orphan_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool3.not = icmp eq i32 %11, 0
  br i1 %tobool3.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 4, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ext4_orphan_cleanup, i32 noundef 394, ptr noundef nonnull @.str.9) #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %12 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_bdev, align 4
  %bd_read_only.i = getelementptr inbounds %struct.block_device, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %bd_read_only.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bd_read_only.i, align 8, !range !102
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i, label %lor.rhs.i, label %if.end.if.then6_crit_edge

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6

lor.rhs.i:                                        ; preds = %if.end
  %bd_disk.i = getelementptr inbounds %struct.block_device, ptr %13, i32 0, i32 17
  %16 = ptrtoint ptr %bd_disk.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bd_disk.i, align 8
  %part0.i.i = getelementptr inbounds %struct.gendisk, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %part0.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %part0.i.i, align 4
  %bd_read_only.i.i = getelementptr inbounds %struct.block_device, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %bd_read_only.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bd_read_only.i.i, align 8, !range !102
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i.i = icmp eq i8 %21, 0
  br i1 %tobool.not.i.i, label %bdev_read_only.exit, label %lor.rhs.i.if.then6_crit_edge

lor.rhs.i.if.then6_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6

bdev_read_only.exit:                              ; preds = %lor.rhs.i
  %state.i.i = getelementptr inbounds %struct.gendisk, ptr %17, i32 0, i32 12
  %22 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %state.i.i, align 4
  %24 = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool5.not = icmp eq i32 %24, 0
  br i1 %tobool5.not, label %if.end7, label %bdev_read_only.exit.if.then6_crit_edge

bdev_read_only.exit.if.then6_crit_edge:           ; preds = %bdev_read_only.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6

if.then6:                                         ; preds = %bdev_read_only.exit.if.then6_crit_edge, %lor.rhs.i.if.then6_crit_edge, %if.end.if.then6_crit_edge
  tail call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %sb, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #9
  br label %cleanup

if.end7:                                          ; preds = %bdev_read_only.exit
  %call8 = tail call i32 @ext4_feature_set_ok(ptr noundef %sb, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %sb, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #9
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %25 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_state = getelementptr inbounds %struct.ext4_sb_info, ptr %26, i32 0, i32 25
  %27 = ptrtoint ptr %s_mount_state to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %s_mount_state, align 8
  %29 = and i16 %28, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool13.not = icmp eq i16 %29, 0
  br i1 %tobool13.not, label %if.end23, label %if.then14

if.then14:                                        ; preds = %if.end11
  %30 = ptrtoint ptr %s_last_orphan to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %s_last_orphan, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool16.not = icmp ne i32 %31, 0
  %and18 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  %or.cond = select i1 %tobool16.not, i1 %tobool19.not, i1 false
  br i1 %or.cond, label %if.then20, label %if.then14.if.end22_crit_edge

if.then14.if.end22_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then20:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %sb, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.14) #9
  %32 = ptrtoint ptr %s_last_orphan to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %s_last_orphan, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.then14.if.end22_crit_edge
  tail call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ext4_orphan_cleanup, i32 noundef 418, ptr noundef nonnull @.str.15) #9
  br label %cleanup

if.end23:                                         ; preds = %if.end11
  %and24 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end23.if.end40_crit_edge, label %if.end29

if.end23.if.end40_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.end29:                                         ; preds = %if.end23
  tail call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %sb, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.16) #9
  %33 = ptrtoint ptr %s_flags1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %s_flags1, align 4
  %and28 = and i32 %34, -2
  store i32 %and28, ptr %s_flags1, align 4
  %35 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %s_fs_info.i, align 16
  %s_es.i = getelementptr inbounds %struct.ext4_sb_info, ptr %36, i32 0, i32 15
  %37 = ptrtoint ptr %s_es.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %s_es.i, align 4
  %s_feature_ro_compat.i = getelementptr inbounds %struct.ext4_super_block, ptr %38, i32 0, i32 30
  %39 = ptrtoint ptr %s_feature_ro_compat.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %s_feature_ro_compat.i, align 4
  %and.i = and i32 %40, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 0
  %brmerge = select i1 %cmp.i.not, i1 true, i1 %tobool25.not
  br i1 %brmerge, label %if.end29.if.end40_crit_edge, label %if.then35

if.end29.if.end40_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.then35:                                        ; preds = %if.end29
  %call36 = tail call i32 @ext4_enable_quotas(ptr noundef %sb) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.then35.if.end40_crit_edge, label %if.else

if.then35.if.end40_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.else:                                          ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %sb, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.17, i32 noundef %call36) #9
  br label %if.end40

if.end40:                                         ; preds = %if.else, %if.then35.if.end40_crit_edge, %if.end29.if.end40_crit_edge, %if.end23.if.end40_crit_edge
  %quota_update.1 = phi i32 [ 0, %if.end29.if.end40_crit_edge ], [ 0, %if.else ], [ 1, %if.then35.if.end40_crit_edge ], [ 0, %if.end23.if.end40_crit_edge ]
  %dep_map.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 14, i32 6
  %41 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %s_fs_info.i, align 16
  %arrayidx = getelementptr %struct.ext4_sb_info, ptr %42, i32 0, i32 56, i32 0
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx, align 4
  %tobool43.not = icmp eq ptr %44, null
  br i1 %tobool43.not, label %if.end40.for.inc_crit_edge, label %if.then44

if.end40.for.inc_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then44:                                        ; preds = %if.end40
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i199 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i199, label %land.lhs.true.i, label %if.then44.ext4_quota_on_mount.exit_crit_edge

if.then44.ext4_quota_on_mount.exit_crit_edge:     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  br label %ext4_quota_on_mount.exit

land.lhs.true.i:                                  ; preds = %if.then44
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.ext4_quota_on_mount.exit_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.ext4_quota_on_mount.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ext4_quota_on_mount.exit

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b12.i = load i1, ptr @ext4_quota_on_mount.__warned, align 1
  br i1 %.b12.i, label %land.lhs.true3.i.ext4_quota_on_mount.exit_crit_edge, label %if.then.i

land.lhs.true3.i.ext4_quota_on_mount.exit_crit_edge: ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ext4_quota_on_mount.exit

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ext4_quota_on_mount.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 318, ptr noundef nonnull @.str.27) #9
  br label %ext4_quota_on_mount.exit

ext4_quota_on_mount.exit:                         ; preds = %if.then.i, %land.lhs.true3.i.ext4_quota_on_mount.exit_crit_edge, %land.lhs.true.i.ext4_quota_on_mount.exit_crit_edge, %if.then44.ext4_quota_on_mount.exit_crit_edge
  %45 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %s_fs_info.i, align 16
  %arrayidx.i = getelementptr %struct.ext4_sb_info, ptr %46, i32 0, i32 56, i32 0
  %47 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.i, align 4
  %s_jquota_fmt.i = getelementptr inbounds %struct.ext4_sb_info, ptr %46, i32 0, i32 57
  %49 = ptrtoint ptr %s_jquota_fmt.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %s_jquota_fmt.i, align 4
  %call7.i = tail call i32 @dquot_quota_on_mount(ptr noundef %sb, ptr noundef %48, i32 noundef %50, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool47.not = icmp eq i32 %call7.i, 0
  br i1 %tobool47.not, label %ext4_quota_on_mount.exit.for.inc_crit_edge, label %if.else49

ext4_quota_on_mount.exit.for.inc_crit_edge:       ; preds = %ext4_quota_on_mount.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.else49:                                        ; preds = %ext4_quota_on_mount.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %sb, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.18, i32 noundef 0, i32 noundef %call7.i) #9
  br label %for.inc

for.inc:                                          ; preds = %if.else49, %ext4_quota_on_mount.exit.for.inc_crit_edge, %if.end40.for.inc_crit_edge
  %quota_update.4 = phi i32 [ %quota_update.1, %if.end40.for.inc_crit_edge ], [ %quota_update.1, %if.else49 ], [ 1, %ext4_quota_on_mount.exit.for.inc_crit_edge ]
  %51 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %s_fs_info.i, align 16
  %arrayidx.1 = getelementptr %struct.ext4_sb_info, ptr %52, i32 0, i32 56, i32 1
  %53 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx.1, align 4
  %tobool43.not.1 = icmp eq ptr %54, null
  br i1 %tobool43.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then44.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

if.then44.1:                                      ; preds = %for.inc
  %call.i.i.1 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.1)
  %tobool.not.i199.1 = icmp eq i32 %call.i.i.1, 0
  br i1 %tobool.not.i199.1, label %land.lhs.true.i.1, label %if.then44.1.ext4_quota_on_mount.exit.1_crit_edge

if.then44.1.ext4_quota_on_mount.exit.1_crit_edge: ; preds = %if.then44.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %ext4_quota_on_mount.exit.1

land.lhs.true.i.1:                                ; preds = %if.then44.1
  %call1.i.1 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.1)
  %tobool2.not.i.1 = icmp eq i32 %call1.i.1, 0
  br i1 %tobool2.not.i.1, label %land.lhs.true.i.1.ext4_quota_on_mount.exit.1_crit_edge, label %land.lhs.true3.i.1

land.lhs.true.i.1.ext4_quota_on_mount.exit.1_crit_edge: ; preds = %land.lhs.true.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %ext4_quota_on_mount.exit.1

land.lhs.true3.i.1:                               ; preds = %land.lhs.true.i.1
  %.b12.i.1 = load i1, ptr @ext4_quota_on_mount.__warned, align 1
  br i1 %.b12.i.1, label %land.lhs.true3.i.1.ext4_quota_on_mount.exit.1_crit_edge, label %if.then.i.1

land.lhs.true3.i.1.ext4_quota_on_mount.exit.1_crit_edge: ; preds = %land.lhs.true3.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %ext4_quota_on_mount.exit.1

if.then.i.1:                                      ; preds = %land.lhs.true3.i.1
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ext4_quota_on_mount.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 318, ptr noundef nonnull @.str.27) #9
  br label %ext4_quota_on_mount.exit.1

ext4_quota_on_mount.exit.1:                       ; preds = %if.then.i.1, %land.lhs.true3.i.1.ext4_quota_on_mount.exit.1_crit_edge, %land.lhs.true.i.1.ext4_quota_on_mount.exit.1_crit_edge, %if.then44.1.ext4_quota_on_mount.exit.1_crit_edge
  %55 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %s_fs_info.i, align 16
  %arrayidx.i.1 = getelementptr %struct.ext4_sb_info, ptr %56, i32 0, i32 56, i32 1
  %57 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx.i.1, align 4
  %s_jquota_fmt.i.1 = getelementptr inbounds %struct.ext4_sb_info, ptr %56, i32 0, i32 57
  %59 = ptrtoint ptr %s_jquota_fmt.i.1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %s_jquota_fmt.i.1, align 4
  %call7.i.1 = tail call i32 @dquot_quota_on_mount(ptr noundef %sb, ptr noundef %58, i32 noundef %60, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.1)
  %tobool47.not.1 = icmp eq i32 %call7.i.1, 0
  br i1 %tobool47.not.1, label %ext4_quota_on_mount.exit.1.for.inc.1_crit_edge, label %if.else49.1

ext4_quota_on_mount.exit.1.for.inc.1_crit_edge:   ; preds = %ext4_quota_on_mount.exit.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

if.else49.1:                                      ; preds = %ext4_quota_on_mount.exit.1
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %sb, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.18, i32 noundef 1, i32 noundef %call7.i.1) #9
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.else49.1, %ext4_quota_on_mount.exit.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %quota_update.4.1 = phi i32 [ %quota_update.4, %for.inc.for.inc.1_crit_edge ], [ %quota_update.4, %if.else49.1 ], [ 1, %ext4_quota_on_mount.exit.1.for.inc.1_crit_edge ]
  %61 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %s_fs_info.i, align 16
  %arrayidx.2 = getelementptr %struct.ext4_sb_info, ptr %62, i32 0, i32 56, i32 2
  %63 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx.2, align 4
  %tobool43.not.2 = icmp eq ptr %64, null
  br i1 %tobool43.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then44.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2

if.then44.2:                                      ; preds = %for.inc.1
  %call.i.i.2 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.2)
  %tobool.not.i199.2 = icmp eq i32 %call.i.i.2, 0
  br i1 %tobool.not.i199.2, label %land.lhs.true.i.2, label %if.then44.2.ext4_quota_on_mount.exit.2_crit_edge

if.then44.2.ext4_quota_on_mount.exit.2_crit_edge: ; preds = %if.then44.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %ext4_quota_on_mount.exit.2

land.lhs.true.i.2:                                ; preds = %if.then44.2
  %call1.i.2 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.2)
  %tobool2.not.i.2 = icmp eq i32 %call1.i.2, 0
  br i1 %tobool2.not.i.2, label %land.lhs.true.i.2.ext4_quota_on_mount.exit.2_crit_edge, label %land.lhs.true3.i.2

land.lhs.true.i.2.ext4_quota_on_mount.exit.2_crit_edge: ; preds = %land.lhs.true.i.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %ext4_quota_on_mount.exit.2

land.lhs.true3.i.2:                               ; preds = %land.lhs.true.i.2
  %.b12.i.2 = load i1, ptr @ext4_quota_on_mount.__warned, align 1
  br i1 %.b12.i.2, label %land.lhs.true3.i.2.ext4_quota_on_mount.exit.2_crit_edge, label %if.then.i.2

land.lhs.true3.i.2.ext4_quota_on_mount.exit.2_crit_edge: ; preds = %land.lhs.true3.i.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %ext4_quota_on_mount.exit.2

if.then.i.2:                                      ; preds = %land.lhs.true3.i.2
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ext4_quota_on_mount.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 318, ptr noundef nonnull @.str.27) #9
  br label %ext4_quota_on_mount.exit.2

ext4_quota_on_mount.exit.2:                       ; preds = %if.then.i.2, %land.lhs.true3.i.2.ext4_quota_on_mount.exit.2_crit_edge, %land.lhs.true.i.2.ext4_quota_on_mount.exit.2_crit_edge, %if.then44.2.ext4_quota_on_mount.exit.2_crit_edge
  %65 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %s_fs_info.i, align 16
  %arrayidx.i.2 = getelementptr %struct.ext4_sb_info, ptr %66, i32 0, i32 56, i32 2
  %67 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx.i.2, align 4
  %s_jquota_fmt.i.2 = getelementptr inbounds %struct.ext4_sb_info, ptr %66, i32 0, i32 57
  %69 = ptrtoint ptr %s_jquota_fmt.i.2 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %s_jquota_fmt.i.2, align 4
  %call7.i.2 = tail call i32 @dquot_quota_on_mount(ptr noundef %sb, ptr noundef %68, i32 noundef %70, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.2)
  %tobool47.not.2 = icmp eq i32 %call7.i.2, 0
  br i1 %tobool47.not.2, label %ext4_quota_on_mount.exit.2.for.inc.2_crit_edge, label %if.else49.2

ext4_quota_on_mount.exit.2.for.inc.2_crit_edge:   ; preds = %ext4_quota_on_mount.exit.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2

if.else49.2:                                      ; preds = %ext4_quota_on_mount.exit.2
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %sb, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.18, i32 noundef 2, i32 noundef %call7.i.2) #9
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.else49.2, %ext4_quota_on_mount.exit.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %quota_update.4.2 = phi i32 [ %quota_update.4.1, %for.inc.1.for.inc.2_crit_edge ], [ %quota_update.4.1, %if.else49.2 ], [ 1, %ext4_quota_on_mount.exit.2.for.inc.2_crit_edge ]
  %71 = ptrtoint ptr %s_last_orphan to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %s_last_orphan, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool53.not211 = icmp eq i32 %72, 0
  br i1 %tobool53.not211, label %for.inc.2.while.end_crit_edge, label %for.inc.2.while.body_crit_edge

for.inc.2.while.body_crit_edge:                   ; preds = %for.inc.2
  br label %while.body

for.inc.2.while.end_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %list_add.exit.while.body_crit_edge, %for.inc.2.while.body_crit_edge
  %73 = phi i32 [ %90, %list_add.exit.while.body_crit_edge ], [ %72, %for.inc.2.while.body_crit_edge ]
  %74 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_state55 = getelementptr inbounds %struct.ext4_sb_info, ptr %75, i32 0, i32 25
  %76 = ptrtoint ptr %s_mount_state55 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %s_mount_state55, align 8
  %78 = and i16 %77, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %78)
  %tobool58.not = icmp eq i16 %78, 0
  br i1 %tobool58.not, label %if.end61, label %if.then59

if.then59:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ext4_orphan_cleanup, i32 noundef 462, ptr noundef nonnull @.str.15) #9
  br label %while.end.sink.split

if.end61:                                         ; preds = %while.body
  %79 = tail call i32 @llvm.bswap.i32(i32 %73)
  %call63 = tail call ptr @ext4_orphan_get(ptr noundef %sb, i32 noundef %79) #9
  %cmp.i202 = icmp ugt ptr %call63, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i202, label %if.end61.while.end.sink.split_crit_edge, label %if.end67

if.end61.while.end.sink.split_crit_edge:          ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.sink.split

if.end67:                                         ; preds = %if.end61
  %80 = getelementptr i8, ptr %call63, i32 -280
  %81 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %s_fs_info.i, align 16
  %s_orphan = getelementptr inbounds %struct.ext4_sb_info, ptr %82, i32 0, i32 50
  %83 = ptrtoint ptr %s_orphan to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %s_orphan, align 4
  %call.i.i204 = tail call zeroext i1 @__list_add_valid(ptr noundef %80, ptr noundef %s_orphan, ptr noundef %84) #9
  br i1 %call.i.i204, label %if.end.i.i, label %if.end67.list_add.exit_crit_edge

if.end67.list_add.exit_crit_edge:                 ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %80, ptr %prev1.i.i, align 4
  %86 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %84, ptr %80, align 4
  %prev3.i.i = getelementptr i8, ptr %call63, i32 -276
  %87 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %s_orphan, ptr %prev3.i.i, align 4
  %88 = ptrtoint ptr %s_orphan to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile ptr %80, ptr %s_orphan, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end67.list_add.exit_crit_edge
  call fastcc void @ext4_process_orphan(ptr noundef %call63, ptr noundef nonnull %nr_truncates, ptr noundef nonnull %nr_orphans)
  %89 = ptrtoint ptr %s_last_orphan to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %s_last_orphan, align 8
  %tobool53.not = icmp eq i32 %90, 0
  br i1 %tobool53.not, label %list_add.exit.while.end_crit_edge, label %list_add.exit.while.body_crit_edge

list_add.exit.while.body_crit_edge:               ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

list_add.exit.while.end_crit_edge:                ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end.sink.split:                             ; preds = %if.end61.while.end.sink.split_crit_edge, %if.then59
  %91 = ptrtoint ptr %s_last_orphan to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %s_last_orphan, align 8
  br label %while.end

while.end:                                        ; preds = %while.end.sink.split, %list_add.exit.while.end_crit_edge, %for.inc.2.while.end_crit_edge
  %92 = ptrtoint ptr %s_orphan_info to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %s_orphan_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp72215 = icmp sgt i32 %93, 0
  br i1 %cmp72215, label %for.body74.lr.ph, label %while.end.for.end95_crit_edge

while.end.for.end95_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end95

for.body74.lr.ph:                                 ; preds = %while.end
  %of_binfo = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 51, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i)
  %cmp77212.not = icmp ult i32 %sub.i, 4
  %umax = call i32 @llvm.umax.i32(i32 %div1.i, i32 1)
  br label %for.body74

for.body74:                                       ; preds = %for.inc93.for.body74_crit_edge, %for.body74.lr.ph
  %i.1216 = phi i32 [ 0, %for.body74.lr.ph ], [ %inc94, %for.inc93.for.body74_crit_edge ]
  %94 = ptrtoint ptr %of_binfo to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %of_binfo, align 4
  %ob_bh = getelementptr %struct.ext4_orphan_block, ptr %95, i32 %i.1216, i32 1
  %96 = ptrtoint ptr %ob_bh to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %ob_bh, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %97, i32 0, i32 5
  %98 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %b_data, align 4
  br i1 %cmp77212.not, label %for.body74.for.inc93_crit_edge, label %for.body79.lr.ph

for.body74.for.inc93_crit_edge:                   ; preds = %for.body74
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc93

for.body79.lr.ph:                                 ; preds = %for.body74
  %mul = mul i32 %i.1216, %div1.i
  br label %for.body79

for.body79:                                       ; preds = %for.inc90.for.body79_crit_edge, %for.body79.lr.ph
  %j.0213 = phi i32 [ 0, %for.body79.lr.ph ], [ %inc91, %for.inc90.for.body79_crit_edge ]
  %arrayidx80 = getelementptr i32, ptr %99, i32 %j.0213
  %100 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx80, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool81.not = icmp eq i32 %101, 0
  br i1 %tobool81.not, label %for.body79.for.inc90_crit_edge, label %if.end83

for.body79.for.inc90_crit_edge:                   ; preds = %for.body79
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc90

if.end83:                                         ; preds = %for.body79
  %102 = tail call i32 @llvm.bswap.i32(i32 %101)
  %call85 = tail call ptr @ext4_orphan_get(ptr noundef %sb, i32 noundef %102) #9
  %cmp.i205 = icmp ugt ptr %call85, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i205, label %if.end83.for.inc90_crit_edge, label %if.end88

if.end83.for.inc90_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc90

if.end88:                                         ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  %i_state_flags.i = getelementptr i8, ptr %call85, i32 -384
  tail call void @_set_bit(i32 noundef 12, ptr noundef %i_state_flags.i) #9
  %add = add i32 %j.0213, %mul
  %103 = getelementptr i8, ptr %call85, i32 -280
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %add, ptr %103, align 8
  call fastcc void @ext4_process_orphan(ptr noundef %call85, ptr noundef nonnull %nr_truncates, ptr noundef nonnull %nr_orphans)
  br label %for.inc90

for.inc90:                                        ; preds = %if.end88, %if.end83.for.inc90_crit_edge, %for.body79.for.inc90_crit_edge
  %inc91 = add nuw nsw i32 %j.0213, 1
  %exitcond.not = icmp eq i32 %inc91, %umax
  br i1 %exitcond.not, label %for.inc90.for.inc93_crit_edge, label %for.inc90.for.body79_crit_edge

for.inc90.for.body79_crit_edge:                   ; preds = %for.inc90
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body79

for.inc90.for.inc93_crit_edge:                    ; preds = %for.inc90
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc93

for.inc93:                                        ; preds = %for.inc90.for.inc93_crit_edge, %for.body74.for.inc93_crit_edge
  %inc94 = add nuw nsw i32 %i.1216, 1
  %105 = ptrtoint ptr %s_orphan_info to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %s_orphan_info, align 4
  %cmp72 = icmp slt i32 %inc94, %106
  br i1 %cmp72, label %for.inc93.for.body74_crit_edge, label %for.inc93.for.end95_crit_edge

for.inc93.for.end95_crit_edge:                    ; preds = %for.inc93
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end95

for.inc93.for.body74_crit_edge:                   ; preds = %for.inc93
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body74

for.end95:                                        ; preds = %for.inc93.for.end95_crit_edge, %while.end.for.end95_crit_edge
  %107 = ptrtoint ptr %nr_orphans to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %nr_orphans, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool96.not = icmp eq i32 %108, 0
  br i1 %tobool96.not, label %for.end95.if.end100_crit_edge, label %if.then97

for.end95.if.end100_crit_edge:                    ; preds = %for.end95
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end100

if.then97:                                        ; preds = %for.end95
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %108)
  %cmp98 = icmp eq i32 %108, 1
  %cond = select i1 %cmp98, ptr @.str.20, ptr @.str.21
  tail call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %sb, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.19, i32 noundef %108, ptr noundef nonnull %cond) #9
  br label %if.end100

if.end100:                                        ; preds = %if.then97, %for.end95.if.end100_crit_edge
  %109 = ptrtoint ptr %nr_truncates to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %nr_truncates, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool101.not = icmp eq i32 %110, 0
  br i1 %tobool101.not, label %if.end100.if.end106_crit_edge, label %if.then102

if.end100.if.end106_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end106

if.then102:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %110)
  %cmp103 = icmp eq i32 %110, 1
  %cond105 = select i1 %cmp103, ptr @.str.20, ptr @.str.21
  tail call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %sb, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.22, i32 noundef %110, ptr noundef nonnull %cond105) #9
  br label %if.end106

if.end106:                                        ; preds = %if.then102, %if.end100.if.end106_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %quota_update.4.2)
  %tobool107.not = icmp eq i32 %quota_update.4.2, 0
  br i1 %tobool107.not, label %if.end106.if.end122_crit_edge, label %for.body112.preheader

if.end106.if.end122_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end122

for.body112.preheader:                            ; preds = %if.end106
  %arrayidx114 = getelementptr %struct.super_block, ptr %sb, i32 0, i32 31, i32 2, i32 0
  %111 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %arrayidx114, align 4
  %tobool115.not = icmp eq ptr %112, null
  br i1 %tobool115.not, label %for.body112.preheader.for.inc119_crit_edge, label %if.then116

for.body112.preheader.for.inc119_crit_edge:       ; preds = %for.body112.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc119

if.then116:                                       ; preds = %for.body112.preheader
  call void @__sanitizer_cov_trace_pc() #11
  %call117 = tail call i32 @dquot_quota_off(ptr noundef %sb, i32 noundef 0) #9
  br label %for.inc119

for.inc119:                                       ; preds = %if.then116, %for.body112.preheader.for.inc119_crit_edge
  %arrayidx114.1 = getelementptr %struct.super_block, ptr %sb, i32 0, i32 31, i32 2, i32 1
  %113 = ptrtoint ptr %arrayidx114.1 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %arrayidx114.1, align 4
  %tobool115.not.1 = icmp eq ptr %114, null
  br i1 %tobool115.not.1, label %for.inc119.for.inc119.1_crit_edge, label %if.then116.1

for.inc119.for.inc119.1_crit_edge:                ; preds = %for.inc119
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc119.1

if.then116.1:                                     ; preds = %for.inc119
  call void @__sanitizer_cov_trace_pc() #11
  %call117.1 = tail call i32 @dquot_quota_off(ptr noundef %sb, i32 noundef 1) #9
  br label %for.inc119.1

for.inc119.1:                                     ; preds = %if.then116.1, %for.inc119.for.inc119.1_crit_edge
  %arrayidx114.2 = getelementptr %struct.super_block, ptr %sb, i32 0, i32 31, i32 2, i32 2
  %115 = ptrtoint ptr %arrayidx114.2 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %arrayidx114.2, align 4
  %tobool115.not.2 = icmp eq ptr %116, null
  br i1 %tobool115.not.2, label %for.inc119.1.if.end122_crit_edge, label %if.then116.2

for.inc119.1.if.end122_crit_edge:                 ; preds = %for.inc119.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end122

if.then116.2:                                     ; preds = %for.inc119.1
  call void @__sanitizer_cov_trace_pc() #11
  %call117.2 = tail call i32 @dquot_quota_off(ptr noundef %sb, i32 noundef 2) #9
  br label %if.end122

if.end122:                                        ; preds = %if.then116.2, %for.inc119.1.if.end122_crit_edge, %if.end106.if.end122_crit_edge
  %117 = ptrtoint ptr %s_flags1 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %1, ptr %s_flags1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end122, %if.end22, %if.then10, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr_truncates) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr_orphans) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_msg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_feature_set_ok(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_enable_quotas(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ext4_orphan_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ext4_process_orphan(ptr noundef %inode, ptr nocapture noundef %nr_truncates, ptr nocapture noundef %nr_orphans) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %call = tail call i32 @dquot_initialize(ptr noundef %inode) #9
  %2 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  %s_fs_info.i48 = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info.i48 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info.i48, align 16
  %s_mount_opt17 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 17
  %7 = ptrtoint ptr %s_mount_opt17 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_mount_opt17, align 4
  %and18 = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool19.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %9 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i_ino, align 8
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %11 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %i_size, align 8
  tail call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %1, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.ext4_process_orphan, i32 noundef %10, i64 noundef %12) #9
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %i_ino4 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %13 = ptrtoint ptr %i_ino4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %i_ino4, align 8
  %i_size5 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %15 = ptrtoint ptr %i_size5 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %i_size5, align 8
  tail call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ext4_process_orphan, i32 noundef 336, ptr noundef nonnull @.str.30, i32 noundef %14, i64 noundef %16) #9
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #9
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %17 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i_mapping, align 8
  %19 = ptrtoint ptr %i_size5 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %i_size5, align 8
  tail call void @truncate_inode_pages(ptr noundef %18, i64 noundef %20) #9
  %call7 = tail call i32 @ext4_truncate(ptr noundef %inode) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end.if.end15_crit_edge, label %if.then9

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call10 = tail call i32 @ext4_orphan_del(ptr noundef null, ptr noundef %inode)
  %21 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i_sb, align 4
  tail call void @__ext4_std_error(ptr noundef %22, ptr noundef nonnull @__func__.ext4_process_orphan, i32 noundef 347, i32 noundef %call7) #9
  br label %if.end15

if.end15:                                         ; preds = %if.then9, %if.end.if.end15_crit_edge
  tail call void @up_write(ptr noundef %i_rwsem.i) #9
  br label %if.end25

if.else:                                          ; preds = %entry
  br i1 %tobool19.not, label %if.else.if.end22_crit_edge, label %if.then20

if.else.if.end22_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then20:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %i_ino21 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %23 = ptrtoint ptr %i_ino21 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %i_ino21, align 8
  tail call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %1, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.31, ptr noundef nonnull @__func__.ext4_process_orphan, i32 noundef %24) #9
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.else.if.end22_crit_edge
  %i_ino23 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %25 = ptrtoint ptr %i_ino23 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %i_ino23, align 8
  tail call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ext4_process_orphan, i32 noundef 357, ptr noundef nonnull @.str.32, i32 noundef %26) #9
  br label %if.end25

if.end25:                                         ; preds = %if.end22, %if.end15
  %nr_orphans.sink49 = phi ptr [ %nr_orphans, %if.end22 ], [ %nr_truncates, %if.end15 ]
  %27 = ptrtoint ptr %nr_orphans.sink49 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nr_orphans.sink49, align 4
  %inc24 = add i32 %28, 1
  store i32 %inc24, ptr %nr_orphans.sink49, align 4
  tail call void @iput(ptr noundef %inode) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dquot_quota_off(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ext4_release_orphan_info(ptr nocapture noundef readonly %sb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_orphan_info = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 51
  %2 = ptrtoint ptr %s_orphan_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_orphan_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %4 = ptrtoint ptr %s_orphan_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_orphan_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp9 = icmp sgt i32 %5, 0
  br i1 %cmp9, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %of_binfo = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 51, i32 2
  br label %for.body

for.body:                                         ; preds = %brelse.exit.for.body_crit_edge, %for.body.lr.ph
  %i.010 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %brelse.exit.for.body_crit_edge ]
  %6 = ptrtoint ptr %of_binfo to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_binfo, align 4
  %ob_bh = getelementptr %struct.ext4_orphan_block, ptr %7, i32 %i.010, i32 1
  %8 = ptrtoint ptr %ob_bh to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ob_bh, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %for.body.brelse.exit_crit_edge, label %if.then.i

for.body.brelse.exit_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__brelse(ptr noundef nonnull %9) #9
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %for.body.brelse.exit_crit_edge
  %inc = add nuw nsw i32 %i.010, 1
  %10 = ptrtoint ptr %s_orphan_info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_orphan_info, align 4
  %cmp = icmp slt i32 %inc, %11
  br i1 %cmp, label %brelse.exit.for.body_crit_edge, label %brelse.exit.for.end_crit_edge

brelse.exit.for.end_crit_edge:                    ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

brelse.exit.for.body_crit_edge:                   ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %brelse.exit.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %of_binfo2 = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 51, i32 2
  %12 = ptrtoint ptr %of_binfo2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_binfo2, align 4
  tail call void @kfree(ptr noundef %13) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ext4_orphan_file_block_trigger(ptr nocapture noundef readonly %triggers, ptr nocapture noundef readonly %bh, ptr noundef %data, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  %desc.i17 = alloca %struct.anon.81, align 8
  %desc.i = alloca %struct.anon.81, align 8
  %dsk_block_nr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sb1 = getelementptr inbounds %struct.ext4_journal_trigger, ptr %triggers, i32 0, i32 1
  %0 = ptrtoint ptr %sb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sb1, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_blocksize.i, align 16
  %sub.i = add i32 %3, -8
  %div1.i = and i32 %sub.i, -4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dsk_block_nr) #9
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 3
  %6 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %b_blocknr, align 8
  %8 = tail call i64 @llvm.bswap.i64(i64 %7)
  %9 = ptrtoint ptr %dsk_block_nr to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %dsk_block_nr, align 8
  %of_csum_seed = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 51, i32 1
  %10 = ptrtoint ptr %of_csum_seed to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %of_csum_seed, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %desc.i) #9
  %12 = getelementptr inbounds %struct.anon.81, ptr %desc.i, i32 0, i32 1
  %s_chksum_driver.i = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 121
  %13 = call ptr @memset(ptr %desc.i, i32 255, i32 16)
  %14 = ptrtoint ptr %s_chksum_driver.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_chksum_driver.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %17)
  %cmp.not.i = icmp eq i32 %17, 4
  br i1 %cmp.not.i, label %do.end7.i, label %do.body2.i, !prof !90

do.body2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #9, !srcloc !103
  unreachable

do.end7.i:                                        ; preds = %entry
  %18 = ptrtoint ptr %desc.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %desc.i, align 8
  %19 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %11, ptr %12, align 8
  %call11.i = call i32 @crypto_shash_update(ptr noundef nonnull %desc.i, ptr noundef nonnull %dsk_block_nr, i32 noundef 8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %ext4_chksum.exit, label %do.body20.i, !prof !90

do.body20.i:                                      ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #9, !srcloc !104
  unreachable

ext4_chksum.exit:                                 ; preds = %do.end7.i
  %20 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %12, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %desc.i) #9
  %22 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %desc.i17) #9
  %24 = getelementptr inbounds %struct.anon.81, ptr %desc.i17, i32 0, i32 1
  %s_chksum_driver.i18 = getelementptr inbounds %struct.ext4_sb_info, ptr %23, i32 0, i32 121
  %25 = call ptr @memset(ptr %desc.i17, i32 255, i32 16)
  %26 = ptrtoint ptr %s_chksum_driver.i18 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %s_chksum_driver.i18, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %29)
  %cmp.not.i19 = icmp eq i32 %29, 4
  br i1 %cmp.not.i19, label %do.end7.i23, label %do.body2.i20, !prof !90

do.body2.i20:                                     ; preds = %ext4_chksum.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #9, !srcloc !103
  unreachable

do.end7.i23:                                      ; preds = %ext4_chksum.exit
  %30 = ptrtoint ptr %desc.i17 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %desc.i17, align 8
  %31 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %21, ptr %24, align 8
  %call11.i21 = call i32 @crypto_shash_update(ptr noundef nonnull %desc.i17, ptr noundef %data, i32 noundef %div1.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i21)
  %tobool12.not.i22 = icmp eq i32 %call11.i21, 0
  br i1 %tobool12.not.i22, label %ext4_chksum.exit25, label %do.body20.i24, !prof !90

do.body20.i24:                                    ; preds = %do.end7.i23
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #9, !srcloc !104
  unreachable

ext4_chksum.exit25:                               ; preds = %do.end7.i23
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %24, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %desc.i17) #9
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 5
  %34 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %b_data.i, align 4
  %36 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %s_blocksize.i, align 16
  %add.ptr.i = getelementptr i8, ptr %35, i32 %37
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 -8
  %38 = call i32 @llvm.bswap.i32(i32 %33)
  %ob_checksum = getelementptr inbounds %struct.ext4_orphan_block_tail, ptr %add.ptr1.i, i32 0, i32 1
  %39 = ptrtoint ptr %ob_checksum to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %ob_checksum, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dsk_block_nr) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_init_orphan_info(ptr noundef %sb) local_unnamed_addr #0 align 64 {
entry:
  %desc.i24.i = alloca %struct.anon.81, align 8
  %desc.i.i = alloca %struct.anon.81, align 8
  %dsk_block_nr.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_orphan_info = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 51
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %2 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_blocksize.i, align 16
  %sub.i = add i32 %3, -8
  %div1.i = lshr i32 %sub.i, 2
  %s_es = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %s_es to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_es, align 4
  %s_feature_compat.i = getelementptr inbounds %struct.ext4_super_block, ptr %5, i32 0, i32 28
  %6 = ptrtoint ptr %s_feature_compat.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_feature_compat.i, align 4
  %and.i = and i32 %7, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i140.not = icmp eq i32 %and.i, 0
  br i1 %cmp.i140.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %s_orphan_file_inum = getelementptr inbounds %struct.ext4_super_block, ptr %5, i32 0, i32 100
  %8 = ptrtoint ptr %s_orphan_file_inum to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_orphan_file_inum, align 8
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %call4 = tail call ptr @__ext4_iget(ptr noundef %sb, i32 noundef %10, i32 noundef 1, ptr noundef nonnull @__func__.ext4_init_orphan_info, i32 noundef 586) #9
  %cmp.i141 = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i141, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %sb, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.23) #9
  %11 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %i_size = getelementptr inbounds %struct.inode, ptr %call4, i32 0, i32 14
  %12 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %i_size, align 8
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %14 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %s_blocksize_bits, align 4
  %sh_prom = zext i8 %15 to i64
  %shr = ashr i64 %13, %sh_prom
  %conv9 = trunc i64 %shr to i32
  %16 = ptrtoint ptr %s_orphan_info to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv9, ptr %s_orphan_info, align 4
  %i_csum_seed = getelementptr i8, ptr %call4, i32 1172
  %17 = ptrtoint ptr %i_csum_seed to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %i_csum_seed, align 4
  %of_csum_seed = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 51, i32 1
  %19 = ptrtoint ptr %of_csum_seed to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %of_csum_seed, align 4
  %mul = shl i32 %conv9, 3
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3264) #13
  %of_binfo = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 51, i32 2
  %20 = ptrtoint ptr %of_binfo to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call9.i, ptr %of_binfo, align 4
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %if.end8.out_put_crit_edge, label %for.cond.preheader

if.end8.out_put_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_put

for.cond.preheader:                               ; preds = %if.end8
  %21 = ptrtoint ptr %s_orphan_info to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %s_orphan_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp172 = icmp sgt i32 %22, 0
  br i1 %cmp172, label %for.body.lr.ph, label %for.cond.preheader.for.end68_crit_edge

for.cond.preheader.for.end68_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end68

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %23 = getelementptr inbounds %struct.anon.81, ptr %desc.i.i, i32 0, i32 1
  %24 = getelementptr inbounds %struct.anon.81, ptr %desc.i24.i, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i)
  %cmp55169.not = icmp ult i32 %sub.i, 4
  %umax = call i32 @llvm.umax.i32(i32 %div1.i, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %i.0173 = phi i32 [ 0, %for.body.lr.ph ], [ %inc67, %for.end.for.body_crit_edge ]
  %call18 = call ptr @ext4_bread(ptr noundef null, ptr noundef %call4, i32 noundef %i.0173, i32 noundef 0) #9
  %25 = ptrtoint ptr %of_binfo to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %of_binfo, align 4
  %ob_bh = getelementptr %struct.ext4_orphan_block, ptr %26, i32 %i.0173, i32 1
  %27 = ptrtoint ptr %ob_bh to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call18, ptr %ob_bh, align 4
  %28 = load ptr, ptr %of_binfo, align 4
  %ob_bh22 = getelementptr %struct.ext4_orphan_block, ptr %28, i32 %i.0173, i32 1
  %29 = ptrtoint ptr %ob_bh22 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ob_bh22, align 4
  %cmp.i142 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i142, label %if.then24, label %if.end29

if.then24:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %30 to i32
  br label %out_free

if.end29:                                         ; preds = %for.body
  %tobool33.not = icmp eq ptr %30, null
  br i1 %tobool33.not, label %if.end29.out_free_crit_edge, label %if.end35

if.end29.out_free_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free

if.end35:                                         ; preds = %if.end29
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %30, i32 0, i32 5
  %32 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %b_data.i, align 4
  %34 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %s_blocksize.i, align 16
  %add.ptr.i144 = getelementptr i8, ptr %33, i32 -8
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i144, i32 %35
  %36 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 80351243, i32 %37)
  %cmp40.not = icmp eq i32 %37, 80351243
  br i1 %cmp40.not, label %if.end43, label %if.then42

if.then42:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %sb, ptr noundef nonnull @__func__.ext4_init_orphan_info, i32 noundef 611, i1 noundef zeroext false, i32 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.24, i32 noundef %i.0173) #9
  br label %out_free

if.end43:                                         ; preds = %if.end35
  %sub.i.i = add i32 %35, -8
  %div1.i.i = and i32 %sub.i.i, -4
  %38 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dsk_block_nr.i) #9
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %30, i32 0, i32 3
  %40 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %b_blocknr.i, align 8
  %42 = call i64 @llvm.bswap.i64(i64 %41) #9
  %43 = ptrtoint ptr %dsk_block_nr.i to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %dsk_block_nr.i, align 8
  %s_es.i.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %39, i32 0, i32 15
  %44 = ptrtoint ptr %s_es.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %s_es.i.i.i, align 4
  %s_feature_ro_compat.i.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %45, i32 0, i32 30
  %46 = ptrtoint ptr %s_feature_ro_compat.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %s_feature_ro_compat.i.i.i, align 4
  %and.i.i.i = and i32 %47, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.not.i.i, label %if.end43.if.end32.i.i_crit_edge, label %land.rhs.i.i

if.end43.if.end32.i.i_crit_edge:                  ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32.i.i

land.rhs.i.i:                                     ; preds = %if.end43
  %s_chksum_driver.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %39, i32 0, i32 121
  %48 = ptrtoint ptr %s_chksum_driver.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %s_chksum_driver.i.i, align 4
  %tobool.not.i.i146 = icmp eq ptr %49, null
  br i1 %tobool.not.i.i146, label %land.rhs5.i.i, label %land.rhs.i.i.if.end32.i.i_crit_edge

land.rhs.i.i.if.end32.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32.i.i

land.rhs5.i.i:                                    ; preds = %land.rhs.i.i
  %.b50.i.i = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  br i1 %.b50.i.i, label %land.rhs5.i.i.if.end32.i.i_crit_edge, label %if.then.i.i, !prof !90

land.rhs5.i.i.if.end32.i.i_crit_edge:             ; preds = %land.rhs5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32.i.i

if.then.i.i:                                      ; preds = %land.rhs5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 3289, i32 noundef 9, ptr noundef null) #9
  br label %if.end32.i.i

if.end32.i.i:                                     ; preds = %if.then.i.i, %land.rhs5.i.i.if.end32.i.i_crit_edge, %land.rhs.i.i.if.end32.i.i_crit_edge, %if.end43.if.end32.i.i_crit_edge
  %50 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %s_fs_info.i, align 16
  %s_es.i53.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %51, i32 0, i32 15
  %52 = ptrtoint ptr %s_es.i53.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %s_es.i53.i.i, align 4
  %s_feature_ro_compat.i54.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %53, i32 0, i32 30
  %54 = ptrtoint ptr %s_feature_ro_compat.i54.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %s_feature_ro_compat.i54.i.i, align 4
  %and.i55.i.i = and i32 %55, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i55.i.i)
  %cmp.i56.not.i.i = icmp eq i32 %and.i55.i.i, 0
  br i1 %cmp.i56.not.i.i, label %if.end32.i.i.ext4_orphan_file_block_csum_verify.exit.thread_crit_edge, label %ext4_has_metadata_csum.exit.i

if.end32.i.i.ext4_orphan_file_block_csum_verify.exit.thread_crit_edge: ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ext4_orphan_file_block_csum_verify.exit.thread

ext4_has_metadata_csum.exit.i:                    ; preds = %if.end32.i.i
  %s_chksum_driver43.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %51, i32 0, i32 121
  %56 = ptrtoint ptr %s_chksum_driver43.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %s_chksum_driver43.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %57, null
  br i1 %cmp.i.not.i, label %ext4_has_metadata_csum.exit.i.ext4_orphan_file_block_csum_verify.exit.thread_crit_edge, label %if.end.i147

ext4_has_metadata_csum.exit.i.ext4_orphan_file_block_csum_verify.exit.thread_crit_edge: ; preds = %ext4_has_metadata_csum.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ext4_orphan_file_block_csum_verify.exit.thread

if.end.i147:                                      ; preds = %ext4_has_metadata_csum.exit.i
  %58 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %b_data.i, align 4
  %60 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %s_blocksize.i, align 16
  %add.ptr.i.i = getelementptr i8, ptr %59, i32 -8
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %61
  %of_csum_seed.i = getelementptr inbounds %struct.ext4_sb_info, ptr %39, i32 0, i32 51, i32 1
  %62 = ptrtoint ptr %of_csum_seed.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %of_csum_seed.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %desc.i.i) #9
  %64 = call ptr @memset(ptr %desc.i.i, i32 255, i32 16)
  %65 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %57, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %66)
  %cmp.not.i.i = icmp eq i32 %66, 4
  br i1 %cmp.not.i.i, label %do.end7.i.i, label %do.body2.i.i, !prof !90

do.body2.i.i:                                     ; preds = %if.end.i147
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #9, !srcloc !103
  unreachable

do.end7.i.i:                                      ; preds = %if.end.i147
  %67 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %57, ptr %desc.i.i, align 8
  %68 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %63, ptr %23, align 8
  %call11.i.i = call i32 @crypto_shash_update(ptr noundef nonnull %desc.i.i, ptr noundef nonnull %dsk_block_nr.i, i32 noundef 8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i)
  %tobool12.not.i.i = icmp eq i32 %call11.i.i, 0
  br i1 %tobool12.not.i.i, label %ext4_chksum.exit.i, label %do.body20.i.i, !prof !90

do.body20.i.i:                                    ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #9, !srcloc !104
  unreachable

ext4_chksum.exit.i:                               ; preds = %do.end7.i.i
  %69 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %23, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %desc.i.i) #9
  %71 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %s_fs_info.i, align 16
  %73 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %b_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %desc.i24.i) #9
  %s_chksum_driver.i25.i = getelementptr inbounds %struct.ext4_sb_info, ptr %72, i32 0, i32 121
  %75 = call ptr @memset(ptr %desc.i24.i, i32 255, i32 16)
  %76 = ptrtoint ptr %s_chksum_driver.i25.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %s_chksum_driver.i25.i, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %77, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %79)
  %cmp.not.i26.i = icmp eq i32 %79, 4
  br i1 %cmp.not.i26.i, label %do.end7.i30.i, label %do.body2.i27.i, !prof !90

do.body2.i27.i:                                   ; preds = %ext4_chksum.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #9, !srcloc !103
  unreachable

do.end7.i30.i:                                    ; preds = %ext4_chksum.exit.i
  %80 = ptrtoint ptr %desc.i24.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %77, ptr %desc.i24.i, align 8
  %81 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %70, ptr %24, align 8
  %call11.i28.i = call i32 @crypto_shash_update(ptr noundef nonnull %desc.i24.i, ptr noundef %74, i32 noundef %div1.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i28.i)
  %tobool12.not.i29.i = icmp eq i32 %call11.i28.i, 0
  br i1 %tobool12.not.i29.i, label %ext4_orphan_file_block_csum_verify.exit, label %do.body20.i31.i, !prof !90

do.body20.i31.i:                                  ; preds = %do.end7.i30.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #9, !srcloc !104
  unreachable

ext4_orphan_file_block_csum_verify.exit.thread:   ; preds = %ext4_has_metadata_csum.exit.i.ext4_orphan_file_block_csum_verify.exit.thread_crit_edge, %if.end32.i.i.ext4_orphan_file_block_csum_verify.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dsk_block_nr.i) #9
  br label %if.end50

ext4_orphan_file_block_csum_verify.exit:          ; preds = %do.end7.i30.i
  %82 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %24, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %desc.i24.i) #9
  %ob_checksum.i = getelementptr inbounds %struct.ext4_orphan_block_tail, ptr %add.ptr1.i.i, i32 0, i32 1
  %84 = ptrtoint ptr %ob_checksum.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %ob_checksum.i, align 4
  %86 = call i32 @llvm.bswap.i32(i32 %85) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %86, i32 %83)
  %cmp.i148.not = icmp eq i32 %86, %83
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dsk_block_nr.i) #9
  br i1 %cmp.i148.not, label %ext4_orphan_file_block_csum_verify.exit.if.end50_crit_edge, label %if.then49

ext4_orphan_file_block_csum_verify.exit.if.end50_crit_edge: ; preds = %ext4_orphan_file_block_csum_verify.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.then49:                                        ; preds = %ext4_orphan_file_block_csum_verify.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %sb, ptr noundef nonnull @__func__.ext4_init_orphan_info, i32 noundef 617, i1 noundef zeroext false, i32 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.25, i32 noundef %i.0173) #9
  br label %out_free

if.end50:                                         ; preds = %ext4_orphan_file_block_csum_verify.exit.if.end50_crit_edge, %ext4_orphan_file_block_csum_verify.exit.thread
  %87 = ptrtoint ptr %of_binfo to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %of_binfo, align 4
  %ob_bh53 = getelementptr %struct.ext4_orphan_block, ptr %88, i32 %i.0173, i32 1
  %89 = ptrtoint ptr %ob_bh53 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ob_bh53, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %90, i32 0, i32 5
  %91 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %b_data, align 4
  br i1 %cmp55169.not, label %if.end50.for.end_crit_edge, label %if.end50.for.body57_crit_edge

if.end50.for.body57_crit_edge:                    ; preds = %if.end50
  br label %for.body57

if.end50.for.end_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body57:                                       ; preds = %for.body57.for.body57_crit_edge, %if.end50.for.body57_crit_edge
  %free.0171 = phi i32 [ %spec.select, %for.body57.for.body57_crit_edge ], [ 0, %if.end50.for.body57_crit_edge ]
  %j.0170 = phi i32 [ %inc63, %for.body57.for.body57_crit_edge ], [ 0, %if.end50.for.body57_crit_edge ]
  %arrayidx58 = getelementptr i32, ptr %92, i32 %j.0170
  %93 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx58, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %cmp59 = icmp eq i32 %94, 0
  %inc = zext i1 %cmp59 to i32
  %spec.select = add i32 %free.0171, %inc
  %inc63 = add nuw nsw i32 %j.0170, 1
  %exitcond.not = icmp eq i32 %inc63, %umax
  br i1 %exitcond.not, label %for.body57.for.end_crit_edge, label %for.body57.for.body57_crit_edge

for.body57.for.body57_crit_edge:                  ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body57

for.body57.for.end_crit_edge:                     ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body57.for.end_crit_edge, %if.end50.for.end_crit_edge
  %free.0.lcssa = phi i32 [ 0, %if.end50.for.end_crit_edge ], [ %spec.select, %for.body57.for.end_crit_edge ]
  %arrayidx65 = getelementptr %struct.ext4_orphan_block, ptr %88, i32 %i.0173
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx65, i32 noundef 4) #9
  %95 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store4_noabort(i32 %95)
  store volatile i32 %free.0.lcssa, ptr %arrayidx65, align 4
  %inc67 = add nuw nsw i32 %i.0173, 1
  %96 = ptrtoint ptr %s_orphan_info to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %s_orphan_info, align 4
  %cmp = icmp slt i32 %inc67, %97
  br i1 %cmp, label %for.end.for.body_crit_edge, label %for.end.for.end68_crit_edge

for.end.for.end68_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end68

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end68:                                        ; preds = %for.end.for.end68_crit_edge, %for.cond.preheader.for.end68_crit_edge
  call void @iput(ptr noundef %call4) #9
  br label %cleanup

out_free:                                         ; preds = %if.then49, %if.then42, %if.end29.out_free_crit_edge, %if.then24
  %ret.0 = phi i32 [ %31, %if.then24 ], [ -5, %if.then42 ], [ -5, %if.then49 ], [ -5, %if.end29.out_free_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0173)
  %cmp70177.not = icmp eq i32 %i.0173, 0
  br i1 %cmp70177.not, label %out_free.for.end78_crit_edge, label %out_free.for.body72_crit_edge

out_free.for.body72_crit_edge:                    ; preds = %out_free
  br label %for.body72

out_free.for.end78_crit_edge:                     ; preds = %out_free
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end78

for.body72:                                       ; preds = %brelse.exit.for.body72_crit_edge, %out_free.for.body72_crit_edge
  %i.1178.in = phi i32 [ %i.1178, %brelse.exit.for.body72_crit_edge ], [ %i.0173, %out_free.for.body72_crit_edge ]
  %i.1178 = add nsw i32 %i.1178.in, -1
  %98 = ptrtoint ptr %of_binfo to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %of_binfo, align 4
  %ob_bh75 = getelementptr %struct.ext4_orphan_block, ptr %99, i32 %i.1178, i32 1
  %100 = ptrtoint ptr %ob_bh75 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ob_bh75, align 4
  %tobool.not.i = icmp eq ptr %101, null
  br i1 %tobool.not.i, label %for.body72.brelse.exit_crit_edge, label %if.then.i149

for.body72.brelse.exit_crit_edge:                 ; preds = %for.body72
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit

if.then.i149:                                     ; preds = %for.body72
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %101) #9
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i149, %for.body72.brelse.exit_crit_edge
  %cmp70 = icmp sgt i32 %i.1178.in, 1
  br i1 %cmp70, label %brelse.exit.for.body72_crit_edge, label %brelse.exit.for.end78_crit_edge

brelse.exit.for.end78_crit_edge:                  ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end78

brelse.exit.for.body72_crit_edge:                 ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body72

for.end78:                                        ; preds = %brelse.exit.for.end78_crit_edge, %out_free.for.end78_crit_edge
  %102 = ptrtoint ptr %of_binfo to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %of_binfo, align 4
  call void @kfree(ptr noundef %103) #9
  br label %out_put

out_put:                                          ; preds = %for.end78, %if.end8.out_put_crit_edge
  %ret.1 = phi i32 [ %ret.0, %for.end78 ], [ -12, %if.end8.out_put_crit_edge ]
  call void @iput(ptr noundef %call4) #9
  br label %cleanup

cleanup:                                          ; preds = %out_put, %for.end68, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %11, %if.then6 ], [ %ret.1, %out_put ], [ 0, %for.end68 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ext4_iget(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ext4_bread(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_error(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_orphan_file_empty(ptr nocapture noundef readonly %sb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_orphan_info = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 51
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %2 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_blocksize.i, align 16
  %sub.i = add i32 %3, -8
  %div1.i = lshr i32 %sub.i, 2
  %s_es.i = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %s_es.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_es.i, align 4
  %s_feature_compat.i = getelementptr inbounds %struct.ext4_super_block, ptr %5, i32 0, i32 28
  %6 = ptrtoint ptr %s_feature_compat.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_feature_compat.i, align 4
  %and.i = and i32 %7, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 0
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %of_binfo = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 51, i32 2
  %8 = ptrtoint ptr %s_orphan_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_orphan_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp14 = icmp sgt i32 %9, 0
  br i1 %cmp14, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.015, 1
  %10 = ptrtoint ptr %s_orphan_info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_orphan_info, align 4
  %cmp = icmp slt i32 %inc, %11
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.015 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %12 = ptrtoint ptr %of_binfo to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_binfo, align 4
  %arrayidx = getelementptr %struct.ext4_orphan_block, ptr %13, i32 %i.015
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx, i32 noundef 4) #9
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %div1.i)
  %cmp4.not = icmp eq i32 %15, %div1.i
  br i1 %cmp4.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 1, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ], [ 1, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dquot_quota_on_mount(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dquot_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_truncate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !11, !13, !15, !17, !18, !20, !22, !24, !25, !27, !28, !30, !31, !33, !35, !37, !39, !41, !43, !44, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !66, !68, !69, !70, !72, !74, !76, !78}
!llvm.named.register.sp = !{!79}
!llvm.module.flags = !{!80, !81, !82, !83, !84, !85, !86, !87}
!llvm.ident = !{!88}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../fs/ext4/orphan.c", i32 110, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/ext4/orphan.c", i32 125, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @ext4_orphan_add._entry, !4, !"_entry", i1 false, i1 false}
!7 = !{ptr @ext4_orphan_add._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/ext4/orphan.c", i32 184, i32 2}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/ext4/orphan.c", i32 185, i32 2}
!13 = distinct !{null, !14, !"__already_done", i1 false, i1 false}
!14 = !{!"../fs/ext4/orphan.c", i32 239, i32 2}
!15 = !{ptr @__func__.ext4_orphan_del, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/ext4/orphan.c", i32 254, i32 2}
!17 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/ext4/orphan.c", i32 270, i32 3}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/ext4/orphan.c", i32 289, i32 3}
!22 = !{ptr @__func__.ext4_orphan_cleanup, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/ext4/orphan.c", i32 394, i32 3}
!24 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/ext4/orphan.c", i32 399, i32 3}
!27 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/ext4/orphan.c", i32 406, i32 3}
!30 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/ext4/orphan.c", i32 414, i32 4}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/ext4/orphan.c", i32 418, i32 3}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/ext4/orphan.c", i32 423, i32 3}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/ext4/orphan.c", i32 437, i32 4}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/ext4/orphan.c", i32 449, i32 5}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/ext4/orphan.c", i32 494, i32 3}
!43 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/ext4/orphan.c", i32 497, i32 3}
!47 = !{ptr @__func__.ext4_init_orphan_info, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/ext4/orphan.c", i32 586, i32 10}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/ext4/orphan.c", i32 588, i32 3}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/ext4/orphan.c", i32 611, i32 4}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/ext4/orphan.c", i32 617, i32 4}
!55 = !{ptr @__func__.ext4_orphan_file_add, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/ext4/orphan.c", i32 47, i32 8}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../include/linux/buffer_head.h", i32 366, i32 2}
!59 = distinct !{null, !60, !"__already_done", i1 false, i1 false}
!60 = !{!"../fs/ext4/orphan.c", i32 204, i32 6}
!61 = !{ptr @__func__.ext4_orphan_file_del, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/ext4/orphan.c", i32 207, i32 8}
!63 = distinct !{null, !64, !"__warned", i1 false, i1 false}
!64 = !{!"../fs/ext4/orphan.c", i32 317, i32 3}
!65 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/ext4/orphan.c", i32 332, i32 4}
!68 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @__func__.ext4_process_orphan, !67, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/ext4/orphan.c", i32 335, i32 3}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/ext4/orphan.c", i32 353, i32 4}
!74 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/ext4/orphan.c", i32 356, i32 3}
!76 = distinct !{null, !77, !"__already_done", i1 false, i1 false}
!77 = !{!"../fs/ext4/ext4.h", i32 3288, i32 2}
!78 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!79 = !{!"sp"}
!80 = !{i32 1, !"wchar_size", i32 2}
!81 = !{i32 1, !"min_enum_size", i32 4}
!82 = !{i32 8, !"branch-target-enforcement", i32 0}
!83 = !{i32 8, !"sign-return-address", i32 0}
!84 = !{i32 8, !"sign-return-address-all", i32 0}
!85 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!86 = !{i32 7, !"uwtable", i32 1}
!87 = !{i32 7, !"frame-pointer", i32 2}
!88 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!89 = !{!"auto-init"}
!90 = !{!"branch_weights", i32 2000, i32 1}
!91 = !{i64 2155107645, i64 2155108126, i64 2155107682, i64 2155107738, i64 2155107772, i64 2155107796, i64 2155107837, i64 2155107858, i64 2155107886, i64 2155107920}
!92 = !{!"branch_weights", i32 1, i32 2000}
!93 = !{i64 2148771048}
!94 = !{i64 1154714, i64 1154738, i64 1154759, i64 1154776, i64 1154793}
!95 = !{i64 2148771274}
!96 = !{i64 2148669201, i64 2148669227, i64 2148669256, i64 2148669290, i64 2148669321, i64 2148669344}
!97 = !{i64 2155102972}
!98 = !{i64 1178693, i64 1178714, i64 1178737, i64 1178756, i64 1178775}
!99 = !{i64 2155103453}
!100 = !{i64 2148678059, i64 2148678091, i64 2148678120, i64 2148678154, i64 2148678185, i64 2148678208}
!101 = !{i64 2148767164}
!102 = !{i8 0, i8 2}
!103 = !{i64 2155043742, i64 2155044222, i64 2155043779, i64 2155043835, i64 2155043869, i64 2155043893, i64 2155043934, i64 2155043955, i64 2155043983, i64 2155044017}
!104 = !{i64 2155045384, i64 2155045864, i64 2155045421, i64 2155045477, i64 2155045511, i64 2155045535, i64 2155045576, i64 2155045597, i64 2155045625, i64 2155045659}
