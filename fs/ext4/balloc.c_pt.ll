; ModuleID = '/llk/IR_all_yes/fs/ext4/balloc.c_pt.bc'
source_filename = "../fs/ext4/balloc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.72 }
%struct.atomic_t = type { i32 }
%union.anon.72 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hlist_bl_head = type { ptr }
%struct.hlist_node = type { ptr, ptr }
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
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.ext4_sb_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, i32, i64, %struct.atomic64_t, %struct.kuid_t, %struct.kgid_t, i16, i16, i32, i32, i32, i32, i32, i32, [4 x i32], i32, i32, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, ptr, ptr, %struct.kobject, %struct.completion, ptr, ptr, ptr, i32, %struct.mutex, %struct.list_head, %struct.ext4_orphan_info, i32, i32, i32, ptr, [3 x ptr], i32, i32, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.work_struct, %struct.atomic_t, %struct.rb_root, %struct.rwlock_t, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x %struct.atomic64_t], [4 x %struct.atomic64_t], [4 x %struct.atomic64_t], %struct.atomic_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, i32, i64, i32, i32, ptr, i32, ptr, %struct.timer_list, ptr, i32, ptr, i32, ptr, i32, %struct.shrinker, %struct.list_head, i32, %struct.ext4_es_stats, ptr, ptr, [120 x i8], %struct.spinlock, [1 x %struct.ext4_journal_trigger], %struct.ratelimit_state, %struct.ratelimit_state, %struct.ratelimit_state, %struct.atomic_t, %struct.atomic_t, %struct.fscrypt_dummy_policy, %struct.percpu_rw_semaphore, ptr, i64, i32, i32, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i64, ptr, i64, i32, i32, i32, i64, ptr, i64, %struct.work_struct, %struct.atomic_t, [2 x %struct.list_head], [2 x %struct.list_head], i32, %struct.spinlock, ptr, %struct.ext4_fc_stats, i32, i32, %struct.ext4_fc_replay_state, [8 x i8] }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ext4_orphan_info = type { i32, i32, ptr }
%struct.rb_root = type { ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.atomic64_t = type { i64 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ext4_es_stats = type { i32, %struct.percpu_counter, %struct.percpu_counter, i64, i64, %struct.percpu_counter, %struct.percpu_counter }
%struct.ext4_journal_trigger = type { %struct.jbd2_buffer_trigger_type, ptr }
%struct.jbd2_buffer_trigger_type = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.fscrypt_dummy_policy = type { ptr }
%struct.ext4_fc_stats = type { [10 x i32], i32, i32, i32, i32, i32, i64 }
%struct.ext4_fc_replay_state = type { i32, i32, i32, i32, i32, ptr, i32, i32, i32, ptr, i32, i32 }
%struct.ext4_super_block = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i16, i16, i32, i16, i16, i32, i32, i32, [16 x i8], [16 x i8], [64 x i8], i32, i8, i8, i16, [16 x i8], i32, i32, i32, [4 x i32], i8, i8, i16, i32, i32, i32, [17 x i32], i32, i32, i32, i16, i16, i32, i16, i16, i64, i32, i8, i8, i8, i8, i64, i32, i32, i64, i32, i32, i32, i32, i64, [32 x i8], i32, i32, i32, i32, i64, [32 x i8], [64 x i8], i32, i32, i32, [2 x i32], [4 x i8], [16 x i8], i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, [94 x i32], i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.ext4_group_desc = type { i32, i32, i32, i16, i16, i16, i16, i32, i16, i16, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i16, i16, i32 }
%struct.bgl_lock = type { %struct.spinlock, [84 x i8] }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.30 }
%struct.llist_node = type { ptr }
%union.anon.30 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.32 }
%union.anon.32 = type { %struct.anon.33 }
%struct.anon.33 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.37 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.37 = type { %struct.callback_head }
%struct.ext4_allocation_request = type { ptr, i32, i32, i32, i32, i64, i64, i64, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.75, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.76, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.77, ptr, %struct.address_space, %struct.list_head, %union.anon.78, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.75 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.76 = type { %struct.callback_head }
%union.anon.77 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.78 = type { ptr }

@__func__.ext4_get_group_desc = private unnamed_addr constant [20 x i8] c"ext4_get_group_desc\00", align 1
@.str = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"block_group >= groups_count - block_group = %u, groups_count = %u\00", [62 x i8] zeroinitializer }, align 32
@ext4_get_group_desc.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/ext4/balloc.c\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"Group descriptor not loaded - block_group = %u, group_desc = %u, desc = %u\00", [53 x i8] zeroinitializer }, align 32
@__func__.ext4_read_block_bitmap_nowait = private unnamed_addr constant [30 x i8] c"ext4_read_block_bitmap_nowait\00", align 1
@.str.4 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Invalid block bitmap block %llu in block_group %u\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"Cannot get buffer for block bitmap - block_group = %u, block_bitmap = %llu\00", [53 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Block bitmap for bg 0 marked uninitialized\00", [53 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to init block bitmap for group %u: %d\00", [51 x i8] zeroinitializer }, align 32
@__func__.ext4_wait_block_bitmap = private unnamed_addr constant [23 x i8] c"ext4_wait_block_bitmap\00", align 1
@.str.8 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"Cannot read block bitmap - block_group = %u, block_bitmap = %llu\00", [63 x i8] zeroinitializer }, align 32
@__func__.ext4_should_retry_alloc = private unnamed_addr constant [24 x i8] c"ext4_should_retry_alloc\00", align 1
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: retrying operation after ENOSPC\0A\00", [59 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/buffer_head.h\00", [36 x i8] zeroinitializer }, align 32
@ext4_has_metadata_csum.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/ext4/ext4.h\00", [17 x i8] zeroinitializer }, align 32
@ext4_init_block_bitmap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.1, i32 188, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\010Assertion failure in %s() at %s:%d: '%s'\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ext4_init_block_bitmap\00", [41 x i8] zeroinitializer }, align 32
@ext4_init_block_bitmap._entry_ptr = internal global ptr @ext4_init_block_bitmap._entry, section ".printk_index", align 4
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"buffer_locked(bh)\00", [46 x i8] zeroinitializer }, align 32
@__tracepoint_ext4_read_block_bitmap_load = external dso_local global %struct.tracepoint, align 4
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/trace/events/ext4.h\00", [36 x i8] zeroinitializer }, align 32
@trace_ext4_read_block_bitmap_load.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__func__.ext4_validate_block_bitmap = private unnamed_addr constant [27 x i8] c"ext4_validate_block_bitmap\00", align 1
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"bg %u: bad block bitmap checksum\00", [63 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"bg %u: block %llu: invalid block bitmap\00", [56 x i8] zeroinitializer }, align 32
@percpu_counter_batch = external dso_local local_unnamed_addr global i32, align 4
@ext4_get_group_info.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 276, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 284, i32 9 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 292, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 436, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 444, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 470, i32 4 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 482, i32 4 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 531, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 668, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 695, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 723, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant [31 x i8] c"../include/linux/buffer_head.h\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 366, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant [18 x i8] c"../fs/ext4/ext4.h\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 3288, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 188, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant [31 x i8] c"../include/trace/events/ext4.h\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 1338, i32 1 }
@___asan_gen_.83 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 108, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 390, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.89 = private constant [20 x i8] c"../fs/ext4/balloc.c\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 398, i32 3 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @ext4_init_block_bitmap._entry, ptr @ext4_init_block_bitmap._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_init_block_bitmap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_get_group_number(ptr nocapture noundef readonly %sb, i64 noundef %block) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt2 = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %s_mount_opt2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_mount_opt2, align 16
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %s_es.i = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %s_es.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_es.i, align 4
  %s_first_data_block.i = getelementptr inbounds %struct.ext4_super_block, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %s_first_data_block.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_first_data_block.i, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %conv = zext i32 %8 to i64
  %sub = sub i64 %block, %conv
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %9 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %s_blocksize_bits, align 4
  %conv2 = zext i8 %10 to i32
  %s_cluster_bits = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 12
  %11 = ptrtoint ptr %s_cluster_bits to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %s_cluster_bits, align 16
  %add = add nuw nsw i32 %conv2, 3
  %add4 = add i32 %add, %12
  %sh_prom = zext i32 %add4 to i64
  %shr = lshr i64 %sub, %sh_prom
  %conv5 = trunc i64 %shr to i32
  br label %if.end

if.else:                                          ; preds = %entry
  %13 = tail call i32 @llvm.bswap.i32(i32 %7) #11
  %conv.i = zext i32 %13 to i64
  %sub.i = sub i64 %block, %conv.i
  %s_blocks_per_group.i = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %s_blocks_per_group.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %s_blocks_per_group.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i)
  %cmp169.i = icmp ult i64 %sub.i, 4294967296
  br i1 %cmp169.i, label %if.then173.i, label %if.else179.i, !prof !68

if.then173.i:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %conv174.i = trunc i64 %sub.i to i32
  %div177.i = udiv i32 %conv174.i, %15
  br label %if.end

if.else179.i:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %16 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %15, i64 %sub.i) #14, !srcloc !69
  %asmresult1.i.i = extractvalue { i64, i64 } %16, 1
  %extract.t307.i = trunc i64 %asmresult1.i.i to i32
  br label %if.end

if.end:                                           ; preds = %if.else179.i, %if.then173.i, %if.then
  %group.0 = phi i32 [ %conv5, %if.then ], [ %div177.i, %if.then173.i ], [ %extract.t307.i, %if.else179.i ]
  ret i32 %group.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ext4_get_group_no_and_offset(ptr nocapture noundef readonly %sb, i64 noundef %blocknr, ptr noundef writeonly %blockgrpp, ptr noundef writeonly %offsetp) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_es = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %s_es to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_es, align 4
  %s_first_data_block = getelementptr inbounds %struct.ext4_super_block, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %s_first_data_block to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_first_data_block, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %conv = zext i32 %6 to i64
  %sub = sub i64 %blocknr, %conv
  %s_blocks_per_group = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %s_blocks_per_group to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_blocks_per_group, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub)
  %cmp169 = icmp ult i64 %sub, 4294967296
  br i1 %cmp169, label %if.then173, label %if.else179, !prof !68

if.then173:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv174 = trunc i64 %sub to i32
  %conv174.frozen = freeze i32 %conv174
  %.frozen = freeze i32 %8
  %div177 = udiv i32 %conv174.frozen, %.frozen
  %9 = mul i32 %div177, %.frozen
  %rem175.decomposed = sub i32 %conv174.frozen, %9
  br label %if.end183

if.else179:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %10 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %8, i64 %sub) #14, !srcloc !69
  %asmresult.i280 = extractvalue { i64, i64 } %10, 0
  %asmresult1.i = extractvalue { i64, i64 } %10, 1
  %shr.i = lshr i64 %asmresult.i280, 32
  %conv.i = trunc i64 %shr.i to i32
  %extract.t307 = trunc i64 %asmresult1.i to i32
  br label %if.end183

if.end183:                                        ; preds = %if.else179, %if.then173
  %blocknr.addr.0.off0 = phi i32 [ %div177, %if.then173 ], [ %extract.t307, %if.else179 ]
  %__rem.0 = phi i32 [ %rem175.decomposed, %if.then173 ], [ %conv.i, %if.else179 ]
  %tobool187.not = icmp eq ptr %offsetp, null
  br i1 %tobool187.not, label %if.end183.if.end189_crit_edge, label %if.then188

if.end183.if.end189_crit_edge:                    ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end189

if.then188:                                       ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #13
  %s_cluster_bits = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 12
  %11 = ptrtoint ptr %s_cluster_bits to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %s_cluster_bits, align 16
  %shr186 = lshr i32 %__rem.0, %12
  %13 = ptrtoint ptr %offsetp to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %shr186, ptr %offsetp, align 4
  br label %if.end189

if.end189:                                        ; preds = %if.then188, %if.end183.if.end189_crit_edge
  %tobool190.not = icmp eq ptr %blockgrpp, null
  br i1 %tobool190.not, label %if.end189.if.end193_crit_edge, label %if.then191

if.end189.if.end193_crit_edge:                    ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end193

if.then191:                                       ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %blockgrpp to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %blocknr.addr.0.off0, ptr %blockgrpp, align 4
  br label %if.end193

if.end193:                                        ; preds = %if.then191, %if.end189.if.end193_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_free_clusters_after_init(ptr noundef %sb, i32 noundef %block_group, ptr noundef %gdp) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_groups_count.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %s_groups_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_groups_count.i.i, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !70
  %sub.i = add i32 %3, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %block_group)
  %cmp.i = icmp eq i32 %sub.i, %block_group
  %4 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i.i.i, align 16
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %s_es.i = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %s_es.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_es.i, align 4
  %s_blocks_count_lo.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %s_blocks_count_lo.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_blocks_count_lo.i.i, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #11
  %s_blocks_per_group.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 2
  %11 = ptrtoint ptr %s_blocks_per_group.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %s_blocks_per_group.i.i, align 8
  %mul.i.i = mul i32 %12, %block_group
  %s_first_data_block.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %7, i32 0, i32 5
  %13 = ptrtoint ptr %s_first_data_block.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %s_first_data_block.i.i, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #11
  %16 = add i32 %mul.i.i, %15
  %sub4.i = sub i32 %10, %16
  br label %num_clusters_in_group.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %s_blocks_per_group.i = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 2
  %17 = ptrtoint ptr %s_blocks_per_group.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %s_blocks_per_group.i, align 8
  br label %num_clusters_in_group.exit

num_clusters_in_group.exit:                       ; preds = %if.else.i, %if.then.i
  %blocks.0.i = phi i32 [ %sub4.i, %if.then.i ], [ %18, %if.else.i ]
  %s_cluster_ratio.i = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 11
  %19 = ptrtoint ptr %s_cluster_ratio.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %s_cluster_ratio.i, align 4
  %s_cluster_bits.i = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 12
  %21 = ptrtoint ptr %s_cluster_bits.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %s_cluster_bits.i, align 16
  %conv.i.i = zext i32 %block_group to i64
  %s_blocks_per_group.i.i5 = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 2
  %23 = ptrtoint ptr %s_blocks_per_group.i.i5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %s_blocks_per_group.i.i5, align 8
  %conv1.i.i = zext i32 %24 to i64
  %mul.i.i6 = mul nuw i64 %conv1.i.i, %conv.i.i
  %s_es.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 15
  %25 = ptrtoint ptr %s_es.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %s_es.i.i, align 4
  %s_first_data_block.i.i7 = getelementptr inbounds %struct.ext4_super_block, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %s_first_data_block.i.i7 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %s_first_data_block.i.i7, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #11
  %conv3.i.i = zext i32 %29 to i64
  %add.i.i = add nuw i64 %mul.i.i6, %conv3.i.i
  %call2.i = tail call fastcc i32 @ext4_num_base_meta_clusters(ptr noundef %sb, i32 noundef %block_group) #11
  %call3.i = tail call i64 @ext4_block_bitmap(ptr noundef %sb, ptr noundef %gdp) #11
  %30 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_mount_opt2.i.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %31, i32 0, i32 18
  %32 = ptrtoint ptr %s_mount_opt2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %s_mount_opt2.i.i.i, align 16
  %and.i.i.i = and i32 %33, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %s_es.i.i.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %31, i32 0, i32 15
  %34 = ptrtoint ptr %s_es.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %s_es.i.i.i.i, align 4
  %s_first_data_block.i.i.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %s_first_data_block.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %s_first_data_block.i.i.i.i, align 4
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #11
  %conv.i.i.i.i = zext i32 %38 to i64
  %sub.i.i.i.i = sub i64 %call3.i, %conv.i.i.i.i
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %num_clusters_in_group.exit
  call void @__sanitizer_cov_trace_pc() #13
  %s_blocksize_bits.i.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %39 = ptrtoint ptr %s_blocksize_bits.i.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %s_blocksize_bits.i.i.i, align 4
  %conv2.i.i.i = zext i8 %40 to i32
  %s_cluster_bits.i.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %31, i32 0, i32 12
  %41 = ptrtoint ptr %s_cluster_bits.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %s_cluster_bits.i.i.i, align 16
  %add.i.i.i = add nuw nsw i32 %conv2.i.i.i, 3
  %add4.i.i.i = add i32 %add.i.i.i, %42
  %sh_prom.i.i.i = zext i32 %add4.i.i.i to i64
  %shr.i.i.i = lshr i64 %sub.i.i.i.i, %sh_prom.i.i.i
  %conv5.i.i.i = trunc i64 %shr.i.i.i to i32
  br label %ext4_block_in_group.exit.i

if.else.i.i.i:                                    ; preds = %num_clusters_in_group.exit
  %s_blocks_per_group.i.i.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %31, i32 0, i32 2
  %43 = ptrtoint ptr %s_blocks_per_group.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %s_blocks_per_group.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i.i.i.i)
  %cmp169.i.i.i.i = icmp ult i64 %sub.i.i.i.i, 4294967296
  br i1 %cmp169.i.i.i.i, label %if.then173.i.i.i.i, label %if.else179.i.i.i.i, !prof !68

if.then173.i.i.i.i:                               ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv174.i.i.i.i = trunc i64 %sub.i.i.i.i to i32
  %div177.i.i.i.i = udiv i32 %conv174.i.i.i.i, %44
  br label %ext4_block_in_group.exit.i

if.else179.i.i.i.i:                               ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %45 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %44, i64 %sub.i.i.i.i) #14, !srcloc !69
  %asmresult1.i.i.i.i.i = extractvalue { i64, i64 } %45, 1
  %extract.t307.i.i.i.i = trunc i64 %asmresult1.i.i.i.i.i to i32
  br label %ext4_block_in_group.exit.i

ext4_block_in_group.exit.i:                       ; preds = %if.else179.i.i.i.i, %if.then173.i.i.i.i, %if.then.i.i.i
  %group.0.i.i.i = phi i32 [ %conv5.i.i.i, %if.then.i.i.i ], [ %div177.i.i.i.i, %if.then173.i.i.i.i ], [ %extract.t307.i.i.i.i, %if.else179.i.i.i.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %group.0.i.i.i, i32 %block_group)
  %cmp.i.not.i = icmp eq i32 %group.0.i.i.i, %block_group
  br i1 %cmp.i.not.i, label %if.then.i12, label %ext4_block_in_group.exit.i.if.end12.i_crit_edge

ext4_block_in_group.exit.i.if.end12.i_crit_edge:  ; preds = %ext4_block_in_group.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i

if.then.i12:                                      ; preds = %ext4_block_in_group.exit.i
  %call5.i = tail call i64 @ext4_block_bitmap(ptr noundef %sb, ptr noundef %gdp) #11
  %sub.i8 = sub i64 %call5.i, %add.i.i
  %46 = ptrtoint ptr %s_cluster_bits.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %s_cluster_bits.i, align 16
  %sh_prom.i = zext i32 %47 to i64
  %shr.i10 = lshr i64 %sub.i8, %sh_prom.i
  %conv.i = trunc i64 %shr.i10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call2.i, i32 %conv.i)
  %cmp.i11 = icmp ugt i32 %call2.i, %conv.i
  br i1 %cmp.i11, label %if.then.i12.if.end12.i_crit_edge, label %if.else.i13

if.then.i12.if.end12.i_crit_edge:                 ; preds = %if.then.i12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i

