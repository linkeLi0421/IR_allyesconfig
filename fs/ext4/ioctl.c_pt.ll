; ModuleID = '/llk/IR_all_yes/fs/ext4/ioctl.c_pt.bc'
source_filename = "../fs/ext4/ioctl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.33 }
%union.anon.33 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.35, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.35 = type { %struct.anon.36 }
%struct.anon.36 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.72 }
%union.anon.72 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.anon.85 = type { %struct.shash_desc, [4 x i8], [4 x i8] }
%struct.shash_desc = type { ptr, [4 x i8], [0 x ptr] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, ptr, %struct.address_space, %struct.list_head, %union.anon.79, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.76 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.77 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.78 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
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
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ext4_sb_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, i32, i64, %struct.atomic64_t, %struct.kuid_t, %struct.kgid_t, i16, i16, i32, i32, i32, i32, i32, i32, [4 x i32], i32, i32, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, ptr, ptr, %struct.kobject, %struct.completion, ptr, ptr, ptr, i32, %struct.mutex, %struct.list_head, %struct.ext4_orphan_info, i32, i32, i32, ptr, [3 x ptr], i32, i32, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.work_struct, %struct.atomic_t, %struct.rb_root, %struct.rwlock_t, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x %struct.atomic64_t], [4 x %struct.atomic64_t], [4 x %struct.atomic64_t], %struct.atomic_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, i32, i64, i32, i32, ptr, i32, ptr, %struct.timer_list, ptr, i32, ptr, i32, ptr, i32, %struct.shrinker, %struct.list_head, i32, %struct.ext4_es_stats, ptr, ptr, [120 x i8], %struct.spinlock, [1 x %struct.ext4_journal_trigger], %struct.ratelimit_state, %struct.ratelimit_state, %struct.ratelimit_state, %struct.atomic_t, %struct.atomic_t, %struct.fscrypt_dummy_policy, %struct.percpu_rw_semaphore, ptr, i64, i32, i32, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i64, ptr, i64, i32, i32, i32, i64, ptr, i64, %struct.work_struct, %struct.atomic_t, [2 x %struct.list_head], [2 x %struct.list_head], i32, %struct.spinlock, ptr, %struct.ext4_fc_stats, i32, i32, %struct.ext4_fc_replay_state, [8 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.ext4_super_block = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i16, i16, i32, i16, i16, i32, i32, i32, [16 x i8], [16 x i8], [64 x i8], i32, i8, i8, i16, [16 x i8], i32, i32, i32, [4 x i32], i8, i8, i16, i32, i32, i32, [17 x i32], i32, i32, i32, i16, i16, i32, i16, i16, i64, i32, i8, i8, i8, i8, i64, i32, i32, i64, i32, i32, i32, i32, i64, [32 x i8], i32, i32, i32, i32, i64, [32 x i8], [64 x i8], i32, i32, i32, [2 x i32], [4 x i8], [16 x i8], i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, [94 x i32], i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.74, %struct.list_head, %struct.list_head, %union.anon.75 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.spinlock, i32 }
%union.anon.74 = type { %struct.list_head }
%union.anon.75 = type { %struct.hlist_node }
%struct.fileattr = type { i32, i32, i32, i32, i32, i32, i8 }
%struct.ext4_iloc = type { ptr, i32, i32 }
%struct.jbd2_journal_handle = type { %union.anon.86, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.anon.86 = type { ptr }
%struct.fiemap = type { i64, i64, i32, i32, i32, i32, [0 x %struct.fiemap_extent] }
%struct.fiemap_extent = type { i64, i64, i64, [2 x i64], i32, [3 x i32] }
%struct.fiemap_extent_info = type { i32, i32, i32, ptr }
%struct.getfsmap_info = type { ptr, ptr, i32, i32 }
%struct.ext4_fsmap_head = type { i32, i32, i32, i32, [2 x %struct.ext4_fsmap] }
%struct.ext4_fsmap = type { %struct.list_head, i32, i32, i64, i64, i64 }
%struct.fsmap_head = type { i32, i32, i32, i32, [6 x i64], [2 x %struct.fsmap], [0 x %struct.fsmap] }
%struct.fsmap = type { i32, i32, i64, i64, i64, i64, [3 x i64] }
%struct.move_extent = type { i32, i32, i64, i64, i64, i64 }
%struct.ext4_new_group_data = type { i32, i64, i64, i64, i32, i16, i16, i32 }
%struct.fstrim_range = type { i64, i64, i64 }
%struct.file = type { %union.anon.19, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.19 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.journal_s = type { i32, i32, i32, %struct.mutex, ptr, ptr, i32, %struct.rwlock_t, i32, %struct.mutex, ptr, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.mutex, [64 x ptr], %struct.shrinker, %struct.percpu_counter, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i64, [56 x i8], ptr, i32, %struct.atomic_t, %struct.spinlock, ptr, i32, i32, i32, i32, [16 x i8], ptr, i32, i32, i32, %struct.timer_list, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, i32, i32, i32, i64, i32, i32, ptr, ptr, ptr, %struct.spinlock, ptr, %struct.transaction_stats_s, i32, ptr, ptr, i32, %struct.lockdep_map, ptr, ptr }
%struct.transaction_stats_s = type { i32, i32, %struct.transaction_run_stats_s }
%struct.transaction_run_stats_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }

@init_user_ns = external dso_local global %struct.user_namespace, align 4
@ext4_has_metadata_csum.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/ext4/ext4.h\00", [17 x i8] zeroinitializer }, align 32
@__func__.ext4_ioctl_setflags = private unnamed_addr constant [20 x i8] c"ext4_ioctl_setflags\00", align 1
@__func__.ext4_ioctl_setproject = private unnamed_addr constant [22 x i8] c"ext4_ioctl_setproject\00", align 1
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/ext4/ioctl.c\00", [16 x i8] zeroinitializer }, align 32
@__func__.__ext4_ioctl = private unnamed_addr constant [13 x i8] c"__ext4_ioctl\00", align 1
@.str.2 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"Setting inode version is not supported with metadata_csum enabled.\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Online resizing not supported with bigalloc\00", [52 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Online defrag not supported with bigalloc\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_ext4_getfsmap_low_key = external dso_local global %struct.tracepoint, align 4
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/trace/events/ext4.h\00", [36 x i8] zeroinitializer }, align 32
@trace_ext4_getfsmap_low_key.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_ext4_getfsmap_high_key = external dso_local global %struct.tracepoint, align 4
@trace_ext4_getfsmap_high_key.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ext4_getfsmap_mapping = external dso_local global %struct.tracepoint, align 4
@trace_ext4_getfsmap_mapping.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@__func__.swap_inode_boot_loader = private unnamed_addr constant [23 x i8] c"swap_inode_boot_loader\00", align 1
@.str.13 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"couldn't mark inode #%lu dirty (err %d)\00", [56 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/buffer_head.h\00", [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\011\00", [29 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"shut down requested (%d)\00", [39 x i8] zeroinitializer }, align 32
@__tracepoint_ext4_shutdown = external dso_local global %struct.tracepoint, align 4
@trace_ext4_shutdown.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ext4_ioctl_checkpoint._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.19, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.ext4_ioctl_checkpoint = private unnamed_addr constant [22 x i8] c"ext4_ioctl_checkpoint\00", align 1
@ext4_ioctl_checkpoint._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @__func__.ext4_ioctl_checkpoint, ptr @.str.1, i32 1082, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"\016warning: checkpointing journal with EXT4_IOC_CHECKPOINT_FLAG_ZEROOUT can be slow\00", [45 x i8] zeroinitializer }, align 32
@ext4_ioctl_checkpoint._entry_ptr = internal global ptr @ext4_ioctl_checkpoint._entry, section ".printk_index", align 4
@.str.21 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Can't modify superblock whileperforming online resize\00", [42 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to update primary superblock\00", [60 x i8] zeroinitializer }, align 32
@__func__.ext4_update_superblocks_fn = private unnamed_addr constant [27 x i8] c"ext4_update_superblocks_fn\00", align 1
@__func__.ext4_update_primary_sb = private unnamed_addr constant [23 x i8] c"ext4_update_primary_sb\00", align 1
@.str.23 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"previous I/O error to superblock detected\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_ext4_update_sb = external dso_local global %struct.tracepoint, align 4
@trace_ext4_update_sb.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.ext4_update_backup_sb = private unnamed_addr constant [22 x i8] c"ext4_update_backup_sb\00", align 1
@.str.24 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Invalid checksum for backup superblock %llu\0A\00", [51 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 16384, i64 32768]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 16384, i64 524288]
@__sancov_gen_cov_switch_values.26 = internal global [35 x i64] [i64 33, i64 32, i64 26121, i64 26124, i64 26129, i64 26130, i64 26152, i64 1074030084, i64 1074030087, i64 1074030121, i64 1074030123, i64 1074034178, i64 1074292240, i64 1074554389, i64 1074816532, i64 1076389384, i64 1082156677, i64 1090556978, i64 2147768445, i64 2147771907, i64 2147776001, i64 2148296211, i64 2148558363, i64 2164298801, i64 3221513862, i64 3221841430, i64 3222820985, i64 3223348778, i64 3223873039, i64 3223873159, i64 3225445912, i64 3225445913, i64 3226494487, i64 3229640218, i64 3233830971]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 64, i64 0, i64 -1]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.29 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.31 = private unnamed_addr constant [18 x i8] c"../fs/ext4/ext4.h\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 3288, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 1163, i32 10 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 1175, i32 4 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 1222, i32 4 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 1270, i32 4 }
@___asan_gen_.52 = private unnamed_addr constant [31 x i8] c"../include/trace/events/ext4.h\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 2538, i32 1 }
@___asan_gen_.55 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 108, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 156, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 457, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 271, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant [31 x i8] c"../include/linux/buffer_head.h\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 366, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 815, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.81 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 1082, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 197, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 215, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 70, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.97 = private constant [19 x i8] c"../fs/ext4/ioctl.c\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 138, i32 3 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @ext4_ioctl_checkpoint._entry, ptr @ext4_ioctl_checkpoint._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @ext4_ioctl_checkpoint._rs, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_ioctl_checkpoint._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_ioctl_checkpoint._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ext4_reset_inode_seed(ptr nocapture noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  %desc.i16 = alloca %struct.anon.85, align 8
  %desc.i = alloca %struct.anon.85, align 8
  %inum = alloca i32, align 4
  %gen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inum) #11
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %4 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_ino, align 8
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %7 = ptrtoint ptr %inum to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %inum, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gen) #11
  %i_generation = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 49
  %8 = ptrtoint ptr %i_generation to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_generation, align 8
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = ptrtoint ptr %gen to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %gen, align 4
  %s_es.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 15
  %12 = ptrtoint ptr %s_es.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_es.i.i, align 4
  %s_feature_ro_compat.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %13, i32 0, i32 30
  %14 = ptrtoint ptr %s_feature_ro_compat.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %s_feature_ro_compat.i.i, align 4
  %and.i.i = and i32 %15, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.not.i, label %entry.if.end32.i_crit_edge, label %land.rhs.i

entry.if.end32.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32.i

land.rhs.i:                                       ; preds = %entry
  %s_chksum_driver.i = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 121
  %16 = ptrtoint ptr %s_chksum_driver.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_chksum_driver.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %land.rhs5.i, label %land.rhs.i.if.end32.i_crit_edge

land.rhs.i.if.end32.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32.i

land.rhs5.i:                                      ; preds = %land.rhs.i
  %.b50.i = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  br i1 %.b50.i, label %land.rhs5.i.if.end32.i_crit_edge, label %if.then.i, !prof !89

land.rhs5.i.if.end32.i_crit_edge:                 ; preds = %land.rhs5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32.i

if.then.i:                                        ; preds = %land.rhs5.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3289, i32 noundef 9, ptr noundef null) #11
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then.i, %land.rhs5.i.if.end32.i_crit_edge, %land.rhs.i.if.end32.i_crit_edge, %entry.if.end32.i_crit_edge
  %18 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %s_fs_info.i, align 16
  %s_es.i53.i = getelementptr inbounds %struct.ext4_sb_info, ptr %19, i32 0, i32 15
  %20 = ptrtoint ptr %s_es.i53.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %s_es.i53.i, align 4
  %s_feature_ro_compat.i54.i = getelementptr inbounds %struct.ext4_super_block, ptr %21, i32 0, i32 30
  %22 = ptrtoint ptr %s_feature_ro_compat.i54.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %s_feature_ro_compat.i54.i, align 4
  %and.i55.i = and i32 %23, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i55.i)
  %cmp.i56.not.i = icmp eq i32 %and.i55.i, 0
  br i1 %cmp.i56.not.i, label %if.end32.i.cleanup_crit_edge, label %ext4_has_metadata_csum.exit

if.end32.i.cleanup_crit_edge:                     ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

ext4_has_metadata_csum.exit:                      ; preds = %if.end32.i
  %s_chksum_driver43.i = getelementptr inbounds %struct.ext4_sb_info, ptr %19, i32 0, i32 121
  %24 = ptrtoint ptr %s_chksum_driver43.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %s_chksum_driver43.i, align 4
  %cmp.i.not = icmp eq ptr %25, null
  br i1 %cmp.i.not, label %ext4_has_metadata_csum.exit.cleanup_crit_edge, label %if.end

ext4_has_metadata_csum.exit.cleanup_crit_edge:    ; preds = %ext4_has_metadata_csum.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %ext4_has_metadata_csum.exit
  %s_csum_seed = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 122
  %26 = ptrtoint ptr %s_csum_seed to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %s_csum_seed, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %desc.i) #11
  %28 = getelementptr inbounds %struct.anon.85, ptr %desc.i, i32 0, i32 1
  %s_chksum_driver.i15 = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 121
  %29 = call ptr @memset(ptr %desc.i, i32 255, i32 16)
  %30 = ptrtoint ptr %s_chksum_driver.i15 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %s_chksum_driver.i15, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %33)
  %cmp.not.i = icmp eq i32 %33, 4
  br i1 %cmp.not.i, label %do.end7.i, label %do.body2.i, !prof !89

do.body2.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #11, !srcloc !90
  unreachable

do.end7.i:                                        ; preds = %if.end
  %34 = ptrtoint ptr %desc.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %desc.i, align 8
  %35 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %27, ptr %28, align 8
  %call11.i = call i32 @crypto_shash_update(ptr noundef nonnull %desc.i, ptr noundef nonnull %inum, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %ext4_chksum.exit, label %do.body20.i, !prof !89

do.body20.i:                                      ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #11, !srcloc !91
  unreachable

ext4_chksum.exit:                                 ; preds = %do.end7.i
  %36 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %28, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %desc.i) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %desc.i16) #11
  %38 = getelementptr inbounds %struct.anon.85, ptr %desc.i16, i32 0, i32 1
  %39 = call ptr @memset(ptr %desc.i16, i32 255, i32 16)
  %40 = ptrtoint ptr %s_chksum_driver.i15 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %s_chksum_driver.i15, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %43)
  %cmp.not.i18 = icmp eq i32 %43, 4
  br i1 %cmp.not.i18, label %do.end7.i22, label %do.body2.i19, !prof !89

do.body2.i19:                                     ; preds = %ext4_chksum.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #11, !srcloc !90
  unreachable

do.end7.i22:                                      ; preds = %ext4_chksum.exit
  %44 = ptrtoint ptr %desc.i16 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %desc.i16, align 8
  %45 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %37, ptr %38, align 8
  %call11.i20 = call i32 @crypto_shash_update(ptr noundef nonnull %desc.i16, ptr noundef nonnull %gen, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i20)
  %tobool12.not.i21 = icmp eq i32 %call11.i20, 0
  br i1 %tobool12.not.i21, label %ext4_chksum.exit24, label %do.body20.i23, !prof !89

do.body20.i23:                                    ; preds = %do.end7.i22
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #11, !srcloc !91
  unreachable

ext4_chksum.exit24:                               ; preds = %do.end7.i22
  call void @__sanitizer_cov_trace_pc() #13
  %46 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %38, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %desc.i16) #11
  %i_csum_seed = getelementptr i8, ptr %inode, i32 1172
  %48 = ptrtoint ptr %i_csum_seed to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %i_csum_seed, align 4
  br label %cleanup

cleanup:                                          ; preds = %ext4_chksum.exit24, %ext4_has_metadata_csum.exit.cleanup_crit_edge, %if.end32.i.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gen) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inum) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_fileattr_get(ptr nocapture noundef readonly %dentry, ptr noundef %fa) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %i_flags = getelementptr i8, ptr %1, i32 -380
  %2 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_flags, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %1, align 8
  %6 = and i16 %5, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %6)
  %cmp = icmp eq i16 %6, -32768
  %spec.select.v = select i1 %cmp, i32 1381752831, i32 1918623743
  %spec.select = and i32 %spec.select.v, %3
  tail call void @fileattr_fill_flags(ptr noundef %fa, i32 noundef %spec.select) #11
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 33
  %9 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_es.i = getelementptr inbounds %struct.ext4_sb_info, ptr %10, i32 0, i32 15
  %11 = ptrtoint ptr %s_es.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_es.i, align 4
  %s_feature_ro_compat.i = getelementptr inbounds %struct.ext4_super_block, ptr %12, i32 0, i32 30
  %13 = ptrtoint ptr %s_feature_ro_compat.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %s_feature_ro_compat.i, align 4
  %and.i = and i32 %14, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 0
  br i1 %cmp.i.not, label %entry.if.end7_crit_edge, label %if.then5

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %i_projid = getelementptr i8, ptr %1, i32 1176
  %15 = ptrtoint ptr %i_projid to i32
  call void @__asan_load4_noabort(i32 %15)
  %.unpack = load i32, ptr %i_projid, align 8
  %16 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call6 = tail call i32 @from_kprojid(ptr noundef nonnull @init_user_ns, [1 x i32] %16) #11
  %fsx_projid = getelementptr inbounds %struct.fileattr, ptr %fa, i32 0, i32 4
  %17 = ptrtoint ptr %fsx_projid to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call6, ptr %fsx_projid, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %entry.if.end7_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fileattr_fill_flags(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kprojid(ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_fileattr_set(ptr nocapture noundef readnone %mnt_userns, ptr nocapture noundef readonly %dentry, ptr nocapture noundef readonly %fa) local_unnamed_addr #0 align 64 {
entry:
  %iloc.i37 = alloca %struct.ext4_iloc, align 4
  %transfer_to.i = alloca [3 x ptr], align 4
  %tmp92.i = alloca %struct.timespec64, align 8
  %iloc.i = alloca %struct.ext4_iloc, align 4
  %tmp82.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %2 = ptrtoint ptr %fa to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fa, align 4
  %and = and i32 %3, -1918623744
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %entry
  %and2 = and i32 %3, 1649131775
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %1, align 8
  %6 = and i16 %5, -4096
  %7 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i16 %6, label %if.else8.i [
    i16 16384, label %if.end.if.end5_crit_edge
    i16 -32768, label %if.end.ext4_mask_flags.exit_crit_edge
  ]

if.end.ext4_mask_flags.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_mask_flags.exit

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.else8.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_mask_flags.exit

ext4_mask_flags.exit:                             ; preds = %if.else8.i, %if.end.ext4_mask_flags.exit_crit_edge
  %.sink = phi i32 [ 192, %if.else8.i ], [ 38322431, %if.end.ext4_mask_flags.exit_crit_edge ]
  %and7.i = and i32 %3, %.sink
  call void @__sanitizer_cov_trace_cmp4(i32 %and7.i, i32 %and2)
  %cmp.not = icmp eq i32 %and7.i, %and2
  br i1 %cmp.not, label %ext4_mask_flags.exit.if.end5_crit_edge, label %ext4_mask_flags.exit.out_crit_edge

ext4_mask_flags.exit.out_crit_edge:               ; preds = %ext4_mask_flags.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

ext4_mask_flags.exit.if.end5_crit_edge:           ; preds = %ext4_mask_flags.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.end5:                                          ; preds = %ext4_mask_flags.exit.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %fsx_projid = getelementptr inbounds %struct.fileattr, ptr %fa, i32 0, i32 4
  %8 = ptrtoint ptr %fsx_projid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fsx_projid, align 4
  %i_flags.i = getelementptr i8, ptr %1, i32 -380
  %10 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i_flags.i, align 4
  %12 = and i32 %3, 16
  %13 = and i32 %11, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %.not.not.i = icmp eq i32 %13, 0
  br i1 %.not.not.i, label %if.end5.if.end9_crit_edge, label %if.end.i

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.end.i:                                         ; preds = %if.end5
  %14 = xor i32 %11, %and2
  %15 = and i32 %14, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.not.i = icmp eq i32 %15, 0
  br i1 %cmp.not.i, label %if.end6.i, label %if.end.i.out_crit_edge

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end6.i:                                        ; preds = %if.end.i
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 33
  %18 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_es.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %19, i32 0, i32 15
  %20 = ptrtoint ptr %s_es.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %s_es.i.i, align 4
  %s_feature_ro_compat.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %21, i32 0, i32 30
  %22 = ptrtoint ptr %s_feature_ro_compat.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %s_feature_ro_compat.i.i, align 4
  %and.i.i = and i32 %23, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.not.i, label %if.end6.i.if.end9_crit_edge, label %land.lhs.true.i

if.end6.i.if.end9_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

land.lhs.true.i:                                  ; preds = %if.end6.i
  %i_projid.i = getelementptr i8, ptr %1, i32 1176
  %24 = ptrtoint ptr %i_projid.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %.unpack.i = load i32, ptr %i_projid.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack.i, i32 %9)
  %cmp8.not.i = icmp eq i32 %.unpack.i, %9
  br i1 %cmp8.not.i, label %land.lhs.true.i.if.end9_crit_edge, label %land.lhs.true.i.out_crit_edge

land.lhs.true.i.out_crit_edge:                    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

land.lhs.true.i.if.end9_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.end9:                                          ; preds = %land.lhs.true.i.if.end9_crit_edge, %if.end6.i.if.end9_crit_edge, %if.end5.if.end9_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %iloc.i) #11
  %25 = ptrtoint ptr %iloc.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 -1 to ptr), ptr %iloc.i, align 4, !annotation !92
  %26 = getelementptr inbounds %struct.ext4_iloc, ptr %iloc.i, i32 0, i32 1
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %26, align 4, !annotation !92
  %28 = getelementptr inbounds %struct.ext4_iloc, ptr %iloc.i, i32 0, i32 2
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %28, align 4, !annotation !92
  %i_sb.i29 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %30 = ptrtoint ptr %i_sb.i29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i_sb.i29, align 4
  %i_flags.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %32 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %i_flags.i.i, align 4
  %and.i.i30 = and i32 %33, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i30)
  %tobool.not.i.i = icmp eq i32 %and.i.i30, 0
  br i1 %tobool.not.i.i, label %if.end9.if.end.i32_crit_edge, label %ext4_is_quota_file.exit.i

if.end9.if.end.i32_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i32

ext4_is_quota_file.exit.i:                        ; preds = %if.end9
  %34 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %i_flags.i, align 4
  %and2.i.i = and i32 %35, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool3.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool3.not.i.i, label %ext4_is_quota_file.exit.i.ext4_ioctl_setflags.exit.thread_crit_edge, label %ext4_is_quota_file.exit.i.if.end.i32_crit_edge

ext4_is_quota_file.exit.i.if.end.i32_crit_edge:   ; preds = %ext4_is_quota_file.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i32

ext4_is_quota_file.exit.i.ext4_ioctl_setflags.exit.thread_crit_edge: ; preds = %ext4_is_quota_file.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_ioctl_setflags.exit.thread

if.end.i32:                                       ; preds = %ext4_is_quota_file.exit.i.if.end.i32_crit_edge, %if.end9.if.end.i32_crit_edge
  %36 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %i_flags.i, align 4
  %xor.i = xor i32 %37, %and2
  %and.i = and i32 %xor.i, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i32.if.end5.i_crit_edge, label %if.then1.i

if.end.i32.if.end5.i_crit_edge:                   ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i

if.then1.i:                                       ; preds = %if.end.i32
  %call2.i = tail call zeroext i1 @capable(i32 noundef 24) #11
  br i1 %call2.i, label %if.then1.i.if.end5.i_crit_edge, label %if.then1.i.ext4_ioctl_setflags.exit.thread_crit_edge

if.then1.i.ext4_ioctl_setflags.exit.thread_crit_edge: ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_ioctl_setflags.exit.thread

if.then1.i.if.end5.i_crit_edge:                   ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then1.i.if.end5.i_crit_edge, %if.end.i32.if.end5.i_crit_edge
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %1, align 8
  %40 = and i16 %39, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %40)
  %cmp.i.i = icmp eq i16 %40, 16384
  %and3.i.i = and i32 %37, -268435457
  %oldflags.addr.0.i.i = select i1 %cmp.i.i, i32 %and3.i.i, i32 %37
  %and4.i.i = and i32 %3, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i)
  %tobool.not.i170.i = icmp eq i32 %and4.i.i, 0
  br i1 %tobool.not.i170.i, label %if.end5.i.dax_compatible.exit.i_crit_edge, label %if.then5.i.i

if.end5.i.dax_compatible.exit.i_crit_edge:        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dax_compatible.exit.i

if.then5.i.i:                                     ; preds = %if.end5.i
  %and6.i.i = and i32 %oldflags.addr.0.i.i, 269502464
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %tobool7.not.i.i = icmp eq i32 %and6.i.i, 0
  br i1 %tobool7.not.i.i, label %lor.lhs.false.i.i, label %if.then5.i.i.ext4_ioctl_setflags.exit.thread_crit_edge

if.then5.i.i.ext4_ioctl_setflags.exit.thread_crit_edge: ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_ioctl_setflags.exit.thread

lor.lhs.false.i.i:                                ; preds = %if.then5.i.i
  %i_state_flags.i.i.i = getelementptr i8, ptr %1, i32 -384
  %41 = ptrtoint ptr %i_state_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %i_state_flags.i.i.i, align 4
  %43 = and i32 %42, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool8.not.i.i = icmp eq i32 %43, 0
  br i1 %tobool8.not.i.i, label %lor.lhs.false.i.i.dax_compatible.exit.i_crit_edge, label %lor.lhs.false.i.i.ext4_ioctl_setflags.exit.thread_crit_edge

lor.lhs.false.i.i.ext4_ioctl_setflags.exit.thread_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_ioctl_setflags.exit.thread

lor.lhs.false.i.i.dax_compatible.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dax_compatible.exit.i

dax_compatible.exit.i:                            ; preds = %lor.lhs.false.i.i.dax_compatible.exit.i_crit_edge, %if.end5.i.dax_compatible.exit.i_crit_edge
  %and12.i.i = and i32 %3, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i.i)
  %tobool13.not.i.i = icmp eq i32 %and12.i.i, 0
  %and14.i.i = and i32 %oldflags.addr.0.i.i, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i.i)
  %tobool15.not.i.i = icmp eq i32 %and14.i.i, 0
  %or.cond.i.i = select i1 %tobool13.not.i.i, i1 true, i1 %tobool15.not.i.i
  br i1 %or.cond.i.i, label %if.end8.i, label %dax_compatible.exit.i.ext4_ioctl_setflags.exit.thread_crit_edge

dax_compatible.exit.i.ext4_ioctl_setflags.exit.thread_crit_edge: ; preds = %dax_compatible.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_ioctl_setflags.exit.thread

if.end8.i:                                        ; preds = %dax_compatible.exit.i
  %and10.i = and i32 %xor.i, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  %and15.i = and i32 %xor.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %if.end8.i.if.end28.i_crit_edge, label %if.then17.i

if.end8.i.if.end28.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28.i

if.then17.i:                                      ; preds = %if.end8.i
  %s_fs_info.i.i.i33 = getelementptr inbounds %struct.super_block, ptr %31, i32 0, i32 33
  %44 = ptrtoint ptr %s_fs_info.i.i.i33 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %s_fs_info.i.i.i33, align 16
  %s_es.i.i34 = getelementptr inbounds %struct.ext4_sb_info, ptr %45, i32 0, i32 15
  %46 = ptrtoint ptr %s_es.i.i34 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %s_es.i.i34, align 4
  %s_feature_incompat.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %47, i32 0, i32 29
  %48 = ptrtoint ptr %s_feature_incompat.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %s_feature_incompat.i.i, align 8
  %and.i171.i = and i32 %49, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i171.i)
  %cmp.i172.not183.i = icmp eq i32 %and.i171.i, 0
  %cmp.i.not.i35 = xor i1 %cmp.i.i, true
  %brmerge181.i = select i1 %cmp.i172.not183.i, i1 true, i1 %cmp.i.not.i35
  %.mux.i = select i1 %cmp.i172.not183.i, i32 -95, i32 -20
  br i1 %brmerge181.i, label %if.then17.i.ext4_ioctl_setflags.exit.thread_crit_edge, label %if.end24.i

if.then17.i.ext4_ioctl_setflags.exit.thread_crit_edge: ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_ioctl_setflags.exit.thread

if.end24.i:                                       ; preds = %if.then17.i
  %call25.i = tail call zeroext i1 @ext4_empty_dir(ptr noundef %1) #11
  br i1 %call25.i, label %if.end24.i.if.end28.i_crit_edge, label %if.end24.i.ext4_ioctl_setflags.exit.thread_crit_edge

if.end24.i.ext4_ioctl_setflags.exit.thread_crit_edge: ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_ioctl_setflags.exit.thread

if.end24.i.if.end28.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.end24.i.if.end28.i_crit_edge, %if.end8.i.if.end28.i_crit_edge
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %1, align 8
  %52 = and i16 %51, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %52)
  %cmp32.i = icmp eq i16 %52, -32768
  br i1 %cmp32.i, label %land.lhs.true.i36, label %if.end28.i.if.end45.i_crit_edge

if.end28.i.if.end45.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45.i

land.lhs.true.i36:                                ; preds = %if.end28.i
  %53 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %i_flags.i.i, align 4
  %and35.i = and i32 %54, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %tobool36.not.i = icmp ne i32 %and35.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool39.not.i = icmp eq i32 %12, 0
  %or.cond.i = or i1 %tobool39.not.i, %tobool36.not.i
  br i1 %or.cond.i, label %land.lhs.true.i36.if.end45.i_crit_edge, label %if.then40.i

land.lhs.true.i36.if.end45.i_crit_edge:           ; preds = %land.lhs.true.i36
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45.i

if.then40.i:                                      ; preds = %land.lhs.true.i36
  tail call void @inode_dio_wait(ptr noundef %1) #11
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  %55 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %i_mapping.i, align 8
  %call.i.i = tail call i32 @filemap_write_and_wait_range(ptr noundef %56, i64 noundef 0, i64 noundef 9223372036854775807) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool42.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool42.not.i, label %if.then40.i.if.end45.i_crit_edge, label %if.then40.i.ext4_ioctl_setflags.exit.thread_crit_edge

if.then40.i.ext4_ioctl_setflags.exit.thread_crit_edge: ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_ioctl_setflags.exit.thread

if.then40.i.if.end45.i_crit_edge:                 ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.then40.i.if.end45.i_crit_edge, %land.lhs.true.i36.if.end45.i_crit_edge, %if.end28.i.if.end45.i_crit_edge
  %57 = ptrtoint ptr %i_sb.i29 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %i_sb.i29, align 4
  %s_fs_info.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %58, i32 0, i32 33
  %59 = ptrtoint ptr %s_fs_info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %s_fs_info.i.i.i.i, align 16
  %s_cluster_ratio.i.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %60, i32 0, i32 11
  %61 = ptrtoint ptr %s_cluster_ratio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %s_cluster_ratio.i.i.i, align 4
  %mul.i.i.i = shl i32 %62, 3
  %call.i173.i = tail call ptr @__ext4_journal_start_sb(ptr noundef %58, i32 noundef 643, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef %mul.i.i.i) #11
  %cmp.i174.i = icmp ugt ptr %call.i173.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i174.i, label %if.then50.i, label %if.end52.i

if.then50.i:                                      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #13
  %63 = ptrtoint ptr %call.i173.i to i32
  br label %ext4_ioctl_setflags.exit

if.end52.i:                                       ; preds = %if.end45.i
  %64 = ptrtoint ptr %i_sb.i29 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %i_sb.i29, align 4
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %65, i32 0, i32 10
  %66 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %s_flags.i, align 4
  %and54.i = and i32 %67, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54.i)
  %tobool55.not.i = icmp eq i32 %and54.i, 0
  br i1 %tobool55.not.i, label %lor.lhs.false.i, label %if.then59.i

lor.lhs.false.i:                                  ; preds = %if.end52.i
  %68 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %i_flags.i.i, align 4
  %and57.i = and i32 %69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57.i)
  %tobool58.not.i = icmp eq i32 %and57.i, 0
  %cmp.i.not.i.i = icmp ult ptr %call.i173.i, inttoptr (i32 4096 to ptr)
  %or.cond182.i = select i1 %tobool58.not.i, i1 true, i1 %cmp.i.not.i.i
  br i1 %or.cond182.i, label %lor.lhs.false.i.if.end60.i_crit_edge, label %lor.lhs.false.i.if.then.i.i_crit_edge

lor.lhs.false.i.if.then.i.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

lor.lhs.false.i.if.end60.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end60.i

if.then59.i:                                      ; preds = %if.end52.i
  %cmp.i.not.i.old.i = icmp ult ptr %call.i173.i, inttoptr (i32 4096 to ptr)
  br i1 %cmp.i.not.i.old.i, label %if.then59.i.if.end60.i_crit_edge, label %if.then59.i.if.then.i.i_crit_edge

if.then59.i.if.then.i.i_crit_edge:                ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.then59.i.if.end60.i_crit_edge:                 ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end60.i

if.then.i.i:                                      ; preds = %if.then59.i.if.then.i.i_crit_edge, %lor.lhs.false.i.if.then.i.i_crit_edge
  %h_sync.i.i = getelementptr inbounds %struct.jbd2_journal_handle, ptr %call.i173.i, i32 0, i32 7
  %70 = ptrtoint ptr %h_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %bf.load.i.i = load i32, ptr %h_sync.i.i, align 4
  %bf.set.i.i = or i32 %bf.load.i.i, -2147483648
  store i32 %bf.set.i.i, ptr %h_sync.i.i, align 4
  br label %if.end60.i

if.end60.i:                                       ; preds = %if.then.i.i, %if.then59.i.if.end60.i_crit_edge, %lor.lhs.false.i.if.end60.i_crit_edge
  %call61.i = call i32 @ext4_reserve_inode_write(ptr noundef %call.i173.i, ptr noundef %1, ptr noundef nonnull %iloc.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.i)
  %tobool62.not.i = icmp eq i32 %call61.i, 0
  br i1 %tobool62.not.i, label %if.end64.i, label %flags_err.thread.i

flags_err.thread.i:                               ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #13
  %call84179.i = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_ioctl_setflags, i32 noundef 674, ptr noundef %call.i173.i) #11
  br label %ext4_ioctl_setflags.exit.thread

if.end64.i:                                       ; preds = %if.end60.i
  call fastcc void @ext4_dax_dontcache(ptr noundef %1, i32 noundef %and2) #11
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end64.i
  %i.0186.i = phi i32 [ 0, %if.end64.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %mask.0184.i = phi i32 [ 1, %if.end64.i ], [ %shl.i, %for.inc.i.for.body.i_crit_edge ]
  %and67.i = and i32 %mask.0184.i, 1649131775
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67.i)
  %tobool68.not.i = icmp eq i32 %and67.i, 0
  br i1 %tobool68.not.i, label %for.body.i.for.inc.i_crit_edge, label %switch.early.test.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

switch.early.test.i:                              ; preds = %for.body.i
  %71 = zext i32 %mask.0184.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %mask.0184.i, label %if.end77.i [
    i32 524288, label %switch.early.test.i.for.inc.i_crit_edge
    i32 16384, label %switch.early.test.i.for.inc.i_crit_edge76
  ]

switch.early.test.i.for.inc.i_crit_edge76:        ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

switch.early.test.i.for.inc.i_crit_edge:          ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end77.i:                                       ; preds = %switch.early.test.i
  %and78.i = and i32 %mask.0184.i, %and2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78.i)
  %tobool79.not.i = icmp eq i32 %and78.i, 0
  br i1 %tobool79.not.i, label %if.else.i, label %if.then80.i

if.then80.i:                                      ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @_set_bit(i32 noundef %i.0186.i, ptr noundef %i_flags.i) #11
  br label %for.inc.i

if.else.i:                                        ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @_clear_bit(i32 noundef %i.0186.i, ptr noundef %i_flags.i) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %if.then80.i, %switch.early.test.i.for.inc.i_crit_edge, %switch.early.test.i.for.inc.i_crit_edge76, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0186.i, 1
  %shl.i = shl i32 %mask.0184.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %flags_err.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

flags_err.i:                                      ; preds = %for.inc.i
  call void @ext4_set_inode_flags(ptr noundef %1, i1 noundef zeroext false) #11
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp82.i) #11
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp82.i, ptr noundef %1) #11
  %72 = call ptr @memcpy(ptr %i_ctime.i, ptr %tmp82.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp82.i) #11
  %call83.i = call i32 @ext4_mark_iloc_dirty(ptr noundef %call.i173.i, ptr noundef %1, ptr noundef nonnull %iloc.i) #11
  %call84.i = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_ioctl_setflags, i32 noundef 674, ptr noundef %call.i173.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83.i)
  %tobool85.not.i = icmp eq i32 %call83.i, 0
  br i1 %tobool85.not.i, label %if.end87.i, label %flags_err.i.ext4_ioctl_setflags.exit.thread_crit_edge

flags_err.i.ext4_ioctl_setflags.exit.thread_crit_edge: ; preds = %flags_err.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_ioctl_setflags.exit.thread

if.end87.i:                                       ; preds = %flags_err.i
  br i1 %tobool.not.i, label %if.end102.i, label %if.end96.i

if.end96.i:                                       ; preds = %if.end87.i
  %call98.i = call i32 @ext4_change_inode_journal_flag(ptr noundef %1, i32 noundef %and12.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98.i)
  %tobool99.not.i = icmp ne i32 %call98.i, 0
  %brmerge.i = select i1 %tobool99.not.i, i1 true, i1 %tobool11.not.i
  br i1 %brmerge.i, label %if.end96.i.ext4_ioctl_setflags.exit_crit_edge, label %if.end96.i.if.then104.i_crit_edge

if.end96.i.if.then104.i_crit_edge:                ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then104.i

if.end96.i.ext4_ioctl_setflags.exit_crit_edge:    ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_ioctl_setflags.exit

if.end102.i:                                      ; preds = %if.end87.i
  br i1 %tobool11.not.i, label %ext4_ioctl_setflags.exit.thread71, label %if.end102.i.if.then104.i_crit_edge

if.end102.i.if.then104.i_crit_edge:               ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then104.i

ext4_ioctl_setflags.exit.thread71:                ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %iloc.i) #11
  br label %if.end13

if.then104.i:                                     ; preds = %if.end102.i.if.then104.i_crit_edge, %if.end96.i.if.then104.i_crit_edge
  %and105.i = and i32 %3, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105.i)
  %tobool106.not.i = icmp eq i32 %and105.i, 0
  br i1 %tobool106.not.i, label %if.else109.i, label %if.then107.i

if.then107.i:                                     ; preds = %if.then104.i
  call void @__sanitizer_cov_trace_pc() #13
  %call108.i = call i32 @ext4_ext_migrate(ptr noundef %1) #11
  br label %ext4_ioctl_setflags.exit

if.else109.i:                                     ; preds = %if.then104.i
  call void @__sanitizer_cov_trace_pc() #13
  %call110.i = call i32 @ext4_ind_migrate(ptr noundef %1) #11
  br label %ext4_ioctl_setflags.exit

ext4_ioctl_setflags.exit.thread:                  ; preds = %flags_err.i.ext4_ioctl_setflags.exit.thread_crit_edge, %flags_err.thread.i, %if.then40.i.ext4_ioctl_setflags.exit.thread_crit_edge, %if.end24.i.ext4_ioctl_setflags.exit.thread_crit_edge, %if.then17.i.ext4_ioctl_setflags.exit.thread_crit_edge, %dax_compatible.exit.i.ext4_ioctl_setflags.exit.thread_crit_edge, %lor.lhs.false.i.i.ext4_ioctl_setflags.exit.thread_crit_edge, %if.then5.i.i.ext4_ioctl_setflags.exit.thread_crit_edge, %if.then1.i.ext4_ioctl_setflags.exit.thread_crit_edge, %ext4_is_quota_file.exit.i.ext4_ioctl_setflags.exit.thread_crit_edge
  %err.2.i.ph = phi i32 [ -95, %if.then5.i.i.ext4_ioctl_setflags.exit.thread_crit_edge ], [ -95, %lor.lhs.false.i.i.ext4_ioctl_setflags.exit.thread_crit_edge ], [ %call61.i, %flags_err.thread.i ], [ -39, %if.end24.i.ext4_ioctl_setflags.exit.thread_crit_edge ], [ %.mux.i, %if.then17.i.ext4_ioctl_setflags.exit.thread_crit_edge ], [ -95, %dax_compatible.exit.i.ext4_ioctl_setflags.exit.thread_crit_edge ], [ -1, %if.then1.i.ext4_ioctl_setflags.exit.thread_crit_edge ], [ %call.i.i, %if.then40.i.ext4_ioctl_setflags.exit.thread_crit_edge ], [ %call83.i, %flags_err.i.ext4_ioctl_setflags.exit.thread_crit_edge ], [ -1, %ext4_is_quota_file.exit.i.ext4_ioctl_setflags.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %iloc.i) #11
  br label %out

ext4_ioctl_setflags.exit:                         ; preds = %if.else109.i, %if.then107.i, %if.end96.i.ext4_ioctl_setflags.exit_crit_edge, %if.then50.i
  %err.2.i = phi i32 [ %63, %if.then50.i ], [ %call98.i, %if.end96.i.ext4_ioctl_setflags.exit_crit_edge ], [ %call108.i, %if.then107.i ], [ %call110.i, %if.else109.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %iloc.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2.i)
  %tobool11.not = icmp eq i32 %err.2.i, 0
  br i1 %tobool11.not, label %ext4_ioctl_setflags.exit.if.end13_crit_edge, label %ext4_ioctl_setflags.exit.out_crit_edge

ext4_ioctl_setflags.exit.out_crit_edge:           ; preds = %ext4_ioctl_setflags.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

ext4_ioctl_setflags.exit.if.end13_crit_edge:      ; preds = %ext4_ioctl_setflags.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.end13:                                         ; preds = %ext4_ioctl_setflags.exit.if.end13_crit_edge, %ext4_ioctl_setflags.exit.thread71
  %73 = ptrtoint ptr %fsx_projid to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %fsx_projid, align 4
  %75 = ptrtoint ptr %i_sb.i29 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %i_sb.i29, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %iloc.i37) #11
  %77 = ptrtoint ptr %iloc.i37 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr inttoptr (i32 -1 to ptr), ptr %iloc.i37, align 4, !annotation !92
  %78 = getelementptr inbounds %struct.ext4_iloc, ptr %iloc.i37, i32 0, i32 1
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 -1, ptr %78, align 4, !annotation !92
  %80 = getelementptr inbounds %struct.ext4_iloc, ptr %iloc.i37, i32 0, i32 2
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 -1, ptr %80, align 4, !annotation !92
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %transfer_to.i) #11
  %82 = call ptr @memset(ptr %transfer_to.i, i32 0, i32 12)
  %s_fs_info.i.i.i39 = getelementptr inbounds %struct.super_block, ptr %76, i32 0, i32 33
  %83 = ptrtoint ptr %s_fs_info.i.i.i39 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %s_fs_info.i.i.i39, align 16
  %s_es.i.i40 = getelementptr inbounds %struct.ext4_sb_info, ptr %84, i32 0, i32 15
  %85 = ptrtoint ptr %s_es.i.i40 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %s_es.i.i40, align 4
  %s_feature_ro_compat.i.i41 = getelementptr inbounds %struct.ext4_super_block, ptr %86, i32 0, i32 30
  %87 = ptrtoint ptr %s_feature_ro_compat.i.i41 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %s_feature_ro_compat.i.i41, align 4
  %and.i.i42 = and i32 %88, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i42)
  %cmp.i.not.i43 = icmp eq i32 %and.i.i42, 0
  br i1 %cmp.i.not.i43, label %if.then.i, label %if.end.i45

if.then.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp.not.i44 = icmp eq i32 %74, 0
  %..i = select i1 %cmp.not.i44, i32 0, i32 -95
  br label %ext4_ioctl_setproject.exit

if.end.i45:                                       ; preds = %if.end13
  %s_inode_size.i = getelementptr inbounds %struct.ext4_sb_info, ptr %84, i32 0, i32 29
  %89 = ptrtoint ptr %s_inode_size.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %s_inode_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 129, i32 %90)
  %cmp3.i = icmp slt i32 %90, 129
  br i1 %cmp3.i, label %if.end.i45.ext4_ioctl_setproject.exit_crit_edge, label %if.end5.i48

if.end.i45.ext4_ioctl_setproject.exit_crit_edge:  ; preds = %if.end.i45
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_ioctl_setproject.exit

if.end5.i48:                                      ; preds = %if.end.i45
  %call7.i = call i32 @make_kprojid(ptr noundef nonnull @init_user_ns, i32 noundef %74) #11
  %i_projid.i46 = getelementptr i8, ptr %1, i32 1176
  %91 = ptrtoint ptr %i_projid.i46 to i32
  call void @__asan_load4_noabort(i32 %91)
  %.unpack.i47 = load i32, ptr %i_projid.i46, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call7.i, i32 %.unpack.i47)
  %cmp.i151.i = icmp eq i32 %call7.i, %.unpack.i47
  br i1 %cmp.i151.i, label %if.end5.i48.ext4_ioctl_setproject.exit_crit_edge, label %if.end15.i

if.end5.i48.ext4_ioctl_setproject.exit_crit_edge: ; preds = %if.end5.i48
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_ioctl_setproject.exit

if.end15.i:                                       ; preds = %if.end5.i48
  %92 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %i_flags.i.i, align 4
  %and.i152.i = and i32 %93, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i152.i)
  %tobool.not.i.i50 = icmp eq i32 %and.i152.i, 0
  br i1 %tobool.not.i.i50, label %if.end15.i.if.end18.i_crit_edge, label %ext4_is_quota_file.exit.i54

if.end15.i.if.end18.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18.i

ext4_is_quota_file.exit.i54:                      ; preds = %if.end15.i
  %94 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %i_flags.i, align 4
  %and2.i.i52 = and i32 %95, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i52)
  %tobool3.not.i.i53 = icmp eq i32 %and2.i.i52, 0
  br i1 %tobool3.not.i.i53, label %ext4_is_quota_file.exit.i54.ext4_ioctl_setproject.exit_crit_edge, label %ext4_is_quota_file.exit.i54.if.end18.i_crit_edge

ext4_is_quota_file.exit.i54.if.end18.i_crit_edge: ; preds = %ext4_is_quota_file.exit.i54
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18.i

ext4_is_quota_file.exit.i54.ext4_ioctl_setproject.exit_crit_edge: ; preds = %ext4_is_quota_file.exit.i54
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_ioctl_setproject.exit

if.end18.i:                                       ; preds = %ext4_is_quota_file.exit.i54.if.end18.i_crit_edge, %if.end15.i.if.end18.i_crit_edge
  %call19.i = call i32 @ext4_get_inode_loc(ptr noundef %1, ptr noundef nonnull %iloc.i37) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool.not.i55 = icmp eq i32 %call19.i, 0
  br i1 %tobool.not.i55, label %if.end21.i, label %if.end18.i.ext4_ioctl_setproject.exit_crit_edge

if.end18.i.ext4_ioctl_setproject.exit_crit_edge:  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_ioctl_setproject.exit

if.end21.i:                                       ; preds = %if.end18.i
  %i_extra_isize.i = getelementptr i8, ptr %1, i32 988
  %96 = ptrtoint ptr %i_extra_isize.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %i_extra_isize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 31, i16 %97)
  %cmp23.i = icmp ugt i16 %97, 31
  br i1 %cmp23.i, label %if.else31.i, label %if.then25.i

if.then25.i:                                      ; preds = %if.end21.i
  %98 = ptrtoint ptr %s_fs_info.i.i.i39 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %s_fs_info.i.i.i39, align 16
  %s_want_extra_isize.i = getelementptr inbounds %struct.ext4_sb_info, ptr %99, i32 0, i32 58
  %100 = ptrtoint ptr %s_want_extra_isize.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %s_want_extra_isize.i, align 128
  %call27.i = call i32 @ext4_expand_extra_isize(ptr noundef %1, i32 noundef %101, ptr noundef nonnull %iloc.i37) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %if.then25.i.if.end32.i_crit_edge, label %if.then25.i.ext4_ioctl_setproject.exit_crit_edge

if.then25.i.ext4_ioctl_setproject.exit_crit_edge: ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_ioctl_setproject.exit

if.then25.i.if.end32.i_crit_edge:                 ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32.i

if.else31.i:                                      ; preds = %if.end21.i
  %102 = ptrtoint ptr %iloc.i37 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %iloc.i37, align 4
  %tobool.not.i154.i = icmp eq ptr %103, null
  br i1 %tobool.not.i154.i, label %if.else31.i.if.end32.i_crit_edge, label %if.then.i.i56

if.else31.i.if.end32.i_crit_edge:                 ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32.i

if.then.i.i56:                                    ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__brelse(ptr noundef nonnull %103) #11
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then.i.i56, %if.else31.i.if.end32.i_crit_edge, %if.then25.i.if.end32.i_crit_edge
  %call33.i = call i32 @dquot_initialize(ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool34.not.i = icmp eq i32 %call33.i, 0
  br i1 %tobool34.not.i, label %if.end36.i, label %if.end32.i.ext4_ioctl_setproject.exit_crit_edge

if.end32.i.ext4_ioctl_setproject.exit_crit_edge:  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_ioctl_setproject.exit

if.end36.i:                                       ; preds = %if.end32.i
  %104 = ptrtoint ptr %s_fs_info.i.i.i39 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %s_fs_info.i.i.i39, align 16
  %s_mount_opt.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %105, i32 0, i32 17
  %106 = ptrtoint ptr %s_mount_opt.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %s_mount_opt.i.i, align 4
  %and.i156.i = and i32 %107, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i156.i)
  %tobool.not.i157.i = icmp eq i32 %and.i156.i, 0
  %s_es.i.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %105, i32 0, i32 15
  %108 = ptrtoint ptr %s_es.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %s_es.i.i.i, align 4
  br i1 %tobool.not.i157.i, label %ext4_quota_capable.exit.i, label %if.end36.i.cond.end55.i.sink.split_crit_edge

if.end36.i.cond.end55.i.sink.split_crit_edge:     ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end55.i.sink.split

ext4_quota_capable.exit.i:                        ; preds = %if.end36.i
  %s_feature_ro_compat.i.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %109, i32 0, i32 30
  %110 = ptrtoint ptr %s_feature_ro_compat.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %s_feature_ro_compat.i.i.i, align 4
  %and.i.i.i = and i32 %111, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i.not.i, label %ext4_quota_capable.exit.i.cond.end55.i_crit_edge, label %ext4_quota_capable.exit.i.cond.end55.i.sink.split_crit_edge

ext4_quota_capable.exit.i.cond.end55.i.sink.split_crit_edge: ; preds = %ext4_quota_capable.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end55.i.sink.split

ext4_quota_capable.exit.i.cond.end55.i_crit_edge: ; preds = %ext4_quota_capable.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end55.i

cond.end55.i.sink.split:                          ; preds = %ext4_quota_capable.exit.i.cond.end55.i.sink.split_crit_edge, %if.end36.i.cond.end55.i.sink.split_crit_edge
  %s_feature_incompat.i.i57 = getelementptr inbounds %struct.ext4_super_block, ptr %109, i32 0, i32 29
  %112 = ptrtoint ptr %s_feature_incompat.i.i57 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %s_feature_incompat.i.i57, align 8
  %and.i160.i = and i32 %113, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i160.i)
  %cmp.i161.not.i = icmp eq i32 %and.i160.i, 0
  %114 = select i1 %cmp.i161.not.i, i32 37, i32 85
  br label %cond.end55.i

cond.end55.i:                                     ; preds = %cond.end55.i.sink.split, %ext4_quota_capable.exit.i.cond.end55.i_crit_edge
  %add58.i = phi i32 [ %114, %cond.end55.i.sink.split ], [ 3, %ext4_quota_capable.exit.i.cond.end55.i_crit_edge ]
  %115 = ptrtoint ptr %i_sb.i29 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %i_sb.i29, align 4
  %s_fs_info.i.i.i.i58 = getelementptr inbounds %struct.super_block, ptr %116, i32 0, i32 33
  %117 = ptrtoint ptr %s_fs_info.i.i.i.i58 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %s_fs_info.i.i.i.i58, align 16
  %s_cluster_ratio.i.i.i59 = getelementptr inbounds %struct.ext4_sb_info, ptr %118, i32 0, i32 11
  %119 = ptrtoint ptr %s_cluster_ratio.i.i.i59 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %s_cluster_ratio.i.i.i59, align 4
  %mul.i.i.i60 = shl i32 %120, 3
  %call.i.i61 = call ptr @__ext4_journal_start_sb(ptr noundef %116, i32 noundef 757, i32 noundef 6, i32 noundef %add58.i, i32 noundef 0, i32 noundef %mul.i.i.i60) #11
  %cmp.i177.i = icmp ugt ptr %call.i.i61, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i177.i, label %if.then63.i, label %if.end65.i

if.then63.i:                                      ; preds = %cond.end55.i
  call void @__sanitizer_cov_trace_pc() #13
  %121 = ptrtoint ptr %call.i.i61 to i32
  br label %ext4_ioctl_setproject.exit

if.end65.i:                                       ; preds = %cond.end55.i
  %call66.i = call i32 @ext4_reserve_inode_write(ptr noundef %call.i.i61, ptr noundef %1, ptr noundef nonnull %iloc.i37) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66.i)
  %tobool67.not.i = icmp eq i32 %call66.i, 0
  br i1 %tobool67.not.i, label %if.end69.i, label %if.end65.i.out_stop.i_crit_edge

if.end65.i.out_stop.i_crit_edge:                  ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_stop.i

if.end69.i:                                       ; preds = %if.end65.i
  %.fca.0.insert.i = insertvalue [2 x i32] poison, i32 %call7.i, 0
  %.fca.1.insert.i = insertvalue [2 x i32] %.fca.0.insert.i, i32 2, 1
  %call71.i = call ptr @dqget(ptr noundef %76, [2 x i32] %.fca.1.insert.i) #11
  %arrayidx.i = getelementptr inbounds [3 x ptr], ptr %transfer_to.i, i32 0, i32 2
  %122 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %call71.i, ptr %arrayidx.i, align 4
  %cmp.i178.i = icmp ugt ptr %call71.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i178.i, label %if.end69.i._crit_edge, label %if.then74.i

if.end69.i._crit_edge:                            ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %125

if.then74.i:                                      ; preds = %if.end69.i
  %xattr_sem.i = getelementptr i8, ptr %1, i32 -376
  call void @down_read(ptr noundef %xattr_sem.i) #11
  %call78.i = call i32 @__dquot_transfer(ptr noundef %1, ptr noundef nonnull %transfer_to.i) #11
  call void @up_read(ptr noundef %xattr_sem.i) #11
  %123 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %arrayidx.i, align 4
  call void @dqput(ptr noundef %124) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78.i)
  %tobool84.not.i = icmp eq i32 %call78.i, 0
  br i1 %tobool84.not.i, label %if.then74.i._crit_edge, label %out_dirty.i

if.then74.i._crit_edge:                           ; preds = %if.then74.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %125

out_dirty.i:                                      ; preds = %if.then74.i
  call void @__sanitizer_cov_trace_pc() #13
  %call93.i = call i32 @ext4_mark_iloc_dirty(ptr noundef %call.i.i61, ptr noundef %1, ptr noundef nonnull %iloc.i37) #11
  br label %out_stop.i

125:                                              ; preds = %if.then74.i._crit_edge, %if.end69.i._crit_edge
  %126 = ptrtoint ptr %i_projid.i46 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %call7.i, ptr %i_projid.i46, align 8
  %i_ctime.i62 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp92.i) #11
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp92.i, ptr noundef %1) #11
  %127 = call ptr @memcpy(ptr %i_ctime.i62, ptr %tmp92.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp92.i) #11
  %call93192.i = call i32 @ext4_mark_iloc_dirty(ptr noundef %call.i.i61, ptr noundef %1, ptr noundef nonnull %iloc.i37) #11
  br label %out_stop.i

out_stop.i:                                       ; preds = %125, %out_dirty.i, %if.end65.i.out_stop.i_crit_edge
  %err.2.i63 = phi i32 [ %call66.i, %if.end65.i.out_stop.i_crit_edge ], [ %call93192.i, %125 ], [ %call78.i, %out_dirty.i ]
  %call97.i = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_ioctl_setproject, i32 noundef 786, ptr noundef %call.i.i61) #11
  br label %ext4_ioctl_setproject.exit

ext4_ioctl_setproject.exit:                       ; preds = %out_stop.i, %if.then63.i, %if.end32.i.ext4_ioctl_setproject.exit_crit_edge, %if.then25.i.ext4_ioctl_setproject.exit_crit_edge, %if.end18.i.ext4_ioctl_setproject.exit_crit_edge, %ext4_is_quota_file.exit.i54.ext4_ioctl_setproject.exit_crit_edge, %if.end5.i48.ext4_ioctl_setproject.exit_crit_edge, %if.end.i45.ext4_ioctl_setproject.exit_crit_edge, %if.then.i
  %retval.0.i64 = phi i32 [ %121, %if.then63.i ], [ %err.2.i63, %out_stop.i ], [ %..i, %if.then.i ], [ -95, %if.end.i45.ext4_ioctl_setproject.exit_crit_edge ], [ 0, %if.end5.i48.ext4_ioctl_setproject.exit_crit_edge ], [ -1, %ext4_is_quota_file.exit.i54.ext4_ioctl_setproject.exit_crit_edge ], [ %call19.i, %if.end18.i.ext4_ioctl_setproject.exit_crit_edge ], [ %call27.i, %if.then25.i.ext4_ioctl_setproject.exit_crit_edge ], [ %call33.i, %if.end32.i.ext4_ioctl_setproject.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %transfer_to.i) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %iloc.i37) #11
  br label %out

out:                                              ; preds = %ext4_ioctl_setproject.exit, %ext4_ioctl_setflags.exit.out_crit_edge, %ext4_ioctl_setflags.exit.thread, %land.lhs.true.i.out_crit_edge, %if.end.i.out_crit_edge, %ext4_mask_flags.exit.out_crit_edge, %entry.out_crit_edge
  %err.0 = phi i32 [ -95, %entry.out_crit_edge ], [ -95, %ext4_mask_flags.exit.out_crit_edge ], [ %err.2.i, %ext4_ioctl_setflags.exit.out_crit_edge ], [ %retval.0.i64, %ext4_ioctl_setproject.exit ], [ -1, %if.end.i.out_crit_edge ], [ -1, %land.lhs.true.i.out_crit_edge ], [ %err.2.i.ph, %ext4_ioctl_setflags.exit.thread ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_ioctl(ptr noundef %filp, i32 noundef %cmd, i32 noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  %tmp78.i = alloca %struct.timespec64, align 8
  %three.i.i.i = alloca i32, align 4
  %five.i.i.i = alloca i32, align 4
  %seven.i.i.i = alloca i32, align 4
  %new_label.i.i = alloca [17 x i8], align 1
  %label.i.i = alloca [17 x i8], align 1
  %flags.i.i = alloca i32, align 4
  %fiemap.i.i = alloca %struct.fiemap, align 8
  %fieinfo.i.i = alloca %struct.fiemap_extent_info, align 4
  %info.i.i = alloca %struct.getfsmap_info, align 4
  %xhead.i.i = alloca %struct.ext4_fsmap_head, align 8
  %head.i.i = alloca %struct.fsmap_head, align 8
  %iloc.i = alloca %struct.ext4_iloc, align 4
  %tmp39.i = alloca %struct.timespec64, align 8
  %me.i = alloca %struct.move_extent, align 8
  %input.i = alloca %struct.ext4_new_group_data, align 8
  %n_blocks_count182.i = alloca i64, align 8
  %range.i = alloca %struct.fstrim_range, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i.i, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %f_path.i.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 1
  %4 = ptrtoint ptr %f_path.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f_path.i.i, align 8
  %mnt_userns.i.i.i = getelementptr inbounds %struct.vfsmount, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %mnt_userns.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %mnt_userns.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !93
  %8 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %cmd, label %entry.__ext4_ioctl.exit_crit_edge [
    i32 -1061136325, label %sw.bb.i
    i32 -2147195389, label %entry.sw.bb3.i_crit_edge
    i32 -2147191295, label %entry.sw.bb3.i_crit_edge81
    i32 1074030084, label %entry.sw.bb7.i_crit_edge
    i32 1074034178, label %entry.sw.bb7.i_crit_edge82
    i32 1074030087, label %sw.bb47.i
    i32 -1071094257, label %sw.bb96.i
    i32 1076389384, label %sw.bb139.i
    i32 26121, label %sw.bb146.i
    i32 26124, label %sw.bb157.i
    i32 26129, label %sw.bb168.i
    i32 1074292240, label %sw.bb181.i
    i32 -1072146311, label %sw.bb234.i
    i32 26130, label %sw.bb268.i
    i32 -2146671085, label %sw.bb270.i
    i32 1074816532, label %sw.bb275.i
    i32 1074554389, label %sw.bb329.i
    i32 -1073125866, label %sw.bb334.i
    i32 -1068472809, label %sw.bb339.i
    i32 -1069521384, label %sw.bb344.i
    i32 -1069521383, label %sw.bb349.i
    i32 -1065327078, label %sw.bb354.i
    i32 -2146408933, label %sw.bb359.i
    i32 26152, label %sw.bb364.i
    i32 1074030121, label %sw.bb368.i
    i32 -1071618518, label %sw.bb404.i
    i32 -2147198851, label %sw.bb406.i
    i32 1082156677, label %sw.bb408.i
    i32 -1073453434, label %sw.bb413.i
    i32 -1071094137, label %sw.bb418.i
    i32 1074030123, label %sw.bb423.i
    i32 -2130668495, label %sw.bb425.i
    i32 1090556978, label %sw.bb428.i
  ]

entry.sw.bb7.i_crit_edge82:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb7.i

entry.sw.bb7.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb7.i

entry.sw.bb3.i_crit_edge81:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb3.i

entry.sw.bb3.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb3.i

entry.__ext4_ioctl.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %__ext4_ioctl.exit

sw.bb.i:                                          ; preds = %entry
  %9 = inttoptr i32 %arg to ptr
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info.i.i) #11
  %10 = getelementptr inbounds i8, ptr %info.i.i, i32 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 0, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xhead.i.i) #11
  %12 = call ptr @memset(ptr %xhead.i.i, i32 0, i32 96)
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %head.i.i) #11
  %13 = call ptr @memset(ptr %head.i.i, i32 255, i32 192)
  tail call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 156) #11
  %call.i.i.i748.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i748.i, label %sw.bb.i.if.then11.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

sw.bb.i.if.then11.i.i.i.i_crit_edge:              ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %sw.bb.i
  %14 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %9, i32 192, i32 -1226833920) #14
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i6.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i, label %if.end.i.i.i.i, label %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !89

land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.i
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %head.i.i, i32 noundef 192) #11
  %15 = call i32 @llvm.read_register.i32(metadata !79) #11
  %and.i.i.i.i.i.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 4
  %17 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i) #5, !srcloc !94
  %and.i.i.i.i.i.i = and i32 %17, -13
  %or.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i) #11, !srcloc !95
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !96
  %call1.i.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %head.i.i, ptr noundef %9, i32 noundef 192) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #11, !srcloc !95
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i, label %if.end.i.i, label %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !89

if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge:       ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i.i

if.then11.i.i.i.i:                                ; preds = %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, %sw.bb.i.if.then11.i.i.i.i_crit_edge
  %res.0.i.i106.i.i = phi i32 [ %call1.i.i.i.i.i, %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 192, %sw.bb.i.if.then11.i.i.i.i_crit_edge ], [ 192, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge ]
  %sub.i.i.i.i = sub i32 192, %res.0.i.i106.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %head.i.i, i32 %sub.i.i.i.i
  %18 = call ptr @memset(ptr %add.ptr.i.i.i.i, i32 0, i32 %res.0.i.i106.i.i)
  br label %ext4_ioc_getfsmap.exit.i

if.end.i.i:                                       ; preds = %if.end.i.i.i.i
  %fmh_reserved.i.i = getelementptr inbounds %struct.fsmap_head, ptr %head.i.i, i32 0, i32 4
  %call1.i.i = call ptr @memchr_inv(ptr noundef %fmh_reserved.i.i, i32 noundef 0, i32 noundef 48) #11
  %tobool2.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool2.not.i.i, label %lor.lhs.false.i.i, label %if.end.i.i.ext4_ioc_getfsmap.exit.i_crit_edge

if.end.i.i.ext4_ioc_getfsmap.exit.i_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_ioc_getfsmap.exit.i

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %fmh_keys.i.i = getelementptr inbounds %struct.fsmap_head, ptr %head.i.i, i32 0, i32 5
  %fmr_reserved.i.i = getelementptr inbounds %struct.fsmap_head, ptr %head.i.i, i32 0, i32 5, i32 0, i32 6
  %call4.i.i = call ptr @memchr_inv(ptr noundef %fmr_reserved.i.i, i32 noundef 0, i32 noundef 24) #11
  %tobool5.not.i.i = icmp eq ptr %call4.i.i, null
  br i1 %tobool5.not.i.i, label %lor.lhs.false6.i.i, label %lor.lhs.false.i.i.ext4_ioc_getfsmap.exit.i_crit_edge

lor.lhs.false.i.i.ext4_ioc_getfsmap.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_ioc_getfsmap.exit.i

lor.lhs.false6.i.i:                               ; preds = %lor.lhs.false.i.i
  %arrayidx8.i.i = getelementptr inbounds %struct.fsmap_head, ptr %head.i.i, i32 0, i32 5, i32 1
  %fmr_reserved9.i.i = getelementptr inbounds %struct.fsmap_head, ptr %head.i.i, i32 0, i32 5, i32 1, i32 6
  %call11.i.i = call ptr @memchr_inv(ptr noundef %fmr_reserved9.i.i, i32 noundef 0, i32 noundef 24) #11
  %tobool12.not.i.i = icmp eq ptr %call11.i.i, null
  br i1 %tobool12.not.i.i, label %if.end14.i.i, label %lor.lhs.false6.i.i.ext4_ioc_getfsmap.exit.i_crit_edge

lor.lhs.false6.i.i.ext4_ioc_getfsmap.exit.i_crit_edge: ; preds = %lor.lhs.false6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_ioc_getfsmap.exit.i

if.end14.i.i:                                     ; preds = %lor.lhs.false6.i.i
  %fmr_offset.i.i = getelementptr inbounds %struct.fsmap_head, ptr %head.i.i, i32 0, i32 5, i32 0, i32 4
  %19 = ptrtoint ptr %fmr_offset.i.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %fmr_offset.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %20)
  %tobool17.not.i.i = icmp eq i64 %20, 0
  br i1 %tobool17.not.i.i, label %lor.lhs.false18.i.i, label %if.end14.i.i.ext4_ioc_getfsmap.exit.i_crit_edge

if.end14.i.i.ext4_ioc_getfsmap.exit.i_crit_edge:  ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_ioc_getfsmap.exit.i

lor.lhs.false18.i.i:                              ; preds = %if.end14.i.i
  %fmr_offset21.i.i = getelementptr inbounds %struct.fsmap_head, ptr %head.i.i, i32 0, i32 5, i32 1, i32 4
  %21 = ptrtoint ptr %fmr_offset21.i.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %fmr_offset21.i.i, align 8
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.27)
  switch i64 %22, label %lor.lhs.false18.i.i.ext4_ioc_getfsmap.exit.i_crit_edge [
    i64 0, label %lor.lhs.false18.i.i.if.end27.i.i_crit_edge
    i64 -1, label %lor.lhs.false18.i.i.if.end27.i.i_crit_edge83
  ]

lor.lhs.false18.i.i.if.end27.i.i_crit_edge83:     ; preds = %lor.lhs.false18.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27.i.i

lor.lhs.false18.i.i.if.end27.i.i_crit_edge:       ; preds = %lor.lhs.false18.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27.i.i

lor.lhs.false18.i.i.ext4_ioc_getfsmap.exit.i_crit_edge: ; preds = %lor.lhs.false18.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_ioc_getfsmap.exit.i

if.end27.i.i:                                     ; preds = %lor.lhs.false18.i.i.if.end27.i.i_crit_edge, %lor.lhs.false18.i.i.if.end27.i.i_crit_edge83
  %23 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %head.i.i, align 8
  %25 = ptrtoint ptr %xhead.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %xhead.i.i, align 8
  %fmh_count.i.i = getelementptr inbounds %struct.fsmap_head, ptr %head.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %fmh_count.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fmh_count.i.i, align 8
  %fmh_count29.i.i = getelementptr inbounds %struct.ext4_fsmap_head, ptr %xhead.i.i, i32 0, i32 2
  %28 = ptrtoint ptr %fmh_count29.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %fmh_count29.i.i, align 8
  %fmh_keys30.i.i = getelementptr inbounds %struct.ext4_fsmap_head, ptr %xhead.i.i, i32 0, i32 4
  call void @ext4_fsmap_to_internal(ptr noundef %3, ptr noundef %fmh_keys30.i.i, ptr noundef %fmh_keys.i.i) #11
  %arrayidx35.i.i = getelementptr inbounds %struct.ext4_fsmap_head, ptr %xhead.i.i, i32 0, i32 4, i32 1
  call void @ext4_fsmap_to_internal(ptr noundef %3, ptr noundef %arrayidx35.i.i, ptr noundef %arrayidx8.i.i) #11
  call fastcc void @trace_ext4_getfsmap_low_key(ptr noundef %3, ptr noundef %fmh_keys30.i.i) #11
  call fastcc void @trace_ext4_getfsmap_high_key(ptr noundef %3, ptr noundef %arrayidx35.i.i) #11
  %29 = ptrtoint ptr %info.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %3, ptr %info.i.i, align 4
  %gi_data.i.i = getelementptr inbounds %struct.getfsmap_info, ptr %info.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %gi_data.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %9, ptr %gi_data.i.i, align 4
  %call42.i.i = call i32 @ext4_getfsmap(ptr noundef %3, ptr noundef nonnull %xhead.i.i, ptr noundef nonnull @ext4_getfsmap_format, ptr noundef nonnull %info.i.i) #11
  %31 = zext i32 %call42.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %call42.i.i, label %if.end27.i.i.ext4_ioc_getfsmap.exit.i_crit_edge [
    i32 1, label %if.end27.i.i.if.end59.i.i94.i.i_crit_edge
    i32 0, label %land.lhs.true50.i.i
  ]

if.end27.i.i.if.end59.i.i94.i.i_crit_edge:        ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59.i.i94.i.i

if.end27.i.i.ext4_ioc_getfsmap.exit.i_crit_edge:  ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_ioc_getfsmap.exit.i

land.lhs.true50.i.i:                              ; preds = %if.end27.i.i
  %32 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool51.not.i.i = icmp eq i32 %33, 0
  br i1 %tobool51.not.i.i, label %land.lhs.true50.i.i.if.end59.i.i94.i.i_crit_edge, label %if.then52.i.i

land.lhs.true50.i.i.if.end59.i.i94.i.i_crit_edge: ; preds = %land.lhs.true50.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59.i.i94.i.i

if.then52.i.i:                                    ; preds = %land.lhs.true50.i.i
  %gi_last_flags.i.i = getelementptr inbounds %struct.getfsmap_info, ptr %info.i.i, i32 0, i32 3
  %34 = ptrtoint ptr %gi_last_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %gi_last_flags.i.i, align 4
  %or.i749.i = or i32 %35, 32
  store i32 %or.i749.i, ptr %gi_last_flags.i.i, align 4
  %36 = ptrtoint ptr %gi_data.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %gi_data.i.i, align 4
  %sub.i.i = add i32 %33, -1
  %fmr_flags.i.i = getelementptr %struct.fsmap_head, ptr %37, i32 0, i32 6, i32 %sub.i.i, i32 1
  call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 174) #11
  %call.i.i85.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i85.i.i, label %if.then52.i.i.ext4_ioc_getfsmap.exit.i_crit_edge, label %if.end.i.i88.i.i

if.then52.i.i.ext4_ioc_getfsmap.exit.i_crit_edge: ; preds = %if.then52.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_ioc_getfsmap.exit.i

if.end.i.i88.i.i:                                 ; preds = %if.then52.i.i
  %38 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %fmr_flags.i.i, i32 4, i32 -1226833920) #14, !srcloc !97
  %asmresult.i.i86.i.i = extractvalue { i32, i32 } %38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i86.i.i)
  %cmp.i6.i87.i.i = icmp eq i32 %asmresult.i.i86.i.i, 0
  br i1 %cmp.i6.i87.i.i, label %copy_to_user.exit.i.i, label %if.end.i.i88.i.i.ext4_ioc_getfsmap.exit.i_crit_edge

if.end.i.i88.i.i.ext4_ioc_getfsmap.exit.i_crit_edge: ; preds = %if.end.i.i88.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_ioc_getfsmap.exit.i

copy_to_user.exit.i.i:                            ; preds = %if.end.i.i88.i.i
  %call.i.i.i89.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %gi_last_flags.i.i, i32 noundef 4) #11
  %call.i12.i.i.i.i = call i32 @arm_copy_to_user(ptr noundef %fmr_flags.i.i, ptr noundef %gi_last_flags.i.i, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i.i)
  %tobool58.not.i.i = icmp eq i32 %call.i12.i.i.i.i, 0
  br i1 %tobool58.not.i.i, label %copy_to_user.exit.i.i.if.end59.i.i94.i.i_crit_edge, label %copy_to_user.exit.i.i.ext4_ioc_getfsmap.exit.i_crit_edge

copy_to_user.exit.i.i.ext4_ioc_getfsmap.exit.i_crit_edge: ; preds = %copy_to_user.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_ioc_getfsmap.exit.i

copy_to_user.exit.i.i.if.end59.i.i94.i.i_crit_edge: ; preds = %copy_to_user.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59.i.i94.i.i

if.end59.i.i94.i.i:                               ; preds = %copy_to_user.exit.i.i.if.end59.i.i94.i.i_crit_edge, %land.lhs.true50.i.i.if.end59.i.i94.i.i_crit_edge, %if.end27.i.i.if.end59.i.i94.i.i_crit_edge
  %fmh_entries.i.i = getelementptr inbounds %struct.ext4_fsmap_head, ptr %xhead.i.i, i32 0, i32 3
  %39 = ptrtoint ptr %fmh_entries.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %fmh_entries.i.i, align 4
  %fmh_entries62.i.i = getelementptr inbounds %struct.fsmap_head, ptr %head.i.i, i32 0, i32 3
  %41 = ptrtoint ptr %fmh_entries62.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %fmh_entries62.i.i, align 4
  %fmh_oflags.i.i = getelementptr inbounds %struct.ext4_fsmap_head, ptr %xhead.i.i, i32 0, i32 1
  %42 = ptrtoint ptr %fmh_oflags.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %fmh_oflags.i.i, align 4
  %fmh_oflags63.i.i = getelementptr inbounds %struct.fsmap_head, ptr %head.i.i, i32 0, i32 1
  %44 = ptrtoint ptr %fmh_oflags63.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %fmh_oflags63.i.i, align 4
  call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 174) #11
  %call.i.i95.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i95.i.i, label %if.end59.i.i94.i.i.ext4_ioc_getfsmap.exit.i_crit_edge, label %copy_to_user.exit103.i.i

if.end59.i.i94.i.i.ext4_ioc_getfsmap.exit.i_crit_edge: ; preds = %if.end59.i.i94.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_ioc_getfsmap.exit.i

copy_to_user.exit103.i.i:                         ; preds = %if.end59.i.i94.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i99.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %head.i.i, i32 noundef 192) #11
  %call.i12.i.i100.i.i = call i32 @arm_copy_to_user(ptr noundef %9, ptr noundef nonnull %head.i.i, i32 noundef 192) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i100.i.i)
  %tobool65.not.i.i = icmp eq i32 %call.i12.i.i100.i.i, 0
  %spec.select.i.i = select i1 %tobool65.not.i.i, i32 0, i32 -14
  br label %ext4_ioc_getfsmap.exit.i

ext4_ioc_getfsmap.exit.i:                         ; preds = %copy_to_user.exit103.i.i, %if.end59.i.i94.i.i.ext4_ioc_getfsmap.exit.i_crit_edge, %copy_to_user.exit.i.i.ext4_ioc_getfsmap.exit.i_crit_edge, %if.end.i.i88.i.i.ext4_ioc_getfsmap.exit.i_crit_edge, %if.then52.i.i.ext4_ioc_getfsmap.exit.i_crit_edge, %if.end27.i.i.ext4_ioc_getfsmap.exit.i_crit_edge, %lor.lhs.false18.i.i.ext4_ioc_getfsmap.exit.i_crit_edge, %if.end14.i.i.ext4_ioc_getfsmap.exit.i_crit_edge, %lor.lhs.false6.i.i.ext4_ioc_getfsmap.exit.i_crit_edge, %lor.lhs.false.i.i.ext4_ioc_getfsmap.exit.i_crit_edge, %if.end.i.i.ext4_ioc_getfsmap.exit.i_crit_edge, %if.then11.i.i.i.i
  %retval.0.i.i = phi i32 [ -22, %lor.lhs.false6.i.i.ext4_ioc_getfsmap.exit.i_crit_edge ], [ -22, %lor.lhs.false.i.i.ext4_ioc_getfsmap.exit.i_crit_edge ], [ -22, %if.end.i.i.ext4_ioc_getfsmap.exit.i_crit_edge ], [ -22, %lor.lhs.false18.i.i.ext4_ioc_getfsmap.exit.i_crit_edge ], [ -22, %if.end14.i.i.ext4_ioc_getfsmap.exit.i_crit_edge ], [ %call42.i.i, %if.end27.i.i.ext4_ioc_getfsmap.exit.i_crit_edge ], [ -14, %copy_to_user.exit.i.i.ext4_ioc_getfsmap.exit.i_crit_edge ], [ -14, %if.then11.i.i.i.i ], [ -14, %if.then52.i.i.ext4_ioc_getfsmap.exit.i_crit_edge ], [ -14, %if.end.i.i88.i.i.ext4_ioc_getfsmap.exit.i_crit_edge ], [ -14, %if.end59.i.i94.i.i.ext4_ioc_getfsmap.exit.i_crit_edge ], [ %spec.select.i.i, %copy_to_user.exit103.i.i ]
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %head.i.i) #11
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xhead.i.i) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info.i.i) #11
  br label %__ext4_ioctl.exit

sw.bb3.i:                                         ; preds = %entry.sw.bb3.i_crit_edge, %entry.sw.bb3.i_crit_edge81
  %45 = inttoptr i32 %arg to ptr
  %i_generation.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 49
  %46 = ptrtoint ptr %i_generation.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %i_generation.i, align 8
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 1163) #11
  %48 = tail call i32 @llvm.read_register.i32(metadata !79) #11
  %and.i.i.i.i = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 4
  %50 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #5, !srcloc !94
  %and.i.i = and i32 %50, -13
  %or.i.i = or i32 %and.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #11, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !96
  %51 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %45, i32 %47, i32 -1226833921) #11, !srcloc !98
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %50) #11, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !96
  br label %__ext4_ioctl.exit

sw.bb7.i:                                         ; preds = %entry.sw.bb7.i_crit_edge, %entry.sw.bb7.i_crit_edge82
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %iloc.i) #11
  %52 = ptrtoint ptr %iloc.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr inttoptr (i32 -1 to ptr), ptr %iloc.i, align 4, !annotation !92
  %53 = getelementptr inbounds %struct.ext4_iloc, ptr %iloc.i, i32 0, i32 1
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 -1, ptr %53, align 4, !annotation !92
  %55 = getelementptr inbounds %struct.ext4_iloc, ptr %iloc.i, i32 0, i32 2
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -1, ptr %55, align 4, !annotation !92
  %call8.i = tail call zeroext i1 @inode_owner_or_capable(ptr noundef %7, ptr noundef %1) #11
  br i1 %call8.i, label %if.end.i, label %sw.bb7.i.cleanup.i_crit_edge

sw.bb7.i.cleanup.i_crit_edge:                     ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

if.end.i:                                         ; preds = %sw.bb7.i
  %57 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %58, i32 0, i32 33
  %59 = ptrtoint ptr %s_fs_info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %s_fs_info.i.i.i.i, align 16
  %s_es.i.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %60, i32 0, i32 15
  %61 = ptrtoint ptr %s_es.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %s_es.i.i.i, align 4
  %s_feature_ro_compat.i.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %62, i32 0, i32 30
  %63 = ptrtoint ptr %s_feature_ro_compat.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %s_feature_ro_compat.i.i.i, align 4
  %and.i.i.i = and i32 %64, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.not.i.i, label %if.end.i.if.end32.i.i_crit_edge, label %land.rhs.i.i

if.end.i.if.end32.i.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32.i.i

land.rhs.i.i:                                     ; preds = %if.end.i
  %s_chksum_driver.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %60, i32 0, i32 121
  %65 = ptrtoint ptr %s_chksum_driver.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %s_chksum_driver.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %66, null
  br i1 %tobool.not.i.i, label %land.rhs5.i.i, label %land.rhs.i.i.if.end32.i.i_crit_edge

land.rhs.i.i.if.end32.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32.i.i

land.rhs5.i.i:                                    ; preds = %land.rhs.i.i
  %.b50.i.i = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  br i1 %.b50.i.i, label %land.rhs5.i.i.if.end32.i.i_crit_edge, label %if.then.i.i, !prof !89

land.rhs5.i.i.if.end32.i.i_crit_edge:             ; preds = %land.rhs5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32.i.i

if.then.i.i:                                      ; preds = %land.rhs5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3289, i32 noundef 9, ptr noundef null) #11
  br label %if.end32.i.i

if.end32.i.i:                                     ; preds = %if.then.i.i, %land.rhs5.i.i.if.end32.i.i_crit_edge, %land.rhs.i.i.if.end32.i.i_crit_edge, %if.end.i.if.end32.i.i_crit_edge
  %67 = ptrtoint ptr %s_fs_info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %s_fs_info.i.i.i.i, align 16
  %s_es.i53.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %68, i32 0, i32 15
  %69 = ptrtoint ptr %s_es.i53.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %s_es.i53.i.i, align 4
  %s_feature_ro_compat.i54.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %70, i32 0, i32 30
  %71 = ptrtoint ptr %s_feature_ro_compat.i54.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %s_feature_ro_compat.i54.i.i, align 4
  %and.i55.i.i = and i32 %72, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i55.i.i)
  %cmp.i56.not.i.i = icmp eq i32 %and.i55.i.i, 0
  br i1 %cmp.i56.not.i.i, label %if.end32.i.i.if.end12.i_crit_edge, label %ext4_has_metadata_csum.exit.i

if.end32.i.i.if.end12.i_crit_edge:                ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i

ext4_has_metadata_csum.exit.i:                    ; preds = %if.end32.i.i
  %s_chksum_driver43.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %68, i32 0, i32 121
  %73 = ptrtoint ptr %s_chksum_driver43.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %s_chksum_driver43.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %74, null
  br i1 %cmp.i.not.i, label %ext4_has_metadata_csum.exit.i.if.end12.i_crit_edge, label %if.then11.i

ext4_has_metadata_csum.exit.i.if.end12.i_crit_edge: ; preds = %ext4_has_metadata_csum.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i

if.then11.i:                                      ; preds = %ext4_has_metadata_csum.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %3, ptr noundef nonnull @__func__.__ext4_ioctl, i32 noundef 1176, ptr noundef nonnull @.str.2) #11
  br label %cleanup.i

if.end12.i:                                       ; preds = %ext4_has_metadata_csum.exit.i.if.end12.i_crit_edge, %if.end32.i.i.if.end12.i_crit_edge
  %call13.i = tail call i32 @mnt_want_write_file(ptr noundef %filp) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %if.end12.i.cleanup.i_crit_edge

if.end12.i.cleanup.i_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

if.end16.i:                                       ; preds = %if.end12.i
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 1183) #11
  %75 = inttoptr i32 %arg to ptr
  %76 = tail call i32 @llvm.read_register.i32(metadata !79) #11
  %and.i.i.i631.i = and i32 %76, -16384
  %77 = inttoptr i32 %and.i.i.i631.i to ptr
  %cpu_domain.i.i632.i = getelementptr inbounds %struct.thread_info, ptr %77, i32 0, i32 4
  %78 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i632.i) #5, !srcloc !94
  %and.i633.i = and i32 %78, -13
  %or.i634.i = or i32 %and.i633.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i634.i) #11, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !96
  %79 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %75, i32 -1226833921) #11, !srcloc !99
  %asmresult.i = extractvalue { i32, i32 } %79, 0
  %asmresult25.i = extractvalue { i32, i32 } %79, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %78) #11, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %tobool27.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool27.not.i, label %if.end29.i, label %if.end16.i.setversion_out.i_crit_edge

if.end16.i.setversion_out.i_crit_edge:            ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %setversion_out.i

if.end29.i:                                       ; preds = %if.end16.i
  %i_rwsem.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i.i) #11
  %80 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i.i750.i = getelementptr inbounds %struct.super_block, ptr %81, i32 0, i32 33
  %82 = ptrtoint ptr %s_fs_info.i.i.i750.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %s_fs_info.i.i.i750.i, align 16
  %s_cluster_ratio.i.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %83, i32 0, i32 11
  %84 = ptrtoint ptr %s_cluster_ratio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %s_cluster_ratio.i.i.i, align 4
  %mul.i.i.i = shl i32 %85, 3
  %call.i.i = tail call ptr @__ext4_journal_start_sb(ptr noundef %81, i32 noundef 1189, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef %mul.i.i.i) #11
  %cmp.i751.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i751.i, label %if.then34.i, label %if.end36.i

if.then34.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #13
  %86 = ptrtoint ptr %call.i.i to i32
  br label %unlock_out.i

if.end36.i:                                       ; preds = %if.end29.i
  %call37.i = call i32 @ext4_reserve_inode_write(ptr noundef %call.i.i, ptr noundef %1, ptr noundef nonnull %iloc.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %cmp.i = icmp eq i32 %call37.i, 0
  br i1 %cmp.i, label %if.then38.i, label %if.end36.i.if.end42.i_crit_edge

if.end36.i.if.end42.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42.i

if.then38.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #13
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp39.i) #11
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp39.i, ptr noundef %1) #11
  %87 = call ptr @memcpy(ptr %i_ctime.i, ptr %tmp39.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp39.i) #11
  %i_generation40.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 49
  %88 = ptrtoint ptr %i_generation40.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %asmresult25.i, ptr %i_generation40.i, align 8
  %call41.i = call i32 @ext4_mark_iloc_dirty(ptr noundef %call.i.i, ptr noundef %1, ptr noundef nonnull %iloc.i) #11
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.end36.i.if.end42.i_crit_edge
  %err.0.i = phi i32 [ %call41.i, %if.then38.i ], [ %call37.i, %if.end36.i.if.end42.i_crit_edge ]
  %call43.i = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.__ext4_ioctl, i32 noundef 1200, ptr noundef %call.i.i) #11
  br label %unlock_out.i

unlock_out.i:                                     ; preds = %if.end42.i, %if.then34.i
  %err.1.i = phi i32 [ %86, %if.then34.i ], [ %err.0.i, %if.end42.i ]
  call void @up_write(ptr noundef %i_rwsem.i.i) #11
  br label %setversion_out.i

setversion_out.i:                                 ; preds = %unlock_out.i, %if.end16.i.setversion_out.i_crit_edge
  %err.2.i = phi i32 [ %err.1.i, %unlock_out.i ], [ -14, %if.end16.i.setversion_out.i_crit_edge ]
  call void @mnt_drop_write_file(ptr noundef %filp) #11
  br label %cleanup.i

cleanup.i:                                        ; preds = %setversion_out.i, %if.end12.i.cleanup.i_crit_edge, %if.then11.i, %sw.bb7.i.cleanup.i_crit_edge
  %retval.0.i = phi i32 [ -25, %if.then11.i ], [ %err.2.i, %setversion_out.i ], [ -1, %sw.bb7.i.cleanup.i_crit_edge ], [ %call13.i, %if.end12.i.cleanup.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %iloc.i) #11
  br label %__ext4_ioctl.exit

sw.bb47.i:                                        ; preds = %entry
  %call49.i = tail call i32 @ext4_resize_begin(ptr noundef %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.i)
  %tobool50.not.i = icmp eq i32 %call49.i, 0
  br i1 %tobool50.not.i, label %if.end52.i, label %sw.bb47.i.__ext4_ioctl.exit_crit_edge

sw.bb47.i.__ext4_ioctl.exit_crit_edge:            ; preds = %sw.bb47.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__ext4_ioctl.exit

if.end52.i:                                       ; preds = %sw.bb47.i
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 1216) #11
  %89 = inttoptr i32 %arg to ptr
  %90 = tail call i32 @llvm.read_register.i32(metadata !79) #11
  %and.i.i.i635.i = and i32 %90, -16384
  %91 = inttoptr i32 %and.i.i.i635.i to ptr
  %cpu_domain.i.i636.i = getelementptr inbounds %struct.thread_info, ptr %91, i32 0, i32 4
  %92 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i636.i) #5, !srcloc !94
  %and.i637.i = and i32 %92, -13
  %or.i638.i = or i32 %and.i637.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i638.i) #11, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !96
  %93 = tail call { i32, i64 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_64t_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %89, i32 -1226833921) #11, !srcloc !100
  %asmresult62.i = extractvalue { i32, i64 } %93, 0
  %asmresult63.i = extractvalue { i32, i64 } %93, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %92) #11, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !96
  %conv64.i = and i64 %asmresult63.i, 4294967295
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult62.i)
  %tobool66.not.i = icmp eq i32 %asmresult62.i, 0
  br i1 %tobool66.not.i, label %if.end68.i, label %if.end52.i.group_extend_out.i_crit_edge

if.end52.i.group_extend_out.i_crit_edge:          ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %group_extend_out.i

if.end68.i:                                       ; preds = %if.end52.i
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %94 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_es.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %95, i32 0, i32 15
  %96 = ptrtoint ptr %s_es.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %s_es.i.i, align 4
  %s_feature_ro_compat.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %97, i32 0, i32 30
  %98 = ptrtoint ptr %s_feature_ro_compat.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %s_feature_ro_compat.i.i, align 4
  %and.i753.i = and i32 %99, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i753.i)
  %cmp.i754.not.i = icmp eq i32 %and.i753.i, 0
  br i1 %cmp.i754.not.i, label %if.end71.i, label %if.then70.i

if.then70.i:                                      ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %3, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #11
  br label %group_extend_out.i

if.end71.i:                                       ; preds = %if.end68.i
  %call72.i = tail call i32 @mnt_want_write_file(ptr noundef %filp) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72.i)
  %tobool73.not.i = icmp eq i32 %call72.i, 0
  br i1 %tobool73.not.i, label %if.end75.i, label %if.end71.i.group_extend_out.i_crit_edge

if.end71.i.group_extend_out.i_crit_edge:          ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %group_extend_out.i

if.end75.i:                                       ; preds = %if.end71.i
  %100 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_es.i = getelementptr inbounds %struct.ext4_sb_info, ptr %101, i32 0, i32 15
  %102 = ptrtoint ptr %s_es.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %s_es.i, align 4
  %call77.i = tail call i32 @ext4_group_extend(ptr noundef %3, ptr noundef %103, i64 noundef %conv64.i) #11
  %104 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_journal.i = getelementptr inbounds %struct.ext4_sb_info, ptr %105, i32 0, i32 47
  %106 = ptrtoint ptr %s_journal.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %s_journal.i, align 8
  %tobool79.not.i = icmp eq ptr %107, null
  br i1 %tobool79.not.i, label %if.end75.i.if.end88.i_crit_edge, label %if.then80.i

if.end75.i.if.end88.i_crit_edge:                  ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end88.i

if.then80.i:                                      ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @jbd2_journal_lock_updates(ptr noundef nonnull %107) #11
  %108 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_journal84.i = getelementptr inbounds %struct.ext4_sb_info, ptr %109, i32 0, i32 47
  %110 = ptrtoint ptr %s_journal84.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %s_journal84.i, align 8
  %call85.i = tail call i32 @jbd2_journal_flush(ptr noundef %111, i32 noundef 0) #11
  %112 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_journal87.i = getelementptr inbounds %struct.ext4_sb_info, ptr %113, i32 0, i32 47
  %114 = ptrtoint ptr %s_journal87.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %s_journal87.i, align 8
  tail call void @jbd2_journal_unlock_updates(ptr noundef %115) #11
  br label %if.end88.i

if.end88.i:                                       ; preds = %if.then80.i, %if.end75.i.if.end88.i_crit_edge
  %err2.0.i = phi i32 [ %call85.i, %if.then80.i ], [ 0, %if.end75.i.if.end88.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77.i)
  %cmp89.i = icmp eq i32 %call77.i, 0
  %spec.select.i = select i1 %cmp89.i, i32 %err2.0.i, i32 %call77.i
  tail call void @mnt_drop_write_file(ptr noundef %filp) #11
  br label %group_extend_out.i

group_extend_out.i:                               ; preds = %if.end88.i, %if.end71.i.group_extend_out.i_crit_edge, %if.then70.i, %if.end52.i.group_extend_out.i_crit_edge
  %err48.1.i = phi i32 [ -95, %if.then70.i ], [ %call72.i, %if.end71.i.group_extend_out.i_crit_edge ], [ %spec.select.i, %if.end88.i ], [ -14, %if.end52.i.group_extend_out.i_crit_edge ]
  tail call void @ext4_resize_end(ptr noundef %3) #11
  br label %__ext4_ioctl.exit

sw.bb96.i:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %me.i) #11
  %116 = getelementptr inbounds %struct.move_extent, ptr %me.i, i32 0, i32 1
  %117 = getelementptr inbounds %struct.move_extent, ptr %me.i, i32 0, i32 2
  %118 = getelementptr inbounds %struct.move_extent, ptr %me.i, i32 0, i32 3
  %119 = getelementptr inbounds %struct.move_extent, ptr %me.i, i32 0, i32 4
  %120 = getelementptr inbounds %struct.move_extent, ptr %me.i, i32 0, i32 5
  %f_mode.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 8
  %121 = call ptr @memset(ptr %me.i, i32 255, i32 40)
  %122 = ptrtoint ptr %f_mode.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %f_mode.i, align 8
  %124 = and i32 %123, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %124)
  %.not.i = icmp eq i32 %124, 3
  br i1 %.not.i, label %if.end103.i, label %sw.bb96.i.cleanup136.i_crit_edge

sw.bb96.i.cleanup136.i_crit_edge:                 ; preds = %sw.bb96.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup136.i

if.end103.i:                                      ; preds = %sw.bb96.i
  %125 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 156) #11
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i, label %if.end103.i.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end103.i.if.then11.i.i.i_crit_edge:            ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end103.i
  %126 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %125, i32 40, i32 -1226833920) #14
  %asmresult.i.i.i = extractvalue { i32, i32 } %126, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !89

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %me.i, i32 noundef 40) #11
  %127 = call i32 @llvm.read_register.i32(metadata !79) #11
  %and.i.i.i.i.i.i.i = and i32 %127, -16384
  %128 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %128, i32 0, i32 4
  %129 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #5, !srcloc !94
  %and.i.i.i.i.i = and i32 %129, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #11, !srcloc !95
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !96
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %me.i, ptr noundef %125, i32 noundef 40) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %129) #11, !srcloc !95
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end107.i, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !89

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.end103.i.if.then11.i.i.i_crit_edge
  %res.0.i.i962.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 40, %if.end103.i.if.then11.i.i.i_crit_edge ], [ 40, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 40, %res.0.i.i962.i
  %add.ptr.i.i.i = getelementptr i8, ptr %me.i, i32 %sub.i.i.i
  %130 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i962.i)
  br label %cleanup136.i

if.end107.i:                                      ; preds = %if.end.i.i.i
  %131 = ptrtoint ptr %120 to i32
  call void @__asan_store8_noabort(i32 %131)
  store i64 0, ptr %120, align 8
  %132 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %116, align 4
  %call.i759.i = call i32 @__fdget(i32 noundef %133) #11, !noalias !101
  %and.i.i760.i = and i32 %call.i759.i, -4
  %134 = inttoptr i32 %and.i.i760.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i760.i)
  %tobool109.not.i = icmp eq i32 %and.i.i760.i, 0
  br i1 %tobool109.not.i, label %if.end107.i.cleanup136.i_crit_edge, label %if.end111.i

if.end107.i.cleanup136.i_crit_edge:               ; preds = %if.end107.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup136.i

if.end111.i:                                      ; preds = %if.end107.i
  %f_mode113.i = getelementptr inbounds %struct.file, ptr %134, i32 0, i32 8
  %135 = ptrtoint ptr %f_mode113.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %f_mode113.i, align 8
  %and114.i = and i32 %136, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114.i)
  %tobool115.not.i = icmp eq i32 %and114.i, 0
  br i1 %tobool115.not.i, label %if.end111.i.mext_out.i_crit_edge, label %if.end117.i

if.end111.i.mext_out.i_crit_edge:                 ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mext_out.i

if.end117.i:                                      ; preds = %if.end111.i
  %s_fs_info.i.i761.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %137 = ptrtoint ptr %s_fs_info.i.i761.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %s_fs_info.i.i761.i, align 16
  %s_es.i762.i = getelementptr inbounds %struct.ext4_sb_info, ptr %138, i32 0, i32 15
  %139 = ptrtoint ptr %s_es.i762.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %s_es.i762.i, align 4
  %s_feature_ro_compat.i763.i = getelementptr inbounds %struct.ext4_super_block, ptr %140, i32 0, i32 30
  %141 = ptrtoint ptr %s_feature_ro_compat.i763.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %s_feature_ro_compat.i763.i, align 4
  %and.i764.i = and i32 %142, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i764.i)
  %cmp.i765.not.i = icmp eq i32 %and.i764.i, 0
  br i1 %cmp.i765.not.i, label %if.end124.i, label %if.then119.i

if.then119.i:                                     ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %3, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.5) #11
  br label %mext_out.i

if.end124.i:                                      ; preds = %if.end117.i
  %call125.i = call i32 @mnt_want_write_file(ptr noundef %filp) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125.i)
  %tobool126.not.i = icmp eq i32 %call125.i, 0
  br i1 %tobool126.not.i, label %if.end59.i.i642.i, label %if.end124.i.mext_out.i_crit_edge

if.end124.i.mext_out.i_crit_edge:                 ; preds = %if.end124.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mext_out.i

if.end59.i.i642.i:                                ; preds = %if.end124.i
  %143 = ptrtoint ptr %117 to i32
  call void @__asan_load8_noabort(i32 %143)
  %144 = load i64, ptr %117, align 8
  %145 = ptrtoint ptr %118 to i32
  call void @__asan_load8_noabort(i32 %145)
  %146 = load i64, ptr %118, align 8
  %147 = ptrtoint ptr %119 to i32
  call void @__asan_load8_noabort(i32 %147)
  %148 = load i64, ptr %119, align 8
  %call131.i = call i32 @ext4_move_extents(ptr noundef %filp, ptr noundef nonnull %134, i64 noundef %144, i64 noundef %146, i64 noundef %148, ptr noundef %120) #11
  call void @mnt_drop_write_file(ptr noundef %filp) #11
  call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 174) #11
  %call.i.i643.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i643.i, label %if.end59.i.i642.i.mext_out.i_crit_edge, label %copy_to_user.exit.i

if.end59.i.i642.i.mext_out.i_crit_edge:           ; preds = %if.end59.i.i642.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mext_out.i

copy_to_user.exit.i:                              ; preds = %if.end59.i.i642.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i647.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %me.i, i32 noundef 40) #11
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %125, ptr noundef nonnull %me.i, i32 noundef 40) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool133.not.i = icmp eq i32 %call.i12.i.i.i, 0
  %spec.select986.i = select i1 %tobool133.not.i, i32 %call131.i, i32 -14
  br label %mext_out.i

mext_out.i:                                       ; preds = %copy_to_user.exit.i, %if.end59.i.i642.i.mext_out.i_crit_edge, %if.end124.i.mext_out.i_crit_edge, %if.then119.i, %if.end111.i.mext_out.i_crit_edge
  %err97.0.i = phi i32 [ -95, %if.then119.i ], [ %call125.i, %if.end124.i.mext_out.i_crit_edge ], [ -9, %if.end111.i.mext_out.i_crit_edge ], [ -14, %if.end59.i.i642.i.mext_out.i_crit_edge ], [ %spec.select986.i, %copy_to_user.exit.i ]
  %and.i766.i = and i32 %call.i759.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i766.i)
  %tobool.not.i767.i = icmp eq i32 %and.i766.i, 0
  br i1 %tobool.not.i767.i, label %mext_out.i.cleanup136.i_crit_edge, label %if.then.i768.i

mext_out.i.cleanup136.i_crit_edge:                ; preds = %mext_out.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup136.i

if.then.i768.i:                                   ; preds = %mext_out.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @fput(ptr noundef nonnull %134) #11
  br label %cleanup136.i

cleanup136.i:                                     ; preds = %if.then.i768.i, %mext_out.i.cleanup136.i_crit_edge, %if.end107.i.cleanup136.i_crit_edge, %if.then11.i.i.i, %sw.bb96.i.cleanup136.i_crit_edge
  %retval.2.i = phi i32 [ -9, %sw.bb96.i.cleanup136.i_crit_edge ], [ -9, %if.end107.i.cleanup136.i_crit_edge ], [ %err97.0.i, %mext_out.i.cleanup136.i_crit_edge ], [ %err97.0.i, %if.then.i768.i ], [ -14, %if.then11.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %me.i) #11
  br label %__ext4_ioctl.exit

sw.bb139.i:                                       ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %input.i) #11
  %149 = call ptr @memset(ptr %input.i, i32 255, i32 48)
  %150 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 156) #11
  %call.i.i653.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i653.i, label %sw.bb139.i.if.then11.i.i669.i_crit_edge, label %land.lhs.true.i.i656.i

sw.bb139.i.if.then11.i.i669.i_crit_edge:          ; preds = %sw.bb139.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i669.i

land.lhs.true.i.i656.i:                           ; preds = %sw.bb139.i
  %151 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %150, i32 48, i32 -1226833920) #14, !srcloc !104
  %asmresult.i.i654.i = extractvalue { i32, i32 } %151, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i654.i)
  %cmp.i6.i655.i = icmp eq i32 %asmresult.i.i654.i, 0
  br i1 %cmp.i6.i655.i, label %if.end.i.i666.i, label %land.lhs.true.i.i656.i.if.then11.i.i669.i_crit_edge, !prof !89

land.lhs.true.i.i656.i.if.then11.i.i669.i_crit_edge: ; preds = %land.lhs.true.i.i656.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i669.i

if.end.i.i666.i:                                  ; preds = %land.lhs.true.i.i656.i
  %call.i.i.i657.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %input.i, i32 noundef 48) #11
  %152 = call i32 @llvm.read_register.i32(metadata !79) #11
  %and.i.i.i.i.i.i658.i = and i32 %152, -16384
  %153 = inttoptr i32 %and.i.i.i.i.i.i658.i to ptr
  %cpu_domain.i.i.i.i.i659.i = getelementptr inbounds %struct.thread_info, ptr %153, i32 0, i32 4
  %154 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i659.i) #5, !srcloc !94
  %and.i.i.i.i660.i = and i32 %154, -13
  %or.i.i.i.i661.i = or i32 %and.i.i.i.i660.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i661.i) #11, !srcloc !95
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !96
  %call1.i.i.i662.i = call i32 @arm_copy_from_user(ptr noundef nonnull %input.i, ptr noundef %150, i32 noundef 48) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %154) #11, !srcloc !95
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i662.i)
  %tobool4.not.i.i665.i = icmp eq i32 %call1.i.i.i662.i, 0
  br i1 %tobool4.not.i.i665.i, label %if.end143.i, label %if.end.i.i666.i.if.then11.i.i669.i_crit_edge, !prof !89

if.end.i.i666.i.if.then11.i.i669.i_crit_edge:     ; preds = %if.end.i.i666.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i669.i

if.then11.i.i669.i:                               ; preds = %if.end.i.i666.i.if.then11.i.i669.i_crit_edge, %land.lhs.true.i.i656.i.if.then11.i.i669.i_crit_edge, %sw.bb139.i.if.then11.i.i669.i_crit_edge
  %res.0.i.i664969.i = phi i32 [ %call1.i.i.i662.i, %if.end.i.i666.i.if.then11.i.i669.i_crit_edge ], [ 48, %sw.bb139.i.if.then11.i.i669.i_crit_edge ], [ 48, %land.lhs.true.i.i656.i.if.then11.i.i669.i_crit_edge ]
  %sub.i.i667.i = sub i32 48, %res.0.i.i664969.i
  %add.ptr.i.i668.i = getelementptr i8, ptr %input.i, i32 %sub.i.i667.i
  %155 = call ptr @memset(ptr %add.ptr.i.i668.i, i32 0, i32 %res.0.i.i664969.i)
  br label %cleanup145.i

if.end143.i:                                      ; preds = %if.end.i.i666.i
  %156 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %f_inode.i.i, align 8
  %i_sb.i48 = getelementptr inbounds %struct.inode, ptr %157, i32 0, i32 8
  %158 = ptrtoint ptr %i_sb.i48 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %i_sb.i48, align 4
  %call1.i = call i32 @ext4_resize_begin(ptr noundef %159) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i49 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i49, label %if.end.i55, label %if.end143.i.cleanup145.i_crit_edge

if.end143.i.cleanup145.i_crit_edge:               ; preds = %if.end143.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup145.i

if.end.i55:                                       ; preds = %if.end143.i
  %s_fs_info.i.i.i50 = getelementptr inbounds %struct.super_block, ptr %159, i32 0, i32 33
  %160 = ptrtoint ptr %s_fs_info.i.i.i50 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %s_fs_info.i.i.i50, align 16
  %s_es.i.i51 = getelementptr inbounds %struct.ext4_sb_info, ptr %161, i32 0, i32 15
  %162 = ptrtoint ptr %s_es.i.i51 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %s_es.i.i51, align 4
  %s_feature_ro_compat.i.i52 = getelementptr inbounds %struct.ext4_super_block, ptr %163, i32 0, i32 30
  %164 = ptrtoint ptr %s_feature_ro_compat.i.i52 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %s_feature_ro_compat.i.i52, align 4
  %and.i.i53 = and i32 %165, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i53)
  %cmp.i.not.i54 = icmp eq i32 %and.i.i53, 0
  br i1 %cmp.i.not.i54, label %if.end4.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i55
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %159, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #11
  br label %group_add_out.i

if.end4.i:                                        ; preds = %if.end.i55
  %call5.i = call i32 @mnt_want_write_file(ptr noundef %filp) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end4.i.group_add_out.i_crit_edge

if.end4.i.group_add_out.i_crit_edge:              ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %group_add_out.i

if.end8.i:                                        ; preds = %if.end4.i
  %call9.i = call i32 @ext4_group_add(ptr noundef %159, ptr noundef nonnull %input.i) #11
  %166 = ptrtoint ptr %s_fs_info.i.i.i50 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %s_fs_info.i.i.i50, align 16
  %s_journal.i56 = getelementptr inbounds %struct.ext4_sb_info, ptr %167, i32 0, i32 47
  %168 = ptrtoint ptr %s_journal.i56 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %s_journal.i56, align 8
  %tobool11.not.i = icmp eq ptr %169, null
  br i1 %tobool11.not.i, label %if.end8.i.if.end20.i_crit_edge, label %if.then12.i

if.end8.i.if.end20.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20.i

if.then12.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @jbd2_journal_lock_updates(ptr noundef nonnull %169) #11
  %170 = ptrtoint ptr %s_fs_info.i.i.i50 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %s_fs_info.i.i.i50, align 16
  %s_journal16.i = getelementptr inbounds %struct.ext4_sb_info, ptr %171, i32 0, i32 47
  %172 = ptrtoint ptr %s_journal16.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %s_journal16.i, align 8
  %call17.i = call i32 @jbd2_journal_flush(ptr noundef %173, i32 noundef 0) #11
  %174 = ptrtoint ptr %s_fs_info.i.i.i50 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %s_fs_info.i.i.i50, align 16
  %s_journal19.i = getelementptr inbounds %struct.ext4_sb_info, ptr %175, i32 0, i32 47
  %176 = ptrtoint ptr %s_journal19.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %s_journal19.i, align 8
  call void @jbd2_journal_unlock_updates(ptr noundef %177) #11
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then12.i, %if.end8.i.if.end20.i_crit_edge
  %err2.0.i57 = phi i32 [ %call17.i, %if.then12.i ], [ 0, %if.end8.i.if.end20.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp.i58 = icmp eq i32 %call9.i, 0
  %spec.select.i59 = select i1 %cmp.i58, i32 %err2.0.i57, i32 %call9.i
  call void @mnt_drop_write_file(ptr noundef %filp) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i59)
  %tobool23.not.i = icmp eq i32 %spec.select.i59, 0
  br i1 %tobool23.not.i, label %land.lhs.true.i64, label %if.end20.i.group_add_out.i_crit_edge

if.end20.i.group_add_out.i_crit_edge:             ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %group_add_out.i

land.lhs.true.i64:                                ; preds = %if.end20.i
  %178 = ptrtoint ptr %s_fs_info.i.i.i50 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %s_fs_info.i.i.i50, align 16
  %s_es.i.i.i60 = getelementptr inbounds %struct.ext4_sb_info, ptr %179, i32 0, i32 15
  %180 = ptrtoint ptr %s_es.i.i.i60 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %s_es.i.i.i60, align 4
  %s_feature_ro_compat.i.i.i61 = getelementptr inbounds %struct.ext4_super_block, ptr %181, i32 0, i32 30
  %182 = ptrtoint ptr %s_feature_ro_compat.i.i.i61 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %s_feature_ro_compat.i.i.i61, align 4
  %and.i.i.i62 = and i32 %183, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i62)
  %cmp.i.not.i.i63 = icmp eq i32 %and.i.i.i62, 0
  br i1 %cmp.i.not.i.i63, label %lor.rhs.i.i, label %land.lhs.true.i64.land.lhs.true26.i_crit_edge

land.lhs.true.i64.land.lhs.true26.i_crit_edge:    ; preds = %land.lhs.true.i64
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true26.i

lor.rhs.i.i:                                      ; preds = %land.lhs.true.i64
  %and.i.i.i.i65 = and i32 %183, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i65)
  %cmp.i.not.i.i.i = icmp eq i32 %and.i.i.i.i65, 0
  br i1 %cmp.i.not.i.i.i, label %lor.rhs.i.i.if.end32.i.i.i_crit_edge, label %land.rhs.i.i.i

lor.rhs.i.i.if.end32.i.i.i_crit_edge:             ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32.i.i.i

land.rhs.i.i.i:                                   ; preds = %lor.rhs.i.i
  %s_chksum_driver.i.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %179, i32 0, i32 121
  %184 = ptrtoint ptr %s_chksum_driver.i.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %s_chksum_driver.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %185, null
  br i1 %tobool.not.i.i.i, label %land.rhs5.i.i.i, label %land.rhs.i.i.i.if.end32.i.i.i_crit_edge

land.rhs.i.i.i.if.end32.i.i.i_crit_edge:          ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32.i.i.i

land.rhs5.i.i.i:                                  ; preds = %land.rhs.i.i.i
  %.b50.i.i.i = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  br i1 %.b50.i.i.i, label %land.rhs5.i.i.i.if.end32.i.i.i_crit_edge, label %if.then.i.i.i, !prof !89

land.rhs5.i.i.i.if.end32.i.i.i_crit_edge:         ; preds = %land.rhs5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32.i.i.i

if.then.i.i.i:                                    ; preds = %land.rhs5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3289, i32 noundef 9, ptr noundef null) #11
  br label %if.end32.i.i.i

if.end32.i.i.i:                                   ; preds = %if.then.i.i.i, %land.rhs5.i.i.i.if.end32.i.i.i_crit_edge, %land.rhs.i.i.i.if.end32.i.i.i_crit_edge, %lor.rhs.i.i.if.end32.i.i.i_crit_edge
  %186 = ptrtoint ptr %s_fs_info.i.i.i50 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %s_fs_info.i.i.i50, align 16
  %s_es.i53.i.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %187, i32 0, i32 15
  %188 = ptrtoint ptr %s_es.i53.i.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %s_es.i53.i.i.i, align 4
  %s_feature_ro_compat.i54.i.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %189, i32 0, i32 30
  %190 = ptrtoint ptr %s_feature_ro_compat.i54.i.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %s_feature_ro_compat.i54.i.i.i, align 4
  %and.i55.i.i.i = and i32 %191, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i55.i.i.i)
  %cmp.i56.not.i.i.i = icmp eq i32 %and.i55.i.i.i, 0
  br i1 %cmp.i56.not.i.i.i, label %if.end32.i.i.i.group_add_out.i_crit_edge, label %ext4_has_group_desc_csum.exit.i

if.end32.i.i.i.group_add_out.i_crit_edge:         ; preds = %if.end32.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %group_add_out.i

ext4_has_group_desc_csum.exit.i:                  ; preds = %if.end32.i.i.i
  %s_chksum_driver43.i.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %187, i32 0, i32 121
  %192 = ptrtoint ptr %s_chksum_driver43.i.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %s_chksum_driver43.i.i.i, align 4
  %cmp.i3.i.not.i = icmp eq ptr %193, null
  br i1 %cmp.i3.i.not.i, label %ext4_has_group_desc_csum.exit.i.group_add_out.i_crit_edge, label %ext4_has_group_desc_csum.exit.i.land.lhs.true26.i_crit_edge

ext4_has_group_desc_csum.exit.i.land.lhs.true26.i_crit_edge: ; preds = %ext4_has_group_desc_csum.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true26.i

ext4_has_group_desc_csum.exit.i.group_add_out.i_crit_edge: ; preds = %ext4_has_group_desc_csum.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %group_add_out.i

land.lhs.true26.i:                                ; preds = %ext4_has_group_desc_csum.exit.i.land.lhs.true26.i_crit_edge, %land.lhs.true.i64.land.lhs.true26.i_crit_edge
  %194 = ptrtoint ptr %s_fs_info.i.i.i50 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %s_fs_info.i.i.i50, align 16
  %s_mount_opt.i66 = getelementptr inbounds %struct.ext4_sb_info, ptr %195, i32 0, i32 17
  %196 = ptrtoint ptr %s_mount_opt.i66 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %s_mount_opt.i66, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %197)
  %tobool28.not.i = icmp sgt i32 %197, -1
  br i1 %tobool28.not.i, label %land.lhs.true26.i.group_add_out.i_crit_edge, label %if.then29.i

land.lhs.true26.i.group_add_out.i_crit_edge:      ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %group_add_out.i

if.then29.i:                                      ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #13
  %198 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %input.i, align 8
  %call30.i = call i32 @ext4_register_li_request(ptr noundef %159, i32 noundef %199) #11
  br label %group_add_out.i

group_add_out.i:                                  ; preds = %if.then29.i, %land.lhs.true26.i.group_add_out.i_crit_edge, %ext4_has_group_desc_csum.exit.i.group_add_out.i_crit_edge, %if.end32.i.i.i.group_add_out.i_crit_edge, %if.end20.i.group_add_out.i_crit_edge, %if.end4.i.group_add_out.i_crit_edge, %if.then3.i
  %err.1.i67 = phi i32 [ -95, %if.then3.i ], [ %call5.i, %if.end4.i.group_add_out.i_crit_edge ], [ %spec.select.i59, %if.end20.i.group_add_out.i_crit_edge ], [ %call30.i, %if.then29.i ], [ 0, %land.lhs.true26.i.group_add_out.i_crit_edge ], [ 0, %ext4_has_group_desc_csum.exit.i.group_add_out.i_crit_edge ], [ 0, %if.end32.i.i.i.group_add_out.i_crit_edge ]
  call void @ext4_resize_end(ptr noundef %159) #11
  br label %cleanup145.i

cleanup145.i:                                     ; preds = %group_add_out.i, %if.end143.i.cleanup145.i_crit_edge, %if.then11.i.i669.i
  %retval.3.i = phi i32 [ -14, %if.then11.i.i669.i ], [ %err.1.i67, %group_add_out.i ], [ %call1.i, %if.end143.i.cleanup145.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %input.i) #11
  br label %__ext4_ioctl.exit

sw.bb146.i:                                       ; preds = %entry
  %call148.i = tail call zeroext i1 @inode_owner_or_capable(ptr noundef %7, ptr noundef %1) #11
  br i1 %call148.i, label %if.end150.i, label %sw.bb146.i.__ext4_ioctl.exit_crit_edge

sw.bb146.i.__ext4_ioctl.exit_crit_edge:           ; preds = %sw.bb146.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__ext4_ioctl.exit

if.end150.i:                                      ; preds = %sw.bb146.i
  %call151.i = tail call i32 @mnt_want_write_file(ptr noundef %filp) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151.i)
  %tobool152.not.i = icmp eq i32 %call151.i, 0
  br i1 %tobool152.not.i, label %if.end154.i, label %if.end150.i.__ext4_ioctl.exit_crit_edge

if.end150.i.__ext4_ioctl.exit_crit_edge:          ; preds = %if.end150.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__ext4_ioctl.exit

if.end154.i:                                      ; preds = %if.end150.i
  call void @__sanitizer_cov_trace_pc() #13
  %i_rwsem.i770.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i770.i) #11
  %call155.i = tail call i32 @ext4_ext_migrate(ptr noundef %1) #11
  tail call void @up_write(ptr noundef %i_rwsem.i770.i) #11
  tail call void @mnt_drop_write_file(ptr noundef %filp) #11
  br label %__ext4_ioctl.exit

sw.bb157.i:                                       ; preds = %entry
  %call159.i = tail call zeroext i1 @inode_owner_or_capable(ptr noundef %7, ptr noundef %1) #11
  br i1 %call159.i, label %if.end161.i, label %sw.bb157.i.__ext4_ioctl.exit_crit_edge

sw.bb157.i.__ext4_ioctl.exit_crit_edge:           ; preds = %sw.bb157.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__ext4_ioctl.exit

if.end161.i:                                      ; preds = %sw.bb157.i
  %call162.i = tail call i32 @mnt_want_write_file(ptr noundef %filp) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call162.i)
  %tobool163.not.i = icmp eq i32 %call162.i, 0
  br i1 %tobool163.not.i, label %if.end165.i, label %if.end161.i.__ext4_ioctl.exit_crit_edge

if.end161.i.__ext4_ioctl.exit_crit_edge:          ; preds = %if.end161.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__ext4_ioctl.exit

if.end165.i:                                      ; preds = %if.end161.i
  call void @__sanitizer_cov_trace_pc() #13
  %call166.i = tail call i32 @ext4_alloc_da_blocks(ptr noundef %1) #11
  tail call void @mnt_drop_write_file(ptr noundef %filp) #11
  br label %__ext4_ioctl.exit

sw.bb168.i:                                       ; preds = %entry
  %f_mode170.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 8
  %200 = ptrtoint ptr %f_mode170.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %f_mode170.i, align 8
  %and171.i = and i32 %201, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and171.i)
  %tobool172.not.i = icmp eq i32 %and171.i, 0
  br i1 %tobool172.not.i, label %sw.bb168.i.__ext4_ioctl.exit_crit_edge, label %if.end174.i

sw.bb168.i.__ext4_ioctl.exit_crit_edge:           ; preds = %sw.bb168.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__ext4_ioctl.exit

if.end174.i:                                      ; preds = %sw.bb168.i
  %call175.i = tail call i32 @mnt_want_write_file(ptr noundef %filp) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call175.i)
  %tobool176.not.i = icmp eq i32 %call175.i, 0
  br i1 %tobool176.not.i, label %if.end178.i, label %if.end174.i.__ext4_ioctl.exit_crit_edge

if.end174.i.__ext4_ioctl.exit_crit_edge:          ; preds = %if.end174.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__ext4_ioctl.exit

if.end178.i:                                      ; preds = %if.end174.i
  %call.i = tail call ptr @__ext4_iget(ptr noundef %3, i32 noundef 5, i32 noundef 1, ptr noundef nonnull @__func__.swap_inode_boot_loader, i32 noundef 369) #11
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i27, label %if.end.i28

if.then.i27:                                      ; preds = %if.end178.i
  call void @__sanitizer_cov_trace_pc() #13
  %202 = ptrtoint ptr %call.i to i32
  br label %swap_inode_boot_loader.exit

if.end.i28:                                       ; preds = %if.end178.i
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 -464
  tail call void @lock_two_nondirectories(ptr noundef %1, ptr noundef %call.i) #11
  %203 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 12
  %204 = ptrtoint ptr %203 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %203, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %205)
  %cmp.not.i = icmp eq i32 %205, 1
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end.i28.journal_err_out.i_crit_edge

if.end.i28.journal_err_out.i_crit_edge:           ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #13
  br label %journal_err_out.i

lor.lhs.false.i:                                  ; preds = %if.end.i28
  %206 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %206)
  %207 = load i16, ptr %1, align 8
  %208 = and i16 %207, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %208)
  %cmp3.i = icmp eq i16 %208, -32768
  br i1 %cmp3.i, label %lor.lhs.false5.i, label %lor.lhs.false.i.journal_err_out.i_crit_edge

lor.lhs.false.i.journal_err_out.i_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %journal_err_out.i

lor.lhs.false5.i:                                 ; preds = %lor.lhs.false.i
  %i_flags.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %209 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %i_flags.i, align 4
  %211 = and i32 %210, 16640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %211)
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %lor.lhs.false11.i, label %lor.lhs.false5.i.journal_err_out.i_crit_edge

lor.lhs.false5.i.journal_err_out.i_crit_edge:     ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %journal_err_out.i

lor.lhs.false11.i:                                ; preds = %lor.lhs.false5.i
  %i_flags15.i = getelementptr i8, ptr %1, i32 -380
  %213 = ptrtoint ptr %i_flags15.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %i_flags15.i, align 4
  %and16.i = and i32 %214, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %lor.lhs.false18.i, label %lor.lhs.false11.i.journal_err_out.i_crit_edge

lor.lhs.false11.i.journal_err_out.i_crit_edge:    ; preds = %lor.lhs.false11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %journal_err_out.i

lor.lhs.false18.i:                                ; preds = %lor.lhs.false11.i
  %215 = ptrtoint ptr %i_flags15.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load volatile i32, ptr %i_flags15.i, align 4
  %217 = and i32 %216, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %217)
  %tobool.not.i.i29 = icmp eq i32 %217, 0
  br i1 %tobool.not.i.i29, label %lor.lhs.false18.i.if.end22.i_crit_edge, label %ext4_has_inline_data.exit.i

lor.lhs.false18.i.if.end22.i_crit_edge:           ; preds = %lor.lhs.false18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22.i

ext4_has_inline_data.exit.i:                      ; preds = %lor.lhs.false18.i
  %i_inline_off.i.i = getelementptr i8, ptr %1, i32 990
  %218 = ptrtoint ptr %i_inline_off.i.i to i32
  call void @__asan_load2_noabort(i32 %218)
  %219 = load i16, ptr %i_inline_off.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %219)
  %tobool2.i.not.i = icmp eq i16 %219, 0
  br i1 %tobool2.i.not.i, label %ext4_has_inline_data.exit.i.if.end22.i_crit_edge, label %ext4_has_inline_data.exit.i.journal_err_out.i_crit_edge

ext4_has_inline_data.exit.i.journal_err_out.i_crit_edge: ; preds = %ext4_has_inline_data.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %journal_err_out.i

ext4_has_inline_data.exit.i.if.end22.i_crit_edge: ; preds = %ext4_has_inline_data.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22.i

if.end22.i:                                       ; preds = %ext4_has_inline_data.exit.i.if.end22.i_crit_edge, %lor.lhs.false18.i.if.end22.i_crit_edge
  %220 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %i_sb.i, align 4
  %s_flags.i.i = getelementptr inbounds %struct.super_block, ptr %221, i32 0, i32 10
  %222 = ptrtoint ptr %s_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %s_flags.i.i, align 4
  %and.i.i31 = and i32 %223, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i31)
  %tobool.i.not.i = icmp eq i32 %and.i.i31, 0
  %224 = and i32 %210, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %224)
  %225 = icmp eq i32 %224, 0
  %or.cond.i = select i1 %tobool.i.not.i, i1 %225, i1 false
  br i1 %or.cond.i, label %lor.lhs.false33.i, label %if.end22.i.journal_err_out.i_crit_edge

if.end22.i.journal_err_out.i_crit_edge:           ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %journal_err_out.i

lor.lhs.false33.i:                                ; preds = %if.end22.i
  %call34.i = tail call zeroext i1 @inode_owner_or_capable(ptr noundef %7, ptr noundef %1) #11
  br i1 %call34.i, label %lor.lhs.false35.i, label %lor.lhs.false33.i.journal_err_out.i_crit_edge

lor.lhs.false33.i.journal_err_out.i_crit_edge:    ; preds = %lor.lhs.false33.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %journal_err_out.i

lor.lhs.false35.i:                                ; preds = %lor.lhs.false33.i
  %call36.i = tail call zeroext i1 @capable(i32 noundef 21) #11
  br i1 %call36.i, label %if.end38.i, label %lor.lhs.false35.i.journal_err_out.i_crit_edge

lor.lhs.false35.i.journal_err_out.i_crit_edge:    ; preds = %lor.lhs.false35.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %journal_err_out.i

if.end38.i:                                       ; preds = %lor.lhs.false35.i
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  %226 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %i_mapping.i, align 8
  %invalidate_lock.i.i = getelementptr inbounds %struct.address_space, ptr %227, i32 0, i32 2
  tail call void @down_write(ptr noundef %invalidate_lock.i.i) #11
  %228 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %i_mapping.i, align 8
  %call.i.i32 = tail call i32 @filemap_write_and_wait_range(ptr noundef %229, i64 noundef 0, i64 noundef 9223372036854775807) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i32)
  %tobool41.not.i = icmp eq i32 %call.i.i32, 0
  br i1 %tobool41.not.i, label %if.end43.i, label %if.end38.i.err_out.i_crit_edge

if.end38.i.err_out.i_crit_edge:                   ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_out.i

if.end43.i:                                       ; preds = %if.end38.i
  %i_mapping44.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 9
  %230 = ptrtoint ptr %i_mapping44.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %i_mapping44.i, align 8
  %call.i227.i = tail call i32 @filemap_write_and_wait_range(ptr noundef %231, i64 noundef 0, i64 noundef 9223372036854775807) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i227.i)
  %tobool46.not.i = icmp eq i32 %call.i227.i, 0
  br i1 %tobool46.not.i, label %if.end48.i, label %if.end43.i.err_out.i_crit_edge

if.end43.i.err_out.i_crit_edge:                   ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_out.i

if.end48.i:                                       ; preds = %if.end43.i
  tail call void @inode_dio_wait(ptr noundef %1) #11
  tail call void @inode_dio_wait(ptr noundef %call.i) #11
  %i_data.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 46
  tail call void @truncate_inode_pages(ptr noundef %i_data.i, i64 noundef 0) #11
  %i_data49.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 46
  tail call void @truncate_inode_pages(ptr noundef %i_data49.i, i64 noundef 0) #11
  %i_sb50.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 8
  %232 = ptrtoint ptr %i_sb50.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %i_sb50.i, align 4
  %s_fs_info.i.i.i.i33 = getelementptr inbounds %struct.super_block, ptr %233, i32 0, i32 33
  %234 = ptrtoint ptr %s_fs_info.i.i.i.i33 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %s_fs_info.i.i.i.i33, align 16
  %s_cluster_ratio.i.i.i34 = getelementptr inbounds %struct.ext4_sb_info, ptr %235, i32 0, i32 11
  %236 = ptrtoint ptr %s_cluster_ratio.i.i.i34 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %s_cluster_ratio.i.i.i34, align 4
  %mul.i.i.i35 = shl i32 %237, 3
  %call.i228.i = tail call ptr @__ext4_journal_start_sb(ptr noundef %233, i32 noundef 409, i32 noundef 9, i32 noundef 2, i32 noundef 0, i32 noundef %mul.i.i.i35) #11
  %cmp.i229.i = icmp ugt ptr %call.i228.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i229.i, label %if.end48.i.err_out.i_crit_edge, label %if.end55.i

if.end48.i.err_out.i_crit_edge:                   ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_out.i

if.end55.i:                                       ; preds = %if.end48.i
  tail call void @ext4_fc_mark_ineligible(ptr noundef %3, i32 noundef 4, ptr noundef %call.i228.i) #11
  tail call void @ext4_double_down_write_data_sem(ptr noundef %1, ptr noundef %call.i) #11
  %238 = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 12
  %239 = ptrtoint ptr %238 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %238, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %240)
  %cmp56.i = icmp eq i32 %240, 0
  br i1 %cmp56.i, label %if.then58.i, label %if.end55.i.if.end66.i_crit_edge

if.end55.i.if.end66.i_crit_edge:                  ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end66.i

if.then58.i:                                      ; preds = %if.end55.i
  tail call void @set_nlink(ptr noundef %call.i, i32 noundef 1) #11
  %i_uid.i.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 2
  %241 = ptrtoint ptr %i_sb50.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %i_sb50.i, align 4
  %s_user_ns.i.i.i = getelementptr inbounds %struct.super_block, ptr %242, i32 0, i32 53
  %243 = ptrtoint ptr %s_user_ns.i.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %s_user_ns.i.i.i, align 8
  %call1.i.i36 = tail call i32 @make_kuid(ptr noundef %244, i32 noundef 0) #11
  %245 = ptrtoint ptr %i_uid.i.i to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 %call1.i.i36, ptr %i_uid.i.i, align 4
  %i_gid.i.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 3
  %246 = ptrtoint ptr %i_sb50.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %i_sb50.i, align 4
  %s_user_ns.i.i231.i = getelementptr inbounds %struct.super_block, ptr %247, i32 0, i32 53
  %248 = ptrtoint ptr %s_user_ns.i.i231.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %s_user_ns.i.i231.i, align 8
  %call1.i232.i = tail call i32 @make_kgid(ptr noundef %249, i32 noundef 0) #11
  %250 = ptrtoint ptr %i_gid.i.i to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 %call1.i232.i, ptr %i_gid.i.i, align 8
  %i_flags59.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 4
  %251 = ptrtoint ptr %i_flags59.i to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 0, ptr %i_flags59.i, align 4
  %i_flags60.i = getelementptr i8, ptr %call.i, i32 -380
  %252 = ptrtoint ptr %i_flags60.i to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 0, ptr %i_flags60.i, align 4
  %i_version.i.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 38
  %call.i.i.i.i74 = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i.i, i32 noundef 8) #11
  tail call void @generic_atomic64_set(ptr noundef %i_version.i.i, i64 noundef 2) #11
  tail call fastcc void @i_size_write(ptr noundef %call.i, i64 noundef 0) #11
  %253 = ptrtoint ptr %call.i to i32
  call void @__asan_store2_noabort(i32 %253)
  store i16 -32768, ptr %call.i, align 8
  %s_fs_info.i.i.i37 = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %254 = ptrtoint ptr %s_fs_info.i.i.i37 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %s_fs_info.i.i.i37, align 16
  %s_es.i.i38 = getelementptr inbounds %struct.ext4_sb_info, ptr %255, i32 0, i32 15
  %256 = ptrtoint ptr %s_es.i.i38 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %s_es.i.i38, align 4
  %s_feature_incompat.i.i39 = getelementptr inbounds %struct.ext4_super_block, ptr %257, i32 0, i32 29
  %258 = ptrtoint ptr %s_feature_incompat.i.i39 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %s_feature_incompat.i.i39, align 8
  %and.i233.i = and i32 %259, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i233.i)
  %cmp.i234.not.i = icmp eq i32 %and.i233.i, 0
  br i1 %cmp.i234.not.i, label %if.else.i, label %if.then63.i

if.then63.i:                                      ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_set_bit(i32 noundef 19, ptr noundef %i_flags60.i) #11
  tail call void @ext4_ext_tree_init(ptr noundef %call.i228.i, ptr noundef %call.i) #11
  br label %if.end66.i

if.else.i:                                        ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #13
  %260 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 60)
  br label %if.end66.i

if.end66.i:                                       ; preds = %if.else.i, %if.then63.i, %if.end55.i.if.end66.i_crit_edge
  %call67.i = tail call i32 @dquot_initialize(ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67.i)
  %tobool68.not.i = icmp eq i32 %call67.i, 0
  br i1 %tobool68.not.i, label %if.end70.i, label %if.end66.i.err_out1.i_crit_edge

if.end66.i.err_out1.i_crit_edge:                  ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_out1.i

if.end70.i:                                       ; preds = %if.end66.i
  %i_blocks.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 22
  %261 = ptrtoint ptr %i_blocks.i to i32
  call void @__asan_load8_noabort(i32 %261)
  %262 = load i64, ptr %i_blocks.i, align 8
  %i_bytes.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 19
  %263 = ptrtoint ptr %i_bytes.i to i32
  call void @__asan_load2_noabort(i32 %263)
  %264 = load i16, ptr %i_bytes.i, align 4
  %conv71.i = zext i16 %264 to i64
  %i_blocks72.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 22
  %265 = ptrtoint ptr %i_blocks72.i to i32
  call void @__asan_load8_noabort(i32 %265)
  %266 = load i64, ptr %i_blocks72.i, align 8
  %i_bytes74.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 19
  %267 = ptrtoint ptr %i_bytes74.i to i32
  call void @__asan_load2_noabort(i32 %267)
  %268 = load i16, ptr %i_bytes74.i, align 4
  %conv75.i = zext i16 %268 to i64
  %reass.add.i = sub i64 %262, %266
  %reass.mul.i = shl i64 %reass.add.i, 9
  %add.i = sub nsw i64 %conv71.i, %conv75.i
  %sub.i = add i64 %add.i, %reass.mul.i
  tail call fastcc void @swap_inode_data(ptr noundef %1, ptr noundef %call.i) #11
  %i_ctime.i40 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 17
  %i_ctime77.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp78.i) #11
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp78.i, ptr noundef %1) #11
  %269 = call ptr @memcpy(ptr %i_ctime77.i, ptr %tmp78.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp78.i) #11
  %270 = call ptr @memcpy(ptr %i_ctime.i40, ptr %i_ctime77.i, i32 16)
  %call79.i = call i32 @prandom_u32() #11
  %i_generation.i41 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 49
  %271 = ptrtoint ptr %i_generation.i41 to i32
  call void @__asan_store4_noabort(i32 %271)
  store i32 %call79.i, ptr %i_generation.i41, align 8
  %call80.i = call i32 @prandom_u32() #11
  %i_generation81.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 49
  %272 = ptrtoint ptr %i_generation81.i to i32
  call void @__asan_store4_noabort(i32 %272)
  store i32 %call80.i, ptr %i_generation81.i, align 8
  call void @ext4_reset_inode_seed(ptr noundef %1) #11
  call void @ext4_reset_inode_seed(ptr noundef %call.i) #11
  call void @ext4_discard_preallocations(ptr noundef %1, i32 noundef 0) #11
  %call82.i = call i32 @__ext4_mark_inode_dirty(ptr noundef %call.i228.i, ptr noundef %1, ptr noundef nonnull @__func__.swap_inode_boot_loader, i32 noundef 454) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82.i)
  %cmp83.i = icmp slt i32 %call82.i, 0
  br i1 %cmp83.i, label %if.then85.i, label %if.end88.i42

if.then85.i:                                      ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #13
  %273 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %i_sb.i, align 4
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %275 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %i_ino.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %274, ptr noundef nonnull @__func__.swap_inode_boot_loader, i32 noundef 459, ptr noundef nonnull @.str.13, i32 noundef %276, i32 noundef %call82.i) #11
  call fastcc void @swap_inode_data(ptr noundef %1, ptr noundef %call.i) #11
  %call87.i = call i32 @__ext4_mark_inode_dirty(ptr noundef %call.i228.i, ptr noundef %1, ptr noundef nonnull @__func__.swap_inode_boot_loader, i32 noundef 462) #11
  br label %err_out1.i

if.end88.i42:                                     ; preds = %if.end70.i
  %277 = ptrtoint ptr %i_blocks72.i to i32
  call void @__asan_load8_noabort(i32 %277)
  %278 = load i64, ptr %i_blocks72.i, align 8
  %279 = ptrtoint ptr %i_bytes74.i to i32
  call void @__asan_load2_noabort(i32 %279)
  %280 = load i16, ptr %i_bytes74.i, align 4
  %281 = ptrtoint ptr %i_blocks.i to i32
  call void @__asan_load8_noabort(i32 %281)
  %282 = load i64, ptr %i_blocks.i, align 8
  store i64 %282, ptr %i_blocks72.i, align 8
  %283 = ptrtoint ptr %i_bytes.i to i32
  call void @__asan_load2_noabort(i32 %283)
  %284 = load i16, ptr %i_bytes.i, align 4
  store i16 %284, ptr %i_bytes74.i, align 4
  %call95.i = call i32 @__ext4_mark_inode_dirty(ptr noundef %call.i228.i, ptr noundef %call.i, ptr noundef nonnull @__func__.swap_inode_boot_loader, i32 noundef 470) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95.i)
  %cmp96.i = icmp slt i32 %call95.i, 0
  br i1 %cmp96.i, label %if.then98.i, label %if.end101.i

if.then98.i:                                      ; preds = %if.end88.i42
  call void @__sanitizer_cov_trace_pc() #13
  %285 = ptrtoint ptr %i_sb50.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %i_sb50.i, align 4
  %i_ino100.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 11
  %287 = ptrtoint ptr %i_ino100.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %i_ino100.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %286, ptr noundef nonnull @__func__.swap_inode_boot_loader, i32 noundef 475, ptr noundef nonnull @.str.13, i32 noundef %288, i32 noundef %call95.i) #11
  br label %revert.i

if.end101.i:                                      ; preds = %if.end88.i42
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %cmp102.i = icmp sgt i64 %sub.i, 0
  br i1 %cmp102.i, label %if.end108.thread.i, label %if.end108.i

if.end108.thread.i:                               ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__dquot_free_space(ptr noundef %1, i64 noundef %sub.i, i32 noundef 0) #11
  call void @__mark_inode_dirty(ptr noundef %1, i32 noundef 1) #11
  br label %err_out1.i

if.end108.i:                                      ; preds = %if.end101.i
  %mul106.i = sub i64 0, %sub.i
  %call.i.i70 = call i32 @__dquot_alloc_space(ptr noundef %1, i64 noundef %mul106.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i70)
  %tobool.not.i71 = icmp eq i32 %call.i.i70, 0
  br i1 %tobool.not.i71, label %dquot_alloc_space.exit.thread, label %dquot_alloc_space.exit

dquot_alloc_space.exit.thread:                    ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__mark_inode_dirty(ptr noundef %1, i32 noundef 7) #11
  br label %err_out1.i

dquot_alloc_space.exit:                           ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i70)
  %cmp109.i = icmp slt i32 %call.i.i70, 0
  br i1 %cmp109.i, label %dquot_alloc_space.exit.revert.i_crit_edge, label %dquot_alloc_space.exit.err_out1.i_crit_edge

dquot_alloc_space.exit.err_out1.i_crit_edge:      ; preds = %dquot_alloc_space.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_out1.i

dquot_alloc_space.exit.revert.i_crit_edge:        ; preds = %dquot_alloc_space.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %revert.i

revert.i:                                         ; preds = %dquot_alloc_space.exit.revert.i_crit_edge, %if.then98.i
  %err.1.i43 = phi i32 [ %call95.i, %if.then98.i ], [ %call.i.i70, %dquot_alloc_space.exit.revert.i_crit_edge ]
  %289 = ptrtoint ptr %i_blocks72.i to i32
  call void @__asan_store8_noabort(i32 %289)
  store i64 %278, ptr %i_blocks72.i, align 8
  %290 = ptrtoint ptr %i_bytes74.i to i32
  call void @__asan_store2_noabort(i32 %290)
  store i16 %280, ptr %i_bytes74.i, align 4
  call fastcc void @swap_inode_data(ptr noundef %1, ptr noundef %call.i) #11
  %call114.i = call i32 @__ext4_mark_inode_dirty(ptr noundef %call.i228.i, ptr noundef %1, ptr noundef nonnull @__func__.swap_inode_boot_loader, i32 noundef 491) #11
  %call115.i = call i32 @__ext4_mark_inode_dirty(ptr noundef %call.i228.i, ptr noundef %call.i, ptr noundef nonnull @__func__.swap_inode_boot_loader, i32 noundef 492) #11
  br label %err_out1.i

err_out1.i:                                       ; preds = %revert.i, %dquot_alloc_space.exit.err_out1.i_crit_edge, %dquot_alloc_space.exit.thread, %if.end108.thread.i, %if.then85.i, %if.end66.i.err_out1.i_crit_edge
  %err.2.i44 = phi i32 [ %call67.i, %if.end66.i.err_out1.i_crit_edge ], [ %call82.i, %if.then85.i ], [ %err.1.i43, %revert.i ], [ %call.i.i70, %dquot_alloc_space.exit.err_out1.i_crit_edge ], [ %call95.i, %if.end108.thread.i ], [ 0, %dquot_alloc_space.exit.thread ]
  %call117.i = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.swap_inode_boot_loader, i32 noundef 496, ptr noundef %call.i228.i) #11
  call void @ext4_double_up_write_data_sem(ptr noundef %1, ptr noundef %call.i) #11
  br label %err_out.i

err_out.i:                                        ; preds = %err_out1.i, %if.end48.i.err_out.i_crit_edge, %if.end43.i.err_out.i_crit_edge, %if.end38.i.err_out.i_crit_edge
  %err.3.i = phi i32 [ %call.i.i32, %if.end38.i.err_out.i_crit_edge ], [ %call.i227.i, %if.end43.i.err_out.i_crit_edge ], [ %err.2.i44, %err_out1.i ], [ -22, %if.end48.i.err_out.i_crit_edge ]
  %291 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %i_mapping.i, align 8
  %invalidate_lock.i235.i = getelementptr inbounds %struct.address_space, ptr %292, i32 0, i32 2
  call void @up_write(ptr noundef %invalidate_lock.i235.i) #11
  br label %journal_err_out.i

journal_err_out.i:                                ; preds = %err_out.i, %lor.lhs.false35.i.journal_err_out.i_crit_edge, %lor.lhs.false33.i.journal_err_out.i_crit_edge, %if.end22.i.journal_err_out.i_crit_edge, %ext4_has_inline_data.exit.i.journal_err_out.i_crit_edge, %lor.lhs.false11.i.journal_err_out.i_crit_edge, %lor.lhs.false5.i.journal_err_out.i_crit_edge, %lor.lhs.false.i.journal_err_out.i_crit_edge, %if.end.i28.journal_err_out.i_crit_edge
  %err.4.i = phi i32 [ %err.3.i, %err_out.i ], [ -22, %ext4_has_inline_data.exit.i.journal_err_out.i_crit_edge ], [ -22, %lor.lhs.false11.i.journal_err_out.i_crit_edge ], [ -22, %lor.lhs.false5.i.journal_err_out.i_crit_edge ], [ -22, %lor.lhs.false.i.journal_err_out.i_crit_edge ], [ -22, %if.end.i28.journal_err_out.i_crit_edge ], [ -1, %lor.lhs.false35.i.journal_err_out.i_crit_edge ], [ -1, %lor.lhs.false33.i.journal_err_out.i_crit_edge ], [ -1, %if.end22.i.journal_err_out.i_crit_edge ]
  call void @unlock_two_nondirectories(ptr noundef %1, ptr noundef %call.i) #11
  call void @iput(ptr noundef %call.i) #11
  br label %swap_inode_boot_loader.exit

swap_inode_boot_loader.exit:                      ; preds = %journal_err_out.i, %if.then.i27
  %retval.0.i45 = phi i32 [ %202, %if.then.i27 ], [ %err.4.i, %journal_err_out.i ]
  call void @mnt_drop_write_file(ptr noundef %filp) #11
  br label %__ext4_ioctl.exit

sw.bb181.i:                                       ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %n_blocks_count182.i) #11
  %293 = ptrtoint ptr %n_blocks_count182.i to i32
  call void @__asan_store8_noabort(i32 %293)
  store i64 -1, ptr %n_blocks_count182.i, align 8, !annotation !92
  %s_fs_info.i772.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %294 = ptrtoint ptr %s_fs_info.i772.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %s_fs_info.i772.i, align 16
  %s_groups_count.i = getelementptr inbounds %struct.ext4_sb_info, ptr %295, i32 0, i32 8
  %296 = ptrtoint ptr %s_groups_count.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %s_groups_count.i, align 32
  %298 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 156) #11
  %call.i.i676.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i676.i, label %sw.bb181.i.if.then11.i.i692.i_crit_edge, label %land.lhs.true.i.i679.i

sw.bb181.i.if.then11.i.i692.i_crit_edge:          ; preds = %sw.bb181.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i692.i

land.lhs.true.i.i679.i:                           ; preds = %sw.bb181.i
  %299 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %298, i32 8, i32 -1226833920) #14, !srcloc !104
  %asmresult.i.i677.i = extractvalue { i32, i32 } %299, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i677.i)
  %cmp.i6.i678.i = icmp eq i32 %asmresult.i.i677.i, 0
  br i1 %cmp.i6.i678.i, label %if.end.i.i689.i, label %land.lhs.true.i.i679.i.if.then11.i.i692.i_crit_edge, !prof !89

land.lhs.true.i.i679.i.if.then11.i.i692.i_crit_edge: ; preds = %land.lhs.true.i.i679.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i692.i

if.end.i.i689.i:                                  ; preds = %land.lhs.true.i.i679.i
  %call.i.i.i680.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %n_blocks_count182.i, i32 noundef 8) #11
  %300 = call i32 @llvm.read_register.i32(metadata !79) #11
  %and.i.i.i.i.i.i681.i = and i32 %300, -16384
  %301 = inttoptr i32 %and.i.i.i.i.i.i681.i to ptr
  %cpu_domain.i.i.i.i.i682.i = getelementptr inbounds %struct.thread_info, ptr %301, i32 0, i32 4
  %302 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i682.i) #5, !srcloc !94
  %and.i.i.i.i683.i = and i32 %302, -13
  %or.i.i.i.i684.i = or i32 %and.i.i.i.i683.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i684.i) #11, !srcloc !95
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !96
  %call1.i.i.i685.i = call i32 @arm_copy_from_user(ptr noundef nonnull %n_blocks_count182.i, ptr noundef %298, i32 noundef 8) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %302) #11, !srcloc !95
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i685.i)
  %tobool4.not.i.i688.i = icmp eq i32 %call1.i.i.i685.i, 0
  br i1 %tobool4.not.i.i688.i, label %if.end189.i, label %if.end.i.i689.i.if.then11.i.i692.i_crit_edge, !prof !89

if.end.i.i689.i.if.then11.i.i692.i_crit_edge:     ; preds = %if.end.i.i689.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i692.i

if.then11.i.i692.i:                               ; preds = %if.end.i.i689.i.if.then11.i.i692.i_crit_edge, %land.lhs.true.i.i679.i.if.then11.i.i692.i_crit_edge, %sw.bb181.i.if.then11.i.i692.i_crit_edge
  %res.0.i.i687974.i = phi i32 [ %call1.i.i.i685.i, %if.end.i.i689.i.if.then11.i.i692.i_crit_edge ], [ 8, %sw.bb181.i.if.then11.i.i692.i_crit_edge ], [ 8, %land.lhs.true.i.i679.i.if.then11.i.i692.i_crit_edge ]
  %sub.i.i690.i = sub i32 8, %res.0.i.i687974.i
  %add.ptr.i.i691.i = getelementptr i8, ptr %n_blocks_count182.i, i32 %sub.i.i690.i
  %303 = call ptr @memset(ptr %add.ptr.i.i691.i, i32 0, i32 %res.0.i.i687974.i)
  br label %cleanup230.i

if.end189.i:                                      ; preds = %if.end.i.i689.i
  %call190.i = call i32 @ext4_resize_begin(ptr noundef %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call190.i)
  %tobool191.not.i = icmp eq i32 %call190.i, 0
  br i1 %tobool191.not.i, label %if.end193.i, label %if.end189.i.cleanup230.i_crit_edge

if.end189.i.cleanup230.i_crit_edge:               ; preds = %if.end189.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup230.i

if.end193.i:                                      ; preds = %if.end189.i
  %call194.i = call i32 @mnt_want_write_file(ptr noundef %filp) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call194.i)
  %tobool195.not.i = icmp eq i32 %call194.i, 0
  br i1 %tobool195.not.i, label %if.end197.i, label %if.end193.i.resizefs_out.i_crit_edge

if.end193.i.resizefs_out.i_crit_edge:             ; preds = %if.end193.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %resizefs_out.i

if.end197.i:                                      ; preds = %if.end193.i
  %304 = ptrtoint ptr %n_blocks_count182.i to i32
  call void @__asan_load8_noabort(i32 %304)
  %305 = load i64, ptr %n_blocks_count182.i, align 8
  %call198.i = call i32 @ext4_resize_fs(ptr noundef %3, i64 noundef %305) #11
  %306 = ptrtoint ptr %s_fs_info.i772.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %s_fs_info.i772.i, align 16
  %s_journal200.i = getelementptr inbounds %struct.ext4_sb_info, ptr %307, i32 0, i32 47
  %308 = ptrtoint ptr %s_journal200.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %s_journal200.i, align 8
  %tobool201.not.i = icmp eq ptr %309, null
  br i1 %tobool201.not.i, label %if.end197.i.if.end210.i_crit_edge, label %if.then202.i

if.end197.i.if.end210.i_crit_edge:                ; preds = %if.end197.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end210.i

if.then202.i:                                     ; preds = %if.end197.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @ext4_fc_mark_ineligible(ptr noundef %3, i32 noundef 5, ptr noundef null) #11
  %310 = ptrtoint ptr %s_fs_info.i772.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %s_fs_info.i772.i, align 16
  %s_journal204.i = getelementptr inbounds %struct.ext4_sb_info, ptr %311, i32 0, i32 47
  %312 = ptrtoint ptr %s_journal204.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %s_journal204.i, align 8
  call void @jbd2_journal_lock_updates(ptr noundef %313) #11
  %314 = ptrtoint ptr %s_fs_info.i772.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %s_fs_info.i772.i, align 16
  %s_journal206.i = getelementptr inbounds %struct.ext4_sb_info, ptr %315, i32 0, i32 47
  %316 = ptrtoint ptr %s_journal206.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %s_journal206.i, align 8
  %call207.i = call i32 @jbd2_journal_flush(ptr noundef %317, i32 noundef 0) #11
  %318 = ptrtoint ptr %s_fs_info.i772.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %s_fs_info.i772.i, align 16
  %s_journal209.i = getelementptr inbounds %struct.ext4_sb_info, ptr %319, i32 0, i32 47
  %320 = ptrtoint ptr %s_journal209.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %s_journal209.i, align 8
  call void @jbd2_journal_unlock_updates(ptr noundef %321) #11
  br label %if.end210.i

if.end210.i:                                      ; preds = %if.then202.i, %if.end197.i.if.end210.i_crit_edge
  %err2184.0.i = phi i32 [ %call207.i, %if.then202.i ], [ 0, %if.end197.i.if.end210.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call198.i)
  %cmp211.i = icmp eq i32 %call198.i, 0
  %spec.select626.i = select i1 %cmp211.i, i32 %err2184.0.i, i32 %call198.i
  call void @mnt_drop_write_file(ptr noundef %filp) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select626.i)
  %tobool215.not.i = icmp eq i32 %spec.select626.i, 0
  br i1 %tobool215.not.i, label %land.lhs.true.i, label %if.end210.i.resizefs_out.i_crit_edge

if.end210.i.resizefs_out.i_crit_edge:             ; preds = %if.end210.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %resizefs_out.i

land.lhs.true.i:                                  ; preds = %if.end210.i
  %322 = ptrtoint ptr %s_fs_info.i772.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %s_fs_info.i772.i, align 16
  %s_groups_count217.i = getelementptr inbounds %struct.ext4_sb_info, ptr %323, i32 0, i32 8
  %324 = ptrtoint ptr %s_groups_count217.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %s_groups_count217.i, align 32
  call void @__sanitizer_cov_trace_cmp4(i32 %297, i32 %325)
  %cmp218.i = icmp ult i32 %297, %325
  br i1 %cmp218.i, label %land.lhs.true220.i, label %land.lhs.true.i.resizefs_out.i_crit_edge

land.lhs.true.i.resizefs_out.i_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %resizefs_out.i

land.lhs.true220.i:                               ; preds = %land.lhs.true.i
  %s_es.i.i9 = getelementptr inbounds %struct.ext4_sb_info, ptr %323, i32 0, i32 15
  %326 = ptrtoint ptr %s_es.i.i9 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %s_es.i.i9, align 4
  %s_feature_ro_compat.i.i10 = getelementptr inbounds %struct.ext4_super_block, ptr %327, i32 0, i32 30
  %328 = ptrtoint ptr %s_feature_ro_compat.i.i10 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %s_feature_ro_compat.i.i10, align 4
  %and.i.i11 = and i32 %329, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i11)
  %cmp.i.not.i12 = icmp eq i32 %and.i.i11, 0
  br i1 %cmp.i.not.i12, label %lor.rhs.i, label %land.lhs.true220.i.land.lhs.true223.i_crit_edge

land.lhs.true220.i.land.lhs.true223.i_crit_edge:  ; preds = %land.lhs.true220.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true223.i

lor.rhs.i:                                        ; preds = %land.lhs.true220.i
  %and.i.i.i13 = and i32 %329, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i13)
  %cmp.i.not.i.i14 = icmp eq i32 %and.i.i.i13, 0
  br i1 %cmp.i.not.i.i14, label %lor.rhs.i.if.end32.i.i25_crit_edge, label %land.rhs.i.i17

lor.rhs.i.if.end32.i.i25_crit_edge:               ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32.i.i25

land.rhs.i.i17:                                   ; preds = %lor.rhs.i
  %s_chksum_driver.i.i15 = getelementptr inbounds %struct.ext4_sb_info, ptr %323, i32 0, i32 121
  %330 = ptrtoint ptr %s_chksum_driver.i.i15 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %s_chksum_driver.i.i15, align 4
  %tobool.not.i.i16 = icmp eq ptr %331, null
  br i1 %tobool.not.i.i16, label %land.rhs5.i.i19, label %land.rhs.i.i17.if.end32.i.i25_crit_edge

land.rhs.i.i17.if.end32.i.i25_crit_edge:          ; preds = %land.rhs.i.i17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32.i.i25

land.rhs5.i.i19:                                  ; preds = %land.rhs.i.i17
  %.b50.i.i18 = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  br i1 %.b50.i.i18, label %land.rhs5.i.i19.if.end32.i.i25_crit_edge, label %if.then.i.i20, !prof !89

land.rhs5.i.i19.if.end32.i.i25_crit_edge:         ; preds = %land.rhs5.i.i19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32.i.i25

if.then.i.i20:                                    ; preds = %land.rhs5.i.i19
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3289, i32 noundef 9, ptr noundef null) #11
  br label %if.end32.i.i25

if.end32.i.i25:                                   ; preds = %if.then.i.i20, %land.rhs5.i.i19.if.end32.i.i25_crit_edge, %land.rhs.i.i17.if.end32.i.i25_crit_edge, %lor.rhs.i.if.end32.i.i25_crit_edge
  %332 = ptrtoint ptr %s_fs_info.i772.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %s_fs_info.i772.i, align 16
  %s_es.i53.i.i21 = getelementptr inbounds %struct.ext4_sb_info, ptr %333, i32 0, i32 15
  %334 = ptrtoint ptr %s_es.i53.i.i21 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %s_es.i53.i.i21, align 4
  %s_feature_ro_compat.i54.i.i22 = getelementptr inbounds %struct.ext4_super_block, ptr %335, i32 0, i32 30
  %336 = ptrtoint ptr %s_feature_ro_compat.i54.i.i22 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %s_feature_ro_compat.i54.i.i22, align 4
  %and.i55.i.i23 = and i32 %337, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i55.i.i23)
  %cmp.i56.not.i.i24 = icmp eq i32 %and.i55.i.i23, 0
  br i1 %cmp.i56.not.i.i24, label %if.end32.i.i25.resizefs_out.i_crit_edge, label %ext4_has_group_desc_csum.exit

if.end32.i.i25.resizefs_out.i_crit_edge:          ; preds = %if.end32.i.i25
  call void @__sanitizer_cov_trace_pc() #13
  br label %resizefs_out.i

ext4_has_group_desc_csum.exit:                    ; preds = %if.end32.i.i25
  %s_chksum_driver43.i.i26 = getelementptr inbounds %struct.ext4_sb_info, ptr %333, i32 0, i32 121
  %338 = ptrtoint ptr %s_chksum_driver43.i.i26 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %s_chksum_driver43.i.i26, align 4
  %cmp.i3.i.not = icmp eq ptr %339, null
  br i1 %cmp.i3.i.not, label %ext4_has_group_desc_csum.exit.resizefs_out.i_crit_edge, label %ext4_has_group_desc_csum.exit.land.lhs.true223.i_crit_edge

ext4_has_group_desc_csum.exit.land.lhs.true223.i_crit_edge: ; preds = %ext4_has_group_desc_csum.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true223.i

ext4_has_group_desc_csum.exit.resizefs_out.i_crit_edge: ; preds = %ext4_has_group_desc_csum.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %resizefs_out.i

land.lhs.true223.i:                               ; preds = %ext4_has_group_desc_csum.exit.land.lhs.true223.i_crit_edge, %land.lhs.true220.i.land.lhs.true223.i_crit_edge
  %340 = ptrtoint ptr %s_fs_info.i772.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %s_fs_info.i772.i, align 16
  %s_mount_opt.i = getelementptr inbounds %struct.ext4_sb_info, ptr %341, i32 0, i32 17
  %342 = ptrtoint ptr %s_mount_opt.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %s_mount_opt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %343)
  %tobool226.not.i = icmp sgt i32 %343, -1
  br i1 %tobool226.not.i, label %land.lhs.true223.i.resizefs_out.i_crit_edge, label %if.then227.i

land.lhs.true223.i.resizefs_out.i_crit_edge:      ; preds = %land.lhs.true223.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %resizefs_out.i

if.then227.i:                                     ; preds = %land.lhs.true223.i
  call void @__sanitizer_cov_trace_pc() #13
  %call228.i = call i32 @ext4_register_li_request(ptr noundef %3, i32 noundef %297) #11
  br label %resizefs_out.i

resizefs_out.i:                                   ; preds = %if.then227.i, %land.lhs.true223.i.resizefs_out.i_crit_edge, %ext4_has_group_desc_csum.exit.resizefs_out.i_crit_edge, %if.end32.i.i25.resizefs_out.i_crit_edge, %land.lhs.true.i.resizefs_out.i_crit_edge, %if.end210.i.resizefs_out.i_crit_edge, %if.end193.i.resizefs_out.i_crit_edge
  %err183.1.i = phi i32 [ %call194.i, %if.end193.i.resizefs_out.i_crit_edge ], [ %spec.select626.i, %if.end210.i.resizefs_out.i_crit_edge ], [ %call228.i, %if.then227.i ], [ 0, %land.lhs.true223.i.resizefs_out.i_crit_edge ], [ 0, %ext4_has_group_desc_csum.exit.resizefs_out.i_crit_edge ], [ 0, %land.lhs.true.i.resizefs_out.i_crit_edge ], [ 0, %if.end32.i.i25.resizefs_out.i_crit_edge ]
  call void @ext4_resize_end(ptr noundef %3) #11
  br label %cleanup230.i

cleanup230.i:                                     ; preds = %resizefs_out.i, %if.end189.i.cleanup230.i_crit_edge, %if.then11.i.i692.i
  %retval.7.i = phi i32 [ %err183.1.i, %resizefs_out.i ], [ %call190.i, %if.end189.i.cleanup230.i_crit_edge ], [ -14, %if.then11.i.i692.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %n_blocks_count182.i) #11
  br label %__ext4_ioctl.exit

sw.bb234.i:                                       ; preds = %entry
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 26
  %344 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %s_bdev.i, align 4
  %bd_queue.i.i = getelementptr inbounds %struct.block_device, ptr %345, i32 0, i32 18
  %346 = ptrtoint ptr %bd_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %bd_queue.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %range.i) #11
  %348 = call ptr @memset(ptr %range.i, i32 255, i32 24)
  %call236.i = tail call zeroext i1 @capable(i32 noundef 21) #11
  br i1 %call236.i, label %if.end238.i, label %sw.bb234.i.cleanup265.i_crit_edge

sw.bb234.i.cleanup265.i_crit_edge:                ; preds = %sw.bb234.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup265.i

if.end238.i:                                      ; preds = %sw.bb234.i
  %queue_flags.i = getelementptr inbounds %struct.request_queue, ptr %347, i32 0, i32 11
  %349 = ptrtoint ptr %queue_flags.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load volatile i32, ptr %queue_flags.i, align 4
  %351 = and i32 %350, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %351)
  %tobool240.not.i = icmp eq i32 %351, 0
  br i1 %tobool240.not.i, label %if.end238.i.cleanup265.i_crit_edge, label %if.end242.i

if.end238.i.cleanup265.i_crit_edge:               ; preds = %if.end238.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup265.i

if.end242.i:                                      ; preds = %if.end238.i
  %s_fs_info.i779.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %352 = ptrtoint ptr %s_fs_info.i779.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %s_fs_info.i779.i, align 16
  %s_mount_opt244.i = getelementptr inbounds %struct.ext4_sb_info, ptr %353, i32 0, i32 17
  %354 = ptrtoint ptr %s_mount_opt244.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %s_mount_opt244.i, align 4
  %and245.i = and i32 %355, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and245.i)
  %tobool246.not.i = icmp eq i32 %and245.i, 0
  br i1 %tobool246.not.i, label %if.end242.i.if.end251.i_crit_edge, label %land.lhs.true247.i

if.end242.i.if.end251.i_crit_edge:                ; preds = %if.end242.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end251.i

land.lhs.true247.i:                               ; preds = %if.end242.i
  %s_es.i781.i = getelementptr inbounds %struct.ext4_sb_info, ptr %353, i32 0, i32 15
  %356 = ptrtoint ptr %s_es.i781.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %s_es.i781.i, align 4
  %s_feature_compat.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %357, i32 0, i32 28
  %358 = ptrtoint ptr %s_feature_compat.i.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %s_feature_compat.i.i, align 4
  %and.i782.i = and i32 %359, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i782.i)
  %cmp.i783.not.i = icmp eq i32 %and.i782.i, 0
  br i1 %cmp.i783.not.i, label %land.lhs.true247.i.if.end251.i_crit_edge, label %land.lhs.true247.i.cleanup265.i_crit_edge

land.lhs.true247.i.cleanup265.i_crit_edge:        ; preds = %land.lhs.true247.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup265.i

land.lhs.true247.i.if.end251.i_crit_edge:         ; preds = %land.lhs.true247.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end251.i

if.end251.i:                                      ; preds = %land.lhs.true247.i.if.end251.i_crit_edge, %if.end242.i.if.end251.i_crit_edge
  %360 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 156) #11
  %call.i.i699.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i699.i, label %if.end251.i.if.then11.i.i715.i_crit_edge, label %land.lhs.true.i.i702.i

if.end251.i.if.then11.i.i715.i_crit_edge:         ; preds = %if.end251.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i715.i

land.lhs.true.i.i702.i:                           ; preds = %if.end251.i
  %361 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %360, i32 24, i32 -1226833920) #14
  %asmresult.i.i700.i = extractvalue { i32, i32 } %361, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i700.i)
  %cmp.i6.i701.i = icmp eq i32 %asmresult.i.i700.i, 0
  br i1 %cmp.i6.i701.i, label %if.end.i.i712.i, label %land.lhs.true.i.i702.i.if.then11.i.i715.i_crit_edge, !prof !89

land.lhs.true.i.i702.i.if.then11.i.i715.i_crit_edge: ; preds = %land.lhs.true.i.i702.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i715.i

if.end.i.i712.i:                                  ; preds = %land.lhs.true.i.i702.i
  %call.i.i.i703.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %range.i, i32 noundef 24) #11
  %362 = call i32 @llvm.read_register.i32(metadata !79) #11
  %and.i.i.i.i.i.i704.i = and i32 %362, -16384
  %363 = inttoptr i32 %and.i.i.i.i.i.i704.i to ptr
  %cpu_domain.i.i.i.i.i705.i = getelementptr inbounds %struct.thread_info, ptr %363, i32 0, i32 4
  %364 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i705.i) #5, !srcloc !94
  %and.i.i.i.i706.i = and i32 %364, -13
  %or.i.i.i.i707.i = or i32 %and.i.i.i.i706.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i707.i) #11, !srcloc !95
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !96
  %call1.i.i.i708.i = call i32 @arm_copy_from_user(ptr noundef nonnull %range.i, ptr noundef %360, i32 noundef 24) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %364) #11, !srcloc !95
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i708.i)
  %tobool4.not.i.i711.i = icmp eq i32 %call1.i.i.i708.i, 0
  br i1 %tobool4.not.i.i711.i, label %if.end255.i, label %if.end.i.i712.i.if.then11.i.i715.i_crit_edge, !prof !89

if.end.i.i712.i.if.then11.i.i715.i_crit_edge:     ; preds = %if.end.i.i712.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i715.i

if.then11.i.i715.i:                               ; preds = %if.end.i.i712.i.if.then11.i.i715.i_crit_edge, %land.lhs.true.i.i702.i.if.then11.i.i715.i_crit_edge, %if.end251.i.if.then11.i.i715.i_crit_edge
  %res.0.i.i710979.i = phi i32 [ %call1.i.i.i708.i, %if.end.i.i712.i.if.then11.i.i715.i_crit_edge ], [ 24, %if.end251.i.if.then11.i.i715.i_crit_edge ], [ 24, %land.lhs.true.i.i702.i.if.then11.i.i715.i_crit_edge ]
  %sub.i.i713.i = sub i32 24, %res.0.i.i710979.i
  %add.ptr.i.i714.i = getelementptr i8, ptr %range.i, i32 %sub.i.i713.i
  %365 = call ptr @memset(ptr %add.ptr.i.i714.i, i32 0, i32 %res.0.i.i710979.i)
  br label %cleanup265.i

if.end255.i:                                      ; preds = %if.end.i.i712.i
  %call256.i = call i32 @ext4_trim_fs(ptr noundef %3, ptr noundef nonnull %range.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call256.i)
  %cmp257.i = icmp slt i32 %call256.i, 0
  br i1 %cmp257.i, label %if.end255.i.cleanup265.i_crit_edge, label %if.end59.i.i721.i

if.end255.i.cleanup265.i_crit_edge:               ; preds = %if.end255.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup265.i

if.end59.i.i721.i:                                ; preds = %if.end255.i
  call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 174) #11
  %call.i.i722.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i722.i, label %if.end59.i.i721.i.cleanup265.i_crit_edge, label %copy_to_user.exit730.i

if.end59.i.i721.i.cleanup265.i_crit_edge:         ; preds = %if.end59.i.i721.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup265.i

copy_to_user.exit730.i:                           ; preds = %if.end59.i.i721.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i726.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %range.i, i32 noundef 24) #11
  %call.i12.i.i727.i = call i32 @arm_copy_to_user(ptr noundef %360, ptr noundef nonnull %range.i, i32 noundef 24) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i727.i)
  %tobool262.not.i = icmp eq i32 %call.i12.i.i727.i, 0
  %spec.select987.i = select i1 %tobool262.not.i, i32 0, i32 -14
  br label %cleanup265.i

cleanup265.i:                                     ; preds = %copy_to_user.exit730.i, %if.end59.i.i721.i.cleanup265.i_crit_edge, %if.end255.i.cleanup265.i_crit_edge, %if.then11.i.i715.i, %land.lhs.true247.i.cleanup265.i_crit_edge, %if.end238.i.cleanup265.i_crit_edge, %sw.bb234.i.cleanup265.i_crit_edge
  %retval.8.i = phi i32 [ -1, %sw.bb234.i.cleanup265.i_crit_edge ], [ -95, %if.end238.i.cleanup265.i_crit_edge ], [ -30, %land.lhs.true247.i.cleanup265.i_crit_edge ], [ %call256.i, %if.end255.i.cleanup265.i_crit_edge ], [ -14, %if.then11.i.i715.i ], [ -14, %if.end59.i.i721.i.cleanup265.i_crit_edge ], [ %spec.select987.i, %copy_to_user.exit730.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %range.i) #11
  br label %__ext4_ioctl.exit

sw.bb268.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call269.i = tail call i32 @ext4_ext_precache(ptr noundef %1) #11
  br label %__ext4_ioctl.exit

sw.bb270.i:                                       ; preds = %entry
  %s_fs_info.i.i784.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %366 = ptrtoint ptr %s_fs_info.i.i784.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %s_fs_info.i.i784.i, align 16
  %s_es.i785.i = getelementptr inbounds %struct.ext4_sb_info, ptr %367, i32 0, i32 15
  %368 = ptrtoint ptr %s_es.i785.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %s_es.i785.i, align 4
  %s_feature_incompat.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %369, i32 0, i32 29
  %370 = ptrtoint ptr %s_feature_incompat.i.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %s_feature_incompat.i.i, align 8
  %and.i786.i = and i32 %371, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i786.i)
  %cmp.i787.not.i = icmp eq i32 %and.i786.i, 0
  br i1 %cmp.i787.not.i, label %sw.bb270.i.__ext4_ioctl.exit_crit_edge, label %if.end273.i

sw.bb270.i.__ext4_ioctl.exit_crit_edge:           ; preds = %sw.bb270.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__ext4_ioctl.exit

if.end273.i:                                      ; preds = %sw.bb270.i
  call void @__sanitizer_cov_trace_pc() #13
  %372 = inttoptr i32 %arg to ptr
  %call274.i = tail call i32 @fscrypt_ioctl_set_policy(ptr noundef %filp, ptr noundef %372) #11
  br label %__ext4_ioctl.exit

sw.bb275.i:                                       ; preds = %entry
  %s_fs_info.i788.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %373 = ptrtoint ptr %s_fs_info.i788.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %s_fs_info.i788.i, align 16
  %s_es.i790.i = getelementptr inbounds %struct.ext4_sb_info, ptr %374, i32 0, i32 15
  %375 = ptrtoint ptr %s_es.i790.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %s_es.i790.i, align 4
  %s_feature_incompat.i791.i = getelementptr inbounds %struct.ext4_super_block, ptr %376, i32 0, i32 29
  %377 = ptrtoint ptr %s_feature_incompat.i791.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load i32, ptr %s_feature_incompat.i791.i, align 8
  %and.i792.i = and i32 %378, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i792.i)
  %cmp.i793.not.i = icmp eq i32 %and.i792.i, 0
  br i1 %cmp.i793.not.i, label %sw.bb275.i.__ext4_ioctl.exit_crit_edge, label %if.end282.i

sw.bb275.i.__ext4_ioctl.exit_crit_edge:           ; preds = %sw.bb275.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__ext4_ioctl.exit

if.end282.i:                                      ; preds = %sw.bb275.i
  %s_encrypt_pw_salt.i = getelementptr inbounds %struct.ext4_super_block, ptr %376, i32 0, i32 86
  %379 = ptrtoint ptr %s_encrypt_pw_salt.i to i32
  call void @__asan_load1_noabort(i32 %379)
  %380 = load i8, ptr %s_encrypt_pw_salt.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %380)
  %tobool.not.i = icmp eq i8 %380, 0
  br i1 %tobool.not.i, label %for.cond.i, label %if.end282.i.if.end317.i_crit_edge

if.end282.i.if.end317.i_crit_edge:                ; preds = %if.end282.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end317.i

for.cond.i:                                       ; preds = %if.end282.i
  %arrayidx.1.i = getelementptr %struct.ext4_super_block, ptr %376, i32 0, i32 86, i32 1
  %381 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %381)
  %382 = load i8, ptr %arrayidx.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %382)
  %tobool.not.1.i = icmp eq i8 %382, 0
  br i1 %tobool.not.1.i, label %for.cond.1.i, label %for.cond.i.if.end317.i_crit_edge

for.cond.i.if.end317.i_crit_edge:                 ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end317.i

for.cond.1.i:                                     ; preds = %for.cond.i
  %arrayidx.2.i = getelementptr %struct.ext4_super_block, ptr %376, i32 0, i32 86, i32 2
  %383 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %383)
  %384 = load i8, ptr %arrayidx.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %384)
  %tobool.not.2.i = icmp eq i8 %384, 0
  br i1 %tobool.not.2.i, label %for.cond.2.i, label %for.cond.1.i.if.end317.i_crit_edge

for.cond.1.i.if.end317.i_crit_edge:               ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end317.i

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %arrayidx.3.i = getelementptr %struct.ext4_super_block, ptr %376, i32 0, i32 86, i32 3
  %385 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %385)
  %386 = load i8, ptr %arrayidx.3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %386)
  %tobool.not.3.i = icmp eq i8 %386, 0
  br i1 %tobool.not.3.i, label %for.cond.3.i, label %for.cond.2.i.if.end317.i_crit_edge

for.cond.2.i.if.end317.i_crit_edge:               ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end317.i

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %arrayidx.4.i = getelementptr %struct.ext4_super_block, ptr %376, i32 0, i32 86, i32 4
  %387 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %387)
  %388 = load i8, ptr %arrayidx.4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %388)
  %tobool.not.4.i = icmp eq i8 %388, 0
  br i1 %tobool.not.4.i, label %for.cond.4.i, label %for.cond.3.i.if.end317.i_crit_edge

for.cond.3.i.if.end317.i_crit_edge:               ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end317.i

for.cond.4.i:                                     ; preds = %for.cond.3.i
  %arrayidx.5.i = getelementptr %struct.ext4_super_block, ptr %376, i32 0, i32 86, i32 5
  %389 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %389)
  %390 = load i8, ptr %arrayidx.5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %390)
  %tobool.not.5.i = icmp eq i8 %390, 0
  br i1 %tobool.not.5.i, label %for.cond.5.i, label %for.cond.4.i.if.end317.i_crit_edge

for.cond.4.i.if.end317.i_crit_edge:               ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end317.i

for.cond.5.i:                                     ; preds = %for.cond.4.i
  %arrayidx.6.i = getelementptr %struct.ext4_super_block, ptr %376, i32 0, i32 86, i32 6
  %391 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load1_noabort(i32 %391)
  %392 = load i8, ptr %arrayidx.6.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %392)
  %tobool.not.6.i = icmp eq i8 %392, 0
  br i1 %tobool.not.6.i, label %for.cond.6.i, label %for.cond.5.i.if.end317.i_crit_edge

for.cond.5.i.if.end317.i_crit_edge:               ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end317.i

for.cond.6.i:                                     ; preds = %for.cond.5.i
  %arrayidx.7.i = getelementptr %struct.ext4_super_block, ptr %376, i32 0, i32 86, i32 7
  %393 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load1_noabort(i32 %393)
  %394 = load i8, ptr %arrayidx.7.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %394)
  %tobool.not.7.i = icmp eq i8 %394, 0
  br i1 %tobool.not.7.i, label %for.cond.7.i, label %for.cond.6.i.if.end317.i_crit_edge

for.cond.6.i.if.end317.i_crit_edge:               ; preds = %for.cond.6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end317.i

for.cond.7.i:                                     ; preds = %for.cond.6.i
  %arrayidx.8.i = getelementptr %struct.ext4_super_block, ptr %376, i32 0, i32 86, i32 8
  %395 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_load1_noabort(i32 %395)
  %396 = load i8, ptr %arrayidx.8.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %396)
  %tobool.not.8.i = icmp eq i8 %396, 0
  br i1 %tobool.not.8.i, label %for.cond.8.i, label %for.cond.7.i.if.end317.i_crit_edge

for.cond.7.i.if.end317.i_crit_edge:               ; preds = %for.cond.7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end317.i

for.cond.8.i:                                     ; preds = %for.cond.7.i
  %arrayidx.9.i = getelementptr %struct.ext4_super_block, ptr %376, i32 0, i32 86, i32 9
  %397 = ptrtoint ptr %arrayidx.9.i to i32
  call void @__asan_load1_noabort(i32 %397)
  %398 = load i8, ptr %arrayidx.9.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %398)
  %tobool.not.9.i = icmp eq i8 %398, 0
  br i1 %tobool.not.9.i, label %for.cond.9.i, label %for.cond.8.i.if.end317.i_crit_edge

for.cond.8.i.if.end317.i_crit_edge:               ; preds = %for.cond.8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end317.i

for.cond.9.i:                                     ; preds = %for.cond.8.i
  %arrayidx.10.i = getelementptr %struct.ext4_super_block, ptr %376, i32 0, i32 86, i32 10
  %399 = ptrtoint ptr %arrayidx.10.i to i32
  call void @__asan_load1_noabort(i32 %399)
  %400 = load i8, ptr %arrayidx.10.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %400)
  %tobool.not.10.i = icmp eq i8 %400, 0
  br i1 %tobool.not.10.i, label %for.cond.10.i, label %for.cond.9.i.if.end317.i_crit_edge

for.cond.9.i.if.end317.i_crit_edge:               ; preds = %for.cond.9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end317.i

for.cond.10.i:                                    ; preds = %for.cond.9.i
  %arrayidx.11.i = getelementptr %struct.ext4_super_block, ptr %376, i32 0, i32 86, i32 11
  %401 = ptrtoint ptr %arrayidx.11.i to i32
  call void @__asan_load1_noabort(i32 %401)
  %402 = load i8, ptr %arrayidx.11.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %402)
  %tobool.not.11.i = icmp eq i8 %402, 0
  br i1 %tobool.not.11.i, label %for.cond.11.i, label %for.cond.10.i.if.end317.i_crit_edge

for.cond.10.i.if.end317.i_crit_edge:              ; preds = %for.cond.10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end317.i

for.cond.11.i:                                    ; preds = %for.cond.10.i
  %arrayidx.12.i = getelementptr %struct.ext4_super_block, ptr %376, i32 0, i32 86, i32 12
  %403 = ptrtoint ptr %arrayidx.12.i to i32
  call void @__asan_load1_noabort(i32 %403)
  %404 = load i8, ptr %arrayidx.12.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %404)
  %tobool.not.12.i = icmp eq i8 %404, 0
  br i1 %tobool.not.12.i, label %for.cond.12.i, label %for.cond.11.i.if.end317.i_crit_edge

for.cond.11.i.if.end317.i_crit_edge:              ; preds = %for.cond.11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end317.i

for.cond.12.i:                                    ; preds = %for.cond.11.i
  %arrayidx.13.i = getelementptr %struct.ext4_super_block, ptr %376, i32 0, i32 86, i32 13
  %405 = ptrtoint ptr %arrayidx.13.i to i32
  call void @__asan_load1_noabort(i32 %405)
  %406 = load i8, ptr %arrayidx.13.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %406)
  %tobool.not.13.i = icmp eq i8 %406, 0
  br i1 %tobool.not.13.i, label %for.cond.13.i, label %for.cond.12.i.if.end317.i_crit_edge

for.cond.12.i.if.end317.i_crit_edge:              ; preds = %for.cond.12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end317.i

for.cond.13.i:                                    ; preds = %for.cond.12.i
  %arrayidx.14.i = getelementptr %struct.ext4_super_block, ptr %376, i32 0, i32 86, i32 14
  %407 = ptrtoint ptr %arrayidx.14.i to i32
  call void @__asan_load1_noabort(i32 %407)
  %408 = load i8, ptr %arrayidx.14.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %408)
  %tobool.not.14.i = icmp eq i8 %408, 0
  br i1 %tobool.not.14.i, label %uuid_is_zero.exit, label %for.cond.13.i.if.end317.i_crit_edge

for.cond.13.i.if.end317.i_crit_edge:              ; preds = %for.cond.13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end317.i

uuid_is_zero.exit:                                ; preds = %for.cond.13.i
  %arrayidx.15.i = getelementptr %struct.ext4_super_block, ptr %376, i32 0, i32 86, i32 15
  %409 = ptrtoint ptr %arrayidx.15.i to i32
  call void @__asan_load1_noabort(i32 %409)
  %410 = load i8, ptr %arrayidx.15.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %410)
  %tobool.not.15.i.not = icmp eq i8 %410, 0
  br i1 %tobool.not.15.i.not, label %if.then286.i, label %uuid_is_zero.exit.if.end317.i_crit_edge

uuid_is_zero.exit.if.end317.i_crit_edge:          ; preds = %uuid_is_zero.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end317.i

if.then286.i:                                     ; preds = %uuid_is_zero.exit
  %call287.i = tail call i32 @mnt_want_write_file(ptr noundef %filp) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call287.i)
  %tobool288.not.i = icmp eq i32 %call287.i, 0
  br i1 %tobool288.not.i, label %if.end290.i, label %if.then286.i.__ext4_ioctl.exit_crit_edge

if.then286.i.__ext4_ioctl.exit_crit_edge:         ; preds = %if.then286.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__ext4_ioctl.exit

if.end290.i:                                      ; preds = %if.then286.i
  %411 = ptrtoint ptr %s_fs_info.i788.i to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %s_fs_info.i788.i, align 16
  %s_cluster_ratio.i.i795.i = getelementptr inbounds %struct.ext4_sb_info, ptr %412, i32 0, i32 11
  %413 = ptrtoint ptr %s_cluster_ratio.i.i795.i to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load i32, ptr %s_cluster_ratio.i.i795.i, align 4
  %mul.i.i796.i = shl i32 %414, 3
  %call292.i = tail call ptr @__ext4_journal_start_sb(ptr noundef %3, i32 noundef 1447, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef %mul.i.i796.i) #11
  %cmp.i797.i = icmp ugt ptr %call292.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i797.i, label %if.then294.i, label %if.end296.i

if.then294.i:                                     ; preds = %if.end290.i
  call void @__sanitizer_cov_trace_pc() #13
  %415 = ptrtoint ptr %call292.i to i32
  br label %pwsalt_err_exit.i

if.end296.i:                                      ; preds = %if.end290.i
  %s_sbh.i = getelementptr inbounds %struct.ext4_sb_info, ptr %374, i32 0, i32 14
  %416 = ptrtoint ptr %s_sbh.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %s_sbh.i, align 64
  %call297.i = tail call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.__ext4_ioctl, i32 noundef 1454, ptr noundef %call292.i, ptr noundef %3, ptr noundef %417, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call297.i)
  %tobool298.not.i = icmp eq i32 %call297.i, 0
  br i1 %tobool298.not.i, label %if.end300.i, label %if.end296.i.pwsalt_err_journal.i_crit_edge

if.end296.i.pwsalt_err_journal.i_crit_edge:       ; preds = %if.end296.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pwsalt_err_journal.i

if.end300.i:                                      ; preds = %if.end296.i
  %418 = ptrtoint ptr %s_sbh.i to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %s_sbh.i, align 64
  tail call void @__might_sleep(ptr noundef nonnull @.str.16, i32 noundef 366) #11
  %call.i.i.i.i1 = tail call zeroext i1 @__kasan_check_write(ptr noundef %419, i32 noundef 4) #11
  %420 = ptrtoint ptr %419 to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load volatile i32, ptr %419, align 4
  %and.i.i.i.i2 = and i32 %421, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i2)
  %tobool.not.i.i.i.i3 = icmp eq i32 %and.i.i.i.i2, 0
  br i1 %tobool.not.i.i.i.i3, label %trylock_buffer.exit.i, label %if.end300.i.if.then.i_crit_edge

if.end300.i.if.then.i_crit_edge:                  ; preds = %if.end300.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

trylock_buffer.exit.i:                            ; preds = %if.end300.i
  tail call void @llvm.prefetch.p0(ptr %419, i32 1, i32 3, i32 1) #11
  %422 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %419, ptr %419, i32 4, ptr elementtype(i32) %419) #11, !srcloc !105
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %422, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !106
  %423 = and i32 %asmresult.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %423)
  %tobool.not.not.i = icmp eq i32 %423, 0
  br i1 %tobool.not.not.i, label %trylock_buffer.exit.i.lock_buffer.exit_crit_edge, label %trylock_buffer.exit.i.if.then.i_crit_edge

trylock_buffer.exit.i.if.then.i_crit_edge:        ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

trylock_buffer.exit.i.lock_buffer.exit_crit_edge: ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lock_buffer.exit

if.then.i:                                        ; preds = %trylock_buffer.exit.i.if.then.i_crit_edge, %if.end300.i.if.then.i_crit_edge
  tail call void @__lock_buffer(ptr noundef %419) #11
  br label %lock_buffer.exit

lock_buffer.exit:                                 ; preds = %if.then.i, %trylock_buffer.exit.i.lock_buffer.exit_crit_edge
  %424 = ptrtoint ptr %s_es.i790.i to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %s_es.i790.i, align 4
  %s_encrypt_pw_salt303.i = getelementptr inbounds %struct.ext4_super_block, ptr %425, i32 0, i32 86
  tail call void @generate_random_uuid(ptr noundef %s_encrypt_pw_salt303.i) #11
  tail call void @ext4_superblock_csum_set(ptr noundef %3) #11
  %426 = ptrtoint ptr %s_sbh.i to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %s_sbh.i, align 64
  tail call void @unlock_buffer(ptr noundef %427) #11
  %428 = ptrtoint ptr %s_sbh.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %s_sbh.i, align 64
  %call307.i = tail call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.__ext4_ioctl, i32 noundef 1462, ptr noundef %call292.i, ptr noundef null, ptr noundef %429) #11
  br label %pwsalt_err_journal.i

pwsalt_err_journal.i:                             ; preds = %lock_buffer.exit, %if.end296.i.pwsalt_err_journal.i_crit_edge
  %err276.0.i = phi i32 [ %call297.i, %if.end296.i.pwsalt_err_journal.i_crit_edge ], [ %call307.i, %lock_buffer.exit ]
  %call308.i = tail call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.__ext4_ioctl, i32 noundef 1464, ptr noundef %call292.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call308.i)
  %tobool309.not.i = icmp ne i32 %call308.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err276.0.i)
  %tobool311.not.i = icmp eq i32 %err276.0.i, 0
  %or.cond627.i = select i1 %tobool309.not.i, i1 %tobool311.not.i, i1 false
  %spec.select630.i = select i1 %or.cond627.i, i32 %call308.i, i32 %err276.0.i
  br label %pwsalt_err_exit.i

pwsalt_err_exit.i:                                ; preds = %pwsalt_err_journal.i, %if.then294.i
  %err276.1.i = phi i32 [ %415, %if.then294.i ], [ %spec.select630.i, %pwsalt_err_journal.i ]
  tail call void @mnt_drop_write_file(ptr noundef %filp) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err276.1.i)
  %tobool314.not.i = icmp eq i32 %err276.1.i, 0
  br i1 %tobool314.not.i, label %pwsalt_err_exit.i.if.end317.i_crit_edge, label %pwsalt_err_exit.i.__ext4_ioctl.exit_crit_edge

pwsalt_err_exit.i.__ext4_ioctl.exit_crit_edge:    ; preds = %pwsalt_err_exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__ext4_ioctl.exit

pwsalt_err_exit.i.if.end317.i_crit_edge:          ; preds = %pwsalt_err_exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end317.i

if.end317.i:                                      ; preds = %pwsalt_err_exit.i.if.end317.i_crit_edge, %uuid_is_zero.exit.if.end317.i_crit_edge, %for.cond.13.i.if.end317.i_crit_edge, %for.cond.12.i.if.end317.i_crit_edge, %for.cond.11.i.if.end317.i_crit_edge, %for.cond.10.i.if.end317.i_crit_edge, %for.cond.9.i.if.end317.i_crit_edge, %for.cond.8.i.if.end317.i_crit_edge, %for.cond.7.i.if.end317.i_crit_edge, %for.cond.6.i.if.end317.i_crit_edge, %for.cond.5.i.if.end317.i_crit_edge, %for.cond.4.i.if.end317.i_crit_edge, %for.cond.3.i.if.end317.i_crit_edge, %for.cond.2.i.if.end317.i_crit_edge, %for.cond.1.i.if.end317.i_crit_edge, %for.cond.i.if.end317.i_crit_edge, %if.end282.i.if.end317.i_crit_edge
  %430 = inttoptr i32 %arg to ptr
  %431 = ptrtoint ptr %s_es.i790.i to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load ptr, ptr %s_es.i790.i, align 4
  %s_encrypt_pw_salt319.i = getelementptr inbounds %struct.ext4_super_block, ptr %432, i32 0, i32 86
  tail call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 174) #11
  %call.i.i735.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i735.i, label %if.end317.i.__ext4_ioctl.exit_crit_edge, label %if.end.i.i738.i

if.end317.i.__ext4_ioctl.exit_crit_edge:          ; preds = %if.end317.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__ext4_ioctl.exit

if.end.i.i738.i:                                  ; preds = %if.end317.i
  %433 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %430, i32 16, i32 -1226833920) #14, !srcloc !97
  %asmresult.i.i736.i = extractvalue { i32, i32 } %433, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i736.i)
  %cmp.i6.i737.i = icmp eq i32 %asmresult.i.i736.i, 0
  br i1 %cmp.i6.i737.i, label %copy_to_user.exit743.i, label %if.end.i.i738.i.__ext4_ioctl.exit_crit_edge

if.end.i.i738.i.__ext4_ioctl.exit_crit_edge:      ; preds = %if.end.i.i738.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__ext4_ioctl.exit

copy_to_user.exit743.i:                           ; preds = %if.end.i.i738.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i739.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %s_encrypt_pw_salt319.i, i32 noundef 16) #11
  %call.i12.i.i740.i = tail call i32 @arm_copy_to_user(ptr noundef %430, ptr noundef %s_encrypt_pw_salt319.i, i32 noundef 16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i740.i)
  %tobool322.not.i = icmp eq i32 %call.i12.i.i740.i, 0
  %spec.select988.i = select i1 %tobool322.not.i, i32 0, i32 -14
  br label %__ext4_ioctl.exit

sw.bb329.i:                                       ; preds = %entry
  %s_fs_info.i.i798.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %434 = ptrtoint ptr %s_fs_info.i.i798.i to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %s_fs_info.i.i798.i, align 16
  %s_es.i799.i = getelementptr inbounds %struct.ext4_sb_info, ptr %435, i32 0, i32 15
  %436 = ptrtoint ptr %s_es.i799.i to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %s_es.i799.i, align 4
  %s_feature_incompat.i800.i = getelementptr inbounds %struct.ext4_super_block, ptr %437, i32 0, i32 29
  %438 = ptrtoint ptr %s_feature_incompat.i800.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load i32, ptr %s_feature_incompat.i800.i, align 8
  %and.i801.i = and i32 %439, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i801.i)
  %cmp.i802.not.i = icmp eq i32 %and.i801.i, 0
  br i1 %cmp.i802.not.i, label %sw.bb329.i.__ext4_ioctl.exit_crit_edge, label %if.end332.i

sw.bb329.i.__ext4_ioctl.exit_crit_edge:           ; preds = %sw.bb329.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__ext4_ioctl.exit

if.end332.i:                                      ; preds = %sw.bb329.i
  call void @__sanitizer_cov_trace_pc() #13
  %440 = inttoptr i32 %arg to ptr
  %call333.i = tail call i32 @fscrypt_ioctl_get_policy(ptr noundef %filp, ptr noundef %440) #11
  br label %__ext4_ioctl.exit

sw.bb334.i:                                       ; preds = %entry
  %s_fs_info.i.i803.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %441 = ptrtoint ptr %s_fs_info.i.i803.i to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load ptr, ptr %s_fs_info.i.i803.i, align 16
  %s_es.i804.i = getelementptr inbounds %struct.ext4_sb_info, ptr %442, i32 0, i32 15
  %443 = ptrtoint ptr %s_es.i804.i to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load ptr, ptr %s_es.i804.i, align 4
  %s_feature_incompat.i805.i = getelementptr inbounds %struct.ext4_super_block, ptr %444, i32 0, i32 29
  %445 = ptrtoint ptr %s_feature_incompat.i805.i to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load i32, ptr %s_feature_incompat.i805.i, align 8
  %and.i806.i = and i32 %446, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i806.i)
  %cmp.i807.not.i = icmp eq i32 %and.i806.i, 0
  br i1 %cmp.i807.not.i, label %sw.bb334.i.__ext4_ioctl.exit_crit_edge, label %if.end337.i

sw.bb334.i.__ext4_ioctl.exit_crit_edge:           ; preds = %sw.bb334.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__ext4_ioctl.exit

if.end337.i:                                      ; preds = %sw.bb334.i
  call void @__sanitizer_cov_trace_pc() #13
  %447 = inttoptr i32 %arg to ptr
  %call338.i = tail call i32 @fscrypt_ioctl_get_policy_ex(ptr noundef %filp, ptr noundef %447) #11
  br label %__ext4_ioctl.exit

sw.bb339.i:                                       ; preds = %entry
  %s_fs_info.i.i808.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %448 = ptrtoint ptr %s_fs_info.i.i808.i to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %s_fs_info.i.i808.i, align 16
  %s_es.i809.i = getelementptr inbounds %struct.ext4_sb_info, ptr %449, i32 0, i32 15
  %450 = ptrtoint ptr %s_es.i809.i to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %s_es.i809.i, align 4
  %s_feature_incompat.i810.i = getelementptr inbounds %struct.ext4_super_block, ptr %451, i32 0, i32 29
  %452 = ptrtoint ptr %s_feature_incompat.i810.i to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load i32, ptr %s_feature_incompat.i810.i, align 8
  %and.i811.i = and i32 %453, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i811.i)
  %cmp.i812.not.i = icmp eq i32 %and.i811.i, 0
  br i1 %cmp.i812.not.i, label %sw.bb339.i.__ext4_ioctl.exit_crit_edge, label %if.end342.i

sw.bb339.i.__ext4_ioctl.exit_crit_edge:           ; preds = %sw.bb339.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__ext4_ioctl.exit

if.end342.i:                                      ; preds = %sw.bb339.i
  call void @__sanitizer_cov_trace_pc() #13
  %454 = inttoptr i32 %arg to ptr
  %call343.i = tail call i32 @fscrypt_ioctl_add_key(ptr noundef %filp, ptr noundef %454) #11
  br label %__ext4_ioctl.exit

sw.bb344.i:                                       ; preds = %entry
  %s_fs_info.i.i813.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %455 = ptrtoint ptr %s_fs_info.i.i813.i to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load ptr, ptr %s_fs_info.i.i813.i, align 16
  %s_es.i814.i = getelementptr inbounds %struct.ext4_sb_info, ptr %456, i32 0, i32 15
  %457 = ptrtoint ptr %s_es.i814.i to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load ptr, ptr %s_es.i814.i, align 4
  %s_feature_incompat.i815.i = getelementptr inbounds %struct.ext4_super_block, ptr %458, i32 0, i32 29
  %459 = ptrtoint ptr %s_feature_incompat.i815.i to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load i32, ptr %s_feature_incompat.i815.i, align 8
  %and.i816.i = and i32 %460, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i816.i)
  %cmp.i817.not.i = icmp eq i32 %and.i816.i, 0
  br i1 %cmp.i817.not.i, label %sw.bb344.i.__ext4_ioctl.exit_crit_edge, label %if.end347.i

sw.bb344.i.__ext4_ioctl.exit_crit_edge:           ; preds = %sw.bb344.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__ext4_ioctl.exit

if.end347.i:                                      ; preds = %sw.bb344.i
  call void @__sanitizer_cov_trace_pc() #13
  %461 = inttoptr i32 %arg to ptr
  %call348.i = tail call i32 @fscrypt_ioctl_remove_key(ptr noundef %filp, ptr noundef %461) #11
  br label %__ext4_ioctl.exit

sw.bb349.i:                                       ; preds = %entry
  %s_fs_info.i.i818.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %462 = ptrtoint ptr %s_fs_info.i.i818.i to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load ptr, ptr %s_fs_info.i.i818.i, align 16
  %s_es.i819.i = getelementptr inbounds %struct.ext4_sb_info, ptr %463, i32 0, i32 15
  %464 = ptrtoint ptr %s_es.i819.i to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load ptr, ptr %s_es.i819.i, align 4
  %s_feature_incompat.i820.i = getelementptr inbounds %struct.ext4_super_block, ptr %465, i32 0, i32 29
  %466 = ptrtoint ptr %s_feature_incompat.i820.i to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load i32, ptr %s_feature_incompat.i820.i, align 8
  %and.i821.i = and i32 %467, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i821.i)
  %cmp.i822.not.i = icmp eq i32 %and.i821.i, 0
  br i1 %cmp.i822.not.i, label %sw.bb349.i.__ext4_ioctl.exit_crit_edge, label %if.end352.i

sw.bb349.i.__ext4_ioctl.exit_crit_edge:           ; preds = %sw.bb349.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__ext4_ioctl.exit

if.end352.i:                                      ; preds = %sw.bb349.i
  call void @__sanitizer_cov_trace_pc() #13
  %468 = inttoptr i32 %arg to ptr
  %call353.i = tail call i32 @fscrypt_ioctl_remove_key_all_users(ptr noundef %filp, ptr noundef %468) #11
  br label %__ext4_ioctl.exit

sw.bb354.i:                                       ; preds = %entry
  %s_fs_info.i.i823.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %469 = ptrtoint ptr %s_fs_info.i.i823.i to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load ptr, ptr %s_fs_info.i.i823.i, align 16
  %s_es.i824.i = getelementptr inbounds %struct.ext4_sb_info, ptr %470, i32 0, i32 15
  %471 = ptrtoint ptr %s_es.i824.i to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %s_es.i824.i, align 4
  %s_feature_incompat.i825.i = getelementptr inbounds %struct.ext4_super_block, ptr %472, i32 0, i32 29
  %473 = ptrtoint ptr %s_feature_incompat.i825.i to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load i32, ptr %s_feature_incompat.i825.i, align 8
  %and.i826.i = and i32 %474, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i826.i)
  %cmp.i827.not.i = icmp eq i32 %and.i826.i, 0
  br i1 %cmp.i827.not.i, label %sw.bb354.i.__ext4_ioctl.exit_crit_edge, label %if.end357.i

sw.bb354.i.__ext4_ioctl.exit_crit_edge:           ; preds = %sw.bb354.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__ext4_ioctl.exit

if.end357.i:                                      ; preds = %sw.bb354.i
  call void @__sanitizer_cov_trace_pc() #13
  %475 = inttoptr i32 %arg to ptr
  %call358.i = tail call i32 @fscrypt_ioctl_get_key_status(ptr noundef %filp, ptr noundef %475) #11
  br label %__ext4_ioctl.exit

sw.bb359.i:                                       ; preds = %entry
  %s_fs_info.i.i828.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %476 = ptrtoint ptr %s_fs_info.i.i828.i to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load ptr, ptr %s_fs_info.i.i828.i, align 16
  %s_es.i829.i = getelementptr inbounds %struct.ext4_sb_info, ptr %477, i32 0, i32 15
  %478 = ptrtoint ptr %s_es.i829.i to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load ptr, ptr %s_es.i829.i, align 4
  %s_feature_incompat.i830.i = getelementptr inbounds %struct.ext4_super_block, ptr %479, i32 0, i32 29
  %480 = ptrtoint ptr %s_feature_incompat.i830.i to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load i32, ptr %s_feature_incompat.i830.i, align 8
  %and.i831.i = and i32 %481, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i831.i)
  %cmp.i832.not.i = icmp eq i32 %and.i831.i, 0
  br i1 %cmp.i832.not.i, label %sw.bb359.i.__ext4_ioctl.exit_crit_edge, label %if.end362.i

sw.bb359.i.__ext4_ioctl.exit_crit_edge:           ; preds = %sw.bb359.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__ext4_ioctl.exit

if.end362.i:                                      ; preds = %sw.bb359.i
  call void @__sanitizer_cov_trace_pc() #13
  %482 = inttoptr i32 %arg to ptr
  %call363.i = tail call i32 @fscrypt_ioctl_get_nonce(ptr noundef %filp, ptr noundef %482) #11
  br label %__ext4_ioctl.exit

sw.bb364.i:                                       ; preds = %entry
  %call365.i = tail call zeroext i1 @inode_owner_or_capable(ptr noundef %7, ptr noundef %1) #11
  br i1 %call365.i, label %if.end367.i, label %sw.bb364.i.__ext4_ioctl.exit_crit_edge

sw.bb364.i.__ext4_ioctl.exit_crit_edge:           ; preds = %sw.bb364.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__ext4_ioctl.exit

if.end367.i:                                      ; preds = %sw.bb364.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @ext4_clear_inode_es(ptr noundef %1) #11
  br label %__ext4_ioctl.exit

sw.bb368.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %i_state_flags.i.i = getelementptr i8, ptr %1, i32 -384
  %483 = ptrtoint ptr %i_state_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load volatile i32, ptr %i_state_flags.i.i, align 4
  %485 = lshr i32 %484, 8
  %.lobit.i = and i32 %485, 1
  %486 = load volatile i32, ptr %i_state_flags.i.i, align 4
  %487 = and i32 %486, 2
  %488 = or i32 %487, %.lobit.i
  %489 = load volatile i32, ptr %i_state_flags.i.i, align 4
  %490 = lshr i32 %489, 4
  %491 = and i32 %490, 4
  %492 = or i32 %488, %491
  %493 = load volatile i32, ptr %i_state_flags.i.i, align 4
  %494 = lshr i32 %493, 1
  %495 = and i32 %494, 8
  %496 = or i32 %492, %495
  %497 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 1536) #11
  %498 = tail call i32 @llvm.read_register.i32(metadata !79) #11
  %and.i.i.i744.i = and i32 %498, -16384
  %499 = inttoptr i32 %and.i.i.i744.i to ptr
  %cpu_domain.i.i745.i = getelementptr inbounds %struct.thread_info, ptr %499, i32 0, i32 4
  %500 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i745.i) #5, !srcloc !94
  %and.i746.i = and i32 %500, -13
  %or.i747.i = or i32 %and.i746.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i747.i) #11, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !96
  %501 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %497, i32 %496, i32 -1226833921) #11, !srcloc !107
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %500) #11, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !96
  br label %__ext4_ioctl.exit

sw.bb404.i:                                       ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %fiemap.i.i) #11
  %502 = getelementptr inbounds %struct.fiemap, ptr %fiemap.i.i, i32 0, i32 1
  %503 = getelementptr inbounds %struct.fiemap, ptr %fiemap.i.i, i32 0, i32 2
  %504 = getelementptr inbounds %struct.fiemap, ptr %fiemap.i.i, i32 0, i32 3
  %505 = getelementptr inbounds %struct.fiemap, ptr %fiemap.i.i, i32 0, i32 4
  %506 = inttoptr i32 %arg to ptr
  %507 = call ptr @memset(ptr %fiemap.i.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %fieinfo.i.i) #11
  %508 = getelementptr inbounds i8, ptr %fieinfo.i.i, i32 4
  %509 = ptrtoint ptr %508 to i32
  call void @__asan_store4_noabort(i32 %509)
  store i32 0, ptr %508, align 4
  %510 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load ptr, ptr %f_inode.i.i, align 8
  tail call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 156) #11
  %call.i.i.i843.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i843.i, label %sw.bb404.i.if.then11.i.i.i857.i_crit_edge, label %land.lhs.true.i.i.i846.i

sw.bb404.i.if.then11.i.i.i857.i_crit_edge:        ; preds = %sw.bb404.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i857.i

land.lhs.true.i.i.i846.i:                         ; preds = %sw.bb404.i
  %512 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %506, i32 32, i32 -1226833920) #14
  %asmresult.i.i.i844.i = extractvalue { i32, i32 } %512, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i844.i)
  %cmp.i6.i.i845.i = icmp eq i32 %asmresult.i.i.i844.i, 0
  br i1 %cmp.i6.i.i845.i, label %if.end.i.i.i854.i, label %land.lhs.true.i.i.i846.i.if.then11.i.i.i857.i_crit_edge, !prof !89

land.lhs.true.i.i.i846.i.if.then11.i.i.i857.i_crit_edge: ; preds = %land.lhs.true.i.i.i846.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i857.i

if.end.i.i.i854.i:                                ; preds = %land.lhs.true.i.i.i846.i
  %call.i.i.i.i847.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %fiemap.i.i, i32 noundef 32) #11
  %513 = call i32 @llvm.read_register.i32(metadata !79) #11
  %and.i.i.i.i.i.i.i848.i = and i32 %513, -16384
  %514 = inttoptr i32 %and.i.i.i.i.i.i.i848.i to ptr
  %cpu_domain.i.i.i.i.i.i849.i = getelementptr inbounds %struct.thread_info, ptr %514, i32 0, i32 4
  %515 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i849.i) #5, !srcloc !94
  %and.i.i.i.i.i850.i = and i32 %515, -13
  %or.i.i.i.i.i851.i = or i32 %and.i.i.i.i.i850.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i851.i) #11, !srcloc !95
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !96
  %call1.i.i.i.i852.i = call i32 @arm_copy_from_user(ptr noundef nonnull %fiemap.i.i, ptr noundef %506, i32 noundef 32) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %515) #11, !srcloc !95
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i852.i)
  %tobool4.not.i.i.i853.i = icmp eq i32 %call1.i.i.i.i852.i, 0
  br i1 %tobool4.not.i.i.i853.i, label %if.end.i859.i, label %if.end.i.i.i854.i.if.then11.i.i.i857.i_crit_edge, !prof !89

if.end.i.i.i854.i.if.then11.i.i.i857.i_crit_edge: ; preds = %if.end.i.i.i854.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i857.i

if.then11.i.i.i857.i:                             ; preds = %if.end.i.i.i854.i.if.then11.i.i.i857.i_crit_edge, %land.lhs.true.i.i.i846.i.if.then11.i.i.i857.i_crit_edge, %sw.bb404.i.if.then11.i.i.i857.i_crit_edge
  %res.0.i.i30.i.i = phi i32 [ %call1.i.i.i.i852.i, %if.end.i.i.i854.i.if.then11.i.i.i857.i_crit_edge ], [ 32, %sw.bb404.i.if.then11.i.i.i857.i_crit_edge ], [ 32, %land.lhs.true.i.i.i846.i.if.then11.i.i.i857.i_crit_edge ]
  %sub.i.i.i855.i = sub i32 32, %res.0.i.i30.i.i
  %add.ptr.i.i.i856.i = getelementptr i8, ptr %fiemap.i.i, i32 %sub.i.i.i855.i
  %516 = call ptr @memset(ptr %add.ptr.i.i.i856.i, i32 0, i32 %res.0.i.i30.i.i)
  br label %ext4_ioctl_get_es_cache.exit.i

if.end.i859.i:                                    ; preds = %if.end.i.i.i854.i
  %517 = ptrtoint ptr %505 to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load i32, ptr %505, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 76695844, i32 %518)
  %cmp.i858.i = icmp ugt i32 %518, 76695844
  br i1 %cmp.i858.i, label %if.end.i859.i.ext4_ioctl_get_es_cache.exit.i_crit_edge, label %if.end59.i.i21.i.i

if.end.i859.i.ext4_ioctl_get_es_cache.exit.i_crit_edge: ; preds = %if.end.i859.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_ioctl_get_es_cache.exit.i

if.end59.i.i21.i.i:                               ; preds = %if.end.i859.i
  %519 = ptrtoint ptr %503 to i32
  call void @__asan_load4_noabort(i32 %519)
  %520 = load i32, ptr %503, align 8
  %521 = ptrtoint ptr %fieinfo.i.i to i32
  call void @__asan_store4_noabort(i32 %521)
  store i32 %520, ptr %fieinfo.i.i, align 4
  %fi_extents_max.i.i = getelementptr inbounds %struct.fiemap_extent_info, ptr %fieinfo.i.i, i32 0, i32 2
  %522 = ptrtoint ptr %fi_extents_max.i.i to i32
  call void @__asan_store4_noabort(i32 %522)
  store i32 %518, ptr %fi_extents_max.i.i, align 4
  %fm_extents.i.i = getelementptr inbounds %struct.fiemap, ptr %506, i32 0, i32 6
  %fi_extents_start.i.i = getelementptr inbounds %struct.fiemap_extent_info, ptr %fieinfo.i.i, i32 0, i32 3
  %523 = ptrtoint ptr %fi_extents_start.i.i to i32
  call void @__asan_store4_noabort(i32 %523)
  store ptr %fm_extents.i.i, ptr %fi_extents_start.i.i, align 4
  %524 = ptrtoint ptr %fiemap.i.i to i32
  call void @__asan_load8_noabort(i32 %524)
  %525 = load i64, ptr %fiemap.i.i, align 8
  %526 = ptrtoint ptr %502 to i32
  call void @__asan_load8_noabort(i32 %526)
  %527 = load i64, ptr %502, align 8
  %call5.i.i = call i32 @ext4_get_es_cache(ptr noundef %511, ptr noundef nonnull %fieinfo.i.i, i64 noundef %525, i64 noundef %527) #11
  %528 = ptrtoint ptr %fieinfo.i.i to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load i32, ptr %fieinfo.i.i, align 4
  %530 = ptrtoint ptr %503 to i32
  call void @__asan_store4_noabort(i32 %530)
  store i32 %529, ptr %503, align 8
  %531 = ptrtoint ptr %508 to i32
  call void @__asan_load4_noabort(i32 %531)
  %532 = load i32, ptr %508, align 4
  %533 = ptrtoint ptr %504 to i32
  call void @__asan_store4_noabort(i32 %533)
  store i32 %532, ptr %504, align 4
  call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 174) #11
  %call.i.i22.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i22.i.i, label %if.end59.i.i21.i.i.ext4_ioctl_get_es_cache.exit.i_crit_edge, label %copy_to_user.exit.i862.i

if.end59.i.i21.i.i.ext4_ioctl_get_es_cache.exit.i_crit_edge: ; preds = %if.end59.i.i21.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_ioctl_get_es_cache.exit.i

copy_to_user.exit.i862.i:                         ; preds = %if.end59.i.i21.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i26.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %fiemap.i.i, i32 noundef 32) #11
  %call.i12.i.i.i860.i = call i32 @arm_copy_to_user(ptr noundef %506, ptr noundef nonnull %fiemap.i.i, i32 noundef 32) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i860.i)
  %tobool9.not.i.i = icmp eq i32 %call.i12.i.i.i860.i, 0
  %spec.select.i861.i = select i1 %tobool9.not.i.i, i32 %call5.i.i, i32 -14
  br label %ext4_ioctl_get_es_cache.exit.i

ext4_ioctl_get_es_cache.exit.i:                   ; preds = %copy_to_user.exit.i862.i, %if.end59.i.i21.i.i.ext4_ioctl_get_es_cache.exit.i_crit_edge, %if.end.i859.i.ext4_ioctl_get_es_cache.exit.i_crit_edge, %if.then11.i.i.i857.i
  %retval.0.i863.i = phi i32 [ -22, %if.end.i859.i.ext4_ioctl_get_es_cache.exit.i_crit_edge ], [ -14, %if.then11.i.i.i857.i ], [ -14, %if.end59.i.i21.i.i.ext4_ioctl_get_es_cache.exit.i_crit_edge ], [ %spec.select.i861.i, %copy_to_user.exit.i862.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %fieinfo.i.i) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %fiemap.i.i) #11
  br label %__ext4_ioctl.exit

sw.bb406.i:                                       ; preds = %entry
  %s_fs_info.i.i864.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %534 = ptrtoint ptr %s_fs_info.i.i864.i to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load ptr, ptr %s_fs_info.i.i864.i, align 16
  %call1.i865.i = tail call zeroext i1 @capable(i32 noundef 21) #11
  br i1 %call1.i865.i, label %if.end.i869.i, label %sw.bb406.i.__ext4_ioctl.exit_crit_edge

sw.bb406.i.__ext4_ioctl.exit_crit_edge:           ; preds = %sw.bb406.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__ext4_ioctl.exit

if.end.i869.i:                                    ; preds = %sw.bb406.i
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 806) #11
  %536 = inttoptr i32 %arg to ptr
  %537 = tail call i32 @llvm.read_register.i32(metadata !79) #11
  %and.i.i.i.i866.i = and i32 %537, -16384
  %538 = inttoptr i32 %and.i.i.i.i866.i to ptr
  %cpu_domain.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %538, i32 0, i32 4
  %539 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i) #5, !srcloc !94
  %and.i.i867.i = and i32 %539, -13
  %or.i.i.i = or i32 %and.i.i867.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i) #11, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !96
  %540 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %536, i32 -1226833921) #11, !srcloc !108
  %asmresult.i.i = extractvalue { i32, i32 } %540, 0
  %asmresult3.i.i = extractvalue { i32, i32 } %540, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %539) #11, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %tobool.not.i868.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not.i868.i, label %if.end6.i.i, label %if.end.i869.i.__ext4_ioctl.exit_crit_edge

if.end.i869.i.__ext4_ioctl.exit_crit_edge:        ; preds = %if.end.i869.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__ext4_ioctl.exit

if.end6.i.i:                                      ; preds = %if.end.i869.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult3.i.i)
  %cmp.i870.i = icmp ugt i32 %asmresult3.i.i, 2
  br i1 %cmp.i870.i, label %if.end6.i.i.__ext4_ioctl.exit_crit_edge, label %if.end8.i.i

if.end6.i.i.__ext4_ioctl.exit_crit_edge:          ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__ext4_ioctl.exit

if.end8.i.i:                                      ; preds = %if.end6.i.i
  %s_ext4_flags.i.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %535, i32 0, i32 48
  %541 = ptrtoint ptr %s_ext4_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %541)
  %542 = load volatile i32, ptr %s_ext4_flags.i.i.i, align 4
  %543 = and i32 %542, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %543)
  %tobool10.not.i.i = icmp eq i32 %543, 0
  br i1 %tobool10.not.i.i, label %if.end12.i.i, label %if.end8.i.i.__ext4_ioctl.exit_crit_edge

if.end8.i.i.__ext4_ioctl.exit_crit_edge:          ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__ext4_ioctl.exit

if.end12.i.i:                                     ; preds = %if.end8.i.i
  tail call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %3, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %asmresult3.i.i) #11
  tail call fastcc void @trace_ext4_shutdown(ptr noundef %3, i32 noundef %asmresult3.i.i) #11
  %544 = zext i32 %asmresult3.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %544, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %asmresult3.i.i, label %if.end12.i.i.__ext4_ioctl.exit_crit_edge [
    i32 0, label %sw.bb.i.i
    i32 1, label %sw.bb16.i.i
    i32 2, label %sw.bb26.i.i
  ]

if.end12.i.i.__ext4_ioctl.exit_crit_edge:         ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__ext4_ioctl.exit

sw.bb.i.i:                                        ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %s_bdev.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 26
  %545 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %545)
  %546 = load ptr, ptr %s_bdev.i.i, align 4
  %call13.i.i = tail call i32 @freeze_bdev(ptr noundef %546) #11
  tail call void @_set_bit(i32 noundef 1, ptr noundef %s_ext4_flags.i.i.i) #11
  %547 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %547)
  %548 = load ptr, ptr %s_bdev.i.i, align 4
  %call15.i.i = tail call i32 @thaw_bdev(ptr noundef %548) #11
  br label %sw.epilog.i.i

sw.bb16.i.i:                                      ; preds = %if.end12.i.i
  tail call void @_set_bit(i32 noundef 1, ptr noundef %s_ext4_flags.i.i.i) #11
  %s_journal.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %535, i32 0, i32 47
  %549 = ptrtoint ptr %s_journal.i.i to i32
  call void @__asan_load4_noabort(i32 %549)
  %550 = load ptr, ptr %s_journal.i.i, align 8
  %tobool18.not.i.i = icmp eq ptr %550, null
  br i1 %tobool18.not.i.i, label %sw.bb16.i.i.sw.epilog.i.i_crit_edge, label %land.lhs.true.i.i

sw.bb16.i.i.sw.epilog.i.i_crit_edge:              ; preds = %sw.bb16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i.i

land.lhs.true.i.i:                                ; preds = %sw.bb16.i.i
  %551 = ptrtoint ptr %550 to i32
  call void @__asan_load4_noabort(i32 %551)
  %552 = load i32, ptr %550, align 8
  %and.i58.i.i = and i32 %552, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i58.i.i)
  %tobool21.not.i.i = icmp eq i32 %and.i58.i.i, 0
  br i1 %tobool21.not.i.i, label %if.then22.i.i, label %land.lhs.true.i.i.sw.epilog.i.i_crit_edge

land.lhs.true.i.i.sw.epilog.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i.i

if.then22.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call23.i.i = tail call i32 @ext4_force_commit(ptr noundef %3) #11
  %553 = ptrtoint ptr %s_journal.i.i to i32
  call void @__asan_load4_noabort(i32 %553)
  %554 = load ptr, ptr %s_journal.i.i, align 8
  tail call void @jbd2_journal_abort(ptr noundef %554, i32 noundef -108) #11
  br label %sw.epilog.i.i

sw.bb26.i.i:                                      ; preds = %if.end12.i.i
  tail call void @_set_bit(i32 noundef 1, ptr noundef %s_ext4_flags.i.i.i) #11
  %s_journal28.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %535, i32 0, i32 47
  %555 = ptrtoint ptr %s_journal28.i.i to i32
  call void @__asan_load4_noabort(i32 %555)
  %556 = load ptr, ptr %s_journal28.i.i, align 8
  %tobool29.not.i.i = icmp eq ptr %556, null
  br i1 %tobool29.not.i.i, label %sw.bb26.i.i.sw.epilog.i.i_crit_edge, label %land.lhs.true30.i.i

sw.bb26.i.i.sw.epilog.i.i_crit_edge:              ; preds = %sw.bb26.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i.i

land.lhs.true30.i.i:                              ; preds = %sw.bb26.i.i
  %557 = ptrtoint ptr %556 to i32
  call void @__asan_load4_noabort(i32 %557)
  %558 = load i32, ptr %556, align 8
  %and.i59.i.i = and i32 %558, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i59.i.i)
  %tobool33.not.i.i = icmp eq i32 %and.i59.i.i, 0
  br i1 %tobool33.not.i.i, label %if.then34.i.i, label %land.lhs.true30.i.i.sw.epilog.i.i_crit_edge

land.lhs.true30.i.i.sw.epilog.i.i_crit_edge:      ; preds = %land.lhs.true30.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i.i

if.then34.i.i:                                    ; preds = %land.lhs.true30.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @jbd2_journal_abort(ptr noundef nonnull %556, i32 noundef -108) #11
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %if.then34.i.i, %land.lhs.true30.i.i.sw.epilog.i.i_crit_edge, %sw.bb26.i.i.sw.epilog.i.i_crit_edge, %if.then22.i.i, %land.lhs.true.i.i.sw.epilog.i.i_crit_edge, %sw.bb16.i.i.sw.epilog.i.i_crit_edge, %sw.bb.i.i
  %559 = ptrtoint ptr %s_fs_info.i.i864.i to i32
  call void @__asan_load4_noabort(i32 %559)
  %560 = load ptr, ptr %s_fs_info.i.i864.i, align 16
  %s_mount_opt.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %560, i32 0, i32 17
  %561 = ptrtoint ptr %s_mount_opt.i.i to i32
  call void @__asan_load4_noabort(i32 %561)
  %562 = load i32, ptr %s_mount_opt.i.i, align 4
  %and.i871.i = and i32 %562, -1073741825
  store i32 %and.i871.i, ptr %s_mount_opt.i.i, align 4
  br label %__ext4_ioctl.exit

sw.bb408.i:                                       ; preds = %entry
  %s_fs_info.i.i873.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %563 = ptrtoint ptr %s_fs_info.i.i873.i to i32
  call void @__asan_load4_noabort(i32 %563)
  %564 = load ptr, ptr %s_fs_info.i.i873.i, align 16
  %s_es.i874.i = getelementptr inbounds %struct.ext4_sb_info, ptr %564, i32 0, i32 15
  %565 = ptrtoint ptr %s_es.i874.i to i32
  call void @__asan_load4_noabort(i32 %565)
  %566 = load ptr, ptr %s_es.i874.i, align 4
  %s_feature_ro_compat.i875.i = getelementptr inbounds %struct.ext4_super_block, ptr %566, i32 0, i32 30
  %567 = ptrtoint ptr %s_feature_ro_compat.i875.i to i32
  call void @__asan_load4_noabort(i32 %567)
  %568 = load i32, ptr %s_feature_ro_compat.i875.i, align 4
  %and.i876.i = and i32 %568, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i876.i)
  %cmp.i877.not.i = icmp eq i32 %and.i876.i, 0
  br i1 %cmp.i877.not.i, label %sw.bb408.i.__ext4_ioctl.exit_crit_edge, label %if.end411.i

sw.bb408.i.__ext4_ioctl.exit_crit_edge:           ; preds = %sw.bb408.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__ext4_ioctl.exit

if.end411.i:                                      ; preds = %sw.bb408.i
  call void @__sanitizer_cov_trace_pc() #13
  %569 = inttoptr i32 %arg to ptr
  %call412.i = tail call i32 @fsverity_ioctl_enable(ptr noundef %filp, ptr noundef %569) #11
  br label %__ext4_ioctl.exit

sw.bb413.i:                                       ; preds = %entry
  %s_fs_info.i.i878.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %570 = ptrtoint ptr %s_fs_info.i.i878.i to i32
  call void @__asan_load4_noabort(i32 %570)
  %571 = load ptr, ptr %s_fs_info.i.i878.i, align 16
  %s_es.i879.i = getelementptr inbounds %struct.ext4_sb_info, ptr %571, i32 0, i32 15
  %572 = ptrtoint ptr %s_es.i879.i to i32
  call void @__asan_load4_noabort(i32 %572)
  %573 = load ptr, ptr %s_es.i879.i, align 4
  %s_feature_ro_compat.i880.i = getelementptr inbounds %struct.ext4_super_block, ptr %573, i32 0, i32 30
  %574 = ptrtoint ptr %s_feature_ro_compat.i880.i to i32
  call void @__asan_load4_noabort(i32 %574)
  %575 = load i32, ptr %s_feature_ro_compat.i880.i, align 4
  %and.i881.i = and i32 %575, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i881.i)
  %cmp.i882.not.i = icmp eq i32 %and.i881.i, 0
  br i1 %cmp.i882.not.i, label %sw.bb413.i.__ext4_ioctl.exit_crit_edge, label %if.end416.i

sw.bb413.i.__ext4_ioctl.exit_crit_edge:           ; preds = %sw.bb413.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__ext4_ioctl.exit

if.end416.i:                                      ; preds = %sw.bb413.i
  call void @__sanitizer_cov_trace_pc() #13
  %576 = inttoptr i32 %arg to ptr
  %call417.i = tail call i32 @fsverity_ioctl_measure(ptr noundef %filp, ptr noundef %576) #11
  br label %__ext4_ioctl.exit

sw.bb418.i:                                       ; preds = %entry
  %s_fs_info.i.i883.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %577 = ptrtoint ptr %s_fs_info.i.i883.i to i32
  call void @__asan_load4_noabort(i32 %577)
  %578 = load ptr, ptr %s_fs_info.i.i883.i, align 16
  %s_es.i884.i = getelementptr inbounds %struct.ext4_sb_info, ptr %578, i32 0, i32 15
  %579 = ptrtoint ptr %s_es.i884.i to i32
  call void @__asan_load4_noabort(i32 %579)
  %580 = load ptr, ptr %s_es.i884.i, align 4
  %s_feature_ro_compat.i885.i = getelementptr inbounds %struct.ext4_super_block, ptr %580, i32 0, i32 30
  %581 = ptrtoint ptr %s_feature_ro_compat.i885.i to i32
  call void @__asan_load4_noabort(i32 %581)
  %582 = load i32, ptr %s_feature_ro_compat.i885.i, align 4
  %and.i886.i = and i32 %582, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i886.i)
  %cmp.i887.not.i = icmp eq i32 %and.i886.i, 0
  br i1 %cmp.i887.not.i, label %sw.bb418.i.__ext4_ioctl.exit_crit_edge, label %if.end421.i

sw.bb418.i.__ext4_ioctl.exit_crit_edge:           ; preds = %sw.bb418.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__ext4_ioctl.exit

if.end421.i:                                      ; preds = %sw.bb418.i
  call void @__sanitizer_cov_trace_pc() #13
  %583 = inttoptr i32 %arg to ptr
  %call422.i = tail call i32 @fsverity_ioctl_read_metadata(ptr noundef %filp, ptr noundef %583) #11
  br label %__ext4_ioctl.exit

sw.bb423.i:                                       ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags.i.i) #11
  %584 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %584)
  store i32 0, ptr %flags.i.i, align 4
  %585 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %585)
  %586 = load ptr, ptr %f_inode.i.i, align 8
  %i_sb.i889.i = getelementptr inbounds %struct.inode, ptr %586, i32 0, i32 8
  %587 = ptrtoint ptr %i_sb.i889.i to i32
  call void @__asan_load4_noabort(i32 %587)
  %588 = load ptr, ptr %i_sb.i889.i, align 4
  %589 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 156) #11
  %call.i.i.i890.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i890.i, label %sw.bb423.i.if.then11.i.i.i904.i_crit_edge, label %land.lhs.true.i.i.i893.i

sw.bb423.i.if.then11.i.i.i904.i_crit_edge:        ; preds = %sw.bb423.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i904.i

land.lhs.true.i.i.i893.i:                         ; preds = %sw.bb423.i
  %590 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %589, i32 4, i32 -1226833920) #14, !srcloc !104
  %asmresult.i.i.i891.i = extractvalue { i32, i32 } %590, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i891.i)
  %cmp.i6.i.i892.i = icmp eq i32 %asmresult.i.i.i891.i, 0
  br i1 %cmp.i6.i.i892.i, label %if.end.i.i.i901.i, label %land.lhs.true.i.i.i893.i.if.then11.i.i.i904.i_crit_edge, !prof !89

land.lhs.true.i.i.i893.i.if.then11.i.i.i904.i_crit_edge: ; preds = %land.lhs.true.i.i.i893.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i904.i

if.end.i.i.i901.i:                                ; preds = %land.lhs.true.i.i.i893.i
  %call.i.i.i.i894.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %flags.i.i, i32 noundef 4) #11
  %591 = call i32 @llvm.read_register.i32(metadata !79) #11
  %and.i.i.i.i.i.i.i895.i = and i32 %591, -16384
  %592 = inttoptr i32 %and.i.i.i.i.i.i.i895.i to ptr
  %cpu_domain.i.i.i.i.i.i896.i = getelementptr inbounds %struct.thread_info, ptr %592, i32 0, i32 4
  %593 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i896.i) #5, !srcloc !94
  %and.i.i.i.i.i897.i = and i32 %593, -13
  %or.i.i.i.i.i898.i = or i32 %and.i.i.i.i.i897.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i898.i) #11, !srcloc !95
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !96
  %call1.i.i.i.i899.i = call i32 @arm_copy_from_user(ptr noundef nonnull %flags.i.i, ptr noundef %589, i32 noundef 4) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %593) #11, !srcloc !95
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i899.i)
  %tobool4.not.i.i.i900.i = icmp eq i32 %call1.i.i.i.i899.i, 0
  br i1 %tobool4.not.i.i.i900.i, label %if.end.i905.i, label %if.end.i.i.i901.i.if.then11.i.i.i904.i_crit_edge, !prof !89

if.end.i.i.i901.i.if.then11.i.i.i904.i_crit_edge: ; preds = %if.end.i.i.i901.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i904.i

if.then11.i.i.i904.i:                             ; preds = %if.end.i.i.i901.i.if.then11.i.i.i904.i_crit_edge, %land.lhs.true.i.i.i893.i.if.then11.i.i.i904.i_crit_edge, %sw.bb423.i.if.then11.i.i.i904.i_crit_edge
  %res.0.i.i75.i.i = phi i32 [ %call1.i.i.i.i899.i, %if.end.i.i.i901.i.if.then11.i.i.i904.i_crit_edge ], [ 4, %sw.bb423.i.if.then11.i.i.i904.i_crit_edge ], [ 4, %land.lhs.true.i.i.i893.i.if.then11.i.i.i904.i_crit_edge ]
  %sub.i.i.i902.i = sub i32 4, %res.0.i.i75.i.i
  %add.ptr.i.i.i903.i = getelementptr i8, ptr %flags.i.i, i32 %sub.i.i.i902.i
  %594 = call ptr @memset(ptr %add.ptr.i.i.i903.i, i32 0, i32 %res.0.i.i75.i.i)
  br label %ext4_ioctl_checkpoint.exit.i

if.end.i905.i:                                    ; preds = %if.end.i.i.i901.i
  %call2.i.i = call zeroext i1 @capable(i32 noundef 21) #11
  br i1 %call2.i.i, label %if.end4.i.i, label %if.end.i905.i.ext4_ioctl_checkpoint.exit.i_crit_edge

if.end.i905.i.ext4_ioctl_checkpoint.exit.i_crit_edge: ; preds = %if.end.i905.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_ioctl_checkpoint.exit.i

if.end4.i.i:                                      ; preds = %if.end.i905.i
  %595 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %595)
  %596 = load i32, ptr %flags.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %596)
  %tobool5.not.i906.i = icmp ult i32 %596, 8
  br i1 %tobool5.not.i906.i, label %lor.lhs.false.i908.i, label %if.end4.i.i.ext4_ioctl_checkpoint.exit.i_crit_edge

if.end4.i.i.ext4_ioctl_checkpoint.exit.i_crit_edge: ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_ioctl_checkpoint.exit.i

lor.lhs.false.i908.i:                             ; preds = %if.end4.i.i
  %and6.i.i = and i32 %596, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %tobool7.not.i.i = icmp eq i32 %and6.i.i, 0
  %and8.i.i = and i32 %596, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i)
  %tobool9.not.i907.i = icmp eq i32 %and8.i.i, 0
  %597 = and i32 %596, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %597)
  %.not.i.i = icmp eq i32 %597, 3
  br i1 %.not.i.i, label %lor.lhs.false.i908.i.ext4_ioctl_checkpoint.exit.i_crit_edge, label %if.end11.i.i

lor.lhs.false.i908.i.ext4_ioctl_checkpoint.exit.i_crit_edge: ; preds = %lor.lhs.false.i908.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_ioctl_checkpoint.exit.i

if.end11.i.i:                                     ; preds = %lor.lhs.false.i908.i
  %s_fs_info.i.i909.i = getelementptr inbounds %struct.super_block, ptr %588, i32 0, i32 33
  %598 = ptrtoint ptr %s_fs_info.i.i909.i to i32
  call void @__asan_load4_noabort(i32 %598)
  %599 = load ptr, ptr %s_fs_info.i.i909.i, align 16
  %s_journal.i910.i = getelementptr inbounds %struct.ext4_sb_info, ptr %599, i32 0, i32 47
  %600 = ptrtoint ptr %s_journal.i910.i to i32
  call void @__asan_load4_noabort(i32 %600)
  %601 = load ptr, ptr %s_journal.i910.i, align 8
  %tobool13.not.i.i = icmp eq ptr %601, null
  br i1 %tobool13.not.i.i, label %if.end11.i.i.ext4_ioctl_checkpoint.exit.i_crit_edge, label %if.end19.i.i

if.end11.i.i.ext4_ioctl_checkpoint.exit.i_crit_edge: ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_ioctl_checkpoint.exit.i

if.end19.i.i:                                     ; preds = %if.end11.i.i
  %j_dev.i.i = getelementptr inbounds %struct.journal_s, ptr %601, i32 0, i32 32
  %602 = ptrtoint ptr %j_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %602)
  %603 = load ptr, ptr %j_dev.i.i, align 4
  %bd_queue.i.i.i = getelementptr inbounds %struct.block_device, ptr %603, i32 0, i32 18
  %604 = ptrtoint ptr %bd_queue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %604)
  %605 = load ptr, ptr %bd_queue.i.i.i, align 4
  %tobool23.not.i.i = icmp eq ptr %605, null
  br i1 %tobool23.not.i.i, label %if.end19.i.i.ext4_ioctl_checkpoint.exit.i_crit_edge, label %if.end25.i.i

if.end19.i.i.ext4_ioctl_checkpoint.exit.i_crit_edge: ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_ioctl_checkpoint.exit.i

if.end25.i.i:                                     ; preds = %if.end19.i.i
  br i1 %tobool7.not.i.i, label %if.end25.i.i.if.end32.i911.i_crit_edge, label %land.lhs.true28.i.i

if.end25.i.i.if.end32.i911.i_crit_edge:           ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32.i911.i

land.lhs.true28.i.i:                              ; preds = %if.end25.i.i
  %queue_flags.i.i = getelementptr inbounds %struct.request_queue, ptr %605, i32 0, i32 11
  %606 = ptrtoint ptr %queue_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %606)
  %607 = load volatile i32, ptr %queue_flags.i.i, align 4
  %608 = and i32 %607, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %608)
  %tobool30.not.i.i = icmp eq i32 %608, 0
  br i1 %tobool30.not.i.i, label %land.lhs.true28.i.i.ext4_ioctl_checkpoint.exit.i_crit_edge, label %land.lhs.true28.i.i.if.end32.i911.i_crit_edge

land.lhs.true28.i.i.if.end32.i911.i_crit_edge:    ; preds = %land.lhs.true28.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32.i911.i

land.lhs.true28.i.i.ext4_ioctl_checkpoint.exit.i_crit_edge: ; preds = %land.lhs.true28.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_ioctl_checkpoint.exit.i

if.end32.i911.i:                                  ; preds = %land.lhs.true28.i.i.if.end32.i911.i_crit_edge, %if.end25.i.i.if.end32.i911.i_crit_edge
  %and33.i.i = and i32 %596, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i.i)
  %tobool34.not.i.i = icmp eq i32 %and33.i.i, 0
  br i1 %tobool34.not.i.i, label %if.end36.i.i, label %if.end32.i911.i.ext4_ioctl_checkpoint.exit.i_crit_edge

if.end32.i911.i.ext4_ioctl_checkpoint.exit.i_crit_edge: ; preds = %if.end32.i911.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_ioctl_checkpoint.exit.i

if.end36.i.i:                                     ; preds = %if.end32.i911.i
  %not.tobool7.not.i.i = xor i1 %tobool7.not.i.i, true
  %spec.select.i912.i = zext i1 %not.tobool7.not.i.i to i32
  br i1 %tobool9.not.i907.i, label %if.end36.i.i.if.end50.i.i_crit_edge, label %if.then43.i.i

if.end36.i.i.if.end50.i.i_crit_edge:              ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50.i.i

if.then43.i.i:                                    ; preds = %if.end36.i.i
  %or44.i.i = or i32 %spec.select.i912.i, 2
  %call45.i.i = call i32 @___ratelimit(ptr noundef nonnull @ext4_ioctl_checkpoint._rs, ptr noundef nonnull @__func__.ext4_ioctl_checkpoint) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i.i)
  %tobool46.not.i.i = icmp eq i32 %call45.i.i, 0
  br i1 %tobool46.not.i.i, label %if.then43.i.i.if.end50.i.i_crit_edge, label %do.end.i.i

if.then43.i.i.if.end50.i.i_crit_edge:             ; preds = %if.then43.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50.i.i

do.end.i.i:                                       ; preds = %if.then43.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call48.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #15
  br label %if.end50.i.i

if.end50.i.i:                                     ; preds = %do.end.i.i, %if.then43.i.i.if.end50.i.i_crit_edge, %if.end36.i.i.if.end50.i.i_crit_edge
  %flush_flags.1.i.i = phi i32 [ %or44.i.i, %do.end.i.i ], [ %or44.i.i, %if.then43.i.i.if.end50.i.i_crit_edge ], [ %spec.select.i912.i, %if.end36.i.i.if.end50.i.i_crit_edge ]
  %609 = ptrtoint ptr %s_fs_info.i.i909.i to i32
  call void @__asan_load4_noabort(i32 %609)
  %610 = load ptr, ptr %s_fs_info.i.i909.i, align 16
  %s_journal52.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %610, i32 0, i32 47
  %611 = ptrtoint ptr %s_journal52.i.i to i32
  call void @__asan_load4_noabort(i32 %611)
  %612 = load ptr, ptr %s_journal52.i.i, align 8
  call void @jbd2_journal_lock_updates(ptr noundef %612) #11
  %613 = ptrtoint ptr %s_fs_info.i.i909.i to i32
  call void @__asan_load4_noabort(i32 %613)
  %614 = load ptr, ptr %s_fs_info.i.i909.i, align 16
  %s_journal54.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %614, i32 0, i32 47
  %615 = ptrtoint ptr %s_journal54.i.i to i32
  call void @__asan_load4_noabort(i32 %615)
  %616 = load ptr, ptr %s_journal54.i.i, align 8
  %call55.i.i = call i32 @jbd2_journal_flush(ptr noundef %616, i32 noundef %flush_flags.1.i.i) #11
  %617 = ptrtoint ptr %s_fs_info.i.i909.i to i32
  call void @__asan_load4_noabort(i32 %617)
  %618 = load ptr, ptr %s_fs_info.i.i909.i, align 16
  %s_journal57.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %618, i32 0, i32 47
  %619 = ptrtoint ptr %s_journal57.i.i to i32
  call void @__asan_load4_noabort(i32 %619)
  %620 = load ptr, ptr %s_journal57.i.i, align 8
  call void @jbd2_journal_unlock_updates(ptr noundef %620) #11
  br label %ext4_ioctl_checkpoint.exit.i

ext4_ioctl_checkpoint.exit.i:                     ; preds = %if.end50.i.i, %if.end32.i911.i.ext4_ioctl_checkpoint.exit.i_crit_edge, %land.lhs.true28.i.i.ext4_ioctl_checkpoint.exit.i_crit_edge, %if.end19.i.i.ext4_ioctl_checkpoint.exit.i_crit_edge, %if.end11.i.i.ext4_ioctl_checkpoint.exit.i_crit_edge, %lor.lhs.false.i908.i.ext4_ioctl_checkpoint.exit.i_crit_edge, %if.end4.i.i.ext4_ioctl_checkpoint.exit.i_crit_edge, %if.end.i905.i.ext4_ioctl_checkpoint.exit.i_crit_edge, %if.then11.i.i.i904.i
  %retval.0.i913.i = phi i32 [ %call55.i.i, %if.end50.i.i ], [ -1, %if.end.i905.i.ext4_ioctl_checkpoint.exit.i_crit_edge ], [ -22, %lor.lhs.false.i908.i.ext4_ioctl_checkpoint.exit.i_crit_edge ], [ -22, %if.end4.i.i.ext4_ioctl_checkpoint.exit.i_crit_edge ], [ -19, %if.end11.i.i.ext4_ioctl_checkpoint.exit.i_crit_edge ], [ -6, %if.end19.i.i.ext4_ioctl_checkpoint.exit.i_crit_edge ], [ -95, %land.lhs.true28.i.i.ext4_ioctl_checkpoint.exit.i_crit_edge ], [ 0, %if.end32.i911.i.ext4_ioctl_checkpoint.exit.i_crit_edge ], [ -14, %if.then11.i.i.i904.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.i.i) #11
  br label %__ext4_ioctl.exit

sw.bb425.i:                                       ; preds = %entry
  %s_fs_info.i914.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %621 = ptrtoint ptr %s_fs_info.i914.i to i32
  call void @__asan_load4_noabort(i32 %621)
  %622 = load ptr, ptr %s_fs_info.i914.i, align 16
  %623 = inttoptr i32 %arg to ptr
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %label.i.i) #11
  %624 = getelementptr inbounds i8, ptr %label.i.i, i32 16
  %625 = ptrtoint ptr %624 to i32
  call void @__asan_store1_noabort(i32 %625)
  store i8 0, ptr %624, align 1
  %s_sbh.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %622, i32 0, i32 14
  %626 = ptrtoint ptr %s_sbh.i.i to i32
  call void @__asan_load4_noabort(i32 %626)
  %627 = load ptr, ptr %s_sbh.i.i, align 64
  tail call void @__might_sleep(ptr noundef nonnull @.str.16, i32 noundef 366) #11
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %627, i32 noundef 4) #11
  %628 = ptrtoint ptr %627 to i32
  call void @__asan_load4_noabort(i32 %628)
  %629 = load volatile i32, ptr %627, align 4
  %and.i.i.i.i.i915.i = and i32 %629, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i915.i)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i915.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %trylock_buffer.exit.i.i.i, label %sw.bb425.i.if.then.i.i916.i_crit_edge

sw.bb425.i.if.then.i.i916.i_crit_edge:            ; preds = %sw.bb425.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i916.i

trylock_buffer.exit.i.i.i:                        ; preds = %sw.bb425.i
  tail call void @llvm.prefetch.p0(ptr %627, i32 1, i32 3, i32 1) #11
  %630 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %627, ptr %627, i32 4, ptr elementtype(i32) %627) #11, !srcloc !105
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %630, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !106
  %631 = and i32 %asmresult.i.i.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %631)
  %tobool.not.not.i.i.i = icmp eq i32 %631, 0
  br i1 %tobool.not.not.i.i.i, label %trylock_buffer.exit.i.i.i.lock_buffer.exit.i.i_crit_edge, label %trylock_buffer.exit.i.i.i.if.then.i.i916.i_crit_edge

trylock_buffer.exit.i.i.i.if.then.i.i916.i_crit_edge: ; preds = %trylock_buffer.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i916.i

trylock_buffer.exit.i.i.i.lock_buffer.exit.i.i_crit_edge: ; preds = %trylock_buffer.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lock_buffer.exit.i.i

if.then.i.i916.i:                                 ; preds = %trylock_buffer.exit.i.i.i.if.then.i.i916.i_crit_edge, %sw.bb425.i.if.then.i.i916.i_crit_edge
  tail call void @__lock_buffer(ptr noundef %627) #11
  br label %lock_buffer.exit.i.i

lock_buffer.exit.i.i:                             ; preds = %if.then.i.i916.i, %trylock_buffer.exit.i.i.i.lock_buffer.exit.i.i_crit_edge
  %s_es.i917.i = getelementptr inbounds %struct.ext4_sb_info, ptr %622, i32 0, i32 15
  %632 = ptrtoint ptr %s_es.i917.i to i32
  call void @__asan_load4_noabort(i32 %632)
  %633 = load ptr, ptr %s_es.i917.i, align 4
  %s_volume_name.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %633, i32 0, i32 32
  %call.i918.i = call ptr @strncpy(ptr noundef nonnull %label.i.i, ptr noundef %s_volume_name.i.i, i32 noundef 16) #11
  %634 = ptrtoint ptr %s_sbh.i.i to i32
  call void @__asan_load4_noabort(i32 %634)
  %635 = load ptr, ptr %s_sbh.i.i, align 64
  call void @unlock_buffer(ptr noundef %635) #11
  call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 174) #11
  %call.i.i.i919.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i919.i, label %lock_buffer.exit.i.i.ext4_ioctl_getlabel.exit.i_crit_edge, label %if.end.i.i.i922.i

lock_buffer.exit.i.i.ext4_ioctl_getlabel.exit.i_crit_edge: ; preds = %lock_buffer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_ioctl_getlabel.exit.i

if.end.i.i.i922.i:                                ; preds = %lock_buffer.exit.i.i
  %636 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %623, i32 17, i32 -1226833920) #14, !srcloc !97
  %asmresult.i.i.i920.i = extractvalue { i32, i32 } %636, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i920.i)
  %cmp.i6.i.i921.i = icmp eq i32 %asmresult.i.i.i920.i, 0
  br i1 %cmp.i6.i.i921.i, label %copy_to_user.exit.i927.i, label %if.end.i.i.i922.i.ext4_ioctl_getlabel.exit.i_crit_edge

if.end.i.i.i922.i.ext4_ioctl_getlabel.exit.i_crit_edge: ; preds = %if.end.i.i.i922.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_ioctl_getlabel.exit.i

copy_to_user.exit.i927.i:                         ; preds = %if.end.i.i.i922.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i.i923.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %label.i.i, i32 noundef 17) #11
  %call.i12.i.i.i924.i = call i32 @arm_copy_to_user(ptr noundef %623, ptr noundef nonnull %label.i.i, i32 noundef 17) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i924.i)
  %tobool.not.i925.i = icmp eq i32 %call.i12.i.i.i924.i, 0
  %spec.select.i926.i = select i1 %tobool.not.i925.i, i32 0, i32 -14
  br label %ext4_ioctl_getlabel.exit.i

ext4_ioctl_getlabel.exit.i:                       ; preds = %copy_to_user.exit.i927.i, %if.end.i.i.i922.i.ext4_ioctl_getlabel.exit.i_crit_edge, %lock_buffer.exit.i.i.ext4_ioctl_getlabel.exit.i_crit_edge
  %637 = phi i32 [ -14, %lock_buffer.exit.i.i.ext4_ioctl_getlabel.exit.i_crit_edge ], [ -14, %if.end.i.i.i922.i.ext4_ioctl_getlabel.exit.i_crit_edge ], [ %spec.select.i926.i, %copy_to_user.exit.i927.i ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %label.i.i) #11
  br label %__ext4_ioctl.exit

sw.bb428.i:                                       ; preds = %entry
  %638 = inttoptr i32 %arg to ptr
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %new_label.i.i) #11
  %639 = call ptr @memset(ptr %new_label.i.i, i32 255, i32 17)
  %640 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %640)
  %641 = load ptr, ptr %f_inode.i.i, align 8
  %i_sb.i929.i = getelementptr inbounds %struct.inode, ptr %641, i32 0, i32 8
  %642 = ptrtoint ptr %i_sb.i929.i to i32
  call void @__asan_load4_noabort(i32 %642)
  %643 = load ptr, ptr %i_sb.i929.i, align 4
  %call1.i930.i = tail call zeroext i1 @capable(i32 noundef 21) #11
  br i1 %call1.i930.i, label %if.end59.i.i.i.i, label %sw.bb428.i.ext4_ioctl_setlabel.exit.i_crit_edge

sw.bb428.i.ext4_ioctl_setlabel.exit.i_crit_edge:  ; preds = %sw.bb428.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_ioctl_setlabel.exit.i

if.end59.i.i.i.i:                                 ; preds = %sw.bb428.i
  tail call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 156) #11
  %call.i.i.i931.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i931.i, label %if.end59.i.i.i.i.if.then11.i.i.i945.i_crit_edge, label %land.lhs.true.i.i.i934.i

if.end59.i.i.i.i.if.then11.i.i.i945.i_crit_edge:  ; preds = %if.end59.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i945.i

land.lhs.true.i.i.i934.i:                         ; preds = %if.end59.i.i.i.i
  %644 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %638, i32 17, i32 -1226833920) #14, !srcloc !104
  %asmresult.i.i.i932.i = extractvalue { i32, i32 } %644, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i932.i)
  %cmp.i6.i.i933.i = icmp eq i32 %asmresult.i.i.i932.i, 0
  br i1 %cmp.i6.i.i933.i, label %if.end.i.i.i942.i, label %land.lhs.true.i.i.i934.i.if.then11.i.i.i945.i_crit_edge, !prof !89

land.lhs.true.i.i.i934.i.if.then11.i.i.i945.i_crit_edge: ; preds = %land.lhs.true.i.i.i934.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i945.i

if.end.i.i.i942.i:                                ; preds = %land.lhs.true.i.i.i934.i
  %call.i.i.i.i935.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %new_label.i.i, i32 noundef 17) #11
  %645 = call i32 @llvm.read_register.i32(metadata !79) #11
  %and.i.i.i.i.i.i.i936.i = and i32 %645, -16384
  %646 = inttoptr i32 %and.i.i.i.i.i.i.i936.i to ptr
  %cpu_domain.i.i.i.i.i.i937.i = getelementptr inbounds %struct.thread_info, ptr %646, i32 0, i32 4
  %647 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i937.i) #5, !srcloc !94
  %and.i.i.i.i.i938.i = and i32 %647, -13
  %or.i.i.i.i.i939.i = or i32 %and.i.i.i.i.i938.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i939.i) #11, !srcloc !95
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !96
  %call1.i.i.i.i940.i = call i32 @arm_copy_from_user(ptr noundef nonnull %new_label.i.i, ptr noundef %638, i32 noundef 17) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %647) #11, !srcloc !95
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i940.i)
  %tobool4.not.i.i.i941.i = icmp eq i32 %call1.i.i.i.i940.i, 0
  br i1 %tobool4.not.i.i.i941.i, label %if.end4.i947.i, label %if.end.i.i.i942.i.if.then11.i.i.i945.i_crit_edge, !prof !89

if.end.i.i.i942.i.if.then11.i.i.i945.i_crit_edge: ; preds = %if.end.i.i.i942.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i945.i

if.then11.i.i.i945.i:                             ; preds = %if.end.i.i.i942.i.if.then11.i.i.i945.i_crit_edge, %land.lhs.true.i.i.i934.i.if.then11.i.i.i945.i_crit_edge, %if.end59.i.i.i.i.if.then11.i.i.i945.i_crit_edge
  %res.0.i.i35.i.i = phi i32 [ %call1.i.i.i.i940.i, %if.end.i.i.i942.i.if.then11.i.i.i945.i_crit_edge ], [ 17, %if.end59.i.i.i.i.if.then11.i.i.i945.i_crit_edge ], [ 17, %land.lhs.true.i.i.i934.i.if.then11.i.i.i945.i_crit_edge ]
  %sub.i.i.i943.i = sub i32 17, %res.0.i.i35.i.i
  %add.ptr.i.i.i944.i = getelementptr i8, ptr %new_label.i.i, i32 %sub.i.i.i943.i
  %648 = call ptr @memset(ptr %add.ptr.i.i.i944.i, i32 0, i32 %res.0.i.i35.i.i)
  br label %ext4_ioctl_setlabel.exit.i

if.end4.i947.i:                                   ; preds = %if.end.i.i.i942.i
  %call6.i.i = call i32 @strnlen(ptr noundef nonnull %new_label.i.i, i32 noundef 17) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call6.i.i)
  %cmp.i946.i = icmp ugt i32 %call6.i.i, 16
  br i1 %cmp.i946.i, label %if.end4.i947.i.ext4_ioctl_setlabel.exit.i_crit_edge, label %if.end8.i949.i

if.end4.i947.i.ext4_ioctl_setlabel.exit.i_crit_edge: ; preds = %if.end4.i947.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_ioctl_setlabel.exit.i

if.end8.i949.i:                                   ; preds = %if.end4.i947.i
  %add.ptr.i.i = getelementptr i8, ptr %new_label.i.i, i32 %call6.i.i
  %sub.i948.i = sub nuw nsw i32 16, %call6.i.i
  %649 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %sub.i948.i)
  %call10.i.i = call i32 @mnt_want_write_file(ptr noundef %filp) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %tobool11.not.i.i = icmp eq i32 %call10.i.i, 0
  br i1 %tobool11.not.i.i, label %if.end13.i.i, label %if.end8.i949.i.ext4_ioctl_setlabel.exit.i_crit_edge

if.end8.i949.i.ext4_ioctl_setlabel.exit.i_crit_edge: ; preds = %if.end8.i949.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_ioctl_setlabel.exit.i

if.end13.i.i:                                     ; preds = %if.end8.i949.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %three.i.i.i) #11
  %650 = ptrtoint ptr %three.i.i.i to i32
  call void @__asan_store4_noabort(i32 %650)
  store i32 1, ptr %three.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %five.i.i.i) #11
  %651 = ptrtoint ptr %five.i.i.i to i32
  call void @__asan_store4_noabort(i32 %651)
  store i32 5, ptr %five.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %seven.i.i.i) #11
  %652 = ptrtoint ptr %seven.i.i.i to i32
  call void @__asan_store4_noabort(i32 %652)
  store i32 7, ptr %seven.i.i.i, align 4
  %s_fs_info.i.i.i950.i = getelementptr inbounds %struct.super_block, ptr %643, i32 0, i32 33
  %653 = ptrtoint ptr %s_fs_info.i.i.i950.i to i32
  call void @__asan_load4_noabort(i32 %653)
  %654 = load ptr, ptr %s_fs_info.i.i.i950.i, align 16
  %s_ext4_flags.i.i951.i = getelementptr inbounds %struct.ext4_sb_info, ptr %654, i32 0, i32 48
  %call.i.i.i25.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %s_ext4_flags.i.i951.i, i32 noundef 4) #11
  %655 = ptrtoint ptr %s_ext4_flags.i.i951.i to i32
  call void @__asan_load4_noabort(i32 %655)
  %656 = load volatile i32, ptr %s_ext4_flags.i.i951.i, align 4
  %and.i.i.i.i952.i = and i32 %656, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i952.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i952.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %test_and_set_bit_lock.exit.i.i.i, label %if.end13.i.i.if.then.i.i953.i_crit_edge

if.end13.i.i.if.then.i.i953.i_crit_edge:          ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i953.i

test_and_set_bit_lock.exit.i.i.i:                 ; preds = %if.end13.i.i
  call void @llvm.prefetch.p0(ptr %s_ext4_flags.i.i951.i, i32 1, i32 3, i32 1) #11
  %657 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %s_ext4_flags.i.i951.i, ptr %s_ext4_flags.i.i951.i, i32 1, ptr elementtype(i32) %s_ext4_flags.i.i951.i) #11, !srcloc !105
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %657, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !106
  %658 = and i32 %asmresult.i.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %658)
  %phi.cmp.i.not.i.i.i = icmp eq i32 %658, 0
  br i1 %phi.cmp.i.not.i.i.i, label %if.end.i.i954.i, label %test_and_set_bit_lock.exit.i.i.i.if.then.i.i953.i_crit_edge

test_and_set_bit_lock.exit.i.i.i.if.then.i.i953.i_crit_edge: ; preds = %test_and_set_bit_lock.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i953.i

if.then.i.i953.i:                                 ; preds = %test_and_set_bit_lock.exit.i.i.i.if.then.i.i953.i_crit_edge, %if.end13.i.i.if.then.i.i953.i_crit_edge
  call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %643, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.21) #11
  br label %ext4_update_superblocks_fn.exit.i.i

if.end.i.i954.i:                                  ; preds = %test_and_set_bit_lock.exit.i.i.i
  %659 = ptrtoint ptr %s_fs_info.i.i.i950.i to i32
  call void @__asan_load4_noabort(i32 %659)
  %660 = load ptr, ptr %s_fs_info.i.i.i950.i, align 16
  %s_cluster_ratio.i.i.i.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %660, i32 0, i32 11
  %661 = ptrtoint ptr %s_cluster_ratio.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %661)
  %662 = load i32, ptr %s_cluster_ratio.i.i.i.i.i, align 4
  %mul.i.i.i.i.i = shl i32 %662, 3
  %call3.i.i.i = call ptr @__ext4_journal_start_sb(ptr noundef %643, i32 noundef 206, i32 noundef 0, i32 noundef 3, i32 noundef 0, i32 noundef %mul.i.i.i.i.i) #11
  %cmp.i.i26.i.i = icmp ugt ptr %call3.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i26.i.i, label %if.then5.i.i.i, label %if.end7.i.i.i

if.then5.i.i.i:                                   ; preds = %if.end.i.i954.i
  call void @__sanitizer_cov_trace_pc() #13
  %663 = ptrtoint ptr %call3.i.i.i to i32
  br label %out.i.i.i

if.end7.i.i.i:                                    ; preds = %if.end.i.i954.i
  %664 = ptrtoint ptr %s_fs_info.i.i.i950.i to i32
  call void @__asan_load4_noabort(i32 %664)
  %665 = load ptr, ptr %s_fs_info.i.i.i950.i, align 16
  %s_sbh.i.i.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %665, i32 0, i32 14
  %666 = ptrtoint ptr %s_sbh.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %666)
  %667 = load ptr, ptr %s_sbh.i.i.i.i, align 64
  %s_es.i.i.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %665, i32 0, i32 15
  %668 = ptrtoint ptr %s_es.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %668)
  %669 = load ptr, ptr %s_es.i.i.i.i, align 4
  %b_blocknr.i.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %667, i32 0, i32 3
  %670 = ptrtoint ptr %b_blocknr.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %670)
  %671 = load i64, ptr %b_blocknr.i.i.i.i, align 8
  call fastcc void @trace_ext4_update_sb(ptr noundef %643, i64 noundef %671, i32 noundef 1) #11
  %call1.i.i.i955.i = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_update_primary_sb, i32 noundef 60, ptr noundef %call3.i.i.i, ptr noundef %643, ptr noundef %667, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i955.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call1.i.i.i955.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i28.i.i, label %if.end7.i.i.i.if.then9.i.i.i_crit_edge

if.end7.i.i.i.if.then9.i.i.i_crit_edge:           ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9.i.i.i

if.end.i.i28.i.i:                                 ; preds = %if.end7.i.i.i
  call void @__might_sleep(ptr noundef nonnull @.str.16, i32 noundef 366) #11
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %667, i32 noundef 4) #11
  %672 = ptrtoint ptr %667 to i32
  call void @__asan_load4_noabort(i32 %672)
  %673 = load volatile i32, ptr %667, align 4
  %and.i.i.i.i.i.i27.i.i = and i32 %673, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i27.i.i)
  %tobool.not.i.i.i.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i27.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i, label %trylock_buffer.exit.i.i.i.i.i, label %if.end.i.i28.i.i.if.then.i3.i.i.i.i_crit_edge

if.end.i.i28.i.i.if.then.i3.i.i.i.i_crit_edge:    ; preds = %if.end.i.i28.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i3.i.i.i.i

trylock_buffer.exit.i.i.i.i.i:                    ; preds = %if.end.i.i28.i.i
  call void @llvm.prefetch.p0(ptr %667, i32 1, i32 3, i32 1) #11
  %674 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %667, ptr %667, i32 4, ptr elementtype(i32) %667) #11, !srcloc !105
  %asmresult.i.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %674, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !106
  %675 = and i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %675)
  %tobool.not.not.i.i.i.i.i = icmp eq i32 %675, 0
  br i1 %tobool.not.not.i.i.i.i.i, label %trylock_buffer.exit.i.i.i.i.i.lock_buffer.exit.i.i.i.i_crit_edge, label %trylock_buffer.exit.i.i.i.i.i.if.then.i3.i.i.i.i_crit_edge

trylock_buffer.exit.i.i.i.i.i.if.then.i3.i.i.i.i_crit_edge: ; preds = %trylock_buffer.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i3.i.i.i.i

trylock_buffer.exit.i.i.i.i.i.lock_buffer.exit.i.i.i.i_crit_edge: ; preds = %trylock_buffer.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lock_buffer.exit.i.i.i.i

if.then.i3.i.i.i.i:                               ; preds = %trylock_buffer.exit.i.i.i.i.i.if.then.i3.i.i.i.i_crit_edge, %if.end.i.i28.i.i.if.then.i3.i.i.i.i_crit_edge
  call void @__lock_buffer(ptr noundef %667) #11
  br label %lock_buffer.exit.i.i.i.i

lock_buffer.exit.i.i.i.i:                         ; preds = %if.then.i3.i.i.i.i, %trylock_buffer.exit.i.i.i.i.i.lock_buffer.exit.i.i.i.i_crit_edge
  %s_volume_name.i.i.i.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %669, i32 0, i32 32
  %676 = call ptr @memcpy(ptr %s_volume_name.i.i.i.i.i, ptr %new_label.i.i, i32 16)
  call void @ext4_superblock_csum_set(ptr noundef %643) #11
  call void @unlock_buffer(ptr noundef %667) #11
  %677 = ptrtoint ptr %667 to i32
  call void @__asan_load4_noabort(i32 %677)
  %678 = load volatile i32, ptr %667, align 4
  %679 = and i32 %678, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %679)
  %tobool3.not.i.i.i.i = icmp eq i32 %679, 0
  br i1 %tobool3.not.i.i.i.i, label %lor.lhs.false.i.i.i.i, label %lock_buffer.exit.i.i.i.i.if.then6.i.i.i.i_crit_edge

lock_buffer.exit.i.i.i.i.if.then6.i.i.i.i_crit_edge: ; preds = %lock_buffer.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6.i.i.i.i

lor.lhs.false.i.i.i.i:                            ; preds = %lock_buffer.exit.i.i.i.i
  %680 = ptrtoint ptr %667 to i32
  call void @__asan_load4_noabort(i32 %680)
  %681 = load volatile i32, ptr %667, align 4
  %and1.i.i1.i.i.i.i = and i32 %681, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i1.i.i.i.i)
  %tobool5.not.i.i.i.i = icmp eq i32 %and1.i.i1.i.i.i.i, 0
  br i1 %tobool5.not.i.i.i.i, label %lor.lhs.false.i.i.i.i.if.then6.i.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.i.if.end7.i.i.i.i_crit_edge

lor.lhs.false.i.i.i.i.if.end7.i.i.i.i_crit_edge:  ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.i.i.i.i

lor.lhs.false.i.i.i.i.if.then6.i.i.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6.i.i.i.i

if.then6.i.i.i.i:                                 ; preds = %lor.lhs.false.i.i.i.i.if.then6.i.i.i.i_crit_edge, %lock_buffer.exit.i.i.i.i.if.then6.i.i.i.i_crit_edge
  %s_sb.i.i.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %665, i32 0, i32 45
  %682 = ptrtoint ptr %s_sb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %682)
  %683 = load ptr, ptr %s_sb.i.i.i.i, align 32
  call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %683, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.23) #11
  call void @_clear_bit(i32 noundef 10, ptr noundef %667) #11
  %684 = ptrtoint ptr %667 to i32
  call void @__asan_load4_noabort(i32 %684)
  %685 = load volatile i32, ptr %667, align 4
  %and1.i.i2.i.i.i.i = and i32 %685, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i2.i.i.i.i)
  %tobool.not.i.i2.i.i.i = icmp eq i32 %and1.i.i2.i.i.i.i, 0
  br i1 %tobool.not.i.i2.i.i.i, label %if.then.i.i.i.i.i, label %if.then6.i.i.i.i.if.end7.i.i.i.i_crit_edge

if.then6.i.i.i.i.if.end7.i.i.i.i_crit_edge:       ; preds = %if.then6.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %if.then6.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @_set_bit(i32 noundef 0, ptr noundef %667) #11
  br label %if.end7.i.i.i.i

if.end7.i.i.i.i:                                  ; preds = %if.then.i.i.i.i.i, %if.then6.i.i.i.i.if.end7.i.i.i.i_crit_edge, %lor.lhs.false.i.i.i.i.if.end7.i.i.i.i_crit_edge
  %call8.i.i.i.i = call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_update_primary_sb, i32 noundef 76, ptr noundef %call3.i.i.i, ptr noundef null, ptr noundef %667) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i.i.i)
  %tobool9.not.i.i.i.i = icmp eq i32 %call8.i.i.i.i, 0
  br i1 %tobool9.not.i.i.i.i, label %do.body13.i.i.i.i, label %if.end7.i.i.i.i.if.then9.i.i.i_crit_edge

if.end7.i.i.i.i.if.then9.i.i.i_crit_edge:         ; preds = %if.end7.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9.i.i.i

do.body13.i.i.i.i:                                ; preds = %if.end7.i.i.i.i
  %call12.i.i.i.i = call i32 @sync_dirty_buffer(ptr noundef %667) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i.i.i)
  %tobool14.not.i.i.i.i = icmp eq i32 %call12.i.i.i.i, 0
  br i1 %tobool14.not.i.i.i.i, label %if.end10.i.i.i, label %do.body13.i.i.i.i.if.then9.i.i.i_crit_edge

do.body13.i.i.i.i.if.then9.i.i.i_crit_edge:       ; preds = %do.body13.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9.i.i.i

if.then9.i.i.i:                                   ; preds = %do.body13.i.i.i.i.if.then9.i.i.i_crit_edge, %if.end7.i.i.i.i.if.then9.i.i.i_crit_edge, %if.end7.i.i.i.if.then9.i.i.i_crit_edge
  %err.06.i.i.i.i = phi i32 [ %call12.i.i.i.i, %do.body13.i.i.i.i.if.then9.i.i.i_crit_edge ], [ %call8.i.i.i.i, %if.end7.i.i.i.i.if.then9.i.i.i_crit_edge ], [ %call1.i.i.i955.i, %if.end7.i.i.i.if.then9.i.i.i_crit_edge ]
  call void @__ext4_std_error(ptr noundef %643, ptr noundef nonnull @__func__.ext4_update_primary_sb, i32 noundef 81, i32 noundef %err.06.i.i.i.i) #11
  call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %643, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.22) #11
  br label %out_journal.i.i.i

if.end10.i.i.i:                                   ; preds = %do.body13.i.i.i.i
  %s_sbh.i.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %654, i32 0, i32 14
  %686 = ptrtoint ptr %s_sbh.i.i.i to i32
  call void @__asan_load4_noabort(i32 %686)
  %687 = load ptr, ptr %s_sbh.i.i.i, align 64
  %b_blocknr.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %687, i32 0, i32 3
  %688 = ptrtoint ptr %b_blocknr.i.i.i to i32
  call void @__asan_load8_noabort(i32 %688)
  %689 = load i64, ptr %b_blocknr.i.i.i, align 8
  %call11.i.i.i = call i32 @ext4_get_group_number(ptr noundef %643, i64 noundef %689) #11
  %690 = ptrtoint ptr %s_fs_info.i.i.i950.i to i32
  call void @__asan_load4_noabort(i32 %690)
  %691 = load ptr, ptr %s_fs_info.i.i.i950.i, align 16
  %s_groups_count.i.i.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %691, i32 0, i32 8
  %692 = ptrtoint ptr %s_groups_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %692)
  %693 = load i32, ptr %s_groups_count.i.i.i.i, align 32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !109
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %693)
  %cmp28.not.i.i.i = icmp eq i32 %693, 0
  br i1 %cmp28.not.i.i.i, label %if.end10.i.i.i.out_journal.i.i.i_crit_edge, label %while.body.lr.ph.i.i.i

if.end10.i.i.i.out_journal.i.i.i_crit_edge:       ; preds = %if.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_journal.i.i.i

while.body.lr.ph.i.i.i:                           ; preds = %if.end10.i.i.i
  %s_blocksize.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %643, i32 0, i32 3
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %next_grp.i.i.i.while.body.i.i.i_crit_edge, %while.body.lr.ph.i.i.i
  %grp.032.i.i.i = phi i32 [ 0, %while.body.lr.ph.i.i.i ], [ %call31.i.i.i, %next_grp.i.i.i.while.body.i.i.i_crit_edge ]
  %i.031.i.i.i = phi i32 [ 0, %while.body.lr.ph.i.i.i ], [ %i.1.i.i.i, %next_grp.i.i.i.while.body.i.i.i_crit_edge ]
  %handle.029.i.i.i = phi ptr [ %call3.i.i.i, %while.body.lr.ph.i.i.i ], [ %handle.1.i.i.i, %next_grp.i.i.i.while.body.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %grp.032.i.i.i, i32 %call11.i.i.i)
  %cmp13.i.i.i = icmp eq i32 %grp.032.i.i.i, %call11.i.i.i
  br i1 %cmp13.i.i.i, label %while.body.i.i.i.next_grp.i.i.i_crit_edge, label %if.end15.i.i.i

while.body.i.i.i.next_grp.i.i.i_crit_edge:        ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %next_grp.i.i.i

if.end15.i.i.i:                                   ; preds = %while.body.i.i.i
  %call.i.i29.i.i = call i32 @ext4_bg_has_super(ptr noundef %643, i32 noundef %grp.032.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i29.i.i)
  %tobool.not.i4.i.i.i = icmp eq i32 %call.i.i29.i.i, 0
  br i1 %tobool.not.i4.i.i.i, label %if.end15.i.i.i.if.end22.i.i.i_crit_edge, label %if.end.i6.i.i.i

if.end15.i.i.i.if.end22.i.i.i_crit_edge:          ; preds = %if.end15.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22.i.i.i

if.end.i6.i.i.i:                                  ; preds = %if.end15.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %grp.032.i.i.i)
  %cmp.i5.i.i.i = icmp eq i32 %grp.032.i.i.i, 0
  br i1 %cmp.i5.i.i.i, label %if.then174.i.i.i.i, label %if.else186.i.i.i.i

if.then174.i.i.i.i:                               ; preds = %if.end.i6.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %694 = ptrtoint ptr %s_blocksize.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %694)
  %695 = load i32, ptr %s_blocksize.i.i.i.i, align 16
  %.frozen = freeze i32 %695
  %div178.i.i.i.i = udiv i32 1024, %.frozen
  %696 = mul i32 %div178.i.i.i.i, %.frozen
  %rem176.i.i.i.i.decomposed = sub i32 1024, %696
  %conv179.i.i.i.i = zext i32 %div178.i.i.i.i to i64
  br label %if.end188.i.i.i.i

if.else186.i.i.i.i:                               ; preds = %if.end.i6.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i4.i.i.i.i = zext i32 %grp.032.i.i.i to i64
  %697 = ptrtoint ptr %s_fs_info.i.i.i950.i to i32
  call void @__asan_load4_noabort(i32 %697)
  %698 = load ptr, ptr %s_fs_info.i.i.i950.i, align 16
  %s_blocks_per_group.i.i.i.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %698, i32 0, i32 2
  %699 = ptrtoint ptr %s_blocks_per_group.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %699)
  %700 = load i32, ptr %s_blocks_per_group.i.i.i.i.i, align 8
  %conv1.i.i.i.i.i = zext i32 %700 to i64
  %mul.i.i9.i.i.i = mul nuw i64 %conv1.i.i.i.i.i, %conv.i4.i.i.i.i
  %s_es.i.i.i.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %698, i32 0, i32 15
  %701 = ptrtoint ptr %s_es.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %701)
  %702 = load ptr, ptr %s_es.i.i.i.i.i, align 4
  %s_first_data_block.i.i.i.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %702, i32 0, i32 5
  %703 = ptrtoint ptr %s_first_data_block.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %703)
  %704 = load i32, ptr %s_first_data_block.i.i.i.i.i, align 4
  %705 = call i32 @llvm.bswap.i32(i32 %704) #11
  %conv3.i.i.i.i.i = zext i32 %705 to i64
  %add.i.i.i.i.i = add nuw i64 %mul.i.i9.i.i.i, %conv3.i.i.i.i.i
  br label %if.end188.i.i.i.i

if.end188.i.i.i.i:                                ; preds = %if.else186.i.i.i.i, %if.then174.i.i.i.i
  %sb_block.0.i.i.i.i = phi i64 [ %conv179.i.i.i.i, %if.then174.i.i.i.i ], [ %add.i.i.i.i.i, %if.else186.i.i.i.i ]
  %offset.0.i.i.i.i = phi i32 [ %rem176.i.i.i.i.decomposed, %if.then174.i.i.i.i ], [ 0, %if.else186.i.i.i.i ]
  %tobool189.not.i.i.i.i = icmp eq ptr %handle.029.i.i.i, null
  %not.tobool189.not.i.i.i.i = xor i1 %tobool189.not.i.i.i.i, true
  %cond190.i.i.i.i = zext i1 %not.tobool189.not.i.i.i.i to i32
  call fastcc void @trace_ext4_update_sb(ptr noundef %643, i64 noundef %sb_block.0.i.i.i.i, i32 noundef %cond190.i.i.i.i) #11
  %call191.i.i.i.i = call ptr @ext4_sb_bread(ptr noundef %643, i64 noundef %sb_block.0.i.i.i.i, i32 noundef 0) #11
  %cmp.i.i.i.i.i = icmp ugt ptr %call191.i.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i.i.i, label %if.then193.i.i.i.i, label %if.end195.i.i.i.i

if.then193.i.i.i.i:                               ; preds = %if.end188.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %706 = ptrtoint ptr %call191.i.i.i.i to i32
  br label %ext4_update_backup_sb.exit.i.i.i

if.end195.i.i.i.i:                                ; preds = %if.end188.i.i.i.i
  br i1 %tobool189.not.i.i.i.i, label %if.end195.i.i.i.i.if.end202.i.i.i.i_crit_edge, label %do.end.i.i.i.i

if.end195.i.i.i.i.if.end202.i.i.i.i_crit_edge:    ; preds = %if.end195.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end202.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %if.end195.i.i.i.i
  %call198.i.i.i.i = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_update_backup_sb, i32 noundef 129, ptr noundef nonnull %handle.029.i.i.i, ptr noundef %643, ptr noundef %call191.i.i.i.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call198.i.i.i.i)
  %tobool199.not.i.i.i.i = icmp eq i32 %call198.i.i.i.i, 0
  br i1 %tobool199.not.i.i.i.i, label %do.end.i.i.i.i.if.end202.i.i.i.i_crit_edge, label %do.end.i.i.i.i.out_bh.i.i.i.i_crit_edge

do.end.i.i.i.i.out_bh.i.i.i.i_crit_edge:          ; preds = %do.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_bh.i.i.i.i

do.end.i.i.i.i.if.end202.i.i.i.i_crit_edge:       ; preds = %do.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end202.i.i.i.i

if.end202.i.i.i.i:                                ; preds = %do.end.i.i.i.i.if.end202.i.i.i.i_crit_edge, %if.end195.i.i.i.i.if.end202.i.i.i.i_crit_edge
  %b_data.i.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %call191.i.i.i.i, i32 0, i32 5
  %707 = ptrtoint ptr %b_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %707)
  %708 = load ptr, ptr %b_data.i.i.i.i, align 4
  %add.ptr.i.i31.i.i = getelementptr i8, ptr %708, i32 %offset.0.i.i.i.i
  call void @__might_sleep(ptr noundef nonnull @.str.16, i32 noundef 366) #11
  %call.i.i.i.i.i10.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %call191.i.i.i.i, i32 noundef 4) #11
  %709 = ptrtoint ptr %call191.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %709)
  %710 = load volatile i32, ptr %call191.i.i.i.i, align 4
  %and.i.i.i.i.i11.i.i.i = and i32 %710, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i11.i.i.i)
  %tobool.not.i.i.i.i.i12.i.i.i = icmp eq i32 %and.i.i.i.i.i11.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i12.i.i.i, label %trylock_buffer.exit.i.i15.i.i.i, label %if.end202.i.i.i.i.if.then.i5.i.i.i.i_crit_edge

if.end202.i.i.i.i.if.then.i5.i.i.i.i_crit_edge:   ; preds = %if.end202.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i5.i.i.i.i

trylock_buffer.exit.i.i15.i.i.i:                  ; preds = %if.end202.i.i.i.i
  call void @llvm.prefetch.p0(ptr %call191.i.i.i.i, i32 1, i32 3, i32 1) #11
  %711 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %call191.i.i.i.i, ptr %call191.i.i.i.i, i32 4, ptr elementtype(i32) %call191.i.i.i.i) #11, !srcloc !105
  %asmresult.i.i.i.i.i.i.i.i13.i.i.i = extractvalue { i32, i32, i32 } %711, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !106
  %712 = and i32 %asmresult.i.i.i.i.i.i.i.i13.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %712)
  %tobool.not.not.i.i14.i.i.i = icmp eq i32 %712, 0
  br i1 %tobool.not.not.i.i14.i.i.i, label %trylock_buffer.exit.i.i15.i.i.i.lock_buffer.exit.i16.i.i.i_crit_edge, label %trylock_buffer.exit.i.i15.i.i.i.if.then.i5.i.i.i.i_crit_edge

trylock_buffer.exit.i.i15.i.i.i.if.then.i5.i.i.i.i_crit_edge: ; preds = %trylock_buffer.exit.i.i15.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i5.i.i.i.i

trylock_buffer.exit.i.i15.i.i.i.lock_buffer.exit.i16.i.i.i_crit_edge: ; preds = %trylock_buffer.exit.i.i15.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lock_buffer.exit.i16.i.i.i

if.then.i5.i.i.i.i:                               ; preds = %trylock_buffer.exit.i.i15.i.i.i.if.then.i5.i.i.i.i_crit_edge, %if.end202.i.i.i.i.if.then.i5.i.i.i.i_crit_edge
  call void @__lock_buffer(ptr noundef %call191.i.i.i.i) #11
  br label %lock_buffer.exit.i16.i.i.i

lock_buffer.exit.i16.i.i.i:                       ; preds = %if.then.i5.i.i.i.i, %trylock_buffer.exit.i.i15.i.i.i.lock_buffer.exit.i16.i.i.i_crit_edge
  %713 = ptrtoint ptr %s_fs_info.i.i.i950.i to i32
  call void @__asan_load4_noabort(i32 %713)
  %714 = load ptr, ptr %s_fs_info.i.i.i950.i, align 16
  %s_es.i.i.i.i.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %714, i32 0, i32 15
  %715 = ptrtoint ptr %s_es.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %715)
  %716 = load ptr, ptr %s_es.i.i.i.i.i.i, align 4
  %s_feature_ro_compat.i.i.i.i.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %716, i32 0, i32 30
  %717 = ptrtoint ptr %s_feature_ro_compat.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %717)
  %718 = load i32, ptr %s_feature_ro_compat.i.i.i.i.i.i, align 4
  %and.i.i.i.i32.i.i = and i32 %718, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i32.i.i)
  %cmp.i.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i32.i.i, 0
  br i1 %cmp.i.not.i.i.i.i.i, label %lock_buffer.exit.i16.i.i.i.if.end32.i.i.i.i.i_crit_edge, label %land.rhs.i7.i.i.i.i

lock_buffer.exit.i16.i.i.i.if.end32.i.i.i.i.i_crit_edge: ; preds = %lock_buffer.exit.i16.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32.i.i.i.i.i

land.rhs.i7.i.i.i.i:                              ; preds = %lock_buffer.exit.i16.i.i.i
  %s_chksum_driver.i.i.i.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %714, i32 0, i32 121
  %719 = ptrtoint ptr %s_chksum_driver.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %719)
  %720 = load ptr, ptr %s_chksum_driver.i.i.i.i.i, align 4
  %tobool.not.i6.i.i.i.i = icmp eq ptr %720, null
  br i1 %tobool.not.i6.i.i.i.i, label %land.rhs5.i.i.i.i.i, label %land.rhs.i7.i.i.i.i.if.end32.i.i.i.i.i_crit_edge

land.rhs.i7.i.i.i.i.if.end32.i.i.i.i.i_crit_edge: ; preds = %land.rhs.i7.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32.i.i.i.i.i

land.rhs5.i.i.i.i.i:                              ; preds = %land.rhs.i7.i.i.i.i
  %.b50.i.i.i.i.i = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  br i1 %.b50.i.i.i.i.i, label %land.rhs5.i.i.i.i.i.if.end32.i.i.i.i.i_crit_edge, label %if.then.i8.i.i.i.i, !prof !89

land.rhs5.i.i.i.i.i.if.end32.i.i.i.i.i_crit_edge: ; preds = %land.rhs5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32.i.i.i.i.i

if.then.i8.i.i.i.i:                               ; preds = %land.rhs5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3289, i32 noundef 9, ptr noundef null) #11
  br label %if.end32.i.i.i.i.i

if.end32.i.i.i.i.i:                               ; preds = %if.then.i8.i.i.i.i, %land.rhs5.i.i.i.i.i.if.end32.i.i.i.i.i_crit_edge, %land.rhs.i7.i.i.i.i.if.end32.i.i.i.i.i_crit_edge, %lock_buffer.exit.i16.i.i.i.if.end32.i.i.i.i.i_crit_edge
  %721 = ptrtoint ptr %s_fs_info.i.i.i950.i to i32
  call void @__asan_load4_noabort(i32 %721)
  %722 = load ptr, ptr %s_fs_info.i.i.i950.i, align 16
  %s_es.i53.i.i.i.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %722, i32 0, i32 15
  %723 = ptrtoint ptr %s_es.i53.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %723)
  %724 = load ptr, ptr %s_es.i53.i.i.i.i.i, align 4
  %s_feature_ro_compat.i54.i.i.i.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %724, i32 0, i32 30
  %725 = ptrtoint ptr %s_feature_ro_compat.i54.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %725)
  %726 = load i32, ptr %s_feature_ro_compat.i54.i.i.i.i.i, align 4
  %and.i55.i.i.i.i.i = and i32 %726, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i55.i.i.i.i.i)
  %cmp.i56.not.i.i.i.i.i = icmp eq i32 %and.i55.i.i.i.i.i, 0
  br i1 %cmp.i56.not.i.i.i.i.i, label %if.end32.i.i.i.i.i.if.end210.i.i.i.i_crit_edge, label %ext4_has_metadata_csum.exit.i.i.i.i

if.end32.i.i.i.i.i.if.end210.i.i.i.i_crit_edge:   ; preds = %if.end32.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end210.i.i.i.i

ext4_has_metadata_csum.exit.i.i.i.i:              ; preds = %if.end32.i.i.i.i.i
  %s_chksum_driver43.i.i.i.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %722, i32 0, i32 121
  %727 = ptrtoint ptr %s_chksum_driver43.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %727)
  %728 = load ptr, ptr %s_chksum_driver43.i.i.i.i.i, align 4
  %cmp.i9.not.i.i.i.i = icmp eq ptr %728, null
  br i1 %cmp.i9.not.i.i.i.i, label %ext4_has_metadata_csum.exit.i.i.i.i.if.end210.i.i.i.i_crit_edge, label %land.lhs.true205.i.i.i.i

ext4_has_metadata_csum.exit.i.i.i.i.if.end210.i.i.i.i_crit_edge: ; preds = %ext4_has_metadata_csum.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end210.i.i.i.i

land.lhs.true205.i.i.i.i:                         ; preds = %ext4_has_metadata_csum.exit.i.i.i.i
  %s_checksum.i.i.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %add.ptr.i.i31.i.i, i32 0, i32 102
  %729 = ptrtoint ptr %s_checksum.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %729)
  %730 = load i32, ptr %s_checksum.i.i.i.i, align 4
  %call206.i.i.i.i = call i32 @ext4_superblock_csum(ptr noundef %643, ptr noundef %add.ptr.i.i31.i.i) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %730, i32 %call206.i.i.i.i)
  %cmp207.not.i.i.i.i = icmp eq i32 %730, %call206.i.i.i.i
  br i1 %cmp207.not.i.i.i.i, label %land.lhs.true205.i.i.i.i.if.end210.i.i.i.i_crit_edge, label %if.then209.i.i.i.i

land.lhs.true205.i.i.i.i.if.end210.i.i.i.i_crit_edge: ; preds = %land.lhs.true205.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end210.i.i.i.i

if.then209.i.i.i.i:                               ; preds = %land.lhs.true205.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %643, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.24, i64 noundef %sb_block.0.i.i.i.i) #11
  call void @unlock_buffer(ptr noundef %call191.i.i.i.i) #11
  br label %out_bh.i.i.i.i

if.end210.i.i.i.i:                                ; preds = %land.lhs.true205.i.i.i.i.if.end210.i.i.i.i_crit_edge, %ext4_has_metadata_csum.exit.i.i.i.i.if.end210.i.i.i.i_crit_edge, %if.end32.i.i.i.i.i.if.end210.i.i.i.i_crit_edge
  %s_volume_name.i.i17.i.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %add.ptr.i.i31.i.i, i32 0, i32 32
  %731 = call ptr @memcpy(ptr %s_volume_name.i.i17.i.i.i, ptr %new_label.i.i, i32 16)
  %732 = ptrtoint ptr %s_fs_info.i.i.i950.i to i32
  call void @__asan_load4_noabort(i32 %732)
  %733 = load ptr, ptr %s_fs_info.i.i.i950.i, align 16
  %s_es.i.i11.i.i.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %733, i32 0, i32 15
  %734 = ptrtoint ptr %s_es.i.i11.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %734)
  %735 = load ptr, ptr %s_es.i.i11.i.i.i.i, align 4
  %s_feature_ro_compat.i.i12.i.i.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %735, i32 0, i32 30
  %736 = ptrtoint ptr %s_feature_ro_compat.i.i12.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %736)
  %737 = load i32, ptr %s_feature_ro_compat.i.i12.i.i.i.i, align 4
  %and.i.i13.i.i.i.i = and i32 %737, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i13.i.i.i.i)
  %cmp.i.not.i14.i.i.i.i = icmp eq i32 %and.i.i13.i.i.i.i, 0
  br i1 %cmp.i.not.i14.i.i.i.i, label %if.end210.i.i.i.i.if.end32.i25.i.i.i.i_crit_edge, label %land.rhs.i17.i.i.i.i

if.end210.i.i.i.i.if.end32.i25.i.i.i.i_crit_edge: ; preds = %if.end210.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32.i25.i.i.i.i

land.rhs.i17.i.i.i.i:                             ; preds = %if.end210.i.i.i.i
  %s_chksum_driver.i15.i.i.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %733, i32 0, i32 121
  %738 = ptrtoint ptr %s_chksum_driver.i15.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %738)
  %739 = load ptr, ptr %s_chksum_driver.i15.i.i.i.i, align 4
  %tobool.not.i16.i.i.i.i = icmp eq ptr %739, null
  br i1 %tobool.not.i16.i.i.i.i, label %land.rhs5.i19.i.i.i.i, label %land.rhs.i17.i.i.i.i.if.end32.i25.i.i.i.i_crit_edge

land.rhs.i17.i.i.i.i.if.end32.i25.i.i.i.i_crit_edge: ; preds = %land.rhs.i17.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32.i25.i.i.i.i

land.rhs5.i19.i.i.i.i:                            ; preds = %land.rhs.i17.i.i.i.i
  %.b50.i18.i.i.i.i = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  br i1 %.b50.i18.i.i.i.i, label %land.rhs5.i19.i.i.i.i.if.end32.i25.i.i.i.i_crit_edge, label %if.then.i20.i.i.i.i, !prof !89

land.rhs5.i19.i.i.i.i.if.end32.i25.i.i.i.i_crit_edge: ; preds = %land.rhs5.i19.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32.i25.i.i.i.i

if.then.i20.i.i.i.i:                              ; preds = %land.rhs5.i19.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3289, i32 noundef 9, ptr noundef null) #11
  br label %if.end32.i25.i.i.i.i

if.end32.i25.i.i.i.i:                             ; preds = %if.then.i20.i.i.i.i, %land.rhs5.i19.i.i.i.i.if.end32.i25.i.i.i.i_crit_edge, %land.rhs.i17.i.i.i.i.if.end32.i25.i.i.i.i_crit_edge, %if.end210.i.i.i.i.if.end32.i25.i.i.i.i_crit_edge
  %740 = ptrtoint ptr %s_fs_info.i.i.i950.i to i32
  call void @__asan_load4_noabort(i32 %740)
  %741 = load ptr, ptr %s_fs_info.i.i.i950.i, align 16
  %s_es.i53.i21.i.i.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %741, i32 0, i32 15
  %742 = ptrtoint ptr %s_es.i53.i21.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %742)
  %743 = load ptr, ptr %s_es.i53.i21.i.i.i.i, align 4
  %s_feature_ro_compat.i54.i22.i.i.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %743, i32 0, i32 30
  %744 = ptrtoint ptr %s_feature_ro_compat.i54.i22.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %744)
  %745 = load i32, ptr %s_feature_ro_compat.i54.i22.i.i.i.i, align 4
  %and.i55.i23.i.i.i.i = and i32 %745, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i55.i23.i.i.i.i)
  %cmp.i56.not.i24.i.i.i.i = icmp eq i32 %and.i55.i23.i.i.i.i, 0
  br i1 %cmp.i56.not.i24.i.i.i.i, label %if.end32.i25.i.i.i.i.if.end216.i.i.i.i_crit_edge, label %ext4_has_metadata_csum.exit30.i.i.i.i

if.end32.i25.i.i.i.i.if.end216.i.i.i.i_crit_edge: ; preds = %if.end32.i25.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end216.i.i.i.i

ext4_has_metadata_csum.exit30.i.i.i.i:            ; preds = %if.end32.i25.i.i.i.i
  %s_chksum_driver43.i26.i.i.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %741, i32 0, i32 121
  %746 = ptrtoint ptr %s_chksum_driver43.i26.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %746)
  %747 = load ptr, ptr %s_chksum_driver43.i26.i.i.i.i, align 4
  %cmp.i27.not.i.i.i.i = icmp eq ptr %747, null
  br i1 %cmp.i27.not.i.i.i.i, label %ext4_has_metadata_csum.exit30.i.i.i.i.if.end216.i.i.i.i_crit_edge, label %if.then213.i.i.i.i

ext4_has_metadata_csum.exit30.i.i.i.i.if.end216.i.i.i.i_crit_edge: ; preds = %ext4_has_metadata_csum.exit30.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end216.i.i.i.i

if.then213.i.i.i.i:                               ; preds = %ext4_has_metadata_csum.exit30.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call214.i.i.i.i = call i32 @ext4_superblock_csum(ptr noundef %643, ptr noundef %add.ptr.i.i31.i.i) #11
  %s_checksum215.i.i.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %add.ptr.i.i31.i.i, i32 0, i32 102
  %748 = ptrtoint ptr %s_checksum215.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %748)
  store i32 %call214.i.i.i.i, ptr %s_checksum215.i.i.i.i, align 4
  br label %if.end216.i.i.i.i

if.end216.i.i.i.i:                                ; preds = %if.then213.i.i.i.i, %ext4_has_metadata_csum.exit30.i.i.i.i.if.end216.i.i.i.i_crit_edge, %if.end32.i25.i.i.i.i.if.end216.i.i.i.i_crit_edge
  %749 = ptrtoint ptr %call191.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %749)
  %750 = load volatile i32, ptr %call191.i.i.i.i, align 4
  %and1.i.i.i.i.i.i = and i32 %750, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool.not.i.i18.i.i.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i18.i.i.i, label %if.then.i.i19.i.i.i, label %if.end216.i.i.i.i.set_buffer_uptodate.exit.i.i.i.i_crit_edge

if.end216.i.i.i.i.set_buffer_uptodate.exit.i.i.i.i_crit_edge: ; preds = %if.end216.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_buffer_uptodate.exit.i.i.i.i

if.then.i.i19.i.i.i:                              ; preds = %if.end216.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @_set_bit(i32 noundef 0, ptr noundef %call191.i.i.i.i) #11
  br label %set_buffer_uptodate.exit.i.i.i.i

set_buffer_uptodate.exit.i.i.i.i:                 ; preds = %if.then.i.i19.i.i.i, %if.end216.i.i.i.i.set_buffer_uptodate.exit.i.i.i.i_crit_edge
  call void @unlock_buffer(ptr noundef %call191.i.i.i.i) #11
  br i1 %tobool189.not.i.i.i.i, label %do.end229.i.i.i.i, label %if.then221.i.i.i.i

if.then221.i.i.i.i:                               ; preds = %set_buffer_uptodate.exit.i.i.i.i
  %call222.i.i.i.i = call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_update_backup_sb, i32 noundef 154, ptr noundef nonnull %handle.029.i.i.i, ptr noundef null, ptr noundef %call191.i.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call222.i.i.i.i)
  %tobool223.not.i.i.i.i = icmp eq i32 %call222.i.i.i.i, 0
  br i1 %tobool223.not.i.i.i.i, label %if.then221.i.i.i.i.if.end230.i.i.i.i_crit_edge, label %if.then221.i.i.i.i.out_bh.i.i.i.i_crit_edge

if.then221.i.i.i.i.out_bh.i.i.i.i_crit_edge:      ; preds = %if.then221.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_bh.i.i.i.i

if.then221.i.i.i.i.if.end230.i.i.i.i_crit_edge:   ; preds = %if.then221.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end230.i.i.i.i

do.end229.i.i.i.i:                                ; preds = %set_buffer_uptodate.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @mark_buffer_dirty(ptr noundef %call191.i.i.i.i) #11
  br label %if.end230.i.i.i.i

if.end230.i.i.i.i:                                ; preds = %do.end229.i.i.i.i, %if.then221.i.i.i.i.if.end230.i.i.i.i_crit_edge
  %call231.i.i.i.i = call i32 @sync_dirty_buffer(ptr noundef %call191.i.i.i.i) #11
  br label %out_bh.i.i.i.i

out_bh.i.i.i.i:                                   ; preds = %if.end230.i.i.i.i, %if.then221.i.i.i.i.out_bh.i.i.i.i_crit_edge, %if.then209.i.i.i.i, %do.end.i.i.i.i.out_bh.i.i.i.i_crit_edge
  %err.1.i.i.i.i = phi i32 [ %call198.i.i.i.i, %do.end.i.i.i.i.out_bh.i.i.i.i_crit_edge ], [ -74, %if.then209.i.i.i.i ], [ %call222.i.i.i.i, %if.then221.i.i.i.i.out_bh.i.i.i.i_crit_edge ], [ %call231.i.i.i.i, %if.end230.i.i.i.i ]
  %tobool.not.i31.i.i.i.i = icmp eq ptr %call191.i.i.i.i, null
  br i1 %tobool.not.i31.i.i.i.i, label %out_bh.i.i.i.i.brelse.exit.i.i.i.i_crit_edge, label %if.then.i32.i.i.i.i

out_bh.i.i.i.i.brelse.exit.i.i.i.i_crit_edge:     ; preds = %out_bh.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %brelse.exit.i.i.i.i

if.then.i32.i.i.i.i:                              ; preds = %out_bh.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__brelse(ptr noundef nonnull %call191.i.i.i.i) #11
  br label %brelse.exit.i.i.i.i

brelse.exit.i.i.i.i:                              ; preds = %if.then.i32.i.i.i.i, %out_bh.i.i.i.i.brelse.exit.i.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1.i.i.i.i)
  %tobool233.not.i.i.i.i = icmp eq i32 %err.1.i.i.i.i, 0
  br i1 %tobool233.not.i.i.i.i, label %brelse.exit.i.i.i.i.if.end22.i.i.i_crit_edge, label %if.then234.i.i.i.i

brelse.exit.i.i.i.i.if.end22.i.i.i_crit_edge:     ; preds = %brelse.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22.i.i.i

if.then234.i.i.i.i:                               ; preds = %brelse.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__ext4_std_error(ptr noundef %643, ptr noundef nonnull @__func__.ext4_update_backup_sb, i32 noundef 165, i32 noundef %err.1.i.i.i.i) #11
  br label %ext4_update_backup_sb.exit.i.i.i

ext4_update_backup_sb.exit.i.i.i:                 ; preds = %if.then234.i.i.i.i, %if.then193.i.i.i.i
  %retval.0.i.i.i.i = phi i32 [ %706, %if.then193.i.i.i.i ], [ %err.1.i.i.i.i, %if.then234.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i.i.i)
  %cmp17.i.i.i = icmp slt i32 %retval.0.i.i.i.i, 0
  br i1 %cmp17.i.i.i, label %if.then18.i.i.i, label %ext4_update_backup_sb.exit.i.i.i.if.end22.i.i.i_crit_edge

ext4_update_backup_sb.exit.i.i.i.if.end22.i.i.i_crit_edge: ; preds = %ext4_update_backup_sb.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22.i.i.i

if.then18.i.i.i:                                  ; preds = %ext4_update_backup_sb.exit.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -74, i32 %retval.0.i.i.i.i)
  %cmp19.i.i.i = icmp eq i32 %retval.0.i.i.i.i, -74
  br i1 %cmp19.i.i.i, label %if.then18.i.i.i.next_grp.i.i.i_crit_edge, label %if.then18.i.i.i.out_journal.i.i.i_crit_edge

if.then18.i.i.i.out_journal.i.i.i_crit_edge:      ; preds = %if.then18.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_journal.i.i.i

if.then18.i.i.i.next_grp.i.i.i_crit_edge:         ; preds = %if.then18.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %next_grp.i.i.i

if.end22.i.i.i:                                   ; preds = %ext4_update_backup_sb.exit.i.i.i.if.end22.i.i.i_crit_edge, %brelse.exit.i.i.i.i.if.end22.i.i.i_crit_edge, %if.end15.i.i.i.if.end22.i.i.i_crit_edge
  %retval.0.i26.i.i.i = phi i32 [ %retval.0.i.i.i.i, %ext4_update_backup_sb.exit.i.i.i.if.end22.i.i.i_crit_edge ], [ 1, %brelse.exit.i.i.i.i.if.end22.i.i.i_crit_edge ], [ 0, %if.end15.i.i.i.if.end22.i.i.i_crit_edge ]
  %add.i.i.i = add i32 %retval.0.i26.i.i.i, %i.031.i.i.i
  %tobool23.not.i.i.i = icmp eq ptr %handle.029.i.i.i, null
  br i1 %tobool23.not.i.i.i, label %if.end22.i.i.i.next_grp.i.i.i_crit_edge, label %land.lhs.true.i.i956.i

if.end22.i.i.i.next_grp.i.i.i_crit_edge:          ; preds = %if.end22.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %next_grp.i.i.i

land.lhs.true.i.i956.i:                           ; preds = %if.end22.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add.i.i.i)
  %cmp24.i.i.i = icmp sgt i32 %add.i.i.i, 1
  br i1 %cmp24.i.i.i, label %if.then25.i.i.i, label %land.lhs.true.i.i956.i.next_grp.i.i.i_crit_edge

land.lhs.true.i.i956.i.next_grp.i.i.i_crit_edge:  ; preds = %land.lhs.true.i.i956.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %next_grp.i.i.i

if.then25.i.i.i:                                  ; preds = %land.lhs.true.i.i956.i
  %call26.i.i.i = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_update_superblocks_fn, i32 noundef 251, ptr noundef nonnull %handle.029.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i.i.i)
  %tobool27.not.i.i.i = icmp eq i32 %call26.i.i.i, 0
  br i1 %tobool27.not.i.i.i, label %if.then25.i.i.i.next_grp.i.i.i_crit_edge, label %if.then25.i.i.i.out.i.i.i_crit_edge

if.then25.i.i.i.out.i.i.i_crit_edge:              ; preds = %if.then25.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i.i.i

if.then25.i.i.i.next_grp.i.i.i_crit_edge:         ; preds = %if.then25.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %next_grp.i.i.i

next_grp.i.i.i:                                   ; preds = %if.then25.i.i.i.next_grp.i.i.i_crit_edge, %land.lhs.true.i.i956.i.next_grp.i.i.i_crit_edge, %if.end22.i.i.i.next_grp.i.i.i_crit_edge, %if.then18.i.i.i.next_grp.i.i.i_crit_edge, %while.body.i.i.i.next_grp.i.i.i_crit_edge
  %handle.1.i.i.i = phi ptr [ %handle.029.i.i.i, %while.body.i.i.i.next_grp.i.i.i_crit_edge ], [ %handle.029.i.i.i, %if.then18.i.i.i.next_grp.i.i.i_crit_edge ], [ %handle.029.i.i.i, %land.lhs.true.i.i956.i.next_grp.i.i.i_crit_edge ], [ null, %if.end22.i.i.i.next_grp.i.i.i_crit_edge ], [ null, %if.then25.i.i.i.next_grp.i.i.i_crit_edge ]
  %i.1.i.i.i = phi i32 [ %i.031.i.i.i, %while.body.i.i.i.next_grp.i.i.i_crit_edge ], [ %i.031.i.i.i, %if.then18.i.i.i.next_grp.i.i.i_crit_edge ], [ %add.i.i.i, %land.lhs.true.i.i956.i.next_grp.i.i.i_crit_edge ], [ %add.i.i.i, %if.end22.i.i.i.next_grp.i.i.i_crit_edge ], [ %add.i.i.i, %if.then25.i.i.i.next_grp.i.i.i_crit_edge ]
  %call31.i.i.i = call i32 @ext4_list_backups(ptr noundef %643, ptr noundef nonnull %three.i.i.i, ptr noundef nonnull %five.i.i.i, ptr noundef nonnull %seven.i.i.i) #11
  %cmp.i.i957.i = icmp ult i32 %call31.i.i.i, %693
  br i1 %cmp.i.i957.i, label %next_grp.i.i.i.while.body.i.i.i_crit_edge, label %next_grp.i.i.i.out_journal.i.i.i_crit_edge

next_grp.i.i.i.out_journal.i.i.i_crit_edge:       ; preds = %next_grp.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_journal.i.i.i

next_grp.i.i.i.while.body.i.i.i_crit_edge:        ; preds = %next_grp.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.i.i

out_journal.i.i.i:                                ; preds = %next_grp.i.i.i.out_journal.i.i.i_crit_edge, %if.then18.i.i.i.out_journal.i.i.i_crit_edge, %if.end10.i.i.i.out_journal.i.i.i_crit_edge, %if.then9.i.i.i
  %handle.2.i.i.i = phi ptr [ %call3.i.i.i, %if.then9.i.i.i ], [ %call3.i.i.i, %if.end10.i.i.i.out_journal.i.i.i_crit_edge ], [ %handle.029.i.i.i, %if.then18.i.i.i.out_journal.i.i.i_crit_edge ], [ %handle.1.i.i.i, %next_grp.i.i.i.out_journal.i.i.i_crit_edge ]
  %err.2.i.i.i = phi i32 [ %err.06.i.i.i.i, %if.then9.i.i.i ], [ 0, %if.end10.i.i.i.out_journal.i.i.i_crit_edge ], [ %retval.0.i.i.i.i, %if.then18.i.i.i.out_journal.i.i.i_crit_edge ], [ 0, %next_grp.i.i.i.out_journal.i.i.i_crit_edge ]
  %tobool32.not.i.i.i = icmp eq ptr %handle.2.i.i.i, null
  br i1 %tobool32.not.i.i.i, label %out_journal.i.i.i.out.i.i.i_crit_edge, label %if.then33.i.i.i

out_journal.i.i.i.out.i.i.i_crit_edge:            ; preds = %out_journal.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i.i.i

if.then33.i.i.i:                                  ; preds = %out_journal.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call34.i.i.i = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_update_superblocks_fn, i32 noundef 262, ptr noundef nonnull %handle.2.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i.i.i)
  %tobool35.not.i.i.i = icmp ne i32 %call34.i.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2.i.i.i)
  %tobool37.not.i.i.i = icmp eq i32 %err.2.i.i.i, 0
  %or.cond.i.i.i = select i1 %tobool35.not.i.i.i, i1 %tobool37.not.i.i.i, i1 false
  %spec.select1.i.i.i = select i1 %or.cond.i.i.i, i32 %call34.i.i.i, i32 %err.2.i.i.i
  br label %out.i.i.i

out.i.i.i:                                        ; preds = %if.then33.i.i.i, %out_journal.i.i.i.out.i.i.i_crit_edge, %if.then25.i.i.i.out.i.i.i_crit_edge, %if.then5.i.i.i
  %err.3.i.i.i = phi i32 [ %663, %if.then5.i.i.i ], [ %err.2.i.i.i, %out_journal.i.i.i.out.i.i.i_crit_edge ], [ %spec.select1.i.i.i, %if.then33.i.i.i ], [ %call26.i.i.i, %if.then25.i.i.i.out.i.i.i_crit_edge ]
  %call.i.i20.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %s_ext4_flags.i.i951.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !110
  call void @llvm.prefetch.p0(ptr %s_ext4_flags.i.i951.i, i32 1, i32 3, i32 1) #11
  %751 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %s_ext4_flags.i.i951.i, ptr %s_ext4_flags.i.i951.i, i32 1, ptr elementtype(i32) %s_ext4_flags.i.i951.i) #11, !srcloc !111
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !112
  br label %ext4_update_superblocks_fn.exit.i.i

ext4_update_superblocks_fn.exit.i.i:              ; preds = %out.i.i.i, %if.then.i.i953.i
  %retval.0.i.i.i = phi i32 [ -16, %if.then.i.i953.i ], [ %err.3.i.i.i, %out.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %seven.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %five.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %three.i.i.i) #11
  call void @mnt_drop_write_file(ptr noundef %filp) #11
  br label %ext4_ioctl_setlabel.exit.i

ext4_ioctl_setlabel.exit.i:                       ; preds = %ext4_update_superblocks_fn.exit.i.i, %if.end8.i949.i.ext4_ioctl_setlabel.exit.i_crit_edge, %if.end4.i947.i.ext4_ioctl_setlabel.exit.i_crit_edge, %if.then11.i.i.i945.i, %sw.bb428.i.ext4_ioctl_setlabel.exit.i_crit_edge
  %retval.0.i958.i = phi i32 [ %retval.0.i.i.i, %ext4_update_superblocks_fn.exit.i.i ], [ -1, %sw.bb428.i.ext4_ioctl_setlabel.exit.i_crit_edge ], [ -22, %if.end4.i947.i.ext4_ioctl_setlabel.exit.i_crit_edge ], [ %call10.i.i, %if.end8.i949.i.ext4_ioctl_setlabel.exit.i_crit_edge ], [ -14, %if.then11.i.i.i945.i ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %new_label.i.i) #11
  br label %__ext4_ioctl.exit

__ext4_ioctl.exit:                                ; preds = %ext4_ioctl_setlabel.exit.i, %ext4_ioctl_getlabel.exit.i, %ext4_ioctl_checkpoint.exit.i, %if.end421.i, %sw.bb418.i.__ext4_ioctl.exit_crit_edge, %if.end416.i, %sw.bb413.i.__ext4_ioctl.exit_crit_edge, %if.end411.i, %sw.bb408.i.__ext4_ioctl.exit_crit_edge, %sw.epilog.i.i, %if.end12.i.i.__ext4_ioctl.exit_crit_edge, %if.end8.i.i.__ext4_ioctl.exit_crit_edge, %if.end6.i.i.__ext4_ioctl.exit_crit_edge, %if.end.i869.i.__ext4_ioctl.exit_crit_edge, %sw.bb406.i.__ext4_ioctl.exit_crit_edge, %ext4_ioctl_get_es_cache.exit.i, %sw.bb368.i, %if.end367.i, %sw.bb364.i.__ext4_ioctl.exit_crit_edge, %if.end362.i, %sw.bb359.i.__ext4_ioctl.exit_crit_edge, %if.end357.i, %sw.bb354.i.__ext4_ioctl.exit_crit_edge, %if.end352.i, %sw.bb349.i.__ext4_ioctl.exit_crit_edge, %if.end347.i, %sw.bb344.i.__ext4_ioctl.exit_crit_edge, %if.end342.i, %sw.bb339.i.__ext4_ioctl.exit_crit_edge, %if.end337.i, %sw.bb334.i.__ext4_ioctl.exit_crit_edge, %if.end332.i, %sw.bb329.i.__ext4_ioctl.exit_crit_edge, %copy_to_user.exit743.i, %if.end.i.i738.i.__ext4_ioctl.exit_crit_edge, %if.end317.i.__ext4_ioctl.exit_crit_edge, %pwsalt_err_exit.i.__ext4_ioctl.exit_crit_edge, %if.then286.i.__ext4_ioctl.exit_crit_edge, %sw.bb275.i.__ext4_ioctl.exit_crit_edge, %if.end273.i, %sw.bb270.i.__ext4_ioctl.exit_crit_edge, %sw.bb268.i, %cleanup265.i, %cleanup230.i, %swap_inode_boot_loader.exit, %if.end174.i.__ext4_ioctl.exit_crit_edge, %sw.bb168.i.__ext4_ioctl.exit_crit_edge, %if.end165.i, %if.end161.i.__ext4_ioctl.exit_crit_edge, %sw.bb157.i.__ext4_ioctl.exit_crit_edge, %if.end154.i, %if.end150.i.__ext4_ioctl.exit_crit_edge, %sw.bb146.i.__ext4_ioctl.exit_crit_edge, %cleanup145.i, %cleanup136.i, %group_extend_out.i, %sw.bb47.i.__ext4_ioctl.exit_crit_edge, %cleanup.i, %sw.bb3.i, %ext4_ioc_getfsmap.exit.i, %entry.__ext4_ioctl.exit_crit_edge
  %retval.10.i = phi i32 [ %retval.0.i958.i, %ext4_ioctl_setlabel.exit.i ], [ %637, %ext4_ioctl_getlabel.exit.i ], [ %retval.0.i913.i, %ext4_ioctl_checkpoint.exit.i ], [ %call422.i, %if.end421.i ], [ %call417.i, %if.end416.i ], [ %call412.i, %if.end411.i ], [ %retval.0.i863.i, %ext4_ioctl_get_es_cache.exit.i ], [ %501, %sw.bb368.i ], [ 0, %if.end367.i ], [ %call363.i, %if.end362.i ], [ %call358.i, %if.end357.i ], [ %call353.i, %if.end352.i ], [ %call348.i, %if.end347.i ], [ %call343.i, %if.end342.i ], [ %call338.i, %if.end337.i ], [ %call333.i, %if.end332.i ], [ %call274.i, %if.end273.i ], [ %call269.i, %sw.bb268.i ], [ %retval.8.i, %cleanup265.i ], [ %retval.7.i, %cleanup230.i ], [ %retval.3.i, %cleanup145.i ], [ %retval.2.i, %cleanup136.i ], [ %retval.0.i, %cleanup.i ], [ %51, %sw.bb3.i ], [ %retval.0.i.i, %ext4_ioc_getfsmap.exit.i ], [ %err48.1.i, %group_extend_out.i ], [ %call49.i, %sw.bb47.i.__ext4_ioctl.exit_crit_edge ], [ %call155.i, %if.end154.i ], [ -13, %sw.bb146.i.__ext4_ioctl.exit_crit_edge ], [ %call151.i, %if.end150.i.__ext4_ioctl.exit_crit_edge ], [ %call166.i, %if.end165.i ], [ -13, %sw.bb157.i.__ext4_ioctl.exit_crit_edge ], [ %call162.i, %if.end161.i.__ext4_ioctl.exit_crit_edge ], [ %retval.0.i45, %swap_inode_boot_loader.exit ], [ -9, %sw.bb168.i.__ext4_ioctl.exit_crit_edge ], [ %call175.i, %if.end174.i.__ext4_ioctl.exit_crit_edge ], [ -95, %sw.bb270.i.__ext4_ioctl.exit_crit_edge ], [ -95, %sw.bb275.i.__ext4_ioctl.exit_crit_edge ], [ %call287.i, %if.then286.i.__ext4_ioctl.exit_crit_edge ], [ %err276.1.i, %pwsalt_err_exit.i.__ext4_ioctl.exit_crit_edge ], [ -95, %sw.bb329.i.__ext4_ioctl.exit_crit_edge ], [ -95, %sw.bb334.i.__ext4_ioctl.exit_crit_edge ], [ -95, %sw.bb339.i.__ext4_ioctl.exit_crit_edge ], [ -95, %sw.bb344.i.__ext4_ioctl.exit_crit_edge ], [ -95, %sw.bb349.i.__ext4_ioctl.exit_crit_edge ], [ -95, %sw.bb354.i.__ext4_ioctl.exit_crit_edge ], [ -95, %sw.bb359.i.__ext4_ioctl.exit_crit_edge ], [ -13, %sw.bb364.i.__ext4_ioctl.exit_crit_edge ], [ -95, %sw.bb408.i.__ext4_ioctl.exit_crit_edge ], [ -95, %sw.bb413.i.__ext4_ioctl.exit_crit_edge ], [ -95, %sw.bb418.i.__ext4_ioctl.exit_crit_edge ], [ -25, %entry.__ext4_ioctl.exit_crit_edge ], [ 0, %sw.epilog.i.i ], [ -1, %sw.bb406.i.__ext4_ioctl.exit_crit_edge ], [ -14, %if.end.i869.i.__ext4_ioctl.exit_crit_edge ], [ -22, %if.end6.i.i.__ext4_ioctl.exit_crit_edge ], [ 0, %if.end8.i.i.__ext4_ioctl.exit_crit_edge ], [ -22, %if.end12.i.i.__ext4_ioctl.exit_crit_edge ], [ -14, %if.end317.i.__ext4_ioctl.exit_crit_edge ], [ -14, %if.end.i.i738.i.__ext4_ioctl.exit_crit_edge ], [ %spec.select988.i, %copy_to_user.exit743.i ]
  ret i32 %retval.10.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ext4_empty_dir(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_dio_wait(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_reserve_inode_write(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ext4_dax_dontcache(ptr noundef %inode, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %inode, align 8
  %2 = and i16 %1, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %2)
  %cmp = icmp eq i16 %2, 16384
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt2 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 18
  %7 = ptrtoint ptr %s_mount_opt2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_mount_opt2, align 16
  %and2 = and i32 %8, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %i_flags = getelementptr i8, ptr %inode, i32 -380
  %9 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i_flags, align 4
  %xor = xor i32 %10, %flags
  %and9 = and i32 %xor, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %lor.lhs.false.cleanup_crit_edge, label %if.then11

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then11:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @d_mark_dontcache(ptr noundef %inode) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_set_inode_flags(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_mark_iloc_dirty(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_journal_stop(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_change_inode_journal_flag(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_ext_migrate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_ind_migrate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_write_and_wait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ext4_journal_start_sb(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_mark_dontcache(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kprojid(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_get_inode_loc(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_expand_extra_isize(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dquot_initialize(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dqget(ptr noundef, [2 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__dquot_transfer(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dqput(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @inode_owner_or_capable(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_warning(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mnt_want_write_file(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mnt_drop_write_file(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_resize_begin(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_msg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_group_extend(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @jbd2_journal_lock_updates(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_journal_flush(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @jbd2_journal_unlock_updates(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_resize_end(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_move_extents(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_alloc_da_blocks(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_resize_fs(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_fc_mark_ineligible(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_register_li_request(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_trim_fs(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_ext_precache(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fscrypt_ioctl_set_policy(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_journal_get_write_access(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @generate_random_uuid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_superblock_csum_set(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_buffer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_handle_dirty_metadata(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fscrypt_ioctl_get_policy(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fscrypt_ioctl_get_policy_ex(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fscrypt_ioctl_add_key(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fscrypt_ioctl_remove_key(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fscrypt_ioctl_remove_key_all_users(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fscrypt_ioctl_get_key_status(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fscrypt_ioctl_get_nonce(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_clear_inode_es(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsverity_ioctl_enable(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsverity_ioctl_measure(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsverity_ioctl_read_metadata(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memchr_inv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_fsmap_to_internal(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ext4_getfsmap_low_key(ptr noundef %sb, ptr noundef %fsmap) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_getfsmap_low_key, i32 0, i32 1), ptr blockaddress(@trace_ext4_getfsmap_low_key, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !113

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !79) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !89

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !79) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !114
  %call42 = tail call i32 @__traceiter_ext4_getfsmap_low_key(ptr noundef null, ptr noundef %sb, ptr noundef %fsmap) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !115
  %13 = tail call i32 @llvm.read_register.i32(metadata !79) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !79) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !89

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !79) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !116
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_getfsmap_low_key, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_getfsmap_low_key, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ext4_getfsmap_low_key.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_ext4_getfsmap_low_key.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 2538, ptr noundef nonnull @.str.8) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !117
  %31 = tail call i32 @llvm.read_register.i32(metadata !79) #11
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
define internal fastcc void @trace_ext4_getfsmap_high_key(ptr noundef %sb, ptr noundef %fsmap) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_getfsmap_high_key, i32 0, i32 1), ptr blockaddress(@trace_ext4_getfsmap_high_key, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !113

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !79) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !89

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !79) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !118
  %call42 = tail call i32 @__traceiter_ext4_getfsmap_high_key(ptr noundef null, ptr noundef %sb, ptr noundef %fsmap) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !119
  %13 = tail call i32 @llvm.read_register.i32(metadata !79) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !79) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !89

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !79) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !116
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_getfsmap_high_key, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_getfsmap_high_key, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ext4_getfsmap_high_key.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_ext4_getfsmap_high_key.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 2539, ptr noundef nonnull @.str.8) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !117
  %31 = tail call i32 @llvm.read_register.i32(metadata !79) #11
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
declare dso_local i32 @ext4_getfsmap(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ext4_getfsmap_format(ptr noundef %xfm, ptr nocapture noundef %priv) #0 align 64 {
entry:
  %fm = alloca %struct.fsmap, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %fm) #11
  %0 = call ptr @memset(ptr %fm, i32 255, i32 64)
  %1 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv, align 4
  tail call fastcc void @trace_ext4_getfsmap_mapping(ptr noundef %2, ptr noundef %xfm)
  %fmr_flags = getelementptr inbounds %struct.ext4_fsmap, ptr %xfm, i32 0, i32 2
  %3 = ptrtoint ptr %fmr_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fmr_flags, align 4
  %gi_last_flags = getelementptr inbounds %struct.getfsmap_info, ptr %priv, i32 0, i32 3
  %5 = ptrtoint ptr %gi_last_flags to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %gi_last_flags, align 4
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 4
  call void @ext4_fsmap_from_internal(ptr noundef %7, ptr noundef nonnull %fm, ptr noundef %xfm) #11
  %gi_data = getelementptr inbounds %struct.getfsmap_info, ptr %priv, i32 0, i32 1
  %8 = ptrtoint ptr %gi_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gi_data, align 4
  %gi_idx = getelementptr inbounds %struct.getfsmap_info, ptr %priv, i32 0, i32 2
  %10 = ptrtoint ptr %gi_idx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %gi_idx, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %gi_idx, align 4
  %arrayidx = getelementptr %struct.fsmap_head, ptr %9, i32 0, i32 6, i32 %11
  call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 174) #11
  %call.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %entry.copy_to_user.exit.thread_crit_edge, label %if.end.i.i

entry.copy_to_user.exit.thread_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit.thread

if.end.i.i:                                       ; preds = %entry
  %12 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arrayidx, i32 64, i32 -1226833920) #14, !srcloc !97
  %asmresult.i.i = extractvalue { i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.copy_to_user.exit.thread_crit_edge

if.end.i.i.copy_to_user.exit.thread_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit.thread

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %fm, i32 noundef 64) #11
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %arrayidx, ptr noundef nonnull %fm, i32 noundef 64) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -14
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %copy_to_user.exit, %if.end.i.i.copy_to_user.exit.thread_crit_edge, %entry.copy_to_user.exit.thread_crit_edge
  %13 = phi i32 [ -14, %entry.copy_to_user.exit.thread_crit_edge ], [ -14, %if.end.i.i.copy_to_user.exit.thread_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %fm) #11
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_getfsmap_low_key(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_getfsmap_high_key(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ext4_getfsmap_mapping(ptr noundef %sb, ptr noundef %fsmap) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_getfsmap_mapping, i32 0, i32 1), ptr blockaddress(@trace_ext4_getfsmap_mapping, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !113

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !79) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !89

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !79) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !120
  %call42 = tail call i32 @__traceiter_ext4_getfsmap_mapping(ptr noundef null, ptr noundef %sb, ptr noundef %fsmap) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !121
  %13 = tail call i32 @llvm.read_register.i32(metadata !79) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !79) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !89

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !79) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !116
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_getfsmap_mapping, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_getfsmap_mapping, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ext4_getfsmap_mapping.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_ext4_getfsmap_mapping.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 2540, ptr noundef nonnull @.str.8) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !117
  %31 = tail call i32 @llvm.read_register.i32(metadata !79) #11
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
declare dso_local void @ext4_fsmap_from_internal(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_getfsmap_mapping(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fdget(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_group_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ext4_iget(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_two_nondirectories(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_double_down_write_data_sem(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i_size_write(ptr noundef %inode, i64 noundef %i_size) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = tail call i32 @llvm.read_register.i32(metadata !79) #11
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !122
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %entry.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

entry.__seqprop_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %entry
  %5 = tail call i32 @llvm.read_register.i32(metadata !79) #11
  %and.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %8, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !123
  %9 = tail call i32 @llvm.read_register.i32(metadata !79) #11
  %and.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  %add.i28 = add i32 %14, ptrtoint (ptr @lockdep_recursion to i32)
  %15 = inttoptr i32 %add.i28 to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !124
  %18 = tail call i32 @llvm.read_register.i32(metadata !79) #11
  %and.i.i.i7.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i7.i to ptr
  %preempt_count.i.i8.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i8.i, align 4
  %sub.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool20.not.i = icmp eq i32 %17, 0
  br i1 %tobool20.not.i, label %land.rhs.i, label %land.lhs.true.i.__seqprop_assert.exit_crit_edge

land.lhs.true.i.__seqprop_assert.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !79) #11
  %and.i.i.i29 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i29 to ptr
  %preempt_count.i.i30 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i30 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i = icmp eq i32 %25, 0
  br i1 %cmp.i, label %land.rhs22.i, label %land.rhs.i.__seqprop_assert.exit_crit_edge

land.rhs.i.__seqprop_assert.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %26 = tail call i32 @llvm.read_register.i32(metadata !79) #11
  %and.i.i.i9.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %29, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !125
  %30 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cpu.i, align 4
  %arrayidx46.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %31
  %32 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx46.i, align 4
  %add47.i = add i32 %33, ptrtoint (ptr @hardirqs_enabled to i32)
  %34 = inttoptr i32 %add47.i to ptr
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %34, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !126
  %37 = tail call i32 @llvm.read_register.i32(metadata !79) #11
  %and.i.i.i12.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i12.i to ptr
  %preempt_count.i.i13.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i13.i, align 4
  %sub.i14.i = add i32 %40, -1
  store volatile i32 %sub.i14.i, ptr %preempt_count.i.i13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool54.not.i = icmp eq i32 %36, 0
  br i1 %tobool54.not.i, label %land.rhs22.i.__seqprop_assert.exit_crit_edge, label %land.rhs58.i

land.rhs22.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__seqprop_assert.exit

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !89

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 271, i32 noundef 9, ptr noundef null) #11
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %entry.__seqprop_assert.exit_crit_edge
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %41 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %i_size_seqcount, align 4
  %inc.i.i.i = add i32 %42, 1
  store i32 %inc.i.i.i, ptr %i_size_seqcount, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !127
  %dep_map.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %43 = tail call ptr @llvm.returnaddress(i32 0) #11
  %44 = ptrtoint ptr %43 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %44) #11
  %i_size8 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %45 = ptrtoint ptr %i_size8 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %i_size, ptr %i_size8, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %44) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !128
  %46 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %i_size_seqcount, align 4
  %inc.i.i = add i32 %47, 1
  store i32 %inc.i.i, ptr %i_size_seqcount, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !129
  %48 = tail call i32 @llvm.read_register.i32(metadata !79) #11
  %and.i.i.i26 = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i26 to ptr
  %preempt_count.i.i27 = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i.i27 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i.i27, align 4
  %sub.i = add i32 %51, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i27, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_ext_tree_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @swap_inode_data(ptr noundef %inode1, ptr noundef %inode2) unnamed_addr #0 align 64 {
entry:
  %__tmp9 = alloca %struct.timespec64, align 8
  %__tmp16 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %inode1, i32 -464
  %add.ptr4 = getelementptr i8, ptr %inode2, i32 -464
  %i_version = getelementptr inbounds %struct.inode, ptr %inode1, i32 0, i32 38
  %0 = ptrtoint ptr %i_version to i32
  call void @__asan_load8_noabort(i32 %0)
  %__tmp.sroa.0.0.copyload = load i64, ptr %i_version, align 8
  %i_version6 = getelementptr inbounds %struct.inode, ptr %inode2, i32 0, i32 38
  %1 = ptrtoint ptr %i_version6 to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %i_version6, align 8
  store i64 %2, ptr %i_version, align 8
  store i64 %__tmp.sroa.0.0.copyload, ptr %i_version6, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %__tmp9)
  %i_atime = getelementptr inbounds %struct.inode, ptr %inode1, i32 0, i32 15
  %3 = call ptr @memcpy(ptr %__tmp9, ptr %i_atime, i32 16)
  %i_atime11 = getelementptr inbounds %struct.inode, ptr %inode2, i32 0, i32 15
  %4 = call ptr @memcpy(ptr %i_atime, ptr %i_atime11, i32 16)
  %5 = call ptr @memcpy(ptr %i_atime11, ptr %__tmp9, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %__tmp9)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %__tmp16)
  %i_mtime = getelementptr inbounds %struct.inode, ptr %inode1, i32 0, i32 16
  %6 = call ptr @memcpy(ptr %__tmp16, ptr %i_mtime, i32 16)
  %i_mtime18 = getelementptr inbounds %struct.inode, ptr %inode2, i32 0, i32 16
  %7 = call ptr @memcpy(ptr %i_mtime, ptr %i_mtime18, i32 16)
  %8 = call ptr @memcpy(ptr %i_mtime18, ptr %__tmp16, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %__tmp16)
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %entry
  %len.addr.03.i = phi i32 [ 60, %entry ], [ %dec.i, %do.body.i.do.body.i_crit_edge ]
  %bp.02.i = phi ptr [ %add.ptr4, %entry ], [ %incdec.ptr1.i, %do.body.i.do.body.i_crit_edge ]
  %ap.01.i = phi ptr [ %add.ptr, %entry ], [ %incdec.ptr.i, %do.body.i.do.body.i_crit_edge ]
  %dec.i = add nsw i32 %len.addr.03.i, -1
  %9 = ptrtoint ptr %ap.01.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ap.01.i, align 1
  %11 = ptrtoint ptr %bp.02.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bp.02.i, align 1
  store i8 %12, ptr %ap.01.i, align 1
  store i8 %10, ptr %bp.02.i, align 1
  %incdec.ptr.i = getelementptr i8, ptr %ap.01.i, i32 1
  %incdec.ptr1.i = getelementptr i8, ptr %bp.02.i, i32 1
  %cmp.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i, label %memswap.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

memswap.exit:                                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %i_flags = getelementptr i8, ptr %inode1, i32 -380
  %13 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %i_flags, align 4
  %and = and i32 %14, 786432
  %i_flags24 = getelementptr i8, ptr %inode2, i32 -380
  %15 = ptrtoint ptr %i_flags24 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %i_flags24, align 4
  %and25 = and i32 %16, 786432
  %and27 = and i32 %14, -786433
  %or = or i32 %and25, %and27
  store i32 %or, ptr %i_flags, align 4
  %17 = load i32, ptr %i_flags24, align 4
  %and30 = and i32 %17, -786433
  %or31 = or i32 %and30, %and
  store i32 %or31, ptr %i_flags24, align 4
  %i_disksize = getelementptr i8, ptr %inode1, i32 -104
  %18 = ptrtoint ptr %i_disksize to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %i_disksize, align 8
  %i_disksize35 = getelementptr i8, ptr %inode2, i32 -104
  %20 = ptrtoint ptr %i_disksize35 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %i_disksize35, align 8
  store i64 %21, ptr %i_disksize, align 8
  store i64 %19, ptr %i_disksize35, align 8
  %call = tail call i32 @ext4_es_remove_extent(ptr noundef %inode1, i32 noundef 0, i32 noundef -1) #11
  %call40 = tail call i32 @ext4_es_remove_extent(ptr noundef %inode2, i32 noundef 0, i32 noundef -1) #11
  %call41 = tail call fastcc i64 @i_size_read(ptr noundef %inode1)
  %call42 = tail call fastcc i64 @i_size_read(ptr noundef %inode2)
  tail call fastcc void @i_size_write(ptr noundef %inode1, i64 noundef %call42)
  tail call fastcc void @i_size_write(ptr noundef %inode2, i64 noundef %call41)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_discard_preallocations(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_mark_inode_dirty(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_double_up_write_data_sem(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_two_nondirectories(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_es_remove_extent(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !130
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @trace_hardirqs_off() #11
  %1 = tail call ptr @llvm.returnaddress(i32 0) #11
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #11
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %2) #11
  tail call void @trace_hardirqs_on() #11
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %3 = tail call ptr @llvm.returnaddress(i32 0) #11
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #11
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %4) #11
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !131
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !132

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #11, !srcloc !133
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %seqcount_lockdep_reader_access.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !134
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !135
  %8 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount, align 4
  %and = and i32 %9, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %9, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !136
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !137
  %12 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount, align 4
  %cmp.i.i.not = icmp eq i32 %13, %.lcssa
  br i1 %cmp.i.i.not, label %do.end24, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.end24:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  ret i64 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dquot_free_space(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__dquot_alloc_space(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_buffer(ptr noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_get_es_cache(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ext4_shutdown(ptr noundef %sb, i32 noundef %flags) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_shutdown, i32 0, i32 1), ptr blockaddress(@trace_ext4_shutdown, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !113

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !79) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !89

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !79) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !138
  %call42 = tail call i32 @__traceiter_ext4_shutdown(ptr noundef null, ptr noundef %sb, i32 noundef %flags) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !139
  %13 = tail call i32 @llvm.read_register.i32(metadata !79) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !79) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !89

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !79) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !116
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_shutdown, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_shutdown, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ext4_shutdown.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_ext4_shutdown.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 2560, ptr noundef nonnull @.str.8) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !117
  %31 = tail call i32 @llvm.read_register.i32(metadata !79) #11
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
declare dso_local i32 @freeze_bdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thaw_bdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_force_commit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @jbd2_journal_abort(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_shutdown(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #9

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_get_group_number(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_list_backups(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ext4_update_sb(ptr noundef %sb, i64 noundef %fsblk, i32 noundef %flags) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_update_sb, i32 0, i32 1), ptr blockaddress(@trace_ext4_update_sb, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !113

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !79) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !89

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !79) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !140
  %call42 = tail call i32 @__traceiter_ext4_update_sb(ptr noundef null, ptr noundef %sb, i64 noundef %fsblk, i32 noundef %flags) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !141
  %13 = tail call i32 @llvm.read_register.i32(metadata !79) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !79) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !89

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !79) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !116
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_update_sb, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_update_sb, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ext4_update_sb.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_ext4_update_sb.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 2861, ptr noundef nonnull @.str.8) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !117
  %31 = tail call i32 @llvm.read_register.i32(metadata !79) #11
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
declare dso_local i32 @sync_dirty_buffer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_std_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_update_sb(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_bg_has_super(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ext4_sb_bread(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_superblock_csum(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind readnone }
attributes #15 = { cold nounwind }
attributes #16 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !15, !17, !19, !21, !22, !23, !24, !26, !27, !29, !30, !32, !33, !35, !36, !38, !40, !42, !44, !46, !47, !49, !51, !52, !54, !55, !57, !58, !59, !60, !61, !62, !64, !66, !68, !70, !72, !74, !75, !77}
!llvm.named.register.sp = !{!79}
!llvm.module.flags = !{!80, !81, !82, !83, !84, !85, !86, !87}
!llvm.ident = !{!88}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../fs/ext4/ext4.h", i32 3288, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__func__.ext4_ioctl_setflags, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/ext4/ioctl.c", i32 674, i32 2}
!5 = !{ptr @__func__.ext4_ioctl_setproject, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/ext4/ioctl.c", i32 786, i32 2}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/ext4/ioctl.c", i32 1163, i32 10}
!9 = !{ptr @__func__.__ext4_ioctl, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/ext4/ioctl.c", i32 1175, i32 4}
!11 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/ext4/ioctl.c", i32 1222, i32 4}
!14 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/ext4/ioctl.c", i32 1270, i32 4}
!17 = distinct !{null, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/ext4/ioctl.c", i32 1275, i32 4}
!19 = distinct !{null, !20, !"__already_done", i1 false, i1 false}
!20 = !{!"../include/trace/events/ext4.h", i32 2538, i32 1}
!21 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!22 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!23 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!26 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!27 = distinct !{null, !28, !"__already_done", i1 false, i1 false}
!28 = !{!"../include/trace/events/ext4.h", i32 2539, i32 1}
!29 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!30 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!31 = !{!"../include/trace/events/ext4.h", i32 2540, i32 1}
!32 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!35 = distinct !{null, !34, !"<string literal>", i1 false, i1 false}
!36 = distinct !{null, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!40 = !{ptr @__func__.swap_inode_boot_loader, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/ext4/ioctl.c", i32 369, i32 13}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/ext4/ioctl.c", i32 457, i32 3}
!44 = distinct !{null, !45, !"__already_done", i1 false, i1 false}
!45 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!46 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../include/linux/buffer_head.h", i32 366, i32 2}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/ext4/ioctl.c", i32 815, i32 2}
!51 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!52 = distinct !{null, !53, !"__already_done", i1 false, i1 false}
!53 = !{!"../include/trace/events/ext4.h", i32 2542, i32 1}
!54 = distinct !{null, !53, !"__warned", i1 false, i1 false}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/ext4/ioctl.c", i32 1082, i32 3}
!57 = !{ptr @ext4_ioctl_checkpoint._rs, !56, !"_rs", i1 false, i1 false}
!58 = !{ptr @__func__.ext4_ioctl_checkpoint, !56, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @ext4_ioctl_checkpoint._entry, !56, !"_entry", i1 false, i1 false}
!61 = !{ptr @ext4_ioctl_checkpoint._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.21, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/ext4/ioctl.c", i32 197, i32 3}
!64 = !{ptr @.str.22, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../fs/ext4/ioctl.c", i32 215, i32 3}
!66 = !{ptr @__func__.ext4_update_superblocks_fn, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/ext4/ioctl.c", i32 251, i32 10}
!68 = !{ptr @__func__.ext4_update_primary_sb, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/ext4/ioctl.c", i32 58, i32 8}
!70 = !{ptr @.str.23, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/ext4/ioctl.c", i32 70, i32 3}
!72 = distinct !{null, !73, !"__already_done", i1 false, i1 false}
!73 = !{!"../include/trace/events/ext4.h", i32 2840, i32 1}
!74 = distinct !{null, !73, !"__warned", i1 false, i1 false}
!75 = !{ptr @__func__.ext4_update_backup_sb, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/ext4/ioctl.c", i32 127, i32 9}
!77 = !{ptr @.str.24, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../fs/ext4/ioctl.c", i32 138, i32 3}
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
!89 = !{!"branch_weights", i32 2000, i32 1}
!90 = !{i64 2155147191, i64 2155147671, i64 2155147228, i64 2155147284, i64 2155147318, i64 2155147342, i64 2155147383, i64 2155147404, i64 2155147432, i64 2155147466}
!91 = !{i64 2155148833, i64 2155149313, i64 2155148870, i64 2155148926, i64 2155148960, i64 2155148984, i64 2155149025, i64 2155149046, i64 2155149074, i64 2155149108}
!92 = !{!"auto-init"}
!93 = !{i64 2152443691}
!94 = !{i64 4700265}
!95 = !{i64 4700462}
!96 = !{i64 2152185695}
!97 = !{i64 2152205391, i64 2152205416}
!98 = !{i64 2157867447, i64 2157867727, i64 2157868061, i64 2157868395}
!99 = !{i64 2157880604, i64 2157880884, i64 2157881218, i64 2157881552}
!100 = !{i64 2157892632, i64 2157892912, i64 2157893246, i64 2157893580}
!101 = !{!102}
!102 = distinct !{!102, !103, !"fdget: %agg.result"}
!103 = distinct !{!103, !"fdget"}
!104 = !{i64 2152204710, i64 2152204735}
!105 = !{i64 2148701089, i64 2148701121, i64 2148701150, i64 2148701184, i64 2148701215, i64 2148701238}
!106 = !{i64 2148790194}
!107 = !{i64 2157918831, i64 2157919111, i64 2157919445, i64 2157919779}
!108 = !{i64 2157844832, i64 2157845112, i64 2157845446, i64 2157845780}
!109 = !{i64 2155170195}
!110 = !{i64 2148789081}
!111 = !{i64 2148699476, i64 2148699508, i64 2148699537, i64 2148699571, i64 2148699602, i64 2148699625}
!112 = !{i64 2157802526}
!113 = !{i64 2148516829, i64 2148516834, i64 2148516847, i64 2148516891, i64 2148516925, i64 2148516946}
!114 = !{i64 2157473571}
!115 = !{i64 2157473794}
!116 = !{i64 2149513236}
!117 = !{i64 2149514272}
!118 = !{i64 2157490865}
!119 = !{i64 2157491090}
!120 = !{i64 2157508174}
!121 = !{i64 2157508397}
!122 = !{i64 2152536993}
!123 = !{i64 2150013298}
!124 = !{i64 2150018232}
!125 = !{i64 2150039950}
!126 = !{i64 2150044844}
!127 = !{i64 2150121371}
!128 = !{i64 2150121696}
!129 = !{i64 2152548855}
!130 = !{i64 1096911, i64 1096972}
!131 = !{i64 1099643}
!132 = !{!"branch_weights", i32 1, i32 2000}
!133 = !{i64 1099928}
!134 = !{i64 2152535062}
!135 = !{i64 2152534904}
!136 = !{i64 2152535232}
!137 = !{i64 2150121046}
!138 = !{i64 2157524905}
!139 = !{i64 2157525112}
!140 = !{i64 2157780178}
!141 = !{i64 2157780401}