if.else.i13:                                      ; preds = %if.then.i12
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_cmp4(i32 %call2.i, i32 %conv.i)
  %cmp8.i = icmp eq i32 %call2.i, %conv.i
  %inc.i = zext i1 %cmp8.i to i32
  %spec.select.i = add i32 %call2.i, %inc.i
  %spec.select128.i = select i1 %cmp8.i, i32 -1, i32 %conv.i
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.else.i13, %if.then.i12.if.end12.i_crit_edge, %ext4_block_in_group.exit.i.if.end12.i_crit_edge
  %num_clusters.0.i = phi i32 [ %call2.i, %ext4_block_in_group.exit.i.if.end12.i_crit_edge ], [ %call2.i, %if.then.i12.if.end12.i_crit_edge ], [ %spec.select.i, %if.else.i13 ]
  %block_cluster.0.i = phi i32 [ -1, %ext4_block_in_group.exit.i.if.end12.i_crit_edge ], [ -1, %if.then.i12.if.end12.i_crit_edge ], [ %spec.select128.i, %if.else.i13 ]
  %call13.i = tail call i64 @ext4_inode_bitmap(ptr noundef %sb, ptr noundef %gdp) #11
  %48 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_mount_opt2.i.i135.i = getelementptr inbounds %struct.ext4_sb_info, ptr %49, i32 0, i32 18
  %50 = ptrtoint ptr %s_mount_opt2.i.i135.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %s_mount_opt2.i.i135.i, align 16
  %and.i.i136.i = and i32 %51, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i136.i)
  %tobool.not.i.i137.i = icmp eq i32 %and.i.i136.i, 0
  %s_es.i.i.i138.i = getelementptr inbounds %struct.ext4_sb_info, ptr %49, i32 0, i32 15
  %52 = ptrtoint ptr %s_es.i.i.i138.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %s_es.i.i.i138.i, align 4
  %s_first_data_block.i.i.i139.i = getelementptr inbounds %struct.ext4_super_block, ptr %53, i32 0, i32 5
  %54 = ptrtoint ptr %s_first_data_block.i.i.i139.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %s_first_data_block.i.i.i139.i, align 4
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #11
  %conv.i.i.i140.i = zext i32 %56 to i64
  %sub.i.i.i141.i = sub i64 %call13.i, %conv.i.i.i140.i
  br i1 %tobool.not.i.i137.i, label %if.else.i.i155.i, label %if.then.i.i150.i

if.then.i.i150.i:                                 ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  %s_blocksize_bits.i.i142.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %57 = ptrtoint ptr %s_blocksize_bits.i.i142.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %s_blocksize_bits.i.i142.i, align 4
  %conv2.i.i143.i = zext i8 %58 to i32
  %s_cluster_bits.i.i144.i = getelementptr inbounds %struct.ext4_sb_info, ptr %49, i32 0, i32 12
  %59 = ptrtoint ptr %s_cluster_bits.i.i144.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %s_cluster_bits.i.i144.i, align 16
  %add.i.i145.i = add nuw nsw i32 %conv2.i.i143.i, 3
  %add4.i.i146.i = add i32 %add.i.i145.i, %60
  %sh_prom.i.i147.i = zext i32 %add4.i.i146.i to i64
  %shr.i.i148.i = lshr i64 %sub.i.i.i141.i, %sh_prom.i.i147.i
  %conv5.i.i149.i = trunc i64 %shr.i.i148.i to i32
  br label %ext4_block_in_group.exit272.i

if.else.i.i155.i:                                 ; preds = %if.end12.i
  %s_blocks_per_group.i.i.i151.i = getelementptr inbounds %struct.ext4_sb_info, ptr %49, i32 0, i32 2
  %61 = ptrtoint ptr %s_blocks_per_group.i.i.i151.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %s_blocks_per_group.i.i.i151.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i.i.i141.i)
  %cmp169.i.i.i261.i = icmp ult i64 %sub.i.i.i141.i, 4294967296
  br i1 %cmp169.i.i.i261.i, label %if.then173.i.i.i265.i, label %if.else179.i.i.i268.i, !prof !68

if.then173.i.i.i265.i:                            ; preds = %if.else.i.i155.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv174.i.i.i263.i = trunc i64 %sub.i.i.i141.i to i32
  %div177.i.i.i264.i = udiv i32 %conv174.i.i.i263.i, %62
  br label %ext4_block_in_group.exit272.i

if.else179.i.i.i268.i:                            ; preds = %if.else.i.i155.i
  call void @__sanitizer_cov_trace_pc() #13
  %63 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %62, i64 %sub.i.i.i141.i) #14, !srcloc !69
  %asmresult1.i.i.i.i266.i = extractvalue { i64, i64 } %63, 1
  %extract.t307.i.i.i267.i = trunc i64 %asmresult1.i.i.i.i266.i to i32
  br label %ext4_block_in_group.exit272.i

ext4_block_in_group.exit272.i:                    ; preds = %if.else179.i.i.i268.i, %if.then173.i.i.i265.i, %if.then.i.i150.i
  %group.0.i.i269.i = phi i32 [ %conv5.i.i149.i, %if.then.i.i150.i ], [ %div177.i.i.i264.i, %if.then173.i.i.i265.i ], [ %extract.t307.i.i.i267.i, %if.else179.i.i.i268.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %group.0.i.i269.i, i32 %block_group)
  %cmp.i270.not.i = icmp eq i32 %group.0.i.i269.i, %block_group
  br i1 %cmp.i270.not.i, label %if.then16.i, label %ext4_block_in_group.exit272.i.if.end33.i_crit_edge

ext4_block_in_group.exit272.i.if.end33.i_crit_edge: ; preds = %ext4_block_in_group.exit272.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33.i

if.then16.i:                                      ; preds = %ext4_block_in_group.exit272.i
  %call17.i = tail call i64 @ext4_inode_bitmap(ptr noundef %sb, ptr noundef %gdp) #11
  %sub18.i = sub i64 %call17.i, %add.i.i
  %64 = ptrtoint ptr %s_cluster_bits.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %s_cluster_bits.i, align 16
  %sh_prom20.i = zext i32 %65 to i64
  %shr21.i = lshr i64 %sub18.i, %sh_prom20.i
  %conv22.i = trunc i64 %shr21.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %num_clusters.0.i, i32 %conv22.i)
  %cmp23.i = icmp ugt i32 %num_clusters.0.i, %conv22.i
  br i1 %cmp23.i, label %if.then16.i.if.end33.i_crit_edge, label %if.else26.i

if.then16.i.if.end33.i_crit_edge:                 ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33.i

if.else26.i:                                      ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_cmp4(i32 %num_clusters.0.i, i32 %conv22.i)
  %cmp27.i = icmp eq i32 %num_clusters.0.i, %conv22.i
  %inc30.i = zext i1 %cmp27.i to i32
  %spec.select129.i = add i32 %num_clusters.0.i, %inc30.i
  %spec.select130.i = select i1 %cmp27.i, i32 -1, i32 %conv22.i
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.else26.i, %if.then16.i.if.end33.i_crit_edge, %ext4_block_in_group.exit272.i.if.end33.i_crit_edge
  %num_clusters.1.i = phi i32 [ %num_clusters.0.i, %ext4_block_in_group.exit272.i.if.end33.i_crit_edge ], [ %num_clusters.0.i, %if.then16.i.if.end33.i_crit_edge ], [ %spec.select129.i, %if.else26.i ]
  %inode_cluster.0.i = phi i32 [ -1, %ext4_block_in_group.exit272.i.if.end33.i_crit_edge ], [ -1, %if.then16.i.if.end33.i_crit_edge ], [ %spec.select130.i, %if.else26.i ]
  %call34.i = tail call i64 @ext4_inode_table(ptr noundef %sb, ptr noundef %gdp) #11
  %s_itb_per_group.i = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 5
  %66 = ptrtoint ptr %s_itb_per_group.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %s_itb_per_group.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp35412.not.i = icmp eq i32 %67, 0
  br i1 %cmp35412.not.i, label %if.end33.i.ext4_num_overhead_clusters.exit_crit_edge, label %for.body.lr.ph.i

if.end33.i.ext4_num_overhead_clusters.exit_crit_edge: ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_num_overhead_clusters.exit

for.body.lr.ph.i:                                 ; preds = %if.end33.i
  %68 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_mount_opt2.i.i274.i = getelementptr inbounds %struct.ext4_sb_info, ptr %69, i32 0, i32 18
  %70 = ptrtoint ptr %s_mount_opt2.i.i274.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %s_mount_opt2.i.i274.i, align 16
  %and.i.i275.i = and i32 %71, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i275.i)
  %tobool.not.i.i276.i = icmp eq i32 %and.i.i275.i, 0
  %s_es.i.i.i277.i = getelementptr inbounds %struct.ext4_sb_info, ptr %69, i32 0, i32 15
  %72 = ptrtoint ptr %s_es.i.i.i277.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %s_es.i.i.i277.i, align 4
  %s_first_data_block.i.i.i278.i = getelementptr inbounds %struct.ext4_super_block, ptr %73, i32 0, i32 5
  %74 = ptrtoint ptr %s_first_data_block.i.i.i278.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %s_first_data_block.i.i.i278.i, align 4
  %76 = tail call i32 @llvm.bswap.i32(i32 %75) #11
  %conv.i.i.i279.i = zext i32 %76 to i64
  %s_blocksize_bits.i.i281.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %s_cluster_bits.i.i283.i = getelementptr inbounds %struct.ext4_sb_info, ptr %69, i32 0, i32 12
  %s_blocks_per_group.i.i.i290.i = getelementptr inbounds %struct.ext4_sb_info, ptr %69, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0415.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc67.i, %for.inc.i.for.body.i_crit_edge ]
  %itbl_cluster.0414.i = phi i32 [ -1, %for.body.lr.ph.i ], [ %itbl_cluster.1.i, %for.inc.i.for.body.i_crit_edge ]
  %num_clusters.2413.i = phi i32 [ %num_clusters.1.i, %for.body.lr.ph.i ], [ %num_clusters.3.i, %for.inc.i.for.body.i_crit_edge ]
  %conv37.i = sext i32 %i.0415.i to i64
  %add.i14 = add i64 %call34.i, %conv37.i
  %sub.i.i.i280.i = sub i64 %add.i14, %conv.i.i.i279.i
  br i1 %tobool.not.i.i276.i, label %if.else.i.i294.i, label %if.then.i.i289.i

if.then.i.i289.i:                                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %77 = ptrtoint ptr %s_blocksize_bits.i.i281.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %s_blocksize_bits.i.i281.i, align 4
  %conv2.i.i282.i = zext i8 %78 to i32
  %79 = ptrtoint ptr %s_cluster_bits.i.i283.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %s_cluster_bits.i.i283.i, align 16
  %add.i.i284.i = add nuw nsw i32 %conv2.i.i282.i, 3
  %add4.i.i285.i = add i32 %add.i.i284.i, %80
  %sh_prom.i.i286.i = zext i32 %add4.i.i285.i to i64
  %shr.i.i287.i = lshr i64 %sub.i.i.i280.i, %sh_prom.i.i286.i
  %conv5.i.i288.i = trunc i64 %shr.i.i287.i to i32
  br label %ext4_block_in_group.exit411.i

if.else.i.i294.i:                                 ; preds = %for.body.i
  %81 = ptrtoint ptr %s_blocks_per_group.i.i.i290.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %s_blocks_per_group.i.i.i290.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i.i.i280.i)
  %cmp169.i.i.i400.i = icmp ult i64 %sub.i.i.i280.i, 4294967296
  br i1 %cmp169.i.i.i400.i, label %if.then173.i.i.i404.i, label %if.else179.i.i.i407.i, !prof !68

if.then173.i.i.i404.i:                            ; preds = %if.else.i.i294.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv174.i.i.i402.i = trunc i64 %sub.i.i.i280.i to i32
  %div177.i.i.i403.i = udiv i32 %conv174.i.i.i402.i, %82
  br label %ext4_block_in_group.exit411.i

if.else179.i.i.i407.i:                            ; preds = %if.else.i.i294.i
  call void @__sanitizer_cov_trace_pc() #13
  %83 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %82, i64 %sub.i.i.i280.i) #14, !srcloc !69
  %asmresult1.i.i.i.i405.i = extractvalue { i64, i64 } %83, 1
  %extract.t307.i.i.i406.i = trunc i64 %asmresult1.i.i.i.i405.i to i32
  br label %ext4_block_in_group.exit411.i

ext4_block_in_group.exit411.i:                    ; preds = %if.else179.i.i.i407.i, %if.then173.i.i.i404.i, %if.then.i.i289.i
  %group.0.i.i408.i = phi i32 [ %conv5.i.i288.i, %if.then.i.i289.i ], [ %div177.i.i.i403.i, %if.then173.i.i.i404.i ], [ %extract.t307.i.i.i406.i, %if.else179.i.i.i407.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %group.0.i.i408.i, i32 %block_group)
  %cmp.i409.not.i = icmp eq i32 %group.0.i.i408.i, %block_group
  br i1 %cmp.i409.not.i, label %if.then40.i, label %ext4_block_in_group.exit411.i.for.inc.i_crit_edge

ext4_block_in_group.exit411.i.for.inc.i_crit_edge: ; preds = %ext4_block_in_group.exit411.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then40.i:                                      ; preds = %ext4_block_in_group.exit411.i
  %sub43.i = sub i64 %add.i14, %add.i.i
  %84 = ptrtoint ptr %s_cluster_bits.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %s_cluster_bits.i, align 16
  %sh_prom45.i = zext i32 %85 to i64
  %shr46.i = lshr i64 %sub43.i, %sh_prom45.i
  %conv47.i = trunc i64 %shr46.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %num_clusters.2413.i, i32 %conv47.i)
  %cmp48.i = icmp ugt i32 %num_clusters.2413.i, %conv47.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inode_cluster.0.i, i32 %conv47.i)
  %cmp50.i = icmp eq i32 %inode_cluster.0.i, %conv47.i
  %or.cond.i = select i1 %cmp48.i, i1 true, i1 %cmp50.i
  call void @__sanitizer_cov_trace_cmp4(i32 %block_cluster.0.i, i32 %conv47.i)
  %cmp53.i = icmp eq i32 %block_cluster.0.i, %conv47.i
  %or.cond131.i = select i1 %or.cond.i, i1 true, i1 %cmp53.i
  call void @__sanitizer_cov_trace_cmp4(i32 %itbl_cluster.0414.i, i32 %conv47.i)
  %cmp56.i = icmp eq i32 %itbl_cluster.0414.i, %conv47.i
  %or.cond132.i = select i1 %or.cond131.i, i1 true, i1 %cmp56.i
  br i1 %or.cond132.i, label %if.then40.i.for.inc.i_crit_edge, label %if.end59.i

if.then40.i.for.inc.i_crit_edge:                  ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end59.i:                                       ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_cmp4(i32 %num_clusters.2413.i, i32 %conv47.i)
  %cmp60.i = icmp eq i32 %num_clusters.2413.i, %conv47.i
  %inc63.i = add i32 %num_clusters.2413.i, 1
  %itbl_cluster.0414.conv47.i = select i1 %cmp60.i, i32 %itbl_cluster.0414.i, i32 %conv47.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end59.i, %if.then40.i.for.inc.i_crit_edge, %ext4_block_in_group.exit411.i.for.inc.i_crit_edge
  %num_clusters.3.i = phi i32 [ %num_clusters.2413.i, %if.then40.i.for.inc.i_crit_edge ], [ %num_clusters.2413.i, %ext4_block_in_group.exit411.i.for.inc.i_crit_edge ], [ %inc63.i, %if.end59.i ]
  %itbl_cluster.1.i = phi i32 [ %itbl_cluster.0414.i, %if.then40.i.for.inc.i_crit_edge ], [ %itbl_cluster.0414.i, %ext4_block_in_group.exit411.i.for.inc.i_crit_edge ], [ %itbl_cluster.0414.conv47.i, %if.end59.i ]
  %inc67.i = add nuw i32 %i.0415.i, 1
  %exitcond.not.i = icmp eq i32 %inc67.i, %67
  br i1 %exitcond.not.i, label %for.inc.i.ext4_num_overhead_clusters.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.ext4_num_overhead_clusters.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_num_overhead_clusters.exit

ext4_num_overhead_clusters.exit:                  ; preds = %for.inc.i.ext4_num_overhead_clusters.exit_crit_edge, %if.end33.i.ext4_num_overhead_clusters.exit_crit_edge
  %num_clusters.2.lcssa.i = phi i32 [ %num_clusters.1.i, %if.end33.i.ext4_num_overhead_clusters.exit_crit_edge ], [ %num_clusters.3.i, %for.inc.i.ext4_num_overhead_clusters.exit_crit_edge ]
  %add.i = add i32 %blocks.0.i, -1
  %sub7.i = add i32 %add.i, %20
  %shr.i = lshr i32 %sub7.i, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %block_cluster.0.i)
  %cmp68.not.i = icmp ne i32 %block_cluster.0.i, -1
  %inc71.i.neg16 = sext i1 %cmp68.not.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %inode_cluster.0.i)
  %cmp73.not.i = icmp ne i32 %inode_cluster.0.i, -1
  %inc76.i.neg17 = sext i1 %cmp73.not.i to i32
  %spec.select133.i.neg = add i32 %shr.i, %inc71.i.neg16
  %num_clusters.5.i.neg = add i32 %spec.select133.i.neg, %inc76.i.neg17
  %sub = sub i32 %num_clusters.5.i.neg, %num_clusters.2.lcssa.i
  ret i32 %sub
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ext4_get_group_desc(ptr noundef %sb, i32 noundef %block_group, ptr noundef writeonly %bh) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_groups_count.i = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %s_groups_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_groups_count.i, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !70
  %4 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %block_group)
  %cmp.not = icmp ugt i32 %3, %block_group
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %sb, ptr noundef nonnull @__func__.ext4_get_group_desc, i32 noundef 277, i1 noundef zeroext false, i32 noundef 0, i64 noundef 0, ptr noundef nonnull @.str, i32 noundef %block_group, i32 noundef %3) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %s_desc_per_block_bits = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 28
  %6 = ptrtoint ptr %s_desc_per_block_bits to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_desc_per_block_bits, align 128
  %shr = lshr i32 %block_group, %7
  %s_desc_per_block = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 7
  %8 = ptrtoint ptr %s_desc_per_block to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_desc_per_block, align 4
  %sub = add i32 %9, -1
  %and = and i32 %sub, %block_group
  %10 = tail call i32 @llvm.read_register.i32(metadata !58) #11
  %and.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %13, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !71
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 696, ptr noundef nonnull @.str.11) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %s_group_desc = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 16
  %14 = ptrtoint ptr %s_group_desc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %s_group_desc, align 8
  %call5 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end13_crit_edge

rcu_read_lock.exit.do.end13_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end13

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call6 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.do.end13_crit_edge, label %land.lhs.true8

land.lhs.true.do.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end13

land.lhs.true8:                                   ; preds = %land.lhs.true
  %.b44 = load i1, ptr @ext4_get_group_desc.__warned, align 1
  br i1 %.b44, label %land.lhs.true8.do.end13_crit_edge, label %if.then10

land.lhs.true8.do.end13_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end13

if.then10:                                        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @ext4_get_group_desc.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 284, ptr noundef nonnull @.str.2) #11
  br label %do.end13

do.end13:                                         ; preds = %if.then10, %land.lhs.true8.do.end13_crit_edge, %land.lhs.true.do.end13_crit_edge, %rcu_read_lock.exit.do.end13_crit_edge
  %arrayidx = getelementptr ptr, ptr %15, i32 %shr
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %call.i47 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i47, label %do.end13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i50

do.end13.rcu_read_unlock.exit_crit_edge:          ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i50:                                ; preds = %do.end13
  %call1.i48 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i48)
  %tobool.not.i49 = icmp eq i32 %call1.i48, 0
  br i1 %tobool.not.i49, label %land.lhs.true.i50.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i52

land.lhs.true.i50.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i50
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i52:                               ; preds = %land.lhs.true.i50
  %.b4.i51 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i51, label %land.lhs.true2.i52.rcu_read_unlock.exit_crit_edge, label %if.then.i53

land.lhs.true2.i52.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i52
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i53:                                      ; preds = %land.lhs.true2.i52
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 724, ptr noundef nonnull @.str.12) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i53, %land.lhs.true2.i52.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i50.rcu_read_unlock.exit_crit_edge, %do.end13.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !72
  %18 = tail call i32 @llvm.read_register.i32(metadata !58) #11
  %and.i.i.i.i.i54 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i54 to ptr
  %preempt_count.i.i.i.i55 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i55 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i55, align 4
  %sub.i.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i55, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %tobool16.not = icmp eq ptr %17, null
  br i1 %tobool16.not, label %if.then17, label %if.end18

if.then17:                                        ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %sb, ptr noundef nonnull @__func__.ext4_get_group_desc, i32 noundef 294, i1 noundef zeroext false, i32 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.3, i32 noundef %block_group, i32 noundef %shr, i32 noundef %and) #11
  br label %cleanup

if.end18:                                         ; preds = %rcu_read_unlock.exit
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %17, i32 0, i32 5
  %22 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %b_data, align 4
  %24 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %s_fs_info.i.i, align 16
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 128
  %mul = mul i32 %27, %and
  %add.ptr = getelementptr i8, ptr %23, i32 %mul
  %tobool20.not = icmp eq ptr %bh, null
  br i1 %tobool20.not, label %if.end18.cleanup_crit_edge, label %if.then21

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %17, ptr %bh, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %if.end18.cleanup_crit_edge, %if.then17, %if.then
  %retval.0 = phi ptr [ null, %if.then ], [ null, %if.then17 ], [ %add.ptr, %if.then21 ], [ %add.ptr, %if.end18.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_error(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ext4_read_block_bitmap_nowait(ptr noundef %sb, i32 noundef %block_group, i1 noundef zeroext %ignore_locked) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %call1 = tail call ptr @ext4_get_group_desc(ptr noundef %sb, i32 noundef %block_group, ptr noundef null)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i64 @ext4_block_bitmap(ptr noundef %sb, ptr noundef nonnull %call1) #11
  %s_es = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %s_es to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_es, align 4
  %s_first_data_block = getelementptr inbounds %struct.ext4_super_block, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %s_first_data_block to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_first_data_block, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %conv = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %call3, i64 %conv)
  %cmp.not = icmp ugt i64 %call3, %conv
  br i1 %cmp.not, label %lor.lhs.false, label %if.end.if.then9_crit_edge

if.end.if.then9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9

lor.lhs.false:                                    ; preds = %if.end
  %s_feature_incompat.i = getelementptr inbounds %struct.ext4_super_block, ptr %3, i32 0, i32 29
  %7 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_feature_incompat.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %tobool.not.i135 = icmp sgt i32 %8, -1
  br i1 %tobool.not.i135, label %lor.lhs.false.ext4_blocks_count.exit_crit_edge, label %cond.true.i

lor.lhs.false.ext4_blocks_count.exit_crit_edge:   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_blocks_count.exit

cond.true.i:                                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %s_blocks_count_hi.i = getelementptr inbounds %struct.ext4_super_block, ptr %3, i32 0, i32 50
  %9 = ptrtoint ptr %s_blocks_count_hi.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %s_blocks_count_hi.i, align 8
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #11
  %conv.i = zext i32 %11 to i64
  %shl.i = shl nuw i64 %conv.i, 32
  br label %ext4_blocks_count.exit

ext4_blocks_count.exit:                           ; preds = %cond.true.i, %lor.lhs.false.ext4_blocks_count.exit_crit_edge
  %cond.i = phi i64 [ %shl.i, %cond.true.i ], [ 0, %lor.lhs.false.ext4_blocks_count.exit_crit_edge ]
  %s_blocks_count_lo.i = getelementptr inbounds %struct.ext4_super_block, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %s_blocks_count_lo.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_blocks_count_lo.i, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #11
  %conv1.i = zext i32 %14 to i64
  %or.i = or i64 %cond.i, %conv1.i
  call void @__sanitizer_cov_trace_cmp8(i64 %call3, i64 %or.i)
  %cmp7.not = icmp ult i64 %call3, %or.i
  br i1 %cmp7.not, label %if.end11, label %ext4_blocks_count.exit.if.then9_crit_edge

ext4_blocks_count.exit.if.then9_crit_edge:        ; preds = %ext4_blocks_count.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9

if.then9:                                         ; preds = %ext4_blocks_count.exit.if.then9_crit_edge, %if.end.if.then9_crit_edge
  tail call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %sb, ptr noundef nonnull @__func__.ext4_read_block_bitmap_nowait, i32 noundef 437, i1 noundef zeroext false, i32 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.4, i64 noundef %call3, i32 noundef %block_group) #11
  tail call void @ext4_mark_group_bitmap_corrupted(ptr noundef %sb, i32 noundef %block_group, i32 noundef 4) #11
  br label %cleanup

if.end11:                                         ; preds = %ext4_blocks_count.exit
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %15 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_bdev.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %17 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %s_blocksize.i, align 16
  %call.i = tail call ptr @__getblk_gfp(ptr noundef %16, i64 noundef %call3, i32 noundef %18, i32 noundef 8) #11
  %tobool13.not = icmp eq ptr %call.i, null
  br i1 %tobool13.not, label %if.then17, label %if.end19, !prof !73

if.then17:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %sb, ptr noundef nonnull @__func__.ext4_read_block_bitmap_nowait, i32 noundef 446, ptr noundef nonnull @.str.5, i32 noundef %block_group, i64 noundef %call3) #11
  br label %cleanup

if.end19:                                         ; preds = %if.end11
  br i1 %ignore_locked, label %land.lhs.true, label %if.end19.if.end25_crit_edge

if.end19.if.end25_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

land.lhs.true:                                    ; preds = %if.end19
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %call.i, align 4
  %21 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool23.not = icmp eq i32 %21, 0
  br i1 %tobool23.not, label %land.lhs.true.if.end25_crit_edge, label %if.then24

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.then24:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !74
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #11
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #11, !srcloc !75
  br label %cleanup

if.end25:                                         ; preds = %land.lhs.true.if.end25_crit_edge, %if.end19.if.end25_crit_edge
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %call.i, align 4
  %and1.i.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i136 = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i136, label %if.end25.if.end29_crit_edge, label %bitmap_uptodate.exit

if.end25.if.end29_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

bitmap_uptodate.exit:                             ; preds = %if.end25
  %25 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %call.i, align 4
  %27 = and i32 %26, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool27.not = icmp eq i32 %27, 0
  br i1 %tobool27.not, label %bitmap_uptodate.exit.if.end29_crit_edge, label %bitmap_uptodate.exit.verify_crit_edge

bitmap_uptodate.exit.verify_crit_edge:            ; preds = %bitmap_uptodate.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %verify

bitmap_uptodate.exit.if.end29_crit_edge:          ; preds = %bitmap_uptodate.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.end29:                                         ; preds = %bitmap_uptodate.exit.if.end29_crit_edge, %if.end25.if.end29_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.13, i32 noundef 366) #11
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i, i32 noundef 4) #11
  %28 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %call.i, align 4
  %and.i.i.i.i = and i32 %29, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_buffer.exit.i, label %if.end29.if.then.i137_crit_edge

if.end29.if.then.i137_crit_edge:                  ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i137

trylock_buffer.exit.i:                            ; preds = %if.end29
  tail call void @llvm.prefetch.p0(ptr nonnull %call.i, i32 1, i32 3, i32 1) #11
  %30 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call.i, ptr nonnull %call.i, i32 4, ptr nonnull elementtype(i32) %call.i) #11, !srcloc !76
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %30, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !77
  %31 = and i32 %asmresult.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.not.i = icmp eq i32 %31, 0
  br i1 %tobool.not.not.i, label %trylock_buffer.exit.i.lock_buffer.exit_crit_edge, label %trylock_buffer.exit.i.if.then.i137_crit_edge

trylock_buffer.exit.i.if.then.i137_crit_edge:     ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i137

trylock_buffer.exit.i.lock_buffer.exit_crit_edge: ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lock_buffer.exit

if.then.i137:                                     ; preds = %trylock_buffer.exit.i.if.then.i137_crit_edge, %if.end29.if.then.i137_crit_edge
  tail call void @__lock_buffer(ptr noundef nonnull %call.i) #11
  br label %lock_buffer.exit

lock_buffer.exit:                                 ; preds = %if.then.i137, %trylock_buffer.exit.i.lock_buffer.exit_crit_edge
  %32 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %call.i, align 4
  %and1.i.i.i138 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i138)
  %tobool.not.i139 = icmp eq i32 %and1.i.i.i138, 0
  br i1 %tobool.not.i139, label %lock_buffer.exit.if.end33_crit_edge, label %bitmap_uptodate.exit142

lock_buffer.exit.if.end33_crit_edge:              ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

bitmap_uptodate.exit142:                          ; preds = %lock_buffer.exit
  %34 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %call.i, align 4
  %36 = and i32 %35, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool31.not = icmp eq i32 %36, 0
  br i1 %tobool31.not, label %bitmap_uptodate.exit142.if.end33_crit_edge, label %bitmap_uptodate.exit142.verify.sink.split_crit_edge

bitmap_uptodate.exit142.verify.sink.split_crit_edge: ; preds = %bitmap_uptodate.exit142
  call void @__sanitizer_cov_trace_pc() #13
  br label %verify.sink.split

bitmap_uptodate.exit142.if.end33_crit_edge:       ; preds = %bitmap_uptodate.exit142
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.end33:                                         ; preds = %bitmap_uptodate.exit142.if.end33_crit_edge, %lock_buffer.exit.if.end33_crit_edge
  tail call fastcc void @ext4_lock_group(ptr noundef %sb, i32 noundef %block_group)
  %call34 = tail call fastcc i32 @ext4_has_group_desc_csum(ptr noundef %sb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end33.if.end48_crit_edge, label %land.lhs.true36

if.end33.if.end48_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

land.lhs.true36:                                  ; preds = %if.end33
  %bg_flags = getelementptr inbounds %struct.ext4_group_desc, ptr %call1, i32 0, i32 6
  %37 = ptrtoint ptr %bg_flags to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %bg_flags, align 2
  %39 = and i16 %38, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool38.not = icmp eq i16 %39, 0
  br i1 %tobool38.not, label %land.lhs.true36.if.end48_crit_edge, label %if.then39

land.lhs.true36.if.end48_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

if.then39:                                        ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %block_group)
  %cmp40 = icmp eq i32 %block_group, 0
  br i1 %cmp40, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #13
  %40 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %s_fs_info.i, align 16
  %s_blockgroup_lock.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %41, i32 0, i32 41
  %42 = ptrtoint ptr %s_blockgroup_lock.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %s_blockgroup_lock.i.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %43) #11
  tail call void @unlock_buffer(ptr noundef nonnull %call.i) #11
  tail call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %sb, ptr noundef nonnull @__func__.ext4_read_block_bitmap_nowait, i32 noundef 471, i1 noundef zeroext false, i32 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.6) #11
  br label %out

if.end43:                                         ; preds = %if.then39
  %call44 = tail call fastcc i32 @ext4_init_block_bitmap(ptr noundef %sb, ptr noundef nonnull %call.i, i32 noundef %block_group, ptr noundef nonnull %call1)
  tail call void @_set_bit(i32 noundef 25, ptr noundef nonnull %call.i) #11
  %44 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %call.i, align 4
  %and1.i.i129 = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i129)
  %tobool.not.i = icmp eq i32 %and1.i.i129, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end43.set_buffer_uptodate.exit_crit_edge

if.end43.set_buffer_uptodate.exit_crit_edge:      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_buffer_uptodate.exit

if.then.i:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_set_bit(i32 noundef 0, ptr noundef nonnull %call.i) #11
  br label %set_buffer_uptodate.exit

set_buffer_uptodate.exit:                         ; preds = %if.then.i, %if.end43.set_buffer_uptodate.exit_crit_edge
  %46 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %call.i, align 4
  %48 = and i32 %47, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.i130 = icmp eq i32 %48, 0
  br i1 %tobool.not.i130, label %if.then.i131, label %set_buffer_uptodate.exit.set_buffer_verified.exit_crit_edge

set_buffer_uptodate.exit.set_buffer_verified.exit_crit_edge: ; preds = %set_buffer_uptodate.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_buffer_verified.exit

if.then.i131:                                     ; preds = %set_buffer_uptodate.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_set_bit(i32 noundef 24, ptr noundef nonnull %call.i) #11
  br label %set_buffer_verified.exit

set_buffer_verified.exit:                         ; preds = %if.then.i131, %set_buffer_uptodate.exit.set_buffer_verified.exit_crit_edge
  %49 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %s_fs_info.i, align 16
  %s_blockgroup_lock.i.i144 = getelementptr inbounds %struct.ext4_sb_info, ptr %50, i32 0, i32 41
  %51 = ptrtoint ptr %s_blockgroup_lock.i.i144 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %s_blockgroup_lock.i.i144, align 8
  %and.i.i.i = and i32 %block_group, 15
  %arrayidx.i.i.i = getelementptr [16 x %struct.bgl_lock], ptr %52, i32 0, i32 %and.i.i.i
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx.i.i.i) #11
  tail call void @unlock_buffer(ptr noundef nonnull %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %set_buffer_verified.exit.verify_crit_edge, label %if.then46

set_buffer_verified.exit.verify_crit_edge:        ; preds = %set_buffer_verified.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %verify

if.then46:                                        ; preds = %set_buffer_verified.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %sb, ptr noundef nonnull @__func__.ext4_read_block_bitmap_nowait, i32 noundef 483, i1 noundef zeroext false, i32 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.7, i32 noundef %block_group, i32 noundef %call44) #11
  br label %out

if.end48:                                         ; preds = %land.lhs.true36.if.end48_crit_edge, %if.end33.if.end48_crit_edge
  %53 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %s_fs_info.i, align 16
  %s_blockgroup_lock.i.i146 = getelementptr inbounds %struct.ext4_sb_info, ptr %54, i32 0, i32 41
  %55 = ptrtoint ptr %s_blockgroup_lock.i.i146 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %s_blockgroup_lock.i.i146, align 8
  %and.i.i.i147 = and i32 %block_group, 15
  %arrayidx.i.i.i148 = getelementptr [16 x %struct.bgl_lock], ptr %56, i32 0, i32 %and.i.i.i147
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx.i.i.i148) #11
  %57 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %call.i, align 4
  %and1.i.i132 = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i132)
  %tobool50.not = icmp eq i32 %and1.i.i132, 0
  br i1 %tobool50.not, label %if.end52, label %if.then51

if.then51:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_set_bit(i32 noundef 25, ptr noundef nonnull %call.i) #11
  br label %verify.sink.split

if.end52:                                         ; preds = %if.end48
  %59 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %call.i, align 4
  %61 = and i32 %60, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool.not.i133 = icmp eq i32 %61, 0
  br i1 %tobool.not.i133, label %if.then.i134, label %if.end52.set_buffer_new.exit_crit_edge

if.end52.set_buffer_new.exit_crit_edge:           ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_buffer_new.exit

if.then.i134:                                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_set_bit(i32 noundef 5, ptr noundef nonnull %call.i) #11
  br label %set_buffer_new.exit

set_buffer_new.exit:                              ; preds = %if.then.i134, %if.end52.set_buffer_new.exit_crit_edge
  tail call fastcc void @trace_ext4_read_block_bitmap_load(ptr noundef %sb, i32 noundef %block_group, i1 noundef zeroext %ignore_locked)
  %conv56 = select i1 %ignore_locked, i32 536576, i32 12288
  tail call void @ext4_read_bh_nowait(ptr noundef nonnull %call.i, i32 noundef %conv56, ptr noundef nonnull @ext4_end_bitmap_read) #11
  br label %cleanup

verify.sink.split:                                ; preds = %if.then51, %bitmap_uptodate.exit142.verify.sink.split_crit_edge
  tail call void @unlock_buffer(ptr noundef nonnull %call.i) #11
  br label %verify

verify:                                           ; preds = %verify.sink.split, %set_buffer_verified.exit.verify_crit_edge, %bitmap_uptodate.exit.verify_crit_edge
  %call57 = tail call fastcc i32 @ext4_validate_block_bitmap(ptr noundef %sb, ptr noundef nonnull %call1, i32 noundef %block_group, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %verify.cleanup_crit_edge, label %verify.out_crit_edge

verify.out_crit_edge:                             ; preds = %verify
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

verify.cleanup_crit_edge:                         ; preds = %verify
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

out:                                              ; preds = %verify.out_crit_edge, %if.then46, %if.then42
  %err.0 = phi i32 [ %call57, %verify.out_crit_edge ], [ -117, %if.then42 ], [ %call44, %if.then46 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !74
  %b_count.i149 = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 11
  %call.i.i.i150 = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i149, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %b_count.i149, i32 1, i32 3, i32 1) #11
  %62 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i149, ptr %b_count.i149, i32 1, ptr elementtype(i32) %b_count.i149) #11, !srcloc !75
  %63 = inttoptr i32 %err.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %out, %verify.cleanup_crit_edge, %set_buffer_new.exit, %if.then24, %if.then17, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -117 to ptr), %if.then9 ], [ inttoptr (i32 -12 to ptr), %if.then17 ], [ null, %if.then24 ], [ %63, %out ], [ %call.i, %set_buffer_new.exit ], [ %call.i, %verify.cleanup_crit_edge ], [ inttoptr (i32 -117 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ext4_block_bitmap(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_mark_group_bitmap_corrupted(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_warning(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_buffer(ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ext4_lock_group(ptr nocapture noundef readonly %sb, i32 noundef %group) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_blockgroup_lock.i = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 41
  %2 = ptrtoint ptr %s_blockgroup_lock.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_blockgroup_lock.i, align 8
  %and.i.i = and i32 %group, 15
  %arrayidx.i.i = getelementptr [16 x %struct.bgl_lock], ptr %3, i32 0, i32 %and.i.i
  %call.i = tail call i32 @_raw_spin_trylock(ptr noundef %arrayidx.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  %4 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_lock_busy5 = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 107
  %call.i.i10 = tail call zeroext i1 @__kasan_check_write(ptr noundef %s_lock_busy5, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11
  tail call void @llvm.prefetch.p0(ptr %s_lock_busy5, i32 1, i32 3, i32 1) #11
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %s_lock_busy5, ptr %s_lock_busy5, i32 0, i32 -1, ptr elementtype(i32) %s_lock_busy5) #11, !srcloc !78
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %if.then.if.end_crit_edge, label %do.end11.i.i.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end11.i.i.i:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !79
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %s_lock_busy5, ptr %s_lock_busy5, i32 8, i32 1, ptr elementtype(i32) %s_lock_busy5) #11, !srcloc !78
  %asmresult.i.i.i11 = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %asmresult.i.i.i11)
  %cmp.not.i.i.i12 = icmp eq i32 %asmresult.i.i.i11, 8
  br i1 %cmp.not.i.i.i12, label %if.else.atomic_add_unless.exit14_crit_edge, label %do.end11.i.i.i13

if.else.atomic_add_unless.exit14_crit_edge:       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %atomic_add_unless.exit14

do.end11.i.i.i13:                                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !79
  br label %atomic_add_unless.exit14

atomic_add_unless.exit14:                         ; preds = %do.end11.i.i.i13, %if.else.atomic_add_unless.exit14_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %arrayidx.i.i) #11
  br label %if.end

if.end:                                           ; preds = %atomic_add_unless.exit14, %do.end11.i.i.i, %if.then.if.end_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ext4_has_group_desc_csum(ptr nocapture noundef readonly %sb) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_es.i = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %s_es.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_es.i, align 4
  %s_feature_ro_compat.i = getelementptr inbounds %struct.ext4_super_block, ptr %3, i32 0, i32 30
  %4 = ptrtoint ptr %s_feature_ro_compat.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_feature_ro_compat.i, align 4
  %and.i = and i32 %5, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 0
  br i1 %cmp.i.not, label %lor.rhs, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  %and.i.i = and i32 %5, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.not.i, label %lor.rhs.if.end32.i_crit_edge, label %land.rhs.i

lor.rhs.if.end32.i_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32.i

land.rhs.i:                                       ; preds = %lor.rhs
  %s_chksum_driver.i = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 121
  %6 = ptrtoint ptr %s_chksum_driver.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_chksum_driver.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %land.rhs5.i, label %land.rhs.i.if.end32.i_crit_edge

land.rhs.i.if.end32.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32.i

land.rhs5.i:                                      ; preds = %land.rhs.i
  %.b50.i = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  br i1 %.b50.i, label %land.rhs5.i.if.end32.i_crit_edge, label %if.then.i, !prof !68

land.rhs5.i.if.end32.i_crit_edge:                 ; preds = %land.rhs5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32.i

if.then.i:                                        ; preds = %land.rhs5.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 3289, i32 noundef 9, ptr noundef null) #11
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then.i, %land.rhs5.i.if.end32.i_crit_edge, %land.rhs.i.if.end32.i_crit_edge, %lor.rhs.if.end32.i_crit_edge
  %8 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_es.i53.i = getelementptr inbounds %struct.ext4_sb_info, ptr %9, i32 0, i32 15
  %10 = ptrtoint ptr %s_es.i53.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_es.i53.i, align 4
  %s_feature_ro_compat.i54.i = getelementptr inbounds %struct.ext4_super_block, ptr %11, i32 0, i32 30
  %12 = ptrtoint ptr %s_feature_ro_compat.i54.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_feature_ro_compat.i54.i, align 4
  %and.i55.i = and i32 %13, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i55.i)
  %cmp.i56.not.i = icmp eq i32 %and.i55.i, 0
  br i1 %cmp.i56.not.i, label %if.end32.i.lor.end_crit_edge, label %land.rhs41.i

if.end32.i.lor.end_crit_edge:                     ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.end

land.rhs41.i:                                     ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #13
  %s_chksum_driver43.i = getelementptr inbounds %struct.ext4_sb_info, ptr %9, i32 0, i32 121
  %14 = ptrtoint ptr %s_chksum_driver43.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_chksum_driver43.i, align 4
  %cmp.i3 = icmp ne ptr %15, null
  %phi.cast4 = zext i1 %cmp.i3 to i32
  br label %lor.end

lor.end:                                          ; preds = %land.rhs41.i, %if.end32.i.lor.end_crit_edge, %entry.lor.end_crit_edge
  %16 = phi i32 [ 1, %entry.lor.end_crit_edge ], [ 0, %if.end32.i.lor.end_crit_edge ], [ %phi.cast4, %land.rhs41.i ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ext4_init_block_bitmap(ptr noundef %sb, ptr noundef %bh, i32 noundef %block_group, ptr noundef %gdp) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %2 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %bh, align 4
  %4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %do.end, label %do.end15, !prof !73

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 188, ptr noundef nonnull @.str.17) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/balloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 188, 0\0A.popsection", ""() #11, !srcloc !80
  unreachable

do.end15:                                         ; preds = %entry
  %call16 = tail call i32 @ext4_group_desc_csum_verify(ptr noundef %sb, i32 noundef %block_group, ptr noundef %gdp) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then18, label %if.end19

if.then18:                                        ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @ext4_mark_group_bitmap_corrupted(ptr noundef %sb, i32 noundef %block_group, i32 noundef 12) #11
  br label %cleanup

if.end19:                                         ; preds = %do.end15
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 5
  %5 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %b_data, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %7 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_blocksize, align 16
  %9 = call ptr @memset(ptr %6, i32 0, i32 %8)
  %call20 = tail call fastcc i32 @ext4_num_base_meta_clusters(ptr noundef %sb, i32 noundef %block_group)
  %shr = lshr i32 %call20, 3
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 4
  %10 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %b_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %11)
  %cmp.not = icmp ult i32 %shr, %11
  br i1 %cmp.not, label %for.cond.preheader, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp23421.not = icmp eq i32 %call20, 0
  br i1 %cmp23421.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %bit.0422 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %12 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %b_data, align 4
  %xor.i = and i32 %bit.0422, 31
  %rem.i.i = xor i32 %xor.i, 24
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %bit.0422, 5
  %add.ptr.i.i = getelementptr i32, ptr %13, i32 %div2.i.i
  %14 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %15, %shl.i.i
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  %inc = add nuw i32 %bit.0422, 1
  %exitcond.not = icmp eq i32 %inc, %call20
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %conv.i = zext i32 %block_group to i64
  %16 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_fs_info.i, align 16
  %s_blocks_per_group.i = getelementptr inbounds %struct.ext4_sb_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %s_blocks_per_group.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %s_blocks_per_group.i, align 8
  %conv1.i = zext i32 %19 to i64
  %mul.i = mul nuw i64 %conv1.i, %conv.i
  %s_es.i = getelementptr inbounds %struct.ext4_sb_info, ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %s_es.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %s_es.i, align 4
  %s_first_data_block.i = getelementptr inbounds %struct.ext4_super_block, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %s_first_data_block.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %s_first_data_block.i, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #11
  %conv3.i = zext i32 %24 to i64
  %add.i = add nuw i64 %mul.i, %conv3.i
  %call26 = tail call i64 @ext4_block_bitmap(ptr noundef %sb, ptr noundef %gdp) #11
  %25 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt2.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %26, i32 0, i32 18
  %27 = ptrtoint ptr %s_mount_opt2.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %s_mount_opt2.i.i, align 16
  %and.i.i = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %s_es.i.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %26, i32 0, i32 15
  %29 = ptrtoint ptr %s_es.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %s_es.i.i.i, align 4
  %s_first_data_block.i.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %s_first_data_block.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %s_first_data_block.i.i.i, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #11
  %conv.i.i.i = zext i32 %33 to i64
  %sub.i.i.i = sub i64 %call26, %conv.i.i.i
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %s_blocksize_bits.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %34 = ptrtoint ptr %s_blocksize_bits.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %s_blocksize_bits.i.i, align 4
  %conv2.i.i = zext i8 %35 to i32
  %s_cluster_bits.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %26, i32 0, i32 12
  %36 = ptrtoint ptr %s_cluster_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %s_cluster_bits.i.i, align 16
  %add.i.i = add nuw nsw i32 %conv2.i.i, 3
  %add4.i.i = add i32 %add.i.i, %37
  %sh_prom.i.i = zext i32 %add4.i.i to i64
  %shr.i.i118 = lshr i64 %sub.i.i.i, %sh_prom.i.i
  %conv5.i.i = trunc i64 %shr.i.i118 to i32
  br label %ext4_block_in_group.exit

if.else.i.i:                                      ; preds = %for.end
  %s_blocks_per_group.i.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %26, i32 0, i32 2
  %38 = ptrtoint ptr %s_blocks_per_group.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %s_blocks_per_group.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i.i.i)
  %cmp169.i.i.i = icmp ult i64 %sub.i.i.i, 4294967296
  br i1 %cmp169.i.i.i, label %if.then173.i.i.i, label %if.else179.i.i.i, !prof !68

if.then173.i.i.i:                                 ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv174.i.i.i = trunc i64 %sub.i.i.i to i32
  %div177.i.i.i = udiv i32 %conv174.i.i.i, %39
  br label %ext4_block_in_group.exit

if.else179.i.i.i:                                 ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %40 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %39, i64 %sub.i.i.i) #14, !srcloc !69
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %40, 1
  %extract.t307.i.i.i = trunc i64 %asmresult1.i.i.i.i to i32
  br label %ext4_block_in_group.exit

ext4_block_in_group.exit:                         ; preds = %if.else179.i.i.i, %if.then173.i.i.i, %if.then.i.i
  %group.0.i.i = phi i32 [ %conv5.i.i, %if.then.i.i ], [ %div177.i.i.i, %if.then173.i.i.i ], [ %extract.t307.i.i.i, %if.else179.i.i.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %group.0.i.i, i32 %block_group)
  %cmp.i.not = icmp eq i32 %group.0.i.i, %block_group
  br i1 %cmp.i.not, label %if.then29, label %ext4_block_in_group.exit.if.end32_crit_edge

ext4_block_in_group.exit.if.end32_crit_edge:      ; preds = %ext4_block_in_group.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

if.then29:                                        ; preds = %ext4_block_in_group.exit
  call void @__sanitizer_cov_trace_pc() #13
  %sub = sub i64 %call26, %add.i
  %s_cluster_bits = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 12
  %41 = ptrtoint ptr %s_cluster_bits to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %s_cluster_bits, align 16
  %sh_prom = zext i32 %42 to i64
  %shr30 = lshr i64 %sub, %sh_prom
  %conv = trunc i64 %shr30 to i32
  %43 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %b_data, align 4
  %xor.i119 = and i32 %conv, 31
  %rem.i.i120 = xor i32 %xor.i119, 24
  %shl.i.i121 = shl nuw i32 1, %rem.i.i120
  %div2.i.i122 = lshr i32 %conv, 5
  %add.ptr.i.i123 = getelementptr i32, ptr %44, i32 %div2.i.i122
  %45 = ptrtoint ptr %add.ptr.i.i123 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %add.ptr.i.i123, align 4
  %or.i.i124 = or i32 %shl.i.i121, %46
  store i32 %or.i.i124, ptr %add.ptr.i.i123, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %ext4_block_in_group.exit.if.end32_crit_edge
  %call33 = tail call i64 @ext4_inode_bitmap(ptr noundef %sb, ptr noundef %gdp) #11
  %47 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt2.i.i126 = getelementptr inbounds %struct.ext4_sb_info, ptr %48, i32 0, i32 18
  %49 = ptrtoint ptr %s_mount_opt2.i.i126 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %s_mount_opt2.i.i126, align 16
  %and.i.i127 = and i32 %50, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i127)
  %tobool.not.i.i128 = icmp eq i32 %and.i.i127, 0
  %s_es.i.i.i129 = getelementptr inbounds %struct.ext4_sb_info, ptr %48, i32 0, i32 15
  %51 = ptrtoint ptr %s_es.i.i.i129 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %s_es.i.i.i129, align 4
  %s_first_data_block.i.i.i130 = getelementptr inbounds %struct.ext4_super_block, ptr %52, i32 0, i32 5
  %53 = ptrtoint ptr %s_first_data_block.i.i.i130 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %s_first_data_block.i.i.i130, align 4
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #11
  %conv.i.i.i131 = zext i32 %55 to i64
  %sub.i.i.i132 = sub i64 %call33, %conv.i.i.i131
  br i1 %tobool.not.i.i128, label %if.else.i.i146, label %if.then.i.i141

if.then.i.i141:                                   ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  %s_blocksize_bits.i.i133 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %56 = ptrtoint ptr %s_blocksize_bits.i.i133 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %s_blocksize_bits.i.i133, align 4
  %conv2.i.i134 = zext i8 %57 to i32
  %s_cluster_bits.i.i135 = getelementptr inbounds %struct.ext4_sb_info, ptr %48, i32 0, i32 12
  %58 = ptrtoint ptr %s_cluster_bits.i.i135 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %s_cluster_bits.i.i135, align 16
  %add.i.i136 = add nuw nsw i32 %conv2.i.i134, 3
  %add4.i.i137 = add i32 %add.i.i136, %59
  %sh_prom.i.i138 = zext i32 %add4.i.i137 to i64
  %shr.i.i139 = lshr i64 %sub.i.i.i132, %sh_prom.i.i138
  %conv5.i.i140 = trunc i64 %shr.i.i139 to i32
  br label %ext4_block_in_group.exit263

if.else.i.i146:                                   ; preds = %if.end32
  %s_blocks_per_group.i.i.i142 = getelementptr inbounds %struct.ext4_sb_info, ptr %48, i32 0, i32 2
  %60 = ptrtoint ptr %s_blocks_per_group.i.i.i142 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %s_blocks_per_group.i.i.i142, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i.i.i132)
  %cmp169.i.i.i252 = icmp ult i64 %sub.i.i.i132, 4294967296
  br i1 %cmp169.i.i.i252, label %if.then173.i.i.i256, label %if.else179.i.i.i259, !prof !68

if.then173.i.i.i256:                              ; preds = %if.else.i.i146
  call void @__sanitizer_cov_trace_pc() #13
  %conv174.i.i.i254 = trunc i64 %sub.i.i.i132 to i32
  %div177.i.i.i255 = udiv i32 %conv174.i.i.i254, %61
  br label %ext4_block_in_group.exit263

if.else179.i.i.i259:                              ; preds = %if.else.i.i146
  call void @__sanitizer_cov_trace_pc() #13
  %62 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %61, i64 %sub.i.i.i132) #14, !srcloc !69
  %asmresult1.i.i.i.i257 = extractvalue { i64, i64 } %62, 1
  %extract.t307.i.i.i258 = trunc i64 %asmresult1.i.i.i.i257 to i32
  br label %ext4_block_in_group.exit263

ext4_block_in_group.exit263:                      ; preds = %if.else179.i.i.i259, %if.then173.i.i.i256, %if.then.i.i141
  %group.0.i.i260 = phi i32 [ %conv5.i.i140, %if.then.i.i141 ], [ %div177.i.i.i255, %if.then173.i.i.i256 ], [ %extract.t307.i.i.i258, %if.else179.i.i.i259 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %group.0.i.i260, i32 %block_group)
  %cmp.i261.not = icmp eq i32 %group.0.i.i260, %block_group
  br i1 %cmp.i261.not, label %if.then36, label %ext4_block_in_group.exit263.if.end43_crit_edge

ext4_block_in_group.exit263.if.end43_crit_edge:   ; preds = %ext4_block_in_group.exit263
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

if.then36:                                        ; preds = %ext4_block_in_group.exit263
  call void @__sanitizer_cov_trace_pc() #13
  %sub37 = sub i64 %call33, %add.i
  %s_cluster_bits38 = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 12
  %63 = ptrtoint ptr %s_cluster_bits38 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %s_cluster_bits38, align 16
  %sh_prom39 = zext i32 %64 to i64
  %shr40 = lshr i64 %sub37, %sh_prom39
  %conv41 = trunc i64 %shr40 to i32
  %65 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %b_data, align 4
  %xor.i264 = and i32 %conv41, 31
  %rem.i.i265 = xor i32 %xor.i264, 24
  %shl.i.i266 = shl nuw i32 1, %rem.i.i265
  %div2.i.i267 = lshr i32 %conv41, 5
  %add.ptr.i.i268 = getelementptr i32, ptr %66, i32 %div2.i.i267
  %67 = ptrtoint ptr %add.ptr.i.i268 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %add.ptr.i.i268, align 4
  %or.i.i269 = or i32 %shl.i.i266, %68
  store i32 %or.i.i269, ptr %add.ptr.i.i268, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then36, %ext4_block_in_group.exit263.if.end43_crit_edge
  %call44 = tail call i64 @ext4_inode_table(ptr noundef %sb, ptr noundef %gdp) #11
  %call46423 = tail call i64 @ext4_inode_table(ptr noundef %sb, ptr noundef %gdp) #11
  %s_itb_per_group = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 5
  %69 = ptrtoint ptr %s_itb_per_group to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %s_itb_per_group, align 4
  %conv47424 = zext i32 %70 to i64
  %add425 = add i64 %call46423, %conv47424
  call void @__sanitizer_cov_trace_cmp8(i64 %call44, i64 %add425)
  %cmp48426 = icmp ult i64 %call44, %add425
  br i1 %cmp48426, label %for.body50.lr.ph, label %if.end43.for.end63_crit_edge

if.end43.for.end63_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end63

for.body50.lr.ph:                                 ; preds = %if.end43
  %s_blocksize_bits.i.i278 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %s_cluster_bits55 = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 12
  br label %for.body50

for.body50:                                       ; preds = %for.inc61.for.body50_crit_edge, %for.body50.lr.ph
  %tmp.0427 = phi i64 [ %call44, %for.body50.lr.ph ], [ %inc62, %for.inc61.for.body50_crit_edge ]
  %71 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt2.i.i271 = getelementptr inbounds %struct.ext4_sb_info, ptr %72, i32 0, i32 18
  %73 = ptrtoint ptr %s_mount_opt2.i.i271 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %s_mount_opt2.i.i271, align 16
  %and.i.i272 = and i32 %74, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i272)
  %tobool.not.i.i273 = icmp eq i32 %and.i.i272, 0
  %s_es.i.i.i274 = getelementptr inbounds %struct.ext4_sb_info, ptr %72, i32 0, i32 15
  %75 = ptrtoint ptr %s_es.i.i.i274 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %s_es.i.i.i274, align 4
  %s_first_data_block.i.i.i275 = getelementptr inbounds %struct.ext4_super_block, ptr %76, i32 0, i32 5
  %77 = ptrtoint ptr %s_first_data_block.i.i.i275 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %s_first_data_block.i.i.i275, align 4
  %79 = tail call i32 @llvm.bswap.i32(i32 %78) #11
  %conv.i.i.i276 = zext i32 %79 to i64
  %sub.i.i.i277 = sub i64 %tmp.0427, %conv.i.i.i276
  br i1 %tobool.not.i.i273, label %if.else.i.i291, label %if.then.i.i286

if.then.i.i286:                                   ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #13
  %80 = ptrtoint ptr %s_blocksize_bits.i.i278 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %s_blocksize_bits.i.i278, align 4
  %conv2.i.i279 = zext i8 %81 to i32
  %s_cluster_bits.i.i280 = getelementptr inbounds %struct.ext4_sb_info, ptr %72, i32 0, i32 12
  %82 = ptrtoint ptr %s_cluster_bits.i.i280 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %s_cluster_bits.i.i280, align 16
  %add.i.i281 = add nuw nsw i32 %conv2.i.i279, 3
  %add4.i.i282 = add i32 %add.i.i281, %83
  %sh_prom.i.i283 = zext i32 %add4.i.i282 to i64
  %shr.i.i284 = lshr i64 %sub.i.i.i277, %sh_prom.i.i283
  %conv5.i.i285 = trunc i64 %shr.i.i284 to i32
  br label %ext4_block_in_group.exit408

if.else.i.i291:                                   ; preds = %for.body50
  %s_blocks_per_group.i.i.i287 = getelementptr inbounds %struct.ext4_sb_info, ptr %72, i32 0, i32 2
  %84 = ptrtoint ptr %s_blocks_per_group.i.i.i287 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %s_blocks_per_group.i.i.i287, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i.i.i277)
  %cmp169.i.i.i397 = icmp ult i64 %sub.i.i.i277, 4294967296
  br i1 %cmp169.i.i.i397, label %if.then173.i.i.i401, label %if.else179.i.i.i404, !prof !68

if.then173.i.i.i401:                              ; preds = %if.else.i.i291
  call void @__sanitizer_cov_trace_pc() #13
  %conv174.i.i.i399 = trunc i64 %sub.i.i.i277 to i32
  %div177.i.i.i400 = udiv i32 %conv174.i.i.i399, %85
  br label %ext4_block_in_group.exit408

if.else179.i.i.i404:                              ; preds = %if.else.i.i291
  call void @__sanitizer_cov_trace_pc() #13
  %86 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %85, i64 %sub.i.i.i277) #14, !srcloc !69
  %asmresult1.i.i.i.i402 = extractvalue { i64, i64 } %86, 1
  %extract.t307.i.i.i403 = trunc i64 %asmresult1.i.i.i.i402 to i32
  br label %ext4_block_in_group.exit408

ext4_block_in_group.exit408:                      ; preds = %if.else179.i.i.i404, %if.then173.i.i.i401, %if.then.i.i286
  %group.0.i.i405 = phi i32 [ %conv5.i.i285, %if.then.i.i286 ], [ %div177.i.i.i400, %if.then173.i.i.i401 ], [ %extract.t307.i.i.i403, %if.else179.i.i.i404 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %group.0.i.i405, i32 %block_group)
  %cmp.i406.not = icmp eq i32 %group.0.i.i405, %block_group
  br i1 %cmp.i406.not, label %if.then53, label %ext4_block_in_group.exit408.for.inc61_crit_edge

ext4_block_in_group.exit408.for.inc61_crit_edge:  ; preds = %ext4_block_in_group.exit408
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc61

if.then53:                                        ; preds = %ext4_block_in_group.exit408
  call void @__sanitizer_cov_trace_pc() #13
  %sub54 = sub i64 %tmp.0427, %add.i
  %87 = ptrtoint ptr %s_cluster_bits55 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %s_cluster_bits55, align 16
  %sh_prom56 = zext i32 %88 to i64
  %shr57 = lshr i64 %sub54, %sh_prom56
  %conv58 = trunc i64 %shr57 to i32
  %89 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %b_data, align 4
  %xor.i409 = and i32 %conv58, 31
  %rem.i.i410 = xor i32 %xor.i409, 24
  %shl.i.i411 = shl nuw i32 1, %rem.i.i410
  %div2.i.i412 = lshr i32 %conv58, 5
  %add.ptr.i.i413 = getelementptr i32, ptr %90, i32 %div2.i.i412
  %91 = ptrtoint ptr %add.ptr.i.i413 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %add.ptr.i.i413, align 4
  %or.i.i414 = or i32 %shl.i.i411, %92
  store i32 %or.i.i414, ptr %add.ptr.i.i413, align 4
  br label %for.inc61

for.inc61:                                        ; preds = %if.then53, %ext4_block_in_group.exit408.for.inc61_crit_edge
  %inc62 = add nuw i64 %tmp.0427, 1
  %call46 = tail call i64 @ext4_inode_table(ptr noundef %sb, ptr noundef %gdp) #11
  %93 = ptrtoint ptr %s_itb_per_group to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %s_itb_per_group, align 4
  %conv47 = zext i32 %94 to i64
  %add = add i64 %call46, %conv47
  %cmp48 = icmp ult i64 %inc62, %add
  br i1 %cmp48, label %for.inc61.for.body50_crit_edge, label %for.inc61.for.end63_crit_edge

for.inc61.for.end63_crit_edge:                    ; preds = %for.inc61
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end63

for.inc61.for.body50_crit_edge:                   ; preds = %for.inc61
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body50

for.end63:                                        ; preds = %for.inc61.for.end63_crit_edge, %if.end43.for.end63_crit_edge
  %95 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %s_fs_info.i, align 16
  %s_groups_count.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %96, i32 0, i32 8
  %97 = ptrtoint ptr %s_groups_count.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %s_groups_count.i.i, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !70
  %sub.i = add i32 %98, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %block_group)
  %cmp.i416 = icmp eq i32 %sub.i, %block_group
  %99 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %s_fs_info.i, align 16
  br i1 %cmp.i416, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.end63
  call void @__sanitizer_cov_trace_pc() #13
  %s_es.i417 = getelementptr inbounds %struct.ext4_sb_info, ptr %100, i32 0, i32 15
  %101 = ptrtoint ptr %s_es.i417 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %s_es.i417, align 4
  %s_blocks_count_lo.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %s_blocks_count_lo.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %s_blocks_count_lo.i.i, align 4
  %105 = tail call i32 @llvm.bswap.i32(i32 %104) #11
  %s_blocks_per_group.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %100, i32 0, i32 2
  %106 = ptrtoint ptr %s_blocks_per_group.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %s_blocks_per_group.i.i, align 8
  %mul.i.i = mul i32 %107, %block_group
  %s_first_data_block.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %102, i32 0, i32 5
  %108 = ptrtoint ptr %s_first_data_block.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %s_first_data_block.i.i, align 4
  %110 = tail call i32 @llvm.bswap.i32(i32 %109) #11
  %111 = add i32 %mul.i.i, %110
  %sub4.i = sub i32 %105, %111
  br label %num_clusters_in_group.exit

if.else.i:                                        ; preds = %for.end63
  call void @__sanitizer_cov_trace_pc() #13
  %s_blocks_per_group.i418 = getelementptr inbounds %struct.ext4_sb_info, ptr %100, i32 0, i32 2
  %112 = ptrtoint ptr %s_blocks_per_group.i418 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %s_blocks_per_group.i418, align 8
  br label %num_clusters_in_group.exit

num_clusters_in_group.exit:                       ; preds = %if.else.i, %if.then.i
  %blocks.0.i = phi i32 [ %sub4.i, %if.then.i ], [ %113, %if.else.i ]
  %s_cluster_ratio.i = getelementptr inbounds %struct.ext4_sb_info, ptr %100, i32 0, i32 11
  %114 = ptrtoint ptr %s_cluster_ratio.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %s_cluster_ratio.i, align 4
  %add.i419 = add i32 %blocks.0.i, -1
  %sub7.i = add i32 %add.i419, %115
  %s_cluster_bits.i = getelementptr inbounds %struct.ext4_sb_info, ptr %100, i32 0, i32 12
  %116 = ptrtoint ptr %s_cluster_bits.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %s_cluster_bits.i, align 16
  %shr.i = lshr i32 %sub7.i, %117
  %118 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %s_blocksize, align 16
  %mul = shl i32 %119, 3
  %120 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %b_data, align 4
  tail call void @ext4_mark_bitmap_end(i32 noundef %shr.i, i32 noundef %mul, ptr noundef %121) #11
  br label %cleanup

cleanup:                                          ; preds = %num_clusters_in_group.exit, %if.end19.cleanup_crit_edge, %if.then18
  %retval.0 = phi i32 [ 0, %num_clusters_in_group.exit ], [ -74, %if.then18 ], [ -117, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ext4_read_block_bitmap_load(ptr noundef %sb, i32 noundef %group, i1 noundef zeroext %prefetch) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_read_block_bitmap_load, i32 0, i32 1), ptr blockaddress(@trace_ext4_read_block_bitmap_load, %do.body)) #11
          to label %if.end49 [label %do.body], !srcloc !81

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !58) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !68

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !58) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !82
  %call43 = tail call i32 @__traceiter_ext4_read_block_bitmap_load(ptr noundef null, ptr noundef %sb, i32 noundef %group, i1 noundef zeroext %prefetch) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !83
  %13 = tail call i32 @llvm.read_register.i32(metadata !58) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !58) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit86

land.rhs.i.i.i.i80:                               ; preds = %if.end49
  %.b37.i.i.i.i79 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !68

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit86
  %26 = tail call i32 @llvm.read_register.i32(metadata !58) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !84
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_read_block_bitmap_load, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_read_block_bitmap_load, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b73 = load i1, ptr @trace_ext4_read_block_bitmap_load.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_ext4_read_block_bitmap_load.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 1359, ptr noundef nonnull @.str.2) #11
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !85
  %31 = tail call i32 @llvm.read_register.i32(metadata !58) #11
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_read_bh_nowait(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_end_bitmap_read(ptr noundef, i32 noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ext4_validate_block_bitmap(ptr noundef %sb, ptr noundef %desc, i32 noundef %block_group, ptr noundef %bh) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_state = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %s_mount_state to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %s_mount_state, align 8
  %4 = and i16 %3, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc ptr @ext4_get_group_info(ptr noundef %sb, i32 noundef %block_group)
  %5 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %bh, align 4
  %7 = and i32 %6, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %8 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %call1, align 4
  %10 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool7.not = icmp eq i32 %10, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %11 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_fs_info.i, align 16
  %s_blockgroup_lock.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %12, i32 0, i32 41
  %13 = ptrtoint ptr %s_blockgroup_lock.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_blockgroup_lock.i.i, align 8
  %and.i.i.i = and i32 %block_group, 15
  %arrayidx.i.i.i = getelementptr [16 x %struct.bgl_lock], ptr %14, i32 0, i32 %and.i.i.i
  %call.i.i = tail call i32 @_raw_spin_trylock(ptr noundef %arrayidx.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i63 = icmp eq i32 %call.i.i, 0
  %15 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_fs_info.i, align 16
  %s_lock_busy5.i = getelementptr inbounds %struct.ext4_sb_info, ptr %16, i32 0, i32 107
  %call.i.i10.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %s_lock_busy5.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11
  tail call void @llvm.prefetch.p0(ptr %s_lock_busy5.i, i32 1, i32 3, i32 1) #11
  br i1 %tobool.not.i63, label %if.else.i, label %if.then.i64

if.then.i64:                                      ; preds = %if.end9
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %s_lock_busy5.i, ptr %s_lock_busy5.i, i32 0, i32 -1, ptr elementtype(i32) %s_lock_busy5.i) #11, !srcloc !78
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then.i64.ext4_lock_group.exit_crit_edge, label %do.end11.i.i.i.i

if.then.i64.ext4_lock_group.exit_crit_edge:       ; preds = %if.then.i64
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_lock_group.exit

do.end11.i.i.i.i:                                 ; preds = %if.then.i64
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !79
  br label %ext4_lock_group.exit

if.else.i:                                        ; preds = %if.end9
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %s_lock_busy5.i, ptr %s_lock_busy5.i, i32 8, i32 1, ptr elementtype(i32) %s_lock_busy5.i) #11, !srcloc !78
  %asmresult.i.i.i11.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %asmresult.i.i.i11.i)
  %cmp.not.i.i.i12.i = icmp eq i32 %asmresult.i.i.i11.i, 8
  br i1 %cmp.not.i.i.i12.i, label %if.else.i.atomic_add_unless.exit14.i_crit_edge, label %do.end11.i.i.i13.i

if.else.i.atomic_add_unless.exit14.i_crit_edge:   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %atomic_add_unless.exit14.i

do.end11.i.i.i13.i:                               ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !79
  br label %atomic_add_unless.exit14.i

atomic_add_unless.exit14.i:                       ; preds = %do.end11.i.i.i13.i, %if.else.i.atomic_add_unless.exit14.i_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %arrayidx.i.i.i) #11
  br label %ext4_lock_group.exit

ext4_lock_group.exit:                             ; preds = %atomic_add_unless.exit14.i, %do.end11.i.i.i.i, %if.then.i64.ext4_lock_group.exit_crit_edge
  %19 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %bh, align 4
  %21 = and i32 %20, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool11.not = icmp eq i32 %21, 0
  br i1 %tobool11.not, label %if.end13, label %ext4_lock_group.exit.verified_crit_edge

ext4_lock_group.exit.verified_crit_edge:          ; preds = %ext4_lock_group.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %verified

if.end13:                                         ; preds = %ext4_lock_group.exit
  %call14 = tail call i32 @ext4_block_bitmap_csum_verify(ptr noundef %sb, i32 noundef %block_group, ptr noundef %desc, ptr noundef %bh) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end13.if.then20_crit_edge, label %lor.rhs, !prof !73

if.end13.if.then20_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then20

lor.rhs:                                          ; preds = %if.end13
  %22 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_fs_info.i, align 16
  %s_simulate_fail.i = getelementptr inbounds %struct.ext4_sb_info, ptr %23, i32 0, i32 141
  %24 = ptrtoint ptr %s_simulate_fail.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %s_simulate_fail.i, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp.i = icmp eq i32 %25, 2
  br i1 %cmp.i, label %ext4_simulate_fail.exit.thread, label %if.end21, !prof !73

ext4_simulate_fail.exit.thread:                   ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %s_simulate_fail.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %s_simulate_fail.i, align 64
  br label %if.then20

if.then20:                                        ; preds = %ext4_simulate_fail.exit.thread, %if.end13.if.then20_crit_edge
  %27 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %s_fs_info.i, align 16
  %s_blockgroup_lock.i.i67 = getelementptr inbounds %struct.ext4_sb_info, ptr %28, i32 0, i32 41
  %29 = ptrtoint ptr %s_blockgroup_lock.i.i67 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %s_blockgroup_lock.i.i67, align 8
  %arrayidx.i.i.i69 = getelementptr [16 x %struct.bgl_lock], ptr %30, i32 0, i32 %and.i.i.i
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx.i.i.i69) #11
  tail call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %sb, ptr noundef nonnull @__func__.ext4_validate_block_bitmap, i32 noundef 390, i1 noundef zeroext false, i32 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.20, i32 noundef %block_group) #11
  tail call void @ext4_mark_group_bitmap_corrupted(ptr noundef %sb, i32 noundef %block_group, i32 noundef 4) #11
  br label %cleanup

if.end21:                                         ; preds = %lor.rhs
  %31 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %s_fs_info.i, align 16
  %s_clusters_per_group.i = getelementptr inbounds %struct.ext4_sb_info, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %s_clusters_per_group.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %s_clusters_per_group.i, align 4
  %s_es.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %32, i32 0, i32 15
  %35 = ptrtoint ptr %s_es.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %s_es.i.i, align 4
  %s_feature_incompat.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %36, i32 0, i32 29
  %37 = ptrtoint ptr %s_feature_incompat.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %s_feature_incompat.i.i, align 8
  %and.i.i = and i32 %38, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.not.i, label %if.end.i, label %if.end21.if.end31_crit_edge

if.end21.if.end31_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.end.i:                                         ; preds = %if.end21
  %conv.i.i = zext i32 %block_group to i64
  %s_blocks_per_group.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %32, i32 0, i32 2
  %39 = ptrtoint ptr %s_blocks_per_group.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %s_blocks_per_group.i.i, align 8
  %conv1.i.i = zext i32 %40 to i64
  %mul.i.i = mul nuw i64 %conv1.i.i, %conv.i.i
  %s_first_data_block.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %36, i32 0, i32 5
  %41 = ptrtoint ptr %s_first_data_block.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %s_first_data_block.i.i, align 4
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #11
  %conv3.i.i = zext i32 %43 to i64
  %add.i.i = add nuw i64 %mul.i.i, %conv3.i.i
  %call4.i = tail call i64 @ext4_block_bitmap(ptr noundef %sb, ptr noundef %desc) #11
  %sub.i = sub i64 %call4.i, %add.i.i
  %conv.i = trunc i64 %sub.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %cmp.i71 = icmp slt i32 %conv.i, 0
  br i1 %cmp.i71, label %if.end.i.ext4_valid_block_bitmap.exit_crit_edge, label %lor.lhs.false.i

if.end.i.ext4_valid_block_bitmap.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_valid_block_bitmap.exit

lor.lhs.false.i:                                  ; preds = %if.end.i
  %s_cluster_bits.i = getelementptr inbounds %struct.ext4_sb_info, ptr %32, i32 0, i32 12
  %44 = ptrtoint ptr %s_cluster_bits.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %s_cluster_bits.i, align 16
  %shr122.i = lshr i32 %conv.i, %45
  call void @__sanitizer_cov_trace_cmp4(i32 %shr122.i, i32 %34)
  %cmp6.not.i = icmp slt i32 %shr122.i, %34
  br i1 %cmp6.not.i, label %lor.lhs.false8.i, label %lor.lhs.false.i.ext4_valid_block_bitmap.exit_crit_edge

lor.lhs.false.i.ext4_valid_block_bitmap.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_valid_block_bitmap.exit

lor.lhs.false8.i:                                 ; preds = %lor.lhs.false.i
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 5
  %46 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %b_data.i, align 4
  %div3.i.i.i = lshr i32 %shr122.i, 5
  %arrayidx.i.i.i72 = getelementptr i32, ptr %47, i32 %div3.i.i.i
  %48 = ptrtoint ptr %arrayidx.i.i.i72 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %arrayidx.i.i.i72, align 4
  %xor.i.i = and i32 %shr122.i, 31
  %and.i.i.i73 = xor i32 %xor.i.i, 24
  %50 = shl nuw i32 1, %and.i.i.i73
  %51 = and i32 %49, %50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i74 = icmp eq i32 %51, 0
  br i1 %tobool.not.i74, label %lor.lhs.false8.i.ext4_valid_block_bitmap.exit_crit_edge, label %if.end13.i

lor.lhs.false8.i.ext4_valid_block_bitmap.exit_crit_edge: ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_valid_block_bitmap.exit

if.end13.i:                                       ; preds = %lor.lhs.false8.i
  %call14.i = tail call i64 @ext4_inode_bitmap(ptr noundef %sb, ptr noundef %desc) #11
  %sub15.i = sub i64 %call14.i, %add.i.i
  %conv16.i = trunc i64 %sub15.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv16.i)
  %cmp17.i = icmp slt i32 %conv16.i, 0
  br i1 %cmp17.i, label %if.end13.i.ext4_valid_block_bitmap.exit_crit_edge, label %lor.lhs.false19.i

if.end13.i.ext4_valid_block_bitmap.exit_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_valid_block_bitmap.exit

lor.lhs.false19.i:                                ; preds = %if.end13.i
  %52 = ptrtoint ptr %s_cluster_bits.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %s_cluster_bits.i, align 16
  %shr21123.i = lshr i32 %conv16.i, %53
  call void @__sanitizer_cov_trace_cmp4(i32 %shr21123.i, i32 %34)
  %cmp22.not.i = icmp slt i32 %shr21123.i, %34
  br i1 %cmp22.not.i, label %lor.lhs.false24.i, label %lor.lhs.false19.i.ext4_valid_block_bitmap.exit_crit_edge

lor.lhs.false19.i.ext4_valid_block_bitmap.exit_crit_edge: ; preds = %lor.lhs.false19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_valid_block_bitmap.exit

lor.lhs.false24.i:                                ; preds = %lor.lhs.false19.i
  %54 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %b_data.i, align 4
  %div3.i.i116.i = lshr i32 %shr21123.i, 5
  %arrayidx.i.i117.i = getelementptr i32, ptr %55, i32 %div3.i.i116.i
  %56 = ptrtoint ptr %arrayidx.i.i117.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %arrayidx.i.i117.i, align 4
  %xor.i118.i = and i32 %shr21123.i, 31
  %and.i.i119.i = xor i32 %xor.i118.i, 24
  %58 = shl nuw i32 1, %and.i.i119.i
  %59 = and i32 %57, %58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool29.not.i = icmp eq i32 %59, 0
  br i1 %tobool29.not.i, label %lor.lhs.false24.i.ext4_valid_block_bitmap.exit_crit_edge, label %if.end31.i

lor.lhs.false24.i.ext4_valid_block_bitmap.exit_crit_edge: ; preds = %lor.lhs.false24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_valid_block_bitmap.exit

if.end31.i:                                       ; preds = %lor.lhs.false24.i
  %call32.i = tail call i64 @ext4_inode_table(ptr noundef %sb, ptr noundef %desc) #11
  %sub33.i = sub i64 %call32.i, %add.i.i
  %conv34.i = trunc i64 %sub33.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv34.i)
  %cmp35.i = icmp slt i32 %conv34.i, 0
  br i1 %cmp35.i, label %if.end31.i.ext4_valid_block_bitmap.exit_crit_edge, label %lor.lhs.false37.i

if.end31.i.ext4_valid_block_bitmap.exit_crit_edge: ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_valid_block_bitmap.exit

lor.lhs.false37.i:                                ; preds = %if.end31.i
  %60 = ptrtoint ptr %s_cluster_bits.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %s_cluster_bits.i, align 16
  %shr39124.i = lshr i32 %conv34.i, %61
  call void @__sanitizer_cov_trace_cmp4(i32 %shr39124.i, i32 %34)
  %cmp40.not.i = icmp slt i32 %shr39124.i, %34
  br i1 %cmp40.not.i, label %lor.lhs.false42.i, label %lor.lhs.false37.i.ext4_valid_block_bitmap.exit_crit_edge

lor.lhs.false37.i.ext4_valid_block_bitmap.exit_crit_edge: ; preds = %lor.lhs.false37.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_valid_block_bitmap.exit

lor.lhs.false42.i:                                ; preds = %lor.lhs.false37.i
  %s_itb_per_group.i = getelementptr inbounds %struct.ext4_sb_info, ptr %32, i32 0, i32 5
  %62 = ptrtoint ptr %s_itb_per_group.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %s_itb_per_group.i, align 4
  %add.i = add i32 %63, %conv34.i
  %shr44.i = lshr i32 %add.i, %61
  call void @__sanitizer_cov_trace_cmp4(i32 %shr44.i, i32 %34)
  %cmp45.not.i = icmp ult i32 %shr44.i, %34
  br i1 %cmp45.not.i, label %if.end48.i, label %lor.lhs.false42.i.ext4_valid_block_bitmap.exit_crit_edge

lor.lhs.false42.i.ext4_valid_block_bitmap.exit_crit_edge: ; preds = %lor.lhs.false42.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_valid_block_bitmap.exit

if.end48.i:                                       ; preds = %lor.lhs.false42.i
  %64 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %b_data.i, align 4
  %call.i.i75 = tail call i32 @_find_next_zero_bit_le(ptr noundef %65, i32 noundef %shr44.i, i32 noundef %shr39124.i) #11
  %66 = ptrtoint ptr %s_itb_per_group.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %s_itb_per_group.i, align 4
  %add58.i = add i32 %67, %conv34.i
  %68 = ptrtoint ptr %s_cluster_bits.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %s_cluster_bits.i, align 16
  %shr60.i = lshr i32 %add58.i, %69
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i75, i32 %shr60.i)
  %cmp61.i = icmp ult i32 %call.i.i75, %shr60.i
  br i1 %cmp61.i, label %if.end48.i.ext4_valid_block_bitmap.exit_crit_edge, label %if.end48.i.if.end31_crit_edge

if.end48.i.if.end31_crit_edge:                    ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.end48.i.ext4_valid_block_bitmap.exit_crit_edge: ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_valid_block_bitmap.exit

ext4_valid_block_bitmap.exit:                     ; preds = %if.end48.i.ext4_valid_block_bitmap.exit_crit_edge, %lor.lhs.false42.i.ext4_valid_block_bitmap.exit_crit_edge, %lor.lhs.false37.i.ext4_valid_block_bitmap.exit_crit_edge, %if.end31.i.ext4_valid_block_bitmap.exit_crit_edge, %lor.lhs.false24.i.ext4_valid_block_bitmap.exit_crit_edge, %lor.lhs.false19.i.ext4_valid_block_bitmap.exit_crit_edge, %if.end13.i.ext4_valid_block_bitmap.exit_crit_edge, %lor.lhs.false8.i.ext4_valid_block_bitmap.exit_crit_edge, %lor.lhs.false.i.ext4_valid_block_bitmap.exit_crit_edge, %if.end.i.ext4_valid_block_bitmap.exit_crit_edge
  %retval.0.i = phi i64 [ %call4.i, %lor.lhs.false8.i.ext4_valid_block_bitmap.exit_crit_edge ], [ %call4.i, %lor.lhs.false.i.ext4_valid_block_bitmap.exit_crit_edge ], [ %call4.i, %if.end.i.ext4_valid_block_bitmap.exit_crit_edge ], [ %call14.i, %lor.lhs.false24.i.ext4_valid_block_bitmap.exit_crit_edge ], [ %call14.i, %lor.lhs.false19.i.ext4_valid_block_bitmap.exit_crit_edge ], [ %call14.i, %if.end13.i.ext4_valid_block_bitmap.exit_crit_edge ], [ %call32.i, %lor.lhs.false42.i.ext4_valid_block_bitmap.exit_crit_edge ], [ %call32.i, %lor.lhs.false37.i.ext4_valid_block_bitmap.exit_crit_edge ], [ %call32.i, %if.end31.i.ext4_valid_block_bitmap.exit_crit_edge ], [ %call32.i, %if.end48.i.ext4_valid_block_bitmap.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %retval.0.i)
  %cmp.not = icmp eq i64 %retval.0.i, 0
  br i1 %cmp.not, label %ext4_valid_block_bitmap.exit.if.end31_crit_edge, label %if.then30, !prof !68

ext4_valid_block_bitmap.exit.if.end31_crit_edge:  ; preds = %ext4_valid_block_bitmap.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.then30:                                        ; preds = %ext4_valid_block_bitmap.exit
  call void @__sanitizer_cov_trace_pc() #13
  %70 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %s_fs_info.i, align 16
  %s_blockgroup_lock.i.i77 = getelementptr inbounds %struct.ext4_sb_info, ptr %71, i32 0, i32 41
  %72 = ptrtoint ptr %s_blockgroup_lock.i.i77 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %s_blockgroup_lock.i.i77, align 8
  %arrayidx.i.i.i79 = getelementptr [16 x %struct.bgl_lock], ptr %73, i32 0, i32 %and.i.i.i
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx.i.i.i79) #11
  tail call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %sb, ptr noundef nonnull @__func__.ext4_validate_block_bitmap, i32 noundef 399, i1 noundef zeroext false, i32 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.21, i32 noundef %block_group, i64 noundef %retval.0.i) #11
  tail call void @ext4_mark_group_bitmap_corrupted(ptr noundef %sb, i32 noundef %block_group, i32 noundef 4) #11
  br label %cleanup

if.end31:                                         ; preds = %ext4_valid_block_bitmap.exit.if.end31_crit_edge, %if.end48.i.if.end31_crit_edge, %if.end21.if.end31_crit_edge
  %74 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %bh, align 4
  %76 = and i32 %75, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool.not.i = icmp eq i32 %76, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end31.verified_crit_edge

if.end31.verified_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %verified

if.then.i:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_set_bit(i32 noundef 24, ptr noundef %bh) #11
  br label %verified

verified:                                         ; preds = %if.then.i, %if.end31.verified_crit_edge, %ext4_lock_group.exit.verified_crit_edge
  %77 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %s_fs_info.i, align 16
  %s_blockgroup_lock.i.i81 = getelementptr inbounds %struct.ext4_sb_info, ptr %78, i32 0, i32 41
  %79 = ptrtoint ptr %s_blockgroup_lock.i.i81 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %s_blockgroup_lock.i.i81, align 8
  %arrayidx.i.i.i83 = getelementptr [16 x %struct.bgl_lock], ptr %80, i32 0, i32 %and.i.i.i
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx.i.i.i83) #11
  br label %cleanup

cleanup:                                          ; preds = %verified, %if.then30, %if.then20, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %verified ], [ -74, %if.then20 ], [ -117, %if.then30 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -117, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_wait_block_bitmap(ptr noundef %sb, i32 noundef %block_group, ptr noundef %bh) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bh, align 4
  %2 = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @ext4_get_group_desc(ptr noundef %sb, i32 noundef %block_group, ptr noundef null)
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  tail call void @__might_sleep(ptr noundef nonnull @.str.13, i32 noundef 354) #11
  %3 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %bh, align 4
  %5 = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.end4.wait_on_buffer.exit_crit_edge, label %if.then.i

if.end4.wait_on_buffer.exit_crit_edge:            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %wait_on_buffer.exit

if.then.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__wait_on_buffer(ptr noundef %bh) #11
  br label %wait_on_buffer.exit

wait_on_buffer.exit:                              ; preds = %if.then.i, %if.end4.wait_on_buffer.exit_crit_edge
  %cmp.i.i = icmp ugt ptr %bh, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %wait_on_buffer.exit.ext4_simulate_fail_bh.exit_crit_edge, label %land.lhs.true.i

wait_on_buffer.exit.ext4_simulate_fail_bh.exit_crit_edge: ; preds = %wait_on_buffer.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_simulate_fail_bh.exit

land.lhs.true.i:                                  ; preds = %wait_on_buffer.exit
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_simulate_fail.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 141
  %8 = ptrtoint ptr %s_simulate_fail.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_simulate_fail.i.i, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.i1.i = icmp eq i32 %9, 1
  br i1 %cmp.i1.i, label %if.then.i25, label %land.lhs.true.i.ext4_simulate_fail_bh.exit_crit_edge, !prof !73

land.lhs.true.i.ext4_simulate_fail_bh.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_simulate_fail_bh.exit

if.then.i25:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %s_simulate_fail.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %s_simulate_fail.i.i, align 64
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %bh) #11
  br label %ext4_simulate_fail_bh.exit

ext4_simulate_fail_bh.exit:                       ; preds = %if.then.i25, %land.lhs.true.i.ext4_simulate_fail_bh.exit_crit_edge, %wait_on_buffer.exit.ext4_simulate_fail_bh.exit_crit_edge
  %11 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %bh, align 4
  %and1.i.i24 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i24)
  %tobool6.not = icmp eq i32 %and1.i.i24, 0
  br i1 %tobool6.not, label %if.then7, label %if.end8

if.then7:                                         ; preds = %ext4_simulate_fail_bh.exit
  call void @__sanitizer_cov_trace_pc() #13
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 3
  %13 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %b_blocknr, align 8
  tail call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %sb, ptr noundef nonnull @__func__.ext4_wait_block_bitmap, i32 noundef 533, i1 noundef zeroext false, i32 noundef 5, i64 noundef 0, ptr noundef nonnull @.str.8, i32 noundef %block_group, i64 noundef %14) #11
  tail call void @ext4_mark_group_bitmap_corrupted(ptr noundef %sb, i32 noundef %block_group, i32 noundef 4) #11
  br label %cleanup

if.end8:                                          ; preds = %ext4_simulate_fail_bh.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %bh) #11
  %call9 = tail call fastcc i32 @ext4_validate_block_bitmap(ptr noundef %sb, ptr noundef nonnull %call1, i32 noundef %block_group, ptr noundef %bh)
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end8 ], [ -5, %if.then7 ], [ 0, %entry.cleanup_crit_edge ], [ -117, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ext4_read_block_bitmap(ptr noundef %sb, i32 noundef %block_group) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ext4_read_block_bitmap_nowait(ptr noundef %sb, i32 noundef %block_group, i1 noundef zeroext false)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @ext4_wait_block_bitmap(ptr noundef %sb, i32 noundef %block_group, ptr noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !74
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %call, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #11, !srcloc !75
  %1 = inttoptr i32 %call2 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %1, %if.then3 ], [ %call, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_claim_free_clusters(ptr noundef %sbi, i64 noundef %nclusters, i32 noundef %flags) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ext4_has_free_clusters(ptr noundef %sbi, i64 noundef %nclusters, i32 noundef %flags)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %s_dirtyclusters_counter = getelementptr inbounds %struct.ext4_sb_info, ptr %sbi, i32 0, i32 39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %0 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %s_dirtyclusters_counter, i64 noundef %nclusters, i32 noundef %0) #11
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ -28, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ext4_has_free_clusters(ptr noundef %sbi, i64 noundef %nclusters, i32 noundef %flags) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %s_freeclusters_counter = getelementptr inbounds %struct.ext4_sb_info, ptr %sbi, i32 0, i32 36
  %s_dirtyclusters_counter = getelementptr inbounds %struct.ext4_sb_info, ptr %sbi, i32 0, i32 39
  %count.i = getelementptr inbounds %struct.ext4_sb_info, ptr %sbi, i32 0, i32 36, i32 1
  %0 = ptrtoint ptr %count.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load volatile i64, ptr %count.i, align 8
  %2 = tail call i64 @llvm.smax.i64(i64 %1, i64 0) #11
  %count.i78 = getelementptr inbounds %struct.ext4_sb_info, ptr %sbi, i32 0, i32 39, i32 1
  %3 = ptrtoint ptr %count.i78 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load volatile i64, ptr %count.i78, align 8
  %5 = tail call i64 @llvm.smax.i64(i64 %4, i64 0) #11
  %s_resv_clusters = getelementptr inbounds %struct.ext4_sb_info, ptr %sbi, i32 0, i32 22
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %s_resv_clusters, i32 noundef 8) #11
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %s_resv_clusters) #11
  %s_es = getelementptr inbounds %struct.ext4_sb_info, ptr %sbi, i32 0, i32 15
  %6 = ptrtoint ptr %s_es to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_es, align 4
  %s_feature_incompat.i = getelementptr inbounds %struct.ext4_super_block, ptr %7, i32 0, i32 29
  %8 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_feature_incompat.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %tobool.not.i = icmp sgt i32 %9, -1
  br i1 %tobool.not.i, label %entry.ext4_r_blocks_count.exit_crit_edge, label %cond.true.i

entry.ext4_r_blocks_count.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_r_blocks_count.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %s_r_blocks_count_hi.i = getelementptr inbounds %struct.ext4_super_block, ptr %7, i32 0, i32 51
  %10 = ptrtoint ptr %s_r_blocks_count_hi.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_r_blocks_count_hi.i, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #11
  %conv.i = zext i32 %12 to i64
  %shl.i = shl nuw i64 %conv.i, 32
  br label %ext4_r_blocks_count.exit

ext4_r_blocks_count.exit:                         ; preds = %cond.true.i, %entry.ext4_r_blocks_count.exit_crit_edge
  %cond.i = phi i64 [ %shl.i, %cond.true.i ], [ 0, %entry.ext4_r_blocks_count.exit_crit_edge ]
  %s_r_blocks_count_lo.i = getelementptr inbounds %struct.ext4_super_block, ptr %7, i32 0, i32 2
  %13 = ptrtoint ptr %s_r_blocks_count_lo.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %s_r_blocks_count_lo.i, align 8
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #11
  %conv1.i = zext i32 %15 to i64
  %or.i = or i64 %cond.i, %conv1.i
  %s_cluster_bits = getelementptr inbounds %struct.ext4_sb_info, ptr %sbi, i32 0, i32 12
  %16 = ptrtoint ptr %s_cluster_bits to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %s_cluster_bits, align 16
  %sh_prom = zext i32 %17 to i64
  %shr = lshr i64 %or.i, %sh_prom
  %add = add i64 %call.i, %nclusters
  %add4 = add i64 %add, %shr
  %18 = add i64 %5, %add4
  %sub = sub i64 %2, %18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %19 = load i32, ptr @percpu_counter_batch, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %20 = load i32, ptr @nr_cpu_ids, align 4
  %mul = shl i32 %19, 2
  %mul6 = mul i32 %mul, %20
  %conv = zext i32 %mul6 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %conv)
  %cmp = icmp slt i64 %sub, %conv
  br i1 %cmp, label %if.then, label %ext4_r_blocks_count.exit.if.end_crit_edge

ext4_r_blocks_count.exit.if.end_crit_edge:        ; preds = %ext4_r_blocks_count.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %ext4_r_blocks_count.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call.i79 = tail call i64 @__percpu_counter_sum(ptr noundef %s_freeclusters_counter) #11
  %21 = tail call i64 @llvm.smax.i64(i64 %call.i79, i64 0) #11
  %call.i80 = tail call i64 @__percpu_counter_sum(ptr noundef %s_dirtyclusters_counter) #11
  %22 = tail call i64 @llvm.smax.i64(i64 %call.i80, i64 0) #11
  %.pre = add i64 %22, %add4
  br label %if.end

if.end:                                           ; preds = %if.then, %ext4_r_blocks_count.exit.if.end_crit_edge
  %add11.pre-phi = phi i64 [ %.pre, %if.then ], [ %18, %ext4_r_blocks_count.exit.if.end_crit_edge ]
  %dirty_clusters.0 = phi i64 [ %22, %if.then ], [ %5, %ext4_r_blocks_count.exit.if.end_crit_edge ]
  %free_clusters.0 = phi i64 [ %21, %if.then ], [ %2, %ext4_r_blocks_count.exit.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %free_clusters.0, i64 %add11.pre-phi)
  %cmp12.not = icmp slt i64 %free_clusters.0, %add11.pre-phi
  br i1 %cmp12.not, label %if.end15, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %s_resuid = getelementptr inbounds %struct.ext4_sb_info, ptr %sbi, i32 0, i32 23
  %23 = tail call i32 @llvm.read_register.i32(metadata !58) #11
  %and.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 99
  %27 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cred, align 16
  %fsuid = getelementptr inbounds %struct.cred, ptr %28, i32 0, i32 10
  %29 = ptrtoint ptr %fsuid to i32
  call void @__asan_load4_noabort(i32 %29)
  %agg.tmp.sroa.0.0.copyload = load i32, ptr %fsuid, align 4
  %30 = ptrtoint ptr %s_resuid to i32
  call void @__asan_load4_noabort(i32 %30)
  %.unpack = load i32, ptr %s_resuid, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack, i32 %agg.tmp.sroa.0.0.copyload)
  %cmp.i = icmp eq i32 %.unpack, %agg.tmp.sroa.0.0.copyload
  br i1 %cmp.i, label %if.end15.if.then31_crit_edge, label %lor.lhs.false

if.end15.if.then31_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then31

lor.lhs.false:                                    ; preds = %if.end15
  %s_resgid = getelementptr inbounds %struct.ext4_sb_info, ptr %sbi, i32 0, i32 24
  %31 = ptrtoint ptr %s_resgid to i32
  call void @__asan_load4_noabort(i32 %31)
  %.unpack75 = load i32, ptr %s_resgid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.unpack75)
  %cmp.i81 = icmp eq i32 %.unpack75, 0
  br i1 %cmp.i81, label %lor.lhs.false.lor.lhs.false26_crit_edge, label %land.lhs.true

lor.lhs.false.lor.lhs.false26_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false26

land.lhs.true:                                    ; preds = %lor.lhs.false
  %32 = insertvalue [1 x i32] undef, i32 %.unpack75, 0
  %call25 = tail call i32 @in_group_p([1 x i32] %32) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool.not = icmp eq i32 %call25, 0
  br i1 %tobool.not, label %land.lhs.true.lor.lhs.false26_crit_edge, label %land.lhs.true.if.then31_crit_edge

land.lhs.true.if.then31_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then31

land.lhs.true.lor.lhs.false26_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %land.lhs.true.lor.lhs.false26_crit_edge, %lor.lhs.false.lor.lhs.false26_crit_edge
  %call27 = tail call zeroext i1 @capable(i32 noundef 24) #11
  %and = and i32 %flags, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool30.not = icmp ne i32 %and, 0
  %33 = or i1 %tobool30.not, %call27
  %.not = xor i1 %33, true
  %add33 = add i64 %add, %dirty_clusters.0
  call void @__sanitizer_cov_trace_cmp8(i64 %free_clusters.0, i64 %add33)
  %cmp34.not = icmp slt i64 %free_clusters.0, %add33
  %or.cond = select i1 %.not, i1 true, i1 %cmp34.not
  br i1 %or.cond, label %lor.lhs.false26.if.end38_crit_edge, label %lor.lhs.false26.cleanup_crit_edge

lor.lhs.false26.cleanup_crit_edge:                ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false26.if.end38_crit_edge:               ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

if.then31:                                        ; preds = %land.lhs.true.if.then31_crit_edge, %if.end15.if.then31_crit_edge
  %add33.old = add i64 %add, %dirty_clusters.0
  call void @__sanitizer_cov_trace_cmp8(i64 %free_clusters.0, i64 %add33.old)
  %cmp34.not.old = icmp slt i64 %free_clusters.0, %add33.old
  br i1 %cmp34.not.old, label %if.then31.if.end38_crit_edge, label %if.then31.cleanup_crit_edge

if.then31.cleanup_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then31.if.end38_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

if.end38:                                         ; preds = %if.then31.if.end38_crit_edge, %lor.lhs.false26.if.end38_crit_edge
  %and39 = and i32 %flags, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp ne i32 %and39, 0
  %add42 = add i64 %dirty_clusters.0, %nclusters
  call void @__sanitizer_cov_trace_cmp8(i64 %free_clusters.0, i64 %add42)
  %cmp43.not = icmp sge i64 %free_clusters.0, %add42
  %or.cond77 = select i1 %tobool40.not, i1 %cmp43.not, i1 false
  %spec.select = zext i1 %or.cond77 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.then31.cleanup_crit_edge, %lor.lhs.false26.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end.cleanup_crit_edge ], [ 1, %if.then31.cleanup_crit_edge ], [ %spec.select, %if.end38 ], [ 1, %lor.lhs.false26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_should_retry_alloc(ptr noundef %sb, ptr nocapture noundef %retries) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 47
  %2 = ptrtoint ptr %s_journal to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_journal, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %retries to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %retries, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %retries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc)
  %cmp = icmp sgt i32 %inc, 3
  br i1 %cmp, label %if.then1, label %do.end

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %s_sra_exceeded_retry_limit = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 40
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %6 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %s_sra_exceeded_retry_limit, i64 noundef 1, i32 noundef %6) #11
  br label %cleanup

do.end:                                           ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !86
  %s_mb_free_pending = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 66
  %7 = ptrtoint ptr %s_mb_free_pending to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_mb_free_pending, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp6 = icmp eq i32 %8, 0
  br i1 %cmp6, label %if.then7, label %if.end15

if.then7:                                         ; preds = %do.end
  %9 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt = getelementptr inbounds %struct.ext4_sb_info, ptr %10, i32 0, i32 17
  %11 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %s_mount_opt, align 4
  %and = and i32 %12, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.then7.if.end13_crit_edge, label %if.then10

if.then7.if.end13_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then10:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  %s_retry_alloc_pending = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 70
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %s_retry_alloc_pending, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %s_retry_alloc_pending, i32 1, i32 3, i32 1) #11
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %s_retry_alloc_pending, ptr %s_retry_alloc_pending, i32 1, ptr elementtype(i32) %s_retry_alloc_pending) #11, !srcloc !87
  %s_discard_work = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 69
  %call11 = tail call zeroext i1 @flush_work(ptr noundef %s_discard_work) #11
  %call.i.i27 = tail call zeroext i1 @__kasan_check_write(ptr noundef %s_retry_alloc_pending, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %s_retry_alloc_pending, i32 1, i32 3, i32 1) #11
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %s_retry_alloc_pending, ptr %s_retry_alloc_pending, i32 1, ptr elementtype(i32) %s_retry_alloc_pending) #11, !srcloc !75
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.then7.if.end13_crit_edge
  %call14 = tail call fastcc i32 @ext4_has_free_clusters(ptr noundef %1, i64 noundef 1, i32 noundef 0)
  br label %cleanup

if.end15:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %s_id = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 39
  tail call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ext4_should_retry_alloc, i32 noundef 668, ptr noundef nonnull @.str.9, ptr noundef %s_id) #11
  %15 = ptrtoint ptr %s_journal to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_journal, align 8
  %call17 = tail call i32 @jbd2_journal_force_commit_nested(ptr noundef %16) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end13, %if.then1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then1 ], [ %call14, %if.end13 ], [ 1, %if.end15 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__jbd2_debug(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_journal_force_commit_nested(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @ext4_new_meta_blocks(ptr noundef %handle, ptr noundef %inode, i64 noundef %goal, i32 noundef %flags, ptr noundef %count, ptr noundef %errp) local_unnamed_addr #3 align 64 {
entry:
  %ar = alloca %struct.ext4_allocation_request, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %ar) #11
  %0 = call ptr @memset(ptr %ar, i32 0, i32 56)
  %1 = ptrtoint ptr %ar to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %inode, ptr %ar, align 8
  %goal2 = getelementptr inbounds %struct.ext4_allocation_request, ptr %ar, i32 0, i32 5
  %2 = ptrtoint ptr %goal2 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %goal, ptr %goal2, align 8
  %tobool.not = icmp eq ptr %count, null
  br i1 %tobool.not, label %cond.end.thread, label %if.then

cond.end.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %len20 = getelementptr inbounds %struct.ext4_allocation_request, ptr %ar, i32 0, i32 1
  %3 = ptrtoint ptr %len20 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %len20, align 4
  %flags321 = getelementptr inbounds %struct.ext4_allocation_request, ptr %ar, i32 0, i32 8
  %4 = ptrtoint ptr %flags321 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %flags, ptr %flags321, align 8
  %call22 = call i64 @ext4_mb_new_blocks(ptr noundef %handle, ptr noundef nonnull %ar, ptr noundef %errp) #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %count, align 4
  %len = getelementptr inbounds %struct.ext4_allocation_request, ptr %ar, i32 0, i32 1
  %7 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %len, align 4
  %flags3 = getelementptr inbounds %struct.ext4_allocation_request, ptr %ar, i32 0, i32 8
  %8 = ptrtoint ptr %flags3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %flags, ptr %flags3, align 8
  %call = call i64 @ext4_mb_new_blocks(ptr noundef %handle, ptr noundef nonnull %ar, ptr noundef %errp) #11
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 4
  %11 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.thread
  %call24 = phi i64 [ %call22, %cond.end.thread ], [ %call, %if.then ]
  %len23 = phi ptr [ %len20, %cond.end.thread ], [ %len, %if.then ]
  %12 = ptrtoint ptr %errp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %errp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool6.not = icmp ne i32 %13, 0
  %and = and i32 %flags, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  %or.cond = or i1 %tobool7.not, %tobool6.not
  br i1 %or.cond, label %if.end.if.end11_crit_edge, label %if.then8

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %len23 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len23, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %16 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 33
  %18 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %s_fs_info.i, align 16
  %s_cluster_bits = getelementptr inbounds %struct.ext4_sb_info, ptr %19, i32 0, i32 12
  %20 = ptrtoint ptr %s_cluster_bits to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %s_cluster_bits, align 16
  %shl = shl i32 %15, %21
  %conv = zext i32 %shl to i64
  %i_blkbits.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %22 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %i_blkbits.i, align 2
  %sh_prom.i = zext i8 %23 to i64
  %shl.i = shl i64 %conv, %sh_prom.i
  %call.i.i = call i32 @__dquot_alloc_space(ptr noundef %inode, i64 noundef %shl.i, i32 noundef 5) #11
  call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 1) #11
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end.if.end11_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %ar) #11
  ret i64 %call24
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ext4_mb_new_blocks(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @ext4_count_free_clusters(ptr noundef %sb) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_groups_count.i = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %s_groups_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_groups_count.i, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp25.not = icmp eq i32 %3, 0
  br i1 %cmp25.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.027 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %desc_count.026 = phi i64 [ %desc_count.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call1 = tail call ptr @ext4_get_group_desc(ptr noundef %sb, i32 noundef %i.027, ptr noundef null)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end:                                           ; preds = %for.body
  %4 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_group_info = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 60
  %6 = ptrtoint ptr %s_group_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_group_info, align 8
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %if.end.if.then10_crit_edge, label %if.end6

if.end.if.then10_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then10

if.end6:                                          ; preds = %if.end
  %call5 = tail call fastcc ptr @ext4_get_group_info(ptr noundef %sb, i32 noundef %i.027)
  %tobool7.not = icmp eq ptr %call5, null
  br i1 %tobool7.not, label %if.end6.if.then10_crit_edge, label %lor.lhs.false

if.end6.if.then10_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then10

lor.lhs.false:                                    ; preds = %if.end6
  %8 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %call5, align 4
  %10 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool9.not = icmp eq i32 %10, 0
  br i1 %tobool9.not, label %lor.lhs.false.if.then10_crit_edge, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

lor.lhs.false.if.then10_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then10

if.then10:                                        ; preds = %lor.lhs.false.if.then10_crit_edge, %if.end6.if.then10_crit_edge, %if.end.if.then10_crit_edge
  %call11 = tail call i32 @ext4_free_group_clusters(ptr noundef %sb, ptr noundef nonnull %call1) #11
  %conv = zext i32 %call11 to i64
  %add = add i64 %desc_count.026, %conv
  br label %for.inc

for.inc:                                          ; preds = %if.then10, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %desc_count.1 = phi i64 [ %desc_count.026, %lor.lhs.false.for.inc_crit_edge ], [ %add, %if.then10 ], [ %desc_count.026, %for.body.for.inc_crit_edge ]
  %inc = add nuw i32 %i.027, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %desc_count.0.lcssa = phi i64 [ 0, %entry.for.end_crit_edge ], [ %desc_count.1, %for.inc.for.end_crit_edge ]
  ret i64 %desc_count.0.lcssa
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ext4_get_group_info(ptr nocapture noundef readonly %sb, i32 noundef %group) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_groups_count = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %s_groups_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_groups_count, align 32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %group)
  %cmp.not = icmp ugt i32 %3, %group
  br i1 %cmp.not, label %do.end7, label %do.body2, !prof !68

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3364, 0\0A.popsection", ""() #11, !srcloc !88
  unreachable

do.end7:                                          ; preds = %entry
  %s_desc_per_block_bits = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 28
  %4 = ptrtoint ptr %s_desc_per_block_bits to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_desc_per_block_bits, align 128
  %s_desc_per_block = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %s_desc_per_block to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_desc_per_block, align 4
  %8 = tail call i32 @llvm.read_register.i32(metadata !58) #11
  %and.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %11, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !71
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %do.end7.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

do.end7.rcu_read_lock.exit_crit_edge:             ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %do.end7
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 696, ptr noundef nonnull @.str.11) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %do.end7.rcu_read_lock.exit_crit_edge
  %12 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_fs_info.i, align 16
  %s_group_info = getelementptr inbounds %struct.ext4_sb_info, ptr %13, i32 0, i32 60
  %14 = ptrtoint ptr %s_group_info to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %s_group_info, align 8
  %call15 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end24_crit_edge

rcu_read_lock.exit.do.end24_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end24

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call17 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %land.lhs.true.do.end24_crit_edge, label %land.lhs.true19

land.lhs.true.do.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end24

land.lhs.true19:                                  ; preds = %land.lhs.true
  %.b33 = load i1, ptr @ext4_get_group_info.__warned, align 1
  br i1 %.b33, label %land.lhs.true19.do.end24_crit_edge, label %if.then21

land.lhs.true19.do.end24_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end24

if.then21:                                        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @ext4_get_group_info.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 3367, ptr noundef nonnull @.str.2) #11
  br label %do.end24

do.end24:                                         ; preds = %if.then21, %land.lhs.true19.do.end24_crit_edge, %land.lhs.true.do.end24_crit_edge, %rcu_read_lock.exit.do.end24_crit_edge
  %shr = lshr i32 %group, %5
  %arrayidx = getelementptr ptr, ptr %15, i32 %shr
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %call.i37 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i37, label %do.end24.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i40

do.end24.rcu_read_unlock.exit_crit_edge:          ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i40:                                ; preds = %do.end24
  %call1.i38 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i38)
  %tobool.not.i39 = icmp eq i32 %call1.i38, 0
  br i1 %tobool.not.i39, label %land.lhs.true.i40.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i42

land.lhs.true.i40.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i40
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i42:                               ; preds = %land.lhs.true.i40
  %.b4.i41 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i41, label %land.lhs.true2.i42.rcu_read_unlock.exit_crit_edge, label %if.then.i43

land.lhs.true2.i42.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i42
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i43:                                      ; preds = %land.lhs.true2.i42
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 724, ptr noundef nonnull @.str.12) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i43, %land.lhs.true2.i42.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i40.rcu_read_unlock.exit_crit_edge, %do.end24.rcu_read_unlock.exit_crit_edge
  %sub = add i32 %7, -1
  %and = and i32 %sub, %group
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !72
  %18 = tail call i32 @llvm.read_register.i32(metadata !58) #11
  %and.i.i.i.i.i44 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i44 to ptr
  %preempt_count.i.i.i.i45 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i45 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i45, align 4
  %sub.i.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i45, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %arrayidx27 = getelementptr ptr, ptr %17, i32 %and
  %22 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx27, align 4
  ret ptr %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_free_group_clusters(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_bg_has_super(ptr nocapture noundef readonly %sb, i32 noundef %group) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_es = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %s_es to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_es, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %group)
  %cmp = icmp eq i32 %group, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %s_feature_compat.i = getelementptr inbounds %struct.ext4_super_block, ptr %3, i32 0, i32 28
  %4 = ptrtoint ptr %s_feature_compat.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_feature_compat.i, align 4
  %and.i = and i32 %5, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 0
  br i1 %cmp.i.not, label %if.end9, label %if.then2

if.then2:                                         ; preds = %if.end
  %s_backup_bgs = getelementptr inbounds %struct.ext4_super_block, ptr %3, i32 0, i32 84
  %6 = ptrtoint ptr %s_backup_bgs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_backup_bgs, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %group)
  %cmp3 = icmp eq i32 %8, %group
  br i1 %cmp3, label %if.then2.cleanup_crit_edge, label %lor.lhs.false

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx5 = getelementptr %struct.ext4_super_block, ptr %3, i32 0, i32 84, i32 1
  %9 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx5, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %group)
  %cmp6 = icmp eq i32 %11, %group
  %spec.select = zext i1 %cmp6 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %group)
  %cmp10 = icmp ult i32 %group, 2
  br i1 %cmp10, label %if.end9.cleanup_crit_edge, label %lor.lhs.false11

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false11:                                  ; preds = %if.end9
  %s_feature_ro_compat.i = getelementptr inbounds %struct.ext4_super_block, ptr %3, i32 0, i32 30
  %12 = ptrtoint ptr %s_feature_ro_compat.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_feature_ro_compat.i, align 4
  %and.i40 = and i32 %13, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i40)
  %cmp.i41.not = icmp eq i32 %and.i40, 0
  br i1 %cmp.i41.not, label %lor.lhs.false11.cleanup_crit_edge, label %if.end14

lor.lhs.false11.cleanup_crit_edge:                ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end14:                                         ; preds = %lor.lhs.false11
  %and = and i32 %group, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %group)
  %cmp13.i = icmp ult i32 %group, 3
  %or.cond = or i1 %cmp13.i, %tobool.not
  br i1 %or.cond, label %if.end14.cleanup_crit_edge, label %if.end14.if.end.i_crit_edge

if.end14.if.end.i_crit_edge:                      ; preds = %if.end14
  br label %if.end.i

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %if.end3.i.if.end.i_crit_edge, %if.end14.if.end.i_crit_edge
  %a.addr.014.i = phi i32 [ %div.i, %if.end3.i.if.end.i_crit_edge ], [ %group, %if.end14.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %a.addr.014.i)
  %cmp1.i = icmp eq i32 %a.addr.014.i, 3
  br i1 %cmp1.i, label %if.end.i.cleanup_crit_edge, label %if.end3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  %a.addr.014.i.frozen = freeze i32 %a.addr.014.i
  %div.i = udiv i32 %a.addr.014.i.frozen, 3
  %14 = mul i32 %div.i, 3
  %rem.i.decomposed = sub i32 %a.addr.014.i.frozen, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.decomposed)
  %cmp4.not.i = icmp ne i32 %rem.i.decomposed, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %a.addr.014.i)
  %cmp.i42 = icmp ult i32 %a.addr.014.i, 9
  %or.cond75 = or i1 %cmp.i42, %cmp4.not.i
  br i1 %or.cond75, label %lor.lhs.false19, label %if.end3.i.if.end.i_crit_edge

if.end3.i.if.end.i_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

lor.lhs.false19:                                  ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %group)
  %cmp13.i43 = icmp ult i32 %group, 5
  br i1 %cmp13.i43, label %lor.lhs.false19.cleanup_crit_edge, label %lor.lhs.false19.if.end.i46_crit_edge

lor.lhs.false19.if.end.i46_crit_edge:             ; preds = %lor.lhs.false19
  br label %if.end.i46

lor.lhs.false19.cleanup_crit_edge:                ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i46:                                       ; preds = %if.end3.i49.if.end.i46_crit_edge, %lor.lhs.false19.if.end.i46_crit_edge
  %a.addr.014.i44 = phi i32 [ %div.i50, %if.end3.i49.if.end.i46_crit_edge ], [ %group, %lor.lhs.false19.if.end.i46_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %a.addr.014.i44)
  %cmp1.i45 = icmp eq i32 %a.addr.014.i44, 5
  br i1 %cmp1.i45, label %if.end.i46.cleanup_crit_edge, label %if.end3.i49

if.end.i46.cleanup_crit_edge:                     ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3.i49:                                      ; preds = %if.end.i46
  %a.addr.014.i44.frozen = freeze i32 %a.addr.014.i44
  %div.i50 = udiv i32 %a.addr.014.i44.frozen, 5
  %15 = mul i32 %div.i50, 5
  %rem.i47.decomposed = sub i32 %a.addr.014.i44.frozen, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i47.decomposed)
  %cmp4.not.i48 = icmp ne i32 %rem.i47.decomposed, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %a.addr.014.i44)
  %cmp.i51 = icmp ult i32 %a.addr.014.i44, 25
  %or.cond76 = or i1 %cmp.i51, %cmp4.not.i48
  br i1 %or.cond76, label %lor.lhs.false22, label %if.end3.i49.if.end.i46_crit_edge

if.end3.i49.if.end.i46_crit_edge:                 ; preds = %if.end3.i49
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i46

lor.lhs.false22:                                  ; preds = %if.end3.i49
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %group)
  %cmp13.i55 = icmp ult i32 %group, 7
  br i1 %cmp13.i55, label %lor.lhs.false22.cleanup_crit_edge, label %lor.lhs.false22.if.end.i58_crit_edge

lor.lhs.false22.if.end.i58_crit_edge:             ; preds = %lor.lhs.false22
  br label %if.end.i58

lor.lhs.false22.cleanup_crit_edge:                ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i58:                                       ; preds = %if.end3.i61.if.end.i58_crit_edge, %lor.lhs.false22.if.end.i58_crit_edge
  %a.addr.014.i56 = phi i32 [ %div.i62, %if.end3.i61.if.end.i58_crit_edge ], [ %group, %lor.lhs.false22.if.end.i58_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %a.addr.014.i56)
  %cmp1.i57 = icmp eq i32 %a.addr.014.i56, 7
  br i1 %cmp1.i57, label %if.end.i58.cleanup_crit_edge, label %if.end3.i61

if.end.i58.cleanup_crit_edge:                     ; preds = %if.end.i58
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3.i61:                                      ; preds = %if.end.i58
  %a.addr.014.i56.frozen = freeze i32 %a.addr.014.i56
  %div.i62 = udiv i32 %a.addr.014.i56.frozen, 7
  %16 = mul i32 %div.i62, 7
  %rem.i59.decomposed = sub i32 %a.addr.014.i56.frozen, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i59.decomposed)
  %cmp4.not.i60 = icmp ne i32 %rem.i59.decomposed, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %a.addr.014.i56)
  %cmp.i63 = icmp ult i32 %a.addr.014.i56, 49
  %or.cond77 = or i1 %cmp.i63, %cmp4.not.i60
  br i1 %or.cond77, label %if.end3.i61.cleanup_crit_edge, label %if.end3.i61.if.end.i58_crit_edge

if.end3.i61.if.end.i58_crit_edge:                 ; preds = %if.end3.i61
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i58

if.end3.i61.cleanup_crit_edge:                    ; preds = %if.end3.i61
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %if.end3.i61.cleanup_crit_edge, %if.end.i58.cleanup_crit_edge, %lor.lhs.false22.cleanup_crit_edge, %if.end.i46.cleanup_crit_edge, %lor.lhs.false19.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %lor.lhs.false11.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %lor.lhs.false, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 1, %if.then2.cleanup_crit_edge ], [ 1, %lor.lhs.false11.cleanup_crit_edge ], [ 1, %if.end9.cleanup_crit_edge ], [ 0, %if.end14.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false ], [ 0, %lor.lhs.false22.cleanup_crit_edge ], [ 0, %lor.lhs.false19.cleanup_crit_edge ], [ 0, %if.end3.i61.cleanup_crit_edge ], [ 1, %if.end.i58.cleanup_crit_edge ], [ 1, %if.end.i46.cleanup_crit_edge ], [ 1, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_bg_num_gdb(ptr nocapture noundef readonly %sb, i32 noundef %group) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_es = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %s_es to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_es, align 4
  %s_desc_per_block = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %s_desc_per_block to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_desc_per_block, align 4
  %s_feature_incompat.i = getelementptr inbounds %struct.ext4_super_block, ptr %3, i32 0, i32 29
  %6 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_feature_incompat.i, align 8
  %and.i = and i32 %7, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 0
  br i1 %cmp.i.not, label %if.then.thread, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %s_first_meta_bg = getelementptr inbounds %struct.ext4_super_block, ptr %3, i32 0, i32 47
  %8 = ptrtoint ptr %s_first_meta_bg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_first_meta_bg, align 4
  %.frozen = freeze i32 %5
  %div = udiv i32 %group, %.frozen
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %10)
  %cmp = icmp ult i32 %div, %10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 @ext4_bg_has_super(ptr noundef %sb, i32 noundef %group) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  %spec.select = select i1 %tobool.not.i, i32 0, i32 %10
  br label %cleanup

if.then.thread:                                   ; preds = %entry
  %call.i16 = tail call i32 @ext4_bg_has_super(ptr noundef %sb, i32 noundef %group) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16)
  %tobool.not.i17 = icmp eq i32 %call.i16, 0
  br i1 %tobool.not.i17, label %if.then.thread.cleanup_crit_edge, label %if.else.i

if.then.thread.cleanup_crit_edge:                 ; preds = %if.then.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else.i:                                        ; preds = %if.then.thread
  call void @__sanitizer_cov_trace_pc() #13
  %s_gdb_count.i = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %s_gdb_count.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %s_gdb_count.i, align 8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %13 = mul i32 %div, %.frozen
  %.decomposed = sub i32 %group, %13
  %mul.i = sub i32 %group, %.decomposed
  %add.i = add i32 %5, -1
  %sub.i = add i32 %add.i, %mul.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.decomposed)
  %cmp.i14 = icmp eq i32 %.decomposed, 0
  %add5.i = add i32 %mul.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add5.i, i32 %group)
  %cmp6.i = icmp eq i32 %add5.i, %group
  %or.cond.i = or i1 %cmp.i14, %cmp6.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %group)
  %cmp8.i = icmp eq i32 %sub.i, %group
  %or.cond18.i = select i1 %or.cond.i, i1 true, i1 %cmp8.i
  %retval.0.i15 = zext i1 %or.cond18.i to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.else.i, %if.then.thread.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %retval.0.i15, %if.end ], [ %12, %if.else.i ], [ 0, %if.then.thread.cleanup_crit_edge ], [ %spec.select, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @ext4_inode_to_goal_block(ptr nocapture noundef readonly %inode) local_unnamed_addr #7 align 64 {
entry:
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
  %s_log_groups_per_flex.i = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 112
  %4 = ptrtoint ptr %s_log_groups_per_flex.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_log_groups_per_flex.i, align 4
  %shl.i = shl nuw i32 1, %5
  %i_block_group = getelementptr i8, ptr %inode, i32 -392
  %6 = ptrtoint ptr %i_block_group to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_block_group, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shl.i)
  %cmp = icmp sgt i32 %shl.i, 3
  br i1 %cmp, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %neg = sub nsw i32 0, %shl.i
  %and = and i32 %7, %neg
  %8 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %inode, align 8
  %10 = and i16 %9, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %10)
  %cmp3 = icmp eq i16 %10, -32768
  %inc = zext i1 %cmp3 to i32
  %spec.select = add nuw i32 %and, %inc
  br label %if.end6

if.end6:                                          ; preds = %if.then, %entry.if.end6_crit_edge
  %block_group.0 = phi i32 [ %7, %entry.if.end6_crit_edge ], [ %spec.select, %if.then ]
  %conv.i = zext i32 %block_group.0 to i64
  %s_blocks_per_group.i = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 2
  %11 = ptrtoint ptr %s_blocks_per_group.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %s_blocks_per_group.i, align 8
  %conv1.i = zext i32 %12 to i64
  %mul.i = mul nuw i64 %conv1.i, %conv.i
  %s_es.i = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 15
  %13 = ptrtoint ptr %s_es.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_es.i, align 4
  %s_first_data_block.i = getelementptr inbounds %struct.ext4_super_block, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %s_first_data_block.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %s_first_data_block.i, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #11
  %conv3.i = zext i32 %17 to i64
  %add.i = add nuw i64 %mul.i, %conv3.i
  %s_feature_incompat.i = getelementptr inbounds %struct.ext4_super_block, ptr %14, i32 0, i32 29
  %18 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %s_feature_incompat.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %tobool.not.i = icmp sgt i32 %19, -1
  br i1 %tobool.not.i, label %if.end6.ext4_blocks_count.exit_crit_edge, label %cond.true.i

if.end6.ext4_blocks_count.exit_crit_edge:         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_blocks_count.exit

cond.true.i:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %s_blocks_count_hi.i = getelementptr inbounds %struct.ext4_super_block, ptr %14, i32 0, i32 50
  %20 = ptrtoint ptr %s_blocks_count_hi.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %s_blocks_count_hi.i, align 8
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #11
  %conv.i64 = zext i32 %22 to i64
  %shl.i65 = shl nuw i64 %conv.i64, 32
  br label %ext4_blocks_count.exit

ext4_blocks_count.exit:                           ; preds = %cond.true.i, %if.end6.ext4_blocks_count.exit_crit_edge
  %cond.i = phi i64 [ %shl.i65, %cond.true.i ], [ 0, %if.end6.ext4_blocks_count.exit_crit_edge ]
  %s_blocks_count_lo.i = getelementptr inbounds %struct.ext4_super_block, ptr %14, i32 0, i32 1
  %23 = ptrtoint ptr %s_blocks_count_lo.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %s_blocks_count_lo.i, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #11
  %conv1.i66 = zext i32 %25 to i64
  %or.i = or i64 %cond.i, %conv1.i66
  %sub12 = add i64 %or.i, -1
  %s_mount_opt = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 17
  %26 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %s_mount_opt, align 4
  %and15 = and i32 %27, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool.not = icmp eq i32 %and15, 0
  br i1 %tobool.not, label %if.end17, label %ext4_blocks_count.exit.cleanup_crit_edge

ext4_blocks_count.exit.cleanup_crit_edge:         ; preds = %ext4_blocks_count.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end17:                                         ; preds = %ext4_blocks_count.exit
  %add = add nuw i64 %add.i, %conv1.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %sub12)
  %cmp21.not = icmp ugt i64 %add, %sub12
  %28 = tail call i32 @llvm.read_register.i32(metadata !58) #11
  %and.i70 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i70 to ptr
  %task30 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %task30 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task30, align 8
  %pid.i71 = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 68
  %32 = ptrtoint ptr %pid.i71 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pid.i71, align 8
  %rem32 = srem i32 %33, 16
  br i1 %cmp21.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %div62 = lshr i32 %12, 4
  br label %if.end38

if.else:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %sub34 = sub i64 %sub12, %add.i
  %div3560 = lshr i64 %sub34, 4
  %34 = trunc i64 %div3560 to i32
  br label %if.end38

if.end38:                                         ; preds = %if.else, %if.then23
  %.sink = phi i32 [ %34, %if.else ], [ %div62, %if.then23 ]
  %conv37 = mul i32 %rem32, %.sink
  %conv39 = sext i32 %conv37 to i64
  %add40 = add i64 %add.i, %conv39
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %ext4_blocks_count.exit.cleanup_crit_edge
  %retval.0 = phi i64 [ %add40, %if.end38 ], [ %add.i, %ext4_blocks_count.exit.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ext4_num_base_meta_clusters(ptr nocapture noundef readonly %sb, i32 noundef %block_group) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %call1 = tail call i32 @ext4_bg_has_super(ptr noundef %sb, i32 noundef %block_group)
  %s_es.i = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %s_es.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_es.i, align 4
  %s_feature_incompat.i = getelementptr inbounds %struct.ext4_super_block, ptr %3, i32 0, i32 29
  %4 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_feature_incompat.i, align 8
  %and.i = and i32 %5, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 0
  br i1 %cmp.i.not, label %if.then.thread, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %s_first_meta_bg = getelementptr inbounds %struct.ext4_super_block, ptr %3, i32 0, i32 47
  %6 = ptrtoint ptr %s_first_meta_bg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_first_meta_bg, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %s_desc_per_block = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 7
  %9 = ptrtoint ptr %s_desc_per_block to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %s_desc_per_block, align 4
  %mul = mul i32 %8, %10
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %block_group)
  %cmp = icmp ugt i32 %mul, %block_group
  br i1 %cmp, label %if.then, label %lor.lhs.false.i38

if.then:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then.if.end9_crit_edge, label %lor.lhs.false.i

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not61 = icmp eq i32 %call1, 0
  br i1 %tobool.not61, label %if.then.thread.if.end9_crit_edge, label %if.then.thread.i

if.then.thread.if.end9_crit_edge:                 ; preds = %if.then.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

lor.lhs.false.i:                                  ; preds = %if.then
  %11 = ptrtoint ptr %s_desc_per_block to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %s_desc_per_block, align 4
  %13 = ptrtoint ptr %s_first_meta_bg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %s_first_meta_bg, align 4
  %.frozen = freeze i32 %12
  %div.i = udiv i32 %block_group, %.frozen
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %15)
  %cmp.i28 = icmp ult i32 %div.i, %15
  br i1 %cmp.i28, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i = tail call i32 @ext4_bg_has_super(ptr noundef %sb, i32 noundef %block_group) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  %spec.select.i = select i1 %tobool.not.i.i, i32 0, i32 %15
  br label %ext4_bg_num_gdb.exit

if.then.thread.i:                                 ; preds = %if.then.thread
  %call.i16.i = tail call i32 @ext4_bg_has_super(ptr noundef %sb, i32 noundef %block_group) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16.i)
  %tobool.not.i17.i = icmp eq i32 %call.i16.i, 0
  br i1 %tobool.not.i17.i, label %if.then.thread.i.ext4_bg_num_gdb.exit_crit_edge, label %if.else.i.i

if.then.thread.i.ext4_bg_num_gdb.exit_crit_edge:  ; preds = %if.then.thread.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_bg_num_gdb.exit

if.else.i.i:                                      ; preds = %if.then.thread.i
  call void @__sanitizer_cov_trace_pc() #13
  %s_gdb_count.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %s_gdb_count.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %s_gdb_count.i.i, align 8
  br label %ext4_bg_num_gdb.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  %18 = mul i32 %div.i, %.frozen
  %.decomposed = sub i32 %block_group, %18
  %mul.i.i = sub i32 %block_group, %.decomposed
  %add.i.i = add i32 %12, -1
  %sub.i.i = add i32 %add.i.i, %mul.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.decomposed)
  %cmp.i14.i = icmp eq i32 %.decomposed, 0
  %add5.i.i = add i32 %mul.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add5.i.i, i32 %block_group)
  %cmp6.i.i = icmp eq i32 %add5.i.i, %block_group
  %or.cond.i.i = or i1 %cmp.i14.i, %cmp6.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %block_group)
  %cmp8.i.i = icmp eq i32 %sub.i.i, %block_group
  %or.cond18.i.i = select i1 %or.cond.i.i, i1 true, i1 %cmp8.i.i
  %retval.0.i15.i = zext i1 %or.cond18.i.i to i32
  br label %ext4_bg_num_gdb.exit

ext4_bg_num_gdb.exit:                             ; preds = %if.end.i, %if.else.i.i, %if.then.thread.i.ext4_bg_num_gdb.exit_crit_edge, %if.then.i
  %retval.0.i = phi i32 [ %retval.0.i15.i, %if.end.i ], [ %17, %if.else.i.i ], [ 0, %if.then.thread.i.ext4_bg_num_gdb.exit_crit_edge ], [ %spec.select.i, %if.then.i ]
  %add = add i32 %retval.0.i, 1
  %s_reserved_gdt_blocks = getelementptr inbounds %struct.ext4_super_block, ptr %3, i32 0, i32 37
  %19 = ptrtoint ptr %s_reserved_gdt_blocks to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %s_reserved_gdt_blocks, align 2
  %21 = tail call i16 @llvm.bswap.i16(i16 %20)
  %conv = zext i16 %21 to i32
  %add6 = add i32 %add, %conv
  br label %if.end9

lor.lhs.false.i38:                                ; preds = %lor.lhs.false
  %.frozen64 = freeze i32 %10
  %div.i36 = udiv i32 %block_group, %.frozen64
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i36, i32 %8)
  %cmp.i37 = icmp ult i32 %div.i36, %8
  br i1 %cmp.i37, label %if.then.i42, label %if.end.i58

if.then.i42:                                      ; preds = %lor.lhs.false.i38
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i39 = tail call i32 @ext4_bg_has_super(ptr noundef %sb, i32 noundef %block_group) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i39)
  %tobool.not.i.i40 = icmp eq i32 %call.i.i39, 0
  %spec.select.i41 = select i1 %tobool.not.i.i40, i32 0, i32 %8
  br label %ext4_bg_num_gdb.exit60

if.end.i58:                                       ; preds = %lor.lhs.false.i38
  call void @__sanitizer_cov_trace_pc() #13
  %22 = mul i32 %div.i36, %.frozen64
  %.decomposed65 = sub i32 %block_group, %22
  %mul.i.i48 = sub i32 %block_group, %.decomposed65
  %add.i.i49 = add i32 %10, -1
  %sub.i.i50 = add i32 %add.i.i49, %mul.i.i48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.decomposed65)
  %cmp.i14.i51 = icmp eq i32 %.decomposed65, 0
  %add5.i.i52 = add i32 %mul.i.i48, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add5.i.i52, i32 %block_group)
  %cmp6.i.i53 = icmp eq i32 %add5.i.i52, %block_group
  %or.cond.i.i54 = or i1 %cmp.i14.i51, %cmp6.i.i53
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i50, i32 %block_group)
  %cmp8.i.i55 = icmp eq i32 %sub.i.i50, %block_group
  %or.cond18.i.i56 = select i1 %or.cond.i.i54, i1 true, i1 %cmp8.i.i55
  %retval.0.i15.i57 = zext i1 %or.cond18.i.i56 to i32
  br label %ext4_bg_num_gdb.exit60

ext4_bg_num_gdb.exit60:                           ; preds = %if.end.i58, %if.then.i42
  %retval.0.i59 = phi i32 [ %retval.0.i15.i57, %if.end.i58 ], [ %spec.select.i41, %if.then.i42 ]
  %add8 = add i32 %retval.0.i59, %call1
  br label %if.end9

if.end9:                                          ; preds = %ext4_bg_num_gdb.exit60, %ext4_bg_num_gdb.exit, %if.then.thread.if.end9_crit_edge, %if.then.if.end9_crit_edge
  %num.0 = phi i32 [ %add6, %ext4_bg_num_gdb.exit ], [ 0, %if.then.if.end9_crit_edge ], [ %add8, %ext4_bg_num_gdb.exit60 ], [ 0, %if.then.thread.if.end9_crit_edge ]
  %s_cluster_ratio = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 11
  %23 = ptrtoint ptr %s_cluster_ratio to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %s_cluster_ratio, align 4
  %add10 = add i32 %num.0, -1
  %sub = add i32 %add10, %24
  %s_cluster_bits = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 12
  %25 = ptrtoint ptr %s_cluster_bits to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %s_cluster_bits, align 16
  %shr = lshr i32 %sub, %26
  ret i32 %shr
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ext4_inode_bitmap(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ext4_inode_table(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__getblk_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_buffer(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_group_desc_csum_verify(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_mark_bitmap_end(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_read_block_bitmap_load(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_block_bitmap_csum_verify(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wait_on_buffer(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @in_group_p([1 x i32]) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__percpu_counter_sum(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_add_batch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__dquot_alloc_space(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind readonly }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind readnone }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !9, !11, !12, !14, !16, !18, !20, !21, !23, !24, !26, !27, !28, !30, !31, !33, !35, !36, !38, !39, !40, !41, !42, !44, !45, !46, !48, !49, !51, !52, !54, !56}
!llvm.named.register.sp = !{!58}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !{ptr @__func__.ext4_get_group_desc, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ext4/balloc.c", i32 276, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !4, !"__warned", i1 false, i1 false}
!4 = !{!"../fs/ext4/balloc.c", i32 284, i32 9}
!5 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/ext4/balloc.c", i32 292, i32 3}
!9 = !{ptr @__func__.ext4_read_block_bitmap_nowait, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/ext4/balloc.c", i32 436, i32 3}
!11 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/ext4/balloc.c", i32 444, i32 3}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/ext4/balloc.c", i32 470, i32 4}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/ext4/balloc.c", i32 482, i32 4}
!18 = !{ptr @__func__.ext4_wait_block_bitmap, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/ext4/balloc.c", i32 531, i32 3}
!20 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @__func__.ext4_should_retry_alloc, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/ext4/balloc.c", i32 668, i32 2}
!23 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!24 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!25 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!26 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!28 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!29 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!30 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../include/linux/buffer_head.h", i32 366, i32 2}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../fs/ext4/ext4.h", i32 3288, i32 2}
!35 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/ext4/balloc.c", i32 188, i32 2}
!38 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @ext4_init_block_bitmap._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @ext4_init_block_bitmap._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!42 = distinct !{null, !43, !"__already_done", i1 false, i1 false}
!43 = !{!"../include/trace/events/ext4.h", i32 1338, i32 1}
!44 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!45 = distinct !{null, !43, !"__warned", i1 false, i1 false}
!46 = distinct !{null, !47, !"__already_done", i1 false, i1 false}
!47 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!48 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @__func__.ext4_validate_block_bitmap, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/ext4/balloc.c", i32 390, i32 3}
!51 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/ext4/balloc.c", i32 398, i32 3}
!54 = distinct !{null, !55, !"__warned", i1 false, i1 false}
!55 = !{!"../fs/ext4/balloc.c", i32 599, i32 28}
!56 = distinct !{null, !57, !"__warned", i1 false, i1 false}
!57 = !{!"../fs/ext4/ext4.h", i32 3367, i32 14}
!58 = !{!"sp"}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"min_enum_size", i32 4}
!61 = !{i32 8, !"branch-target-enforcement", i32 0}
!62 = !{i32 8, !"sign-return-address", i32 0}
!63 = !{i32 8, !"sign-return-address-all", i32 0}
!64 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{i32 7, !"frame-pointer", i32 2}
!67 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!68 = !{!"branch_weights", i32 2000, i32 1}
!69 = !{i64 2148022728, i64 2148023008, i64 2148023342, i64 2148023676}
!70 = !{i64 2155079567}
!71 = !{i64 2149552521}
!72 = !{i64 2149552787}
!73 = !{!"branch_weights", i32 1, i32 2000}
!74 = !{i64 2153839088}
!75 = !{i64 2148228176, i64 2148228202, i64 2148228231, i64 2148228265, i64 2148228296, i64 2148228319}
!76 = !{i64 2148234569, i64 2148234601, i64 2148234630, i64 2148234664, i64 2148234695, i64 2148234718}
!77 = !{i64 2148323650}
!78 = !{i64 710750, i64 710775, i64 710797, i64 710813, i64 710825, i64 710845, i64 710869, i64 710885, i64 710897}
!79 = !{i64 2148225318}
!80 = !{i64 2157931408, i64 2157931889, i64 2157931445, i64 2157931501, i64 2157931535, i64 2157931559, i64 2157931600, i64 2157931621, i64 2157931649, i64 2157931683}
!81 = !{i64 2149114515, i64 2149114520, i64 2149114533, i64 2149114577, i64 2149114611, i64 2149114632}
!82 = !{i64 2156733161}
!83 = !{i64 2156733416}
!84 = !{i64 2149561080}
!85 = !{i64 2149562116}
!86 = !{i64 2157941951}
!87 = !{i64 2148225711, i64 2148225737, i64 2148225766, i64 2148225800, i64 2148225831, i64 2148225854}
!88 = !{i64 2155072980, i64 2155073460, i64 2155073017, i64 2155073073, i64 2155073107, i64 2155073131, i64 2155073172, i64 2155073193, i64 2155073221, i64 2155073255}
