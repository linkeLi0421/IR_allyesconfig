; ModuleID = '/llk/IR_all_yes/fs/ext4/ialloc.c_pt.bc'
source_filename = "../fs/ext4/ialloc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.25 }
%union.anon.25 = type { [5 x %struct.uid_gid_extent] }
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
%struct.ctl_table_header = type { %union.anon.27, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.27 = type { %struct.anon.28 }
%struct.anon.28 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.57 }
%union.anon.57 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.77, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.78, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.79, ptr, %struct.address_space, %struct.list_head, %union.anon.80, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.77 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.78 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.79 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
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
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.fscrypt_dummy_policy = type { ptr }
%struct.ext4_fc_stats = type { [10 x i32], i32, i32, i32, i32, i32, i64 }
%struct.ext4_fc_replay_state = type { i32, i32, i32, i32, i32, ptr, i32, i32, i32, ptr, i32, i32 }
%struct.bgl_lock = type { %struct.spinlock, [84 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.flex_groups = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t }
%struct.ext4_super_block = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i16, i16, i32, i16, i16, i32, i32, i32, [16 x i8], [16 x i8], [64 x i8], i32, i8, i8, i16, [16 x i8], i32, i32, i32, [4 x i32], i8, i8, i16, i32, i32, i32, [17 x i32], i32, i32, i32, i16, i16, i32, i16, i16, i64, i32, i8, i8, i8, i8, i64, i32, i32, i64, i32, i32, i32, i32, i64, [32 x i8], i32, i32, i32, i32, i64, [32 x i8], [64 x i8], i32, i32, i32, [2 x i32], [4 x i8], [16 x i8], i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, [94 x i32], i32 }
%struct.ext4_group_desc = type { i32, i32, i32, i16, i16, i16, i16, i32, i16, i16, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i16, i16, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.47, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.10 }
%struct.llist_node = type { ptr }
%union.anon.10 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.12 }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.47 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.29 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.29 = type { %struct.callback_head }
%struct.ext4_group_info = type { i32, %struct.rb_root, i32, i32, i32, i32, i32, %struct.list_head, %struct.rw_semaphore, %struct.rb_node, %struct.list_head, [0 x i32] }
%struct.jbd2_journal_handle = type { %union.anon.83, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.anon.83 = type { ptr }
%struct.transaction_s = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, i32, i32, i32, %struct.transaction_chp_stats_s, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, i32, i64, i8, i32, %struct.list_head }
%struct.transaction_chp_stats_s = type { i32, i32, i32, i32 }
%struct.posix_acl = type { %struct.refcount_struct, %struct.callback_head, i32, [0 x %struct.posix_acl_entry] }
%struct.posix_acl_entry = type { i16, i16, %union.anon.76 }
%union.anon.76 = type { %struct.kuid_t }
%struct.orlov_stats = type { i64, i32, i32 }
%struct.dx_hash_info = type { i32, i32, i32, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.59, %struct.list_head, %struct.list_head, %union.anon.60 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.5, ptr }
%union.anon.5 = type { i64 }
%struct.lockref = type { %union.anon.7 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { %struct.spinlock, i32 }
%union.anon.59 = type { %struct.list_head }
%union.anon.60 = type { %struct.hlist_node }
%struct.ext4_inode = type { i16, i16, i32, i32, i32, i32, i32, i16, i16, i32, i32, %union.anon.87, [15 x i32], i32, i32, i32, i32, %union.anon.91, i16, i16, i32, i32, i32, i32, i32, i32, i32 }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32 }
%union.anon.91 = type { %struct.anon.93 }
%struct.anon.93 = type { i16, i16, i16, i16, i32 }
%struct.anon.95 = type { %struct.shash_desc, [4 x i8], [4 x i8] }
%struct.shash_desc = type { ptr, [4 x i8], [0 x ptr] }

@ext4_free_inode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 252, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013EXT4-fs: %s:%d: inode on nonexistent device\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ext4_free_inode\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/ext4/ialloc.c\00", [47 x i8] zeroinitializer }, align 32
@ext4_free_inode._entry_ptr = internal global ptr @ext4_free_inode._entry, section ".printk_index", align 4
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s:%d: inode #%lu: count=%d\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s:%d: inode #%lu: nlink=%d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"reserved or nonexistent inode %lu\00", [62 x i8] zeroinitializer }, align 32
@ext4_free_inode.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"bit already cleared for inode %lu\00", [62 x i8] zeroinitializer }, align 32
@__func__.ext4_mark_inode_used = private unnamed_addr constant [21 x i8] c"ext4_mark_inode_used\00", align 1
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@__func__.__ext4_new_inode = private unnamed_addr constant [17 x i8] c"__ext4_new_inode\00", align 1
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"reserved inode found cleared - inode=%lu\00", [55 x i8] zeroinitializer }, align 32
@__ext4_new_inode.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__ext4_new_inode.__warned.10 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"failed to insert inode %lu: doubly allocated?\00", [50 x i8] zeroinitializer }, align 32
@__func__.ext4_orphan_get = private unnamed_addr constant [16 x i8] c"ext4_orphan_get\00", align 1
@.str.12 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"couldn't read orphan inode %lu (err %d)\00", [56 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bad orphan inode %lu\00", [43 x i8] zeroinitializer }, align 32
@ext4_orphan_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @__func__.ext4_orphan_get, ptr @.str.2, i32 1423, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013ext4_test_bit(bit=%d, block=%llu) = %d\0A\00", [54 x i8] zeroinitializer }, align 32
@ext4_orphan_get._entry_ptr = internal global ptr @ext4_orphan_get._entry, section ".printk_index", align 4
@ext4_orphan_get._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @__func__.ext4_orphan_get, ptr @.str.2, i32 1426, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013is_bad_inode(inode)=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@ext4_orphan_get._entry_ptr.17 = internal global ptr @ext4_orphan_get._entry.15, section ".printk_index", align 4
@ext4_orphan_get._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @__func__.ext4_orphan_get, ptr @.str.2, i32 1428, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013NEXT_ORPHAN(inode)=%u\0A\00", [39 x i8] zeroinitializer }, align 32
@ext4_orphan_get._entry_ptr.20 = internal global ptr @ext4_orphan_get._entry.18, section ".printk_index", align 4
@ext4_orphan_get._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @__func__.ext4_orphan_get, ptr @.str.2, i32 1429, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\013max_ino=%lu\0A\00", [17 x i8] zeroinitializer }, align 32
@ext4_orphan_get._entry_ptr.23 = internal global ptr @ext4_orphan_get._entry.21, section ".printk_index", align 4
@ext4_orphan_get._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @__func__.ext4_orphan_get, ptr @.str.2, i32 1430, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\013i_nlink=%u\0A\00", [18 x i8] zeroinitializer }, align 32
@ext4_orphan_get._entry_ptr.26 = internal global ptr @ext4_orphan_get._entry.24, section ".printk_index", align 4
@__func__.ext4_init_inode_table = private unnamed_addr constant [22 x i8] c"ext4_init_inode_table\00", align 1
@.str.27 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"Something is wrong with group %u: used itable blocks: %d; itable unused count: %u\00", [46 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"Something is wrong with group %u: itable unused count: %u; itables initialized count: %ld\00", [38 x i8] zeroinitializer }, align 32
@__tracepoint_ext4_free_inode = external dso_local global %struct.tracepoint, align 4
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/trace/events/ext4.h\00", [36 x i8] zeroinitializer }, align 32
@trace_ext4_free_inode.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__func__.ext4_read_inode_bitmap = private unnamed_addr constant [23 x i8] c"ext4_read_inode_bitmap\00", align 1
@.str.31 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Invalid inode bitmap blk %llu in block_group %u\00", [48 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"Cannot read inode bitmap - block_group = %u, inode_bitmap = %llu\00", [63 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Inode bitmap for bg 0 marked uninitialized\00", [53 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/buffer_head.h\00", [36 x i8] zeroinitializer }, align 32
@__tracepoint_ext4_load_inode_bitmap = external dso_local global %struct.tracepoint, align 4
@trace_ext4_load_inode_bitmap.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.ext4_validate_inode_bitmap = private unnamed_addr constant [27 x i8] c"ext4_validate_inode_bitmap\00", align 1
@.str.35 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Corrupt inode bitmap - block_group = %u, inode_bitmap = %llu\00", [35 x i8] zeroinitializer }, align 32
@ext4_get_group_info.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/ext4/ext4.h\00", [17 x i8] zeroinitializer }, align 32
@percpu_counter_batch = external dso_local local_unnamed_addr global i32, align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.37 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.39 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__tracepoint_ext4_request_inode = external dso_local global %struct.tracepoint, align 4
@trace_ext4_request_inode.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@get_orlov_stats.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ext4_has_metadata_csum.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_ext4_allocate_inode = external dso_local global %struct.tracepoint, align 4
@trace_ext4_allocate_inode.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 16384, i64 32768]
@__sancov_gen_cov_switch_values.40 = internal global [5 x i64] [i64 3, i64 16, i64 16384, i64 32768, i64 40960]
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 251, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 256, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 262, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 282, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 340, i32 8 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 355, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 1071, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 1277, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 1396, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 1419, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 1421, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 1425, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 1427, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 1429, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 1430, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 1561, i32 4 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 1577, i32 4 }
@___asan_gen_.120 = private unnamed_addr constant [31 x i8] c"../include/trace/events/ext4.h\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 140, i32 1 }
@___asan_gen_.123 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 108, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 139, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 147, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 167, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant [31 x i8] c"../include/linux/buffer_head.h\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 366, i32 2 }
@___asan_gen_.138 = private constant [20 x i8] c"../fs/ext4/ialloc.c\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 105, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant [18 x i8] c"../fs/ext4/ext4.h\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 3367, i32 14 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 695, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.150 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 723, i32 2 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @ext4_free_inode._entry, ptr @ext4_free_inode._entry_ptr, ptr @ext4_orphan_get._entry, ptr @ext4_orphan_get._entry.15, ptr @ext4_orphan_get._entry.18, ptr @ext4_orphan_get._entry.21, ptr @ext4_orphan_get._entry.24, ptr @ext4_orphan_get._entry_ptr, ptr @ext4_orphan_get._entry_ptr.17, ptr @ext4_orphan_get._entry_ptr.20, ptr @ext4_orphan_get._entry_ptr.23, ptr @ext4_orphan_get._entry_ptr.26, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_free_inode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_orphan_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_orphan_get._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_orphan_get._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_orphan_get._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_orphan_get._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ext4_mark_bitmap_end(i32 noundef %start_bit, i32 noundef %end_bit, ptr nocapture noundef %bitmap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_cmp4(i32 %start_bit, i32 %end_bit)
  %cmp.not = icmp slt i32 %start_bit, %end_bit
  br i1 %cmp.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %add = add i32 %start_bit, 7
  %and = and i32 %add, -8
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %start_bit)
  %cmp116 = icmp ugt i32 %and, %start_bit
  br i1 %cmp116, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.017 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ %start_bit, %for.cond.preheader.for.body_crit_edge ]
  %xor.i = and i32 %i.017, 31
  %rem.i.i = xor i32 %xor.i, 24
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %i.017, 5
  %add.ptr.i.i = getelementptr i32, ptr %bitmap, i32 %div2.i.i
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %1, %shl.i.i
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  %inc = add nuw i32 %i.017, 1
  %exitcond.not = icmp eq i32 %inc, %and
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %i.0.lcssa = phi i32 [ %start_bit, %for.cond.preheader.for.end_crit_edge ], [ %and, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %end_bit)
  %cmp2 = icmp slt i32 %i.0.lcssa, %end_bit
  br i1 %cmp2, label %if.then3, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %shr = ashr i32 %i.0.lcssa, 3
  %add.ptr = getelementptr i8, ptr %bitmap, i32 %shr
  %sub = sub i32 %end_bit, %i.0.lcssa
  %shr4 = ashr i32 %sub, 3
  %2 = call ptr @memset(ptr %add.ptr, i32 255, i32 %shr4)
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ext4_end_bitmap_read(ptr noundef %bh, i32 noundef %uptodate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %uptodate)
  %tobool.not = icmp eq i32 %uptodate, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bh, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then.set_buffer_uptodate.exit_crit_edge

if.then.set_buffer_uptodate.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_buffer_uptodate.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 0, ptr noundef %bh) #9
  br label %set_buffer_uptodate.exit

set_buffer_uptodate.exit:                         ; preds = %if.then.i, %if.then.set_buffer_uptodate.exit_crit_edge
  tail call void @_set_bit(i32 noundef 25, ptr noundef %bh) #9
  br label %if.end

if.end:                                           ; preds = %set_buffer_uptodate.exit, %entry.if.end_crit_edge
  tail call void @unlock_buffer(ptr noundef %bh) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !114
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #9, !srcloc !115
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_buffer(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_bh(ptr noundef %bh) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !114
  %b_count = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %b_count, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count, ptr %b_count, i32 1, ptr elementtype(i32) %b_count) #9, !srcloc !115
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ext4_free_inode(ptr noundef %handle, ptr noundef %inode) local_unnamed_addr #2 align 64 {
entry:
  %bh2 = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh2) #9
  %2 = ptrtoint ptr %bh2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh2, align 4, !annotation !116
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 252) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_count = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 40
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_count, i32 noundef 4) #9
  %3 = ptrtoint ptr %i_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %i_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp sgt i32 %4, 1
  br i1 %cmp, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %5 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i_ino, align 8
  %call.i.i226 = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_count, i32 noundef 4) #9
  %7 = ptrtoint ptr %i_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %i_count, align 4
  tail call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef nonnull %1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 258, i32 noundef %6, i32 noundef %8) #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %9 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool6.not = icmp eq i32 %11, 0
  br i1 %tobool6.not, label %if.end9, label %if.then7

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %i_ino8 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %12 = ptrtoint ptr %i_ino8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i_ino8, align 8
  tail call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef nonnull %1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 263, i32 noundef %13, i32 noundef %11) #9
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %14 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_fs_info.i, align 16
  %i_ino11 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %16 = ptrtoint ptr %i_ino11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %i_ino11, align 8
  tail call fastcc void @trace_ext4_free_inode(ptr noundef %inode)
  %call13 = tail call i32 @dquot_initialize(ptr noundef %inode) #9
  tail call void @dquot_free_inode(ptr noundef %inode) #9
  %18 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %inode, align 8
  %20 = and i16 %19, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %20)
  %cmp14 = icmp eq i16 %20, 16384
  tail call void @ext4_clear_inode(ptr noundef %inode) #9
  %21 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %s_fs_info.i, align 16
  %s_first_ino = getelementptr inbounds %struct.ext4_sb_info, ptr %22, i32 0, i32 30
  %23 = ptrtoint ptr %s_first_ino to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %s_first_ino, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %24)
  %cmp17 = icmp ult i32 %17, %24
  br i1 %cmp17, label %if.end9.brelse.exit.thread_crit_edge, label %lor.lhs.false

if.end9.brelse.exit.thread_crit_edge:             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit.thread

lor.lhs.false:                                    ; preds = %if.end9
  %s_es = getelementptr inbounds %struct.ext4_sb_info, ptr %15, i32 0, i32 15
  %25 = ptrtoint ptr %s_es to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %s_es, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 8
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %29)
  %cmp19 = icmp ugt i32 %17, %29
  br i1 %cmp19, label %lor.lhs.false.brelse.exit.thread_crit_edge, label %if.end22

lor.lhs.false.brelse.exit.thread_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit.thread

brelse.exit.thread:                               ; preds = %lor.lhs.false.brelse.exit.thread_crit_edge, %if.end9.brelse.exit.thread_crit_edge
  tail call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef nonnull %1, ptr noundef nonnull @.str.1, i32 noundef 282, i1 noundef zeroext false, i32 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.6, i32 noundef %17) #9
  br label %cleanup

if.end22:                                         ; preds = %lor.lhs.false
  %sub = add i32 %17, -1
  %s_inodes_per_group = getelementptr inbounds %struct.ext4_sb_info, ptr %22, i32 0, i32 4
  %30 = ptrtoint ptr %s_inodes_per_group to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %s_inodes_per_group, align 16
  %sub.frozen = freeze i32 %sub
  %.frozen = freeze i32 %31
  %div = udiv i32 %sub.frozen, %.frozen
  %32 = mul i32 %div, %.frozen
  %rem.decomposed = sub i32 %sub.frozen, %32
  %call27 = tail call fastcc ptr @ext4_read_inode_bitmap(ptr noundef nonnull %1, i32 noundef %div)
  %cmp.i = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %call27 to i32
  br label %brelse.exit

if.end31:                                         ; preds = %if.end22
  %s_mount_state = getelementptr inbounds %struct.ext4_sb_info, ptr %15, i32 0, i32 25
  %34 = ptrtoint ptr %s_mount_state to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %s_mount_state, align 8
  %36 = and i16 %35, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool34.not = icmp eq i16 %36, 0
  br i1 %tobool34.not, label %if.then35, label %if.end31.do.end46_crit_edge

if.end31.do.end46_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end46

if.then35:                                        ; preds = %if.end31
  %call36 = tail call fastcc ptr @ext4_get_group_info(ptr noundef nonnull %1, i32 noundef %div)
  %37 = ptrtoint ptr %call36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %call36, align 4
  %39 = and i32 %38, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool38.not = icmp eq i32 %39, 0
  br i1 %tobool38.not, label %if.then35.do.end46_crit_edge, label %if.then35.error_return_crit_edge, !prof !117

if.then35.error_return_crit_edge:                 ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_return

if.then35.do.end46_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end46

do.end46:                                         ; preds = %if.then35.do.end46_crit_edge, %if.end31.do.end46_crit_edge
  %call47 = tail call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @.str.1, i32 noundef 304, ptr noundef %handle, ptr noundef nonnull %1, ptr noundef %call27, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %do.end46.error_return_crit_edge

do.end46.error_return_crit_edge:                  ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_return

if.end50:                                         ; preds = %do.end46
  %call51 = call ptr @ext4_get_group_desc(ptr noundef nonnull %1, i32 noundef %div, ptr noundef nonnull %bh2) #9
  %tobool52.not = icmp eq ptr %call51, null
  br i1 %tobool52.not, label %if.end50.if.end58_crit_edge, label %do.end56

if.end50.if.end58_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58

do.end56:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %bh2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bh2, align 4
  %call57 = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @.str.1, i32 noundef 313, ptr noundef %handle, ptr noundef nonnull %1, ptr noundef %41, i32 noundef 1) #9
  br label %if.end58

if.end58:                                         ; preds = %do.end56, %if.end50.if.end58_crit_edge
  %fatal.0 = phi i32 [ %call57, %do.end56 ], [ -3, %if.end50.if.end58_crit_edge ]
  call fastcc void @ext4_lock_group(ptr noundef nonnull %1, i32 noundef %div)
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call27, i32 0, i32 5
  %42 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %b_data, align 4
  %xor.i = and i32 %rem.decomposed, 31
  %rem.i.i = xor i32 %xor.i, 24
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div6.i.i = lshr i32 %rem.decomposed, 5
  %add.ptr.i.i = getelementptr i32, ptr %43, i32 %div6.i.i
  %44 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %add.ptr.i.i, align 4
  %neg.i.i = xor i32 %shl.i.i, -1
  %and.i.i = and i32 %45, %neg.i.i
  store i32 %and.i.i, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fatal.0)
  %tobool60.not = icmp ne i32 %fatal.0, 0
  %46 = and i32 %45, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool62.not = icmp eq i32 %46, 0
  %or.cond = select i1 %tobool60.not, i1 true, i1 %tobool62.not
  br i1 %or.cond, label %if.then63, label %if.end64

if.then63:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %s_fs_info.i, align 16
  %s_blockgroup_lock.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %48, i32 0, i32 41
  %49 = ptrtoint ptr %s_blockgroup_lock.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %s_blockgroup_lock.i.i, align 8
  %and.i.i.i = and i32 %div, 15
  %arrayidx.i.i.i = getelementptr [16 x %struct.bgl_lock], ptr %50, i32 0, i32 %and.i.i.i
  call void @_raw_spin_unlock(ptr noundef %arrayidx.i.i.i) #9
  br label %out

if.end64:                                         ; preds = %if.end58
  %call65 = call i32 @ext4_free_inodes_count(ptr noundef nonnull %1, ptr noundef %call51) #9
  %add = add i32 %call65, 1
  call void @ext4_free_inodes_set(ptr noundef nonnull %1, ptr noundef %call51, i32 noundef %add) #9
  br i1 %cmp14, label %if.then67, label %if.end64.if.end74_crit_edge

if.end64.if.end74_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74

if.then67:                                        ; preds = %if.end64
  %call68 = call i32 @ext4_used_dirs_count(ptr noundef nonnull %1, ptr noundef %call51) #9
  %sub69 = add i32 %call68, -1
  call void @ext4_used_dirs_set(ptr noundef nonnull %1, ptr noundef %call51, i32 noundef %sub69) #9
  %counters.i = getelementptr inbounds %struct.ext4_sb_info, ptr %15, i32 0, i32 38, i32 3
  %51 = ptrtoint ptr %counters.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %counters.i, align 8
  %cmp.i232.not = icmp eq ptr %52, null
  br i1 %cmp.i232.not, label %if.then67.if.end74_crit_edge, label %if.then71

if.then67.if.end74_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74

if.then71:                                        ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #11
  %s_dirs_counter = getelementptr inbounds %struct.ext4_sb_info, ptr %15, i32 0, i32 38
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %53 = load i32, ptr @percpu_counter_batch, align 4
  call void @percpu_counter_add_batch(ptr noundef %s_dirs_counter, i64 noundef -1, i32 noundef %53) #9
  br label %if.end74

if.end74:                                         ; preds = %if.then71, %if.then67.if.end74_crit_edge, %if.end64.if.end74_crit_edge
  %54 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %s_fs_info.i, align 16
  %s_inodes_per_group76 = getelementptr inbounds %struct.ext4_sb_info, ptr %55, i32 0, i32 4
  %56 = ptrtoint ptr %s_inodes_per_group76 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %s_inodes_per_group76, align 16
  %div77224 = lshr i32 %57, 3
  call void @ext4_inode_bitmap_csum_set(ptr noundef nonnull %1, i32 noundef %div, ptr noundef %call51, ptr noundef %call27, i32 noundef %div77224) #9
  call void @ext4_group_desc_csum_set(ptr noundef nonnull %1, i32 noundef %div, ptr noundef %call51) #9
  %58 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %s_fs_info.i, align 16
  %s_blockgroup_lock.i.i235 = getelementptr inbounds %struct.ext4_sb_info, ptr %59, i32 0, i32 41
  %60 = ptrtoint ptr %s_blockgroup_lock.i.i235 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %s_blockgroup_lock.i.i235, align 8
  %and.i.i.i236 = and i32 %div, 15
  %arrayidx.i.i.i237 = getelementptr [16 x %struct.bgl_lock], ptr %61, i32 0, i32 %and.i.i.i236
  call void @_raw_spin_unlock(ptr noundef %arrayidx.i.i.i237) #9
  %counters.i238 = getelementptr inbounds %struct.ext4_sb_info, ptr %15, i32 0, i32 37, i32 3
  %62 = ptrtoint ptr %counters.i238 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %counters.i238, align 8
  %cmp.i239.not = icmp eq ptr %63, null
  br i1 %cmp.i239.not, label %if.end74.if.end81_crit_edge, label %if.then79

if.end74.if.end81_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

if.then79:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  %s_freeinodes_counter = getelementptr inbounds %struct.ext4_sb_info, ptr %15, i32 0, i32 37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %64 = load i32, ptr @percpu_counter_batch, align 4
  call void @percpu_counter_add_batch(ptr noundef %s_freeinodes_counter, i64 noundef 1, i32 noundef %64) #9
  br label %if.end81

if.end81:                                         ; preds = %if.then79, %if.end74.if.end81_crit_edge
  %s_log_groups_per_flex = getelementptr inbounds %struct.ext4_sb_info, ptr %15, i32 0, i32 112
  %65 = ptrtoint ptr %s_log_groups_per_flex to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %s_log_groups_per_flex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool82.not = icmp eq i32 %66, 0
  br i1 %tobool82.not, label %if.end81.do.end108_crit_edge, label %if.then83

if.end81.do.end108_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end108

if.then83:                                        ; preds = %if.end81
  %67 = call i32 @llvm.read_register.i32(metadata !104) #9
  %and.i.i.i.i.i = and i32 %67, -16384
  %68 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %70, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !118
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %if.then83.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then83.rcu_read_lock.exit_crit_edge:           ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then83
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 696, ptr noundef nonnull @.str.38) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then83.rcu_read_lock.exit_crit_edge
  %s_flex_groups = getelementptr inbounds %struct.ext4_sb_info, ptr %15, i32 0, i32 113
  %71 = ptrtoint ptr %s_flex_groups to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile ptr, ptr %s_flex_groups, align 64
  %call89 = call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end98_crit_edge

rcu_read_lock.exit.do.end98_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end98

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call91 = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %land.lhs.true.do.end98_crit_edge, label %land.lhs.true93

land.lhs.true.do.end98_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end98

land.lhs.true93:                                  ; preds = %land.lhs.true
  %.b225 = load i1, ptr @ext4_free_inode.__warned, align 1
  br i1 %.b225, label %land.lhs.true93.do.end98_crit_edge, label %if.then95

land.lhs.true93.do.end98_crit_edge:               ; preds = %land.lhs.true93
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end98

if.then95:                                        ; preds = %land.lhs.true93
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ext4_free_inode.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 341, ptr noundef nonnull @.str.7) #9
  br label %do.end98

do.end98:                                         ; preds = %if.then95, %land.lhs.true93.do.end98_crit_edge, %land.lhs.true.do.end98_crit_edge, %rcu_read_lock.exit.do.end98_crit_edge
  %73 = ptrtoint ptr %s_log_groups_per_flex to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %s_log_groups_per_flex, align 4
  %shr.i240 = lshr i32 %div, %74
  %arrayidx = getelementptr ptr, ptr %72, i32 %shr.i240
  %75 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx, align 4
  call fastcc void @rcu_read_unlock()
  %free_inodes = getelementptr inbounds %struct.flex_groups, ptr %76, i32 0, i32 1
  %call.i.i227 = call zeroext i1 @__kasan_check_write(ptr noundef %free_inodes, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %free_inodes, i32 1, i32 3, i32 1) #9
  %77 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %free_inodes, ptr %free_inodes, i32 1, ptr elementtype(i32) %free_inodes) #9, !srcloc !119
  br i1 %cmp14, label %if.then103, label %do.end98.do.end108_crit_edge

do.end98.do.end108_crit_edge:                     ; preds = %do.end98
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end108

if.then103:                                       ; preds = %do.end98
  call void @__sanitizer_cov_trace_pc() #11
  %used_dirs = getelementptr inbounds %struct.flex_groups, ptr %76, i32 0, i32 2
  %call.i.i228 = call zeroext i1 @__kasan_check_write(ptr noundef %used_dirs, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %used_dirs, i32 1, i32 3, i32 1) #9
  %78 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %used_dirs, ptr %used_dirs, i32 1, ptr elementtype(i32) %used_dirs) #9, !srcloc !115
  br label %do.end108

do.end108:                                        ; preds = %if.then103, %do.end98.do.end108_crit_edge, %if.end81.do.end108_crit_edge
  %79 = ptrtoint ptr %bh2 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %bh2, align 4
  %call109 = call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @.str.1, i32 noundef 347, ptr noundef %handle, ptr noundef null, ptr noundef %80) #9
  br label %out

out:                                              ; preds = %do.end108, %if.then63
  %fatal.1 = phi i32 [ %fatal.0, %if.then63 ], [ %call109, %do.end108 ]
  br i1 %tobool62.not, label %if.else, label %do.end114

do.end114:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  %call115 = call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @.str.1, i32 noundef 351, ptr noundef %handle, ptr noundef null, ptr noundef %call27) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fatal.1)
  %tobool116.not = icmp eq i32 %fatal.1, 0
  %spec.select = select i1 %tobool116.not, i32 %call115, i32 %fatal.1
  br label %error_return

if.else:                                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef nonnull %1, ptr noundef nonnull @.str.1, i32 noundef 355, i1 noundef zeroext false, i32 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.8, i32 noundef %17) #9
  call void @ext4_mark_group_bitmap_corrupted(ptr noundef nonnull %1, i32 noundef %div, i32 noundef 8) #9
  br label %error_return

error_return:                                     ; preds = %if.else, %do.end114, %do.end46.error_return_crit_edge, %if.then35.error_return_crit_edge
  %fatal.2 = phi i32 [ %call47, %do.end46.error_return_crit_edge ], [ %fatal.1, %if.else ], [ -117, %if.then35.error_return_crit_edge ], [ %spec.select, %do.end114 ]
  %tobool.not.i241 = icmp eq ptr %call27, null
  br i1 %tobool.not.i241, label %error_return.brelse.exit_crit_edge, label %if.then.i242

error_return.brelse.exit_crit_edge:               ; preds = %error_return
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit

if.then.i242:                                     ; preds = %error_return
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %call27) #9
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i242, %error_return.brelse.exit_crit_edge, %if.then29
  %fatal.2246 = phi i32 [ %fatal.2, %error_return.brelse.exit_crit_edge ], [ %fatal.2, %if.then.i242 ], [ %33, %if.then29 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fatal.2246)
  %tobool121.not = icmp eq i32 %fatal.2246, 0
  br i1 %tobool121.not, label %brelse.exit.cleanup_crit_edge, label %if.then122

brelse.exit.cleanup_crit_edge:                    ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then122:                                       ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @__ext4_std_error(ptr noundef nonnull %1, ptr noundef nonnull @.str.1, i32 noundef 362, i32 noundef %fatal.2246) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then122, %brelse.exit.cleanup_crit_edge, %brelse.exit.thread, %if.then7, %if.then2, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh2) #9
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_msg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ext4_free_inode(ptr noundef %inode) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_free_inode, i32 0, i32 1), ptr blockaddress(@trace_ext4_free_inode, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !120

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !104) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !117

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !104) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !121
  %call42 = tail call i32 @__traceiter_ext4_free_inode(ptr noundef null, ptr noundef %inode) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !122
  %13 = tail call i32 @llvm.read_register.i32(metadata !104) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !104) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !117

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !104) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !123
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_free_inode, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_free_inode, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_ext4_free_inode.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_ext4_free_inode.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.29, i32 noundef 167, ptr noundef nonnull @.str.7) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !124
  %31 = tail call i32 @llvm.read_register.i32(metadata !104) #9
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
declare dso_local i32 @dquot_initialize(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dquot_free_inode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_clear_inode(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_error(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ext4_read_inode_bitmap(ptr noundef %sb, i32 noundef %block_group) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %call1 = tail call ptr @ext4_get_group_desc(ptr noundef %sb, i32 noundef %block_group, ptr noundef null) #9
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i64 @ext4_inode_bitmap(ptr noundef %sb, ptr noundef nonnull %call1) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9

lor.lhs.false:                                    ; preds = %if.end
  %s_feature_incompat.i = getelementptr inbounds %struct.ext4_super_block, ptr %3, i32 0, i32 29
  %7 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_feature_incompat.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %tobool.not.i130 = icmp sgt i32 %8, -1
  br i1 %tobool.not.i130, label %lor.lhs.false.ext4_blocks_count.exit_crit_edge, label %cond.true.i

lor.lhs.false.ext4_blocks_count.exit_crit_edge:   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %ext4_blocks_count.exit

cond.true.i:                                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %s_blocks_count_hi.i = getelementptr inbounds %struct.ext4_super_block, ptr %3, i32 0, i32 50
  %9 = ptrtoint ptr %s_blocks_count_hi.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %s_blocks_count_hi.i, align 8
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #9
  %conv.i = zext i32 %11 to i64
  %shl.i = shl nuw i64 %conv.i, 32
  br label %ext4_blocks_count.exit

ext4_blocks_count.exit:                           ; preds = %cond.true.i, %lor.lhs.false.ext4_blocks_count.exit_crit_edge
  %cond.i = phi i64 [ %shl.i, %cond.true.i ], [ 0, %lor.lhs.false.ext4_blocks_count.exit_crit_edge ]
  %s_blocks_count_lo.i = getelementptr inbounds %struct.ext4_super_block, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %s_blocks_count_lo.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_blocks_count_lo.i, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #9
  %conv1.i = zext i32 %14 to i64
  %or.i = or i64 %cond.i, %conv1.i
  call void @__sanitizer_cov_trace_cmp8(i64 %call3, i64 %or.i)
  %cmp7.not = icmp ult i64 %call3, %or.i
  br i1 %cmp7.not, label %if.end11, label %ext4_blocks_count.exit.if.then9_crit_edge

ext4_blocks_count.exit.if.then9_crit_edge:        ; preds = %ext4_blocks_count.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9

if.then9:                                         ; preds = %ext4_blocks_count.exit.if.then9_crit_edge, %if.end.if.then9_crit_edge
  tail call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %sb, ptr noundef nonnull @__func__.ext4_read_inode_bitmap, i32 noundef 140, i1 noundef zeroext false, i32 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.31, i64 noundef %call3, i32 noundef %block_group) #9
  tail call void @ext4_mark_group_bitmap_corrupted(ptr noundef %sb, i32 noundef %block_group, i32 noundef 8) #9
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
  %call.i = tail call ptr @__getblk_gfp(ptr noundef %16, i64 noundef %call3, i32 noundef %18, i32 noundef 8) #9
  %tobool13.not = icmp eq ptr %call.i, null
  br i1 %tobool13.not, label %if.then17, label %if.end19, !prof !125

if.then17:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %sb, ptr noundef nonnull @__func__.ext4_read_inode_bitmap, i32 noundef 149, ptr noundef nonnull @.str.32, i32 noundef %block_group, i64 noundef %call3) #9
  br label %cleanup

if.end19:                                         ; preds = %if.end11
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %call.i, align 4
  %and1.i.i.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i131 = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i131, label %if.end19.if.end23_crit_edge, label %bitmap_uptodate.exit

if.end19.if.end23_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

bitmap_uptodate.exit:                             ; preds = %if.end19
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %call.i, align 4
  %23 = and i32 %22, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool21.not = icmp eq i32 %23, 0
  br i1 %tobool21.not, label %bitmap_uptodate.exit.if.end23_crit_edge, label %bitmap_uptodate.exit.verify_crit_edge

bitmap_uptodate.exit.verify_crit_edge:            ; preds = %bitmap_uptodate.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %verify

bitmap_uptodate.exit.if.end23_crit_edge:          ; preds = %bitmap_uptodate.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.end23:                                         ; preds = %bitmap_uptodate.exit.if.end23_crit_edge, %if.end19.if.end23_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.34, i32 noundef 366) #9
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i, i32 noundef 4) #9
  %24 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %call.i, align 4
  %and.i.i.i.i = and i32 %25, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_buffer.exit.i, label %if.end23.if.then.i132_crit_edge

if.end23.if.then.i132_crit_edge:                  ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i132

trylock_buffer.exit.i:                            ; preds = %if.end23
  tail call void @llvm.prefetch.p0(ptr nonnull %call.i, i32 1, i32 3, i32 1) #9
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call.i, ptr nonnull %call.i, i32 4, ptr nonnull elementtype(i32) %call.i) #9, !srcloc !126
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %26, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !127
  %27 = and i32 %asmresult.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.not.i = icmp eq i32 %27, 0
  br i1 %tobool.not.not.i, label %trylock_buffer.exit.i.lock_buffer.exit_crit_edge, label %trylock_buffer.exit.i.if.then.i132_crit_edge

trylock_buffer.exit.i.if.then.i132_crit_edge:     ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i132

trylock_buffer.exit.i.lock_buffer.exit_crit_edge: ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lock_buffer.exit

if.then.i132:                                     ; preds = %trylock_buffer.exit.i.if.then.i132_crit_edge, %if.end23.if.then.i132_crit_edge
  tail call void @__lock_buffer(ptr noundef nonnull %call.i) #9
  br label %lock_buffer.exit

lock_buffer.exit:                                 ; preds = %if.then.i132, %trylock_buffer.exit.i.lock_buffer.exit_crit_edge
  %28 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %call.i, align 4
  %and1.i.i.i133 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i133)
  %tobool.not.i134 = icmp eq i32 %and1.i.i.i133, 0
  br i1 %tobool.not.i134, label %lock_buffer.exit.if.end27_crit_edge, label %bitmap_uptodate.exit137

lock_buffer.exit.if.end27_crit_edge:              ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

bitmap_uptodate.exit137:                          ; preds = %lock_buffer.exit
  %30 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %call.i, align 4
  %32 = and i32 %31, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool25.not = icmp eq i32 %32, 0
  br i1 %tobool25.not, label %bitmap_uptodate.exit137.if.end27_crit_edge, label %bitmap_uptodate.exit137.verify.sink.split_crit_edge

bitmap_uptodate.exit137.verify.sink.split_crit_edge: ; preds = %bitmap_uptodate.exit137
  call void @__sanitizer_cov_trace_pc() #11
  br label %verify.sink.split

bitmap_uptodate.exit137.if.end27_crit_edge:       ; preds = %bitmap_uptodate.exit137
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.end27:                                         ; preds = %bitmap_uptodate.exit137.if.end27_crit_edge, %lock_buffer.exit.if.end27_crit_edge
  %33 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %s_fs_info.i, align 16
  %s_blockgroup_lock.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %34, i32 0, i32 41
  %35 = ptrtoint ptr %s_blockgroup_lock.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %s_blockgroup_lock.i.i, align 8
  %and.i.i.i = and i32 %block_group, 15
  %arrayidx.i.i.i = getelementptr [16 x %struct.bgl_lock], ptr %36, i32 0, i32 %and.i.i.i
  %call.i.i = tail call i32 @_raw_spin_trylock(ptr noundef %arrayidx.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i138 = icmp eq i32 %call.i.i, 0
  %37 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %s_fs_info.i, align 16
  %s_lock_busy5.i = getelementptr inbounds %struct.ext4_sb_info, ptr %38, i32 0, i32 107
  %call.i.i10.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %s_lock_busy5.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9
  tail call void @llvm.prefetch.p0(ptr %s_lock_busy5.i, i32 1, i32 3, i32 1) #9
  br i1 %tobool.not.i138, label %if.else.i, label %if.then.i139

if.then.i139:                                     ; preds = %if.end27
  %39 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %s_lock_busy5.i, ptr %s_lock_busy5.i, i32 0, i32 -1, ptr elementtype(i32) %s_lock_busy5.i) #9, !srcloc !128
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then.i139.ext4_lock_group.exit_crit_edge, label %do.end11.i.i.i.i

if.then.i139.ext4_lock_group.exit_crit_edge:      ; preds = %if.then.i139
  call void @__sanitizer_cov_trace_pc() #11
  br label %ext4_lock_group.exit

do.end11.i.i.i.i:                                 ; preds = %if.then.i139
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !129
  br label %ext4_lock_group.exit

if.else.i:                                        ; preds = %if.end27
  %40 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %s_lock_busy5.i, ptr %s_lock_busy5.i, i32 8, i32 1, ptr elementtype(i32) %s_lock_busy5.i) #9, !srcloc !128
  %asmresult.i.i.i11.i = extractvalue { i32, i32, i32 } %40, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %asmresult.i.i.i11.i)
  %cmp.not.i.i.i12.i = icmp eq i32 %asmresult.i.i.i11.i, 8
  br i1 %cmp.not.i.i.i12.i, label %if.else.i.atomic_add_unless.exit14.i_crit_edge, label %do.end11.i.i.i13.i

if.else.i.atomic_add_unless.exit14.i_crit_edge:   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %atomic_add_unless.exit14.i

do.end11.i.i.i13.i:                               ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !129
  br label %atomic_add_unless.exit14.i

atomic_add_unless.exit14.i:                       ; preds = %do.end11.i.i.i13.i, %if.else.i.atomic_add_unless.exit14.i_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %arrayidx.i.i.i) #9
  br label %ext4_lock_group.exit

ext4_lock_group.exit:                             ; preds = %atomic_add_unless.exit14.i, %do.end11.i.i.i.i, %if.then.i139.ext4_lock_group.exit_crit_edge
  %41 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %s_fs_info.i, align 16
  %s_es.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %42, i32 0, i32 15
  %43 = ptrtoint ptr %s_es.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %s_es.i.i, align 4
  %s_feature_ro_compat.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %44, i32 0, i32 30
  %45 = ptrtoint ptr %s_feature_ro_compat.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %s_feature_ro_compat.i.i, align 4
  %and.i.i = and i32 %46, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.not.i, label %lor.rhs.i, label %ext4_lock_group.exit.land.lhs.true_crit_edge

ext4_lock_group.exit.land.lhs.true_crit_edge:     ; preds = %ext4_lock_group.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

lor.rhs.i:                                        ; preds = %ext4_lock_group.exit
  %and.i.i.i141 = and i32 %46, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i141)
  %cmp.i.not.i.i = icmp eq i32 %and.i.i.i141, 0
  br i1 %cmp.i.not.i.i, label %lor.rhs.i.if.end32.i.i_crit_edge, label %land.rhs.i.i

lor.rhs.i.if.end32.i.i_crit_edge:                 ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32.i.i

land.rhs.i.i:                                     ; preds = %lor.rhs.i
  %s_chksum_driver.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %42, i32 0, i32 121
  %47 = ptrtoint ptr %s_chksum_driver.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %s_chksum_driver.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %48, null
  br i1 %tobool.not.i.i, label %land.rhs5.i.i, label %land.rhs.i.i.if.end32.i.i_crit_edge

land.rhs.i.i.if.end32.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32.i.i

land.rhs5.i.i:                                    ; preds = %land.rhs.i.i
  %.b50.i.i = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  br i1 %.b50.i.i, label %land.rhs5.i.i.if.end32.i.i_crit_edge, label %if.then.i.i, !prof !117

land.rhs5.i.i.if.end32.i.i_crit_edge:             ; preds = %land.rhs5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32.i.i

if.then.i.i:                                      ; preds = %land.rhs5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 3289, i32 noundef 9, ptr noundef null) #9
  br label %if.end32.i.i

if.end32.i.i:                                     ; preds = %if.then.i.i, %land.rhs5.i.i.if.end32.i.i_crit_edge, %land.rhs.i.i.if.end32.i.i_crit_edge, %lor.rhs.i.if.end32.i.i_crit_edge
  %49 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %s_fs_info.i, align 16
  %s_es.i53.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %50, i32 0, i32 15
  %51 = ptrtoint ptr %s_es.i53.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %s_es.i53.i.i, align 4
  %s_feature_ro_compat.i54.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %52, i32 0, i32 30
  %53 = ptrtoint ptr %s_feature_ro_compat.i54.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %s_feature_ro_compat.i54.i.i, align 4
  %and.i55.i.i = and i32 %54, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i55.i.i)
  %cmp.i56.not.i.i = icmp eq i32 %and.i55.i.i, 0
  br i1 %cmp.i56.not.i.i, label %if.end32.i.i.if.end41_crit_edge, label %ext4_has_group_desc_csum.exit

if.end32.i.i.if.end41_crit_edge:                  ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

ext4_has_group_desc_csum.exit:                    ; preds = %if.end32.i.i
  %s_chksum_driver43.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %50, i32 0, i32 121
  %55 = ptrtoint ptr %s_chksum_driver43.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %s_chksum_driver43.i.i, align 4
  %cmp.i3.i.not = icmp eq ptr %56, null
  br i1 %cmp.i3.i.not, label %ext4_has_group_desc_csum.exit.if.end41_crit_edge, label %ext4_has_group_desc_csum.exit.land.lhs.true_crit_edge

ext4_has_group_desc_csum.exit.land.lhs.true_crit_edge: ; preds = %ext4_has_group_desc_csum.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

ext4_has_group_desc_csum.exit.if.end41_crit_edge: ; preds = %ext4_has_group_desc_csum.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

land.lhs.true:                                    ; preds = %ext4_has_group_desc_csum.exit.land.lhs.true_crit_edge, %ext4_lock_group.exit.land.lhs.true_crit_edge
  %bg_flags = getelementptr inbounds %struct.ext4_group_desc, ptr %call1, i32 0, i32 6
  %57 = ptrtoint ptr %bg_flags to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %bg_flags, align 2
  %59 = and i16 %58, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %59)
  %tobool31.not = icmp eq i16 %59, 0
  br i1 %tobool31.not, label %land.lhs.true.if.end41_crit_edge, label %if.then32

land.lhs.true.if.end41_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.then32:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %block_group)
  %cmp33 = icmp eq i32 %block_group, 0
  br i1 %cmp33, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  %60 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %s_fs_info.i, align 16
  %s_blockgroup_lock.i.i143 = getelementptr inbounds %struct.ext4_sb_info, ptr %61, i32 0, i32 41
  %62 = ptrtoint ptr %s_blockgroup_lock.i.i143 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %s_blockgroup_lock.i.i143, align 8
  tail call void @_raw_spin_unlock(ptr noundef %63) #9
  tail call void @unlock_buffer(ptr noundef nonnull %call.i) #9
  tail call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %sb, ptr noundef nonnull @__func__.ext4_read_inode_bitmap, i32 noundef 168, i1 noundef zeroext false, i32 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.33) #9
  br label %out

if.end36:                                         ; preds = %if.then32
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %64 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %b_data, align 4
  %66 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %s_fs_info.i, align 16
  %s_inodes_per_group = getelementptr inbounds %struct.ext4_sb_info, ptr %67, i32 0, i32 4
  %68 = ptrtoint ptr %s_inodes_per_group to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %s_inodes_per_group, align 16
  %add = add i32 %69, 7
  %div125 = lshr i32 %add, 3
  %70 = call ptr @memset(ptr %65, i32 0, i32 %div125)
  %71 = load ptr, ptr %s_fs_info.i, align 16
  %s_inodes_per_group39 = getelementptr inbounds %struct.ext4_sb_info, ptr %71, i32 0, i32 4
  %72 = ptrtoint ptr %s_inodes_per_group39 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %s_inodes_per_group39, align 16
  %74 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %s_blocksize.i, align 16
  %mul = shl i32 %75, 3
  %76 = load ptr, ptr %b_data, align 4
  tail call void @ext4_mark_bitmap_end(i32 noundef %73, i32 noundef %mul, ptr noundef %76)
  tail call void @_set_bit(i32 noundef 25, ptr noundef nonnull %call.i) #9
  %77 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %call.i, align 4
  %and1.i.i = and i32 %78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end36.set_buffer_uptodate.exit_crit_edge

if.end36.set_buffer_uptodate.exit_crit_edge:      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_buffer_uptodate.exit

if.then.i:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 0, ptr noundef nonnull %call.i) #9
  br label %set_buffer_uptodate.exit

set_buffer_uptodate.exit:                         ; preds = %if.then.i, %if.end36.set_buffer_uptodate.exit_crit_edge
  %79 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %call.i, align 4
  %81 = and i32 %80, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool.not.i126 = icmp eq i32 %81, 0
  br i1 %tobool.not.i126, label %if.then.i127, label %set_buffer_uptodate.exit.set_buffer_verified.exit_crit_edge

set_buffer_uptodate.exit.set_buffer_verified.exit_crit_edge: ; preds = %set_buffer_uptodate.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_buffer_verified.exit

if.then.i127:                                     ; preds = %set_buffer_uptodate.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 24, ptr noundef nonnull %call.i) #9
  br label %set_buffer_verified.exit

set_buffer_verified.exit:                         ; preds = %if.then.i127, %set_buffer_uptodate.exit.set_buffer_verified.exit_crit_edge
  %82 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %s_fs_info.i, align 16
  %s_blockgroup_lock.i.i147 = getelementptr inbounds %struct.ext4_sb_info, ptr %83, i32 0, i32 41
  %84 = ptrtoint ptr %s_blockgroup_lock.i.i147 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %s_blockgroup_lock.i.i147, align 8
  %arrayidx.i.i.i149 = getelementptr [16 x %struct.bgl_lock], ptr %85, i32 0, i32 %and.i.i.i
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx.i.i.i149) #9
  tail call void @unlock_buffer(ptr noundef nonnull %call.i) #9
  br label %cleanup

if.end41:                                         ; preds = %land.lhs.true.if.end41_crit_edge, %ext4_has_group_desc_csum.exit.if.end41_crit_edge, %if.end32.i.i.if.end41_crit_edge
  %86 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %s_fs_info.i, align 16
  %s_blockgroup_lock.i.i151 = getelementptr inbounds %struct.ext4_sb_info, ptr %87, i32 0, i32 41
  %88 = ptrtoint ptr %s_blockgroup_lock.i.i151 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %s_blockgroup_lock.i.i151, align 8
  %arrayidx.i.i.i153 = getelementptr [16 x %struct.bgl_lock], ptr %89, i32 0, i32 %and.i.i.i
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx.i.i.i153) #9
  %90 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %call.i, align 4
  %and1.i.i128 = and i32 %91, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i128)
  %tobool43.not = icmp eq i32 %and1.i.i128, 0
  br i1 %tobool43.not, label %if.end45, label %if.then44

if.then44:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 25, ptr noundef nonnull %call.i) #9
  br label %verify.sink.split

if.end45:                                         ; preds = %if.end41
  tail call fastcc void @trace_ext4_load_inode_bitmap(ptr noundef %sb, i32 noundef %block_group)
  %call46 = tail call i32 @ext4_read_bh(ptr noundef nonnull %call.i, i32 noundef 12288, ptr noundef nonnull @ext4_end_bitmap_read) #9
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end45.ext4_simulate_fail_bh.exit_crit_edge, label %land.lhs.true.i

if.end45.ext4_simulate_fail_bh.exit_crit_edge:    ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %ext4_simulate_fail_bh.exit

land.lhs.true.i:                                  ; preds = %if.end45
  %92 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %s_fs_info.i, align 16
  %s_simulate_fail.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %93, i32 0, i32 141
  %94 = ptrtoint ptr %s_simulate_fail.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %s_simulate_fail.i.i, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %95)
  %cmp.i1.i = icmp eq i32 %95, 3
  br i1 %cmp.i1.i, label %if.then.i155, label %land.lhs.true.i.ext4_simulate_fail_bh.exit_crit_edge, !prof !125

land.lhs.true.i.ext4_simulate_fail_bh.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ext4_simulate_fail_bh.exit

if.then.i155:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %96 = ptrtoint ptr %s_simulate_fail.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 0, ptr %s_simulate_fail.i.i, align 64
  tail call void @_clear_bit(i32 noundef 0, ptr noundef nonnull %call.i) #9
  br label %ext4_simulate_fail_bh.exit

ext4_simulate_fail_bh.exit:                       ; preds = %if.then.i155, %land.lhs.true.i.ext4_simulate_fail_bh.exit_crit_edge, %if.end45.ext4_simulate_fail_bh.exit_crit_edge
  %97 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile i32, ptr %call.i, align 4
  %and1.i.i129 = and i32 %98, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i129)
  %tobool48.not = icmp eq i32 %and1.i.i129, 0
  br i1 %tobool48.not, label %if.then49, label %ext4_simulate_fail_bh.exit.verify_crit_edge

ext4_simulate_fail_bh.exit.verify_crit_edge:      ; preds = %ext4_simulate_fail_bh.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %verify

if.then49:                                        ; preds = %ext4_simulate_fail_bh.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @put_bh(ptr noundef nonnull %call.i)
  tail call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %sb, ptr noundef nonnull @__func__.ext4_read_inode_bitmap, i32 noundef 203, i1 noundef zeroext false, i32 noundef 5, i64 noundef 0, ptr noundef nonnull @.str.32, i32 noundef %block_group, i64 noundef %call3) #9
  tail call void @ext4_mark_group_bitmap_corrupted(ptr noundef %sb, i32 noundef %block_group, i32 noundef 8) #9
  br label %cleanup

verify.sink.split:                                ; preds = %if.then44, %bitmap_uptodate.exit137.verify.sink.split_crit_edge
  tail call void @unlock_buffer(ptr noundef nonnull %call.i) #9
  br label %verify

verify:                                           ; preds = %verify.sink.split, %ext4_simulate_fail_bh.exit.verify_crit_edge, %bitmap_uptodate.exit.verify_crit_edge
  %99 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_state.i = getelementptr inbounds %struct.ext4_sb_info, ptr %100, i32 0, i32 25
  %101 = ptrtoint ptr %s_mount_state.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %s_mount_state.i, align 8
  %103 = and i16 %102, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %103)
  %tobool.not.i156 = icmp eq i16 %103, 0
  br i1 %tobool.not.i156, label %if.end.i, label %verify.cleanup_crit_edge

verify.cleanup_crit_edge:                         ; preds = %verify
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %verify
  %call1.i = tail call fastcc ptr @ext4_get_group_info(ptr noundef %sb, i32 noundef %block_group) #9
  %104 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile i32, ptr %call.i, align 4
  %106 = and i32 %105, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool3.not.i = icmp eq i32 %106, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i
  %107 = ptrtoint ptr %call1.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile i32, ptr %call1.i, align 4
  %109 = and i32 %108, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool7.not.i = icmp eq i32 %109, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end5.i.out_crit_edge

if.end5.i.out_crit_edge:                          ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end9.i:                                        ; preds = %if.end5.i
  %110 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %s_fs_info.i, align 16
  %s_blockgroup_lock.i.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %111, i32 0, i32 41
  %112 = ptrtoint ptr %s_blockgroup_lock.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %s_blockgroup_lock.i.i.i, align 8
  %and.i.i.i.i157 = and i32 %block_group, 15
  %arrayidx.i.i.i.i = getelementptr [16 x %struct.bgl_lock], ptr %113, i32 0, i32 %and.i.i.i.i157
  %call.i.i.i = tail call i32 @_raw_spin_trylock(ptr noundef %arrayidx.i.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i46.i = icmp eq i32 %call.i.i.i, 0
  %114 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %s_fs_info.i, align 16
  %s_lock_busy5.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %115, i32 0, i32 107
  %call.i.i10.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %s_lock_busy5.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9
  tail call void @llvm.prefetch.p0(ptr %s_lock_busy5.i.i, i32 1, i32 3, i32 1) #9
  br i1 %tobool.not.i46.i, label %if.else.i.i, label %if.then.i47.i

if.then.i47.i:                                    ; preds = %if.end9.i
  %116 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %s_lock_busy5.i.i, ptr %s_lock_busy5.i.i, i32 0, i32 -1, ptr elementtype(i32) %s_lock_busy5.i.i) #9, !srcloc !128
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %116, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i47.i.ext4_lock_group.exit.i_crit_edge, label %do.end11.i.i.i.i.i

if.then.i47.i.ext4_lock_group.exit.i_crit_edge:   ; preds = %if.then.i47.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ext4_lock_group.exit.i

do.end11.i.i.i.i.i:                               ; preds = %if.then.i47.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !129
  br label %ext4_lock_group.exit.i

if.else.i.i:                                      ; preds = %if.end9.i
  %117 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %s_lock_busy5.i.i, ptr %s_lock_busy5.i.i, i32 8, i32 1, ptr elementtype(i32) %s_lock_busy5.i.i) #9, !srcloc !128
  %asmresult.i.i.i11.i.i = extractvalue { i32, i32, i32 } %117, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %asmresult.i.i.i11.i.i)
  %cmp.not.i.i.i12.i.i = icmp eq i32 %asmresult.i.i.i11.i.i, 8
  br i1 %cmp.not.i.i.i12.i.i, label %if.else.i.i.atomic_add_unless.exit14.i.i_crit_edge, label %do.end11.i.i.i13.i.i

if.else.i.i.atomic_add_unless.exit14.i.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %atomic_add_unless.exit14.i.i

do.end11.i.i.i13.i.i:                             ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !129
  br label %atomic_add_unless.exit14.i.i

atomic_add_unless.exit14.i.i:                     ; preds = %do.end11.i.i.i13.i.i, %if.else.i.i.atomic_add_unless.exit14.i.i_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %arrayidx.i.i.i.i) #9
  br label %ext4_lock_group.exit.i

ext4_lock_group.exit.i:                           ; preds = %atomic_add_unless.exit14.i.i, %do.end11.i.i.i.i.i, %if.then.i47.i.ext4_lock_group.exit.i_crit_edge
  %118 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load volatile i32, ptr %call.i, align 4
  %120 = and i32 %119, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool11.not.i = icmp eq i32 %120, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %ext4_lock_group.exit.i.verified.i_crit_edge

ext4_lock_group.exit.i.verified.i_crit_edge:      ; preds = %ext4_lock_group.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %verified.i

if.end13.i:                                       ; preds = %ext4_lock_group.exit.i
  %call14.i = tail call i64 @ext4_inode_bitmap(ptr noundef %sb, ptr noundef nonnull %call1) #9
  %121 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %s_fs_info.i, align 16
  %s_inodes_per_group.i = getelementptr inbounds %struct.ext4_sb_info, ptr %122, i32 0, i32 4
  %123 = ptrtoint ptr %s_inodes_per_group.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %s_inodes_per_group.i, align 16
  %div43.i = lshr i32 %124, 3
  %call16.i = tail call i32 @ext4_inode_bitmap_csum_verify(ptr noundef %sb, i32 noundef %block_group, ptr noundef nonnull %call1, ptr noundef nonnull %call.i, i32 noundef %div43.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end13.i.if.then20.i_crit_edge, label %lor.lhs.false.i

if.end13.i.if.then20.i_crit_edge:                 ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then20.i

lor.lhs.false.i:                                  ; preds = %if.end13.i
  %125 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %s_fs_info.i, align 16
  %s_simulate_fail.i.i158 = getelementptr inbounds %struct.ext4_sb_info, ptr %126, i32 0, i32 141
  %127 = ptrtoint ptr %s_simulate_fail.i.i158 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %s_simulate_fail.i.i158, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %128)
  %cmp.i.i159 = icmp eq i32 %128, 4
  br i1 %cmp.i.i159, label %ext4_simulate_fail.exit.thread.i, label %if.end21.i, !prof !125

ext4_simulate_fail.exit.thread.i:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  %129 = ptrtoint ptr %s_simulate_fail.i.i158 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 0, ptr %s_simulate_fail.i.i158, align 64
  br label %if.then20.i

if.then20.i:                                      ; preds = %ext4_simulate_fail.exit.thread.i, %if.end13.i.if.then20.i_crit_edge
  %130 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %s_fs_info.i, align 16
  %s_blockgroup_lock.i.i51.i = getelementptr inbounds %struct.ext4_sb_info, ptr %131, i32 0, i32 41
  %132 = ptrtoint ptr %s_blockgroup_lock.i.i51.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %s_blockgroup_lock.i.i51.i, align 8
  %arrayidx.i.i.i53.i = getelementptr [16 x %struct.bgl_lock], ptr %133, i32 0, i32 %and.i.i.i.i157
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx.i.i.i53.i) #9
  tail call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %sb, ptr noundef nonnull @__func__.ext4_validate_inode_bitmap, i32 noundef 106, i1 noundef zeroext false, i32 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.35, i32 noundef %block_group, i64 noundef %call14.i) #9
  tail call void @ext4_mark_group_bitmap_corrupted(ptr noundef %sb, i32 noundef %block_group, i32 noundef 8) #9
  br label %out

if.end21.i:                                       ; preds = %lor.lhs.false.i
  %134 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load volatile i32, ptr %call.i, align 4
  %136 = and i32 %135, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %tobool.not.i.i160 = icmp eq i32 %136, 0
  br i1 %tobool.not.i.i160, label %if.then.i.i161, label %if.end21.i.verified.i_crit_edge

if.end21.i.verified.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %verified.i

if.then.i.i161:                                   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 24, ptr noundef nonnull %call.i) #9
  br label %verified.i

verified.i:                                       ; preds = %if.then.i.i161, %if.end21.i.verified.i_crit_edge, %ext4_lock_group.exit.i.verified.i_crit_edge
  %137 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %s_fs_info.i, align 16
  %s_blockgroup_lock.i.i55.i = getelementptr inbounds %struct.ext4_sb_info, ptr %138, i32 0, i32 41
  %139 = ptrtoint ptr %s_blockgroup_lock.i.i55.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %s_blockgroup_lock.i.i55.i, align 8
  %arrayidx.i.i.i57.i = getelementptr [16 x %struct.bgl_lock], ptr %140, i32 0, i32 %and.i.i.i.i157
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx.i.i.i57.i) #9
  br label %cleanup

out:                                              ; preds = %if.then20.i, %if.end5.i.out_crit_edge, %if.then35
  %err.0 = phi ptr [ inttoptr (i32 -117 to ptr), %if.then35 ], [ inttoptr (i32 -74 to ptr), %if.then20.i ], [ inttoptr (i32 -117 to ptr), %if.end5.i.out_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !114
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 11
  %call.i.i.i162 = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #9
  %141 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #9, !srcloc !115
  br label %cleanup

cleanup:                                          ; preds = %out, %verified.i, %if.end.i.cleanup_crit_edge, %verify.cleanup_crit_edge, %if.then49, %set_buffer_verified.exit, %if.then17, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -117 to ptr), %if.then9 ], [ inttoptr (i32 -12 to ptr), %if.then17 ], [ %err.0, %out ], [ %call.i, %set_buffer_verified.exit ], [ inttoptr (i32 -5 to ptr), %if.then49 ], [ inttoptr (i32 -117 to ptr), %entry.cleanup_crit_edge ], [ %call.i, %verified.i ], [ %call.i, %verify.cleanup_crit_edge ], [ %call.i, %if.end.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ext4_get_group_info(ptr nocapture noundef readonly %sb, i32 noundef %group) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  br i1 %cmp.not, label %do.end7, label %do.body2, !prof !117

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3364, 0\0A.popsection", ""() #9, !srcloc !130
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
  %8 = tail call i32 @llvm.read_register.i32(metadata !104) #9
  %and.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %11, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !118
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %do.end7.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

do.end7.rcu_read_lock.exit_crit_edge:             ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %do.end7
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 696, ptr noundef nonnull @.str.38) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %do.end7.rcu_read_lock.exit_crit_edge
  %12 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_fs_info.i, align 16
  %s_group_info = getelementptr inbounds %struct.ext4_sb_info, ptr %13, i32 0, i32 60
  %14 = ptrtoint ptr %s_group_info to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %s_group_info, align 8
  %call15 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end24_crit_edge

rcu_read_lock.exit.do.end24_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end24

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call17 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %land.lhs.true.do.end24_crit_edge, label %land.lhs.true19

land.lhs.true.do.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end24

land.lhs.true19:                                  ; preds = %land.lhs.true
  %.b33 = load i1, ptr @ext4_get_group_info.__warned, align 1
  br i1 %.b33, label %land.lhs.true19.do.end24_crit_edge, label %if.then21

land.lhs.true19.do.end24_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end24

if.then21:                                        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ext4_get_group_info.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.36, i32 noundef 3367, ptr noundef nonnull @.str.7) #9
  br label %do.end24

do.end24:                                         ; preds = %if.then21, %land.lhs.true19.do.end24_crit_edge, %land.lhs.true.do.end24_crit_edge, %rcu_read_lock.exit.do.end24_crit_edge
  %shr = lshr i32 %group, %5
  %arrayidx = getelementptr ptr, ptr %15, i32 %shr
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %call.i37 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i37, label %do.end24.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i40

do.end24.rcu_read_unlock.exit_crit_edge:          ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i40:                                ; preds = %do.end24
  %call1.i38 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i38)
  %tobool.not.i39 = icmp eq i32 %call1.i38, 0
  br i1 %tobool.not.i39, label %land.lhs.true.i40.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i42

land.lhs.true.i40.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i40
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i42:                               ; preds = %land.lhs.true.i40
  %.b4.i41 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i41, label %land.lhs.true2.i42.rcu_read_unlock.exit_crit_edge, label %if.then.i43

land.lhs.true2.i42.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i42
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i43:                                      ; preds = %land.lhs.true2.i42
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 724, ptr noundef nonnull @.str.39) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i43, %land.lhs.true2.i42.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i40.rcu_read_unlock.exit_crit_edge, %do.end24.rcu_read_unlock.exit_crit_edge
  %sub = add i32 %7, -1
  %and = and i32 %sub, %group
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !131
  %18 = tail call i32 @llvm.read_register.i32(metadata !104) #9
  %and.i.i.i.i.i44 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i44 to ptr
  %preempt_count.i.i.i.i45 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i45 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i45, align 4
  %sub.i.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i45, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  %arrayidx27 = getelementptr ptr, ptr %17, i32 %and
  %22 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx27, align 4
  ret ptr %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_journal_get_write_access(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ext4_get_group_desc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ext4_lock_group(ptr nocapture noundef readonly %sb, i32 noundef %group) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %call.i = tail call i32 @_raw_spin_trylock(ptr noundef %arrayidx.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  %4 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_lock_busy5 = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 107
  %call.i.i10 = tail call zeroext i1 @__kasan_check_write(ptr noundef %s_lock_busy5, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9
  tail call void @llvm.prefetch.p0(ptr %s_lock_busy5, i32 1, i32 3, i32 1) #9
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %s_lock_busy5, ptr %s_lock_busy5, i32 0, i32 -1, ptr elementtype(i32) %s_lock_busy5) #9, !srcloc !128
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %if.then.if.end_crit_edge, label %do.end11.i.i.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end11.i.i.i:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !129
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %s_lock_busy5, ptr %s_lock_busy5, i32 8, i32 1, ptr elementtype(i32) %s_lock_busy5) #9, !srcloc !128
  %asmresult.i.i.i11 = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %asmresult.i.i.i11)
  %cmp.not.i.i.i12 = icmp eq i32 %asmresult.i.i.i11, 8
  br i1 %cmp.not.i.i.i12, label %if.else.atomic_add_unless.exit14_crit_edge, label %do.end11.i.i.i13

if.else.atomic_add_unless.exit14_crit_edge:       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %atomic_add_unless.exit14

do.end11.i.i.i13:                                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !129
  br label %atomic_add_unless.exit14

atomic_add_unless.exit14:                         ; preds = %do.end11.i.i.i13, %if.else.atomic_add_unless.exit14_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %arrayidx.i.i) #9
  br label %if.end

if.end:                                           ; preds = %atomic_add_unless.exit14, %do.end11.i.i.i, %if.then.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_free_inodes_count(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_free_inodes_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_used_dirs_count(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_used_dirs_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_inode_bitmap_csum_set(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_group_desc_csum_set(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_read_unlock() unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b4 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 724, ptr noundef nonnull @.str.39) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !131
  %0 = tail call i32 @llvm.read_register.i32(metadata !104) #9
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_handle_dirty_metadata(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_mark_group_bitmap_corrupted(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_std_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_mark_inode_used(ptr noundef %sb, i32 noundef %ino) local_unnamed_addr #2 align 64 {
entry:
  %group_desc_bh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_es = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %s_es to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_es, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %group_desc_bh) #9
  %6 = ptrtoint ptr %group_desc_bh to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %group_desc_bh, align 4
  %s_first_ino = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 30
  %7 = ptrtoint ptr %s_first_ino to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_first_ino, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %ino)
  %cmp = icmp sgt i32 %8, %ino
  %9 = tail call i32 @llvm.bswap.i32(i32 %5)
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %ino)
  %cmp2 = icmp ult i32 %9, %ino
  %or.cond = select i1 %cmp, i1 true, i1 %cmp2
  br i1 %or.cond, label %entry.cleanup117_crit_edge, label %if.end

entry.cleanup117_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup117

if.end:                                           ; preds = %entry
  %sub = add i32 %ino, -1
  %s_inodes_per_group = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %s_inodes_per_group to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_inodes_per_group, align 16
  %.frozen = freeze i32 %11
  %div = udiv i32 %sub, %.frozen
  %12 = mul i32 %div, %.frozen
  %rem.decomposed = sub i32 %sub, %12
  %call7 = tail call fastcc ptr @ext4_read_inode_bitmap(ptr noundef %sb, i32 noundef %div)
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %call7 to i32
  br label %cleanup117

if.end11:                                         ; preds = %if.end
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call7, i32 0, i32 5
  %14 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %b_data, align 4
  %div3.i.i = lshr i32 %rem.decomposed, 5
  %arrayidx.i.i = getelementptr i32, ptr %15, i32 %div3.i.i
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %arrayidx.i.i, align 4
  %xor.i = and i32 %rem.decomposed, 31
  %and.i.i = xor i32 %xor.i, 24
  %18 = shl nuw i32 1, %and.i.i
  %19 = and i32 %17, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not = icmp eq i32 %19, 0
  br i1 %tobool.not, label %if.end14, label %if.end11.cleanup117_crit_edge

if.end11.cleanup117_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup117

if.end14:                                         ; preds = %if.end11
  %call15 = call ptr @ext4_get_group_desc(ptr noundef %sb, i32 noundef %div, ptr noundef nonnull %group_desc_bh) #9
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %if.end14.cleanup117_crit_edge, label %lor.lhs.false17

if.end14.cleanup117_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup117

lor.lhs.false17:                                  ; preds = %if.end14
  %20 = ptrtoint ptr %group_desc_bh to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %group_desc_bh, align 4
  %tobool18.not = icmp eq ptr %21, null
  br i1 %tobool18.not, label %lor.lhs.false17.cleanup117_crit_edge, label %if.end20

lor.lhs.false17.cleanup117_crit_edge:             ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup117

if.end20:                                         ; preds = %lor.lhs.false17
  %22 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %b_data, align 4
  %add.ptr.i.i = getelementptr i32, ptr %23, i32 %div3.i.i
  %24 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %25, %18
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  %call22 = call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_mark_inode_used, i32 noundef 784, ptr noundef null, ptr noundef null, ptr noundef %call7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end31, label %if.then27

if.then27:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  call void @__ext4_std_error(ptr noundef %sb, ptr noundef nonnull @__func__.ext4_mark_inode_used, i32 noundef 786, i32 noundef %call22) #9
  br label %cleanup117

if.end31:                                         ; preds = %if.end20
  %call32 = call i32 @sync_dirty_buffer(ptr noundef %call7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end41, label %if.then37

if.then37:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  call void @__ext4_std_error(ptr noundef %sb, ptr noundef nonnull @__func__.ext4_mark_inode_used, i32 noundef 791, i32 noundef %call32) #9
  br label %cleanup117

if.end41:                                         ; preds = %if.end31
  %call42 = call fastcc i32 @ext4_has_group_desc_csum(ptr noundef %sb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end41.if.end79_crit_edge, label %land.lhs.true

if.end41.if.end79_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79

land.lhs.true:                                    ; preds = %if.end41
  %bg_flags = getelementptr inbounds %struct.ext4_group_desc, ptr %call15, i32 0, i32 6
  %26 = ptrtoint ptr %bg_flags to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %bg_flags, align 2
  %28 = and i16 %27, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool44.not = icmp eq i16 %28, 0
  br i1 %tobool44.not, label %land.lhs.true.if.end79_crit_edge, label %if.then45

land.lhs.true.if.end79_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79

if.then45:                                        ; preds = %land.lhs.true
  %call46 = call ptr @ext4_read_block_bitmap(ptr noundef %sb, i32 noundef %div) #9
  %cmp.i214 = icmp ugt ptr %call46, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i214, label %if.then48, label %do.end53

if.then48:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %call46 to i32
  br label %cleanup117

do.end53:                                         ; preds = %if.then45
  %call54 = call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_mark_inode_used, i32 noundef 807, ptr noundef null, ptr noundef null, ptr noundef %call46) #9
  %call55 = call i32 @sync_dirty_buffer(ptr noundef %call46) #9
  call fastcc void @ext4_lock_group(ptr noundef %sb, i32 noundef %div)
  %call56 = call fastcc i32 @ext4_has_group_desc_csum(ptr noundef %sb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %do.end53.if.end69_crit_edge, label %land.lhs.true58

do.end53.if.end69_crit_edge:                      ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

land.lhs.true58:                                  ; preds = %do.end53
  %30 = ptrtoint ptr %bg_flags to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %bg_flags, align 2
  %32 = and i16 %31, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool62.not = icmp eq i16 %32, 0
  br i1 %tobool62.not, label %land.lhs.true58.if.end69_crit_edge, label %if.then63

land.lhs.true58.if.end69_crit_edge:               ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then63:                                        ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #11
  %and66 = and i16 %31, -513
  %33 = ptrtoint ptr %bg_flags to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %and66, ptr %bg_flags, align 2
  %call68 = call i32 @ext4_free_clusters_after_init(ptr noundef %sb, i32 noundef %div, ptr noundef nonnull %call15) #9
  call void @ext4_free_group_clusters_set(ptr noundef %sb, ptr noundef nonnull %call15, i32 noundef %call68) #9
  call void @ext4_block_bitmap_csum_set(ptr noundef %sb, i32 noundef %div, ptr noundef nonnull %call15, ptr noundef %call46) #9
  call void @ext4_group_desc_csum_set(ptr noundef %sb, i32 noundef %div, ptr noundef nonnull %call15) #9
  br label %if.end69

if.end69:                                         ; preds = %if.then63, %land.lhs.true58.if.end69_crit_edge, %do.end53.if.end69_crit_edge
  %34 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %s_fs_info.i, align 16
  %s_blockgroup_lock.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %35, i32 0, i32 41
  %36 = ptrtoint ptr %s_blockgroup_lock.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %s_blockgroup_lock.i.i, align 8
  %and.i.i.i = and i32 %div, 15
  %arrayidx.i.i.i = getelementptr [16 x %struct.bgl_lock], ptr %37, i32 0, i32 %and.i.i.i
  call void @_raw_spin_unlock(ptr noundef %arrayidx.i.i.i) #9
  %tobool.not.i = icmp eq ptr %call46, null
  br i1 %tobool.not.i, label %if.end69.brelse.exit_crit_edge, label %if.then.i

if.end69.brelse.exit_crit_edge:                   ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit

if.then.i:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %call46) #9
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.end69.brelse.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool70.not = icmp eq i32 %call54, 0
  br i1 %tobool70.not, label %brelse.exit.if.end79_crit_edge, label %if.then74

brelse.exit.if.end79_crit_edge:                   ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79

if.then74:                                        ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @__ext4_std_error(ptr noundef %sb, ptr noundef nonnull @__func__.ext4_mark_inode_used, i32 noundef 825, i32 noundef %call54) #9
  br label %cleanup117

if.end79:                                         ; preds = %brelse.exit.if.end79_crit_edge, %land.lhs.true.if.end79_crit_edge, %if.end41.if.end79_crit_edge
  %call80 = call fastcc i32 @ext4_has_group_desc_csum(ptr noundef %sb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  call fastcc void @ext4_lock_group(ptr noundef %sb, i32 noundef %div)
  br i1 %tobool81.not, label %if.end79.if.end105_crit_edge, label %if.then82

if.end79.if.end105_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end105

if.then82:                                        ; preds = %if.end79
  %38 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %s_fs_info.i, align 16
  %s_inodes_per_group84 = getelementptr inbounds %struct.ext4_sb_info, ptr %39, i32 0, i32 4
  %40 = ptrtoint ptr %s_inodes_per_group84 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %s_inodes_per_group84, align 16
  %call85 = call i32 @ext4_itable_unused_count(ptr noundef %sb, ptr noundef nonnull %call15) #9
  %sub86 = sub i32 %41, %call85
  %bg_flags87 = getelementptr inbounds %struct.ext4_group_desc, ptr %call15, i32 0, i32 6
  %42 = ptrtoint ptr %bg_flags87 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %bg_flags87, align 2
  %44 = and i16 %43, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %tobool90.not = icmp eq i16 %44, 0
  br i1 %tobool90.not, label %if.then82.if.end96_crit_edge, label %if.then91

if.then82.if.end96_crit_edge:                     ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end96

if.then91:                                        ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #11
  %and94 = and i16 %43, -257
  %45 = ptrtoint ptr %bg_flags87 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %and94, ptr %bg_flags87, align 2
  br label %if.end96

if.end96:                                         ; preds = %if.then91, %if.then82.if.end96_crit_edge
  %free.0 = phi i32 [ 0, %if.then91 ], [ %sub86, %if.then82.if.end96_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.decomposed, i32 %free.0)
  %cmp97.not = icmp slt i32 %rem.decomposed, %free.0
  br i1 %cmp97.not, label %if.end96.if.end105_crit_edge, label %if.then99

if.end96.if.end105_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end105

if.then99:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %s_fs_info.i, align 16
  %s_inodes_per_group101 = getelementptr inbounds %struct.ext4_sb_info, ptr %47, i32 0, i32 4
  %48 = ptrtoint ptr %s_inodes_per_group101 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %s_inodes_per_group101, align 16
  %50 = xor i32 %rem.decomposed, -1
  %sub103 = add i32 %49, %50
  call void @ext4_itable_unused_set(ptr noundef %sb, ptr noundef nonnull %call15, i32 noundef %sub103) #9
  br label %if.end105

if.end105:                                        ; preds = %if.then99, %if.end96.if.end105_crit_edge, %if.end79.if.end105_crit_edge
  %call106 = call i32 @ext4_free_inodes_count(ptr noundef %sb, ptr noundef nonnull %call15) #9
  %sub107 = add i32 %call106, -1
  call void @ext4_free_inodes_set(ptr noundef %sb, ptr noundef nonnull %call15, i32 noundef %sub107) #9
  %call108 = call fastcc i32 @ext4_has_group_desc_csum(ptr noundef %sb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %if.end105.if.end114_crit_edge, label %if.then110

if.end105.if.end114_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end114

if.then110:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %s_fs_info.i, align 16
  %s_inodes_per_group112 = getelementptr inbounds %struct.ext4_sb_info, ptr %52, i32 0, i32 4
  %53 = ptrtoint ptr %s_inodes_per_group112 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %s_inodes_per_group112, align 16
  %div113208 = lshr i32 %54, 3
  call void @ext4_inode_bitmap_csum_set(ptr noundef %sb, i32 noundef %div, ptr noundef nonnull %call15, ptr noundef %call7, i32 noundef %div113208) #9
  call void @ext4_group_desc_csum_set(ptr noundef %sb, i32 noundef %div, ptr noundef nonnull %call15) #9
  br label %if.end114

if.end114:                                        ; preds = %if.then110, %if.end105.if.end114_crit_edge
  %55 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %s_fs_info.i, align 16
  %s_blockgroup_lock.i.i219 = getelementptr inbounds %struct.ext4_sb_info, ptr %56, i32 0, i32 41
  %57 = ptrtoint ptr %s_blockgroup_lock.i.i219 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %s_blockgroup_lock.i.i219, align 8
  %and.i.i.i220 = and i32 %div, 15
  %arrayidx.i.i.i221 = getelementptr [16 x %struct.bgl_lock], ptr %58, i32 0, i32 %and.i.i.i220
  call void @_raw_spin_unlock(ptr noundef %arrayidx.i.i.i221) #9
  %59 = ptrtoint ptr %group_desc_bh to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %group_desc_bh, align 4
  %call115 = call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_mark_inode_used, i32 noundef 862, ptr noundef null, ptr noundef null, ptr noundef %60) #9
  %61 = ptrtoint ptr %group_desc_bh to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %group_desc_bh, align 4
  %call116 = call i32 @sync_dirty_buffer(ptr noundef %62) #9
  br label %cleanup117

cleanup117:                                       ; preds = %if.end114, %if.then74, %if.then48, %if.then37, %if.then27, %lor.lhs.false17.cleanup117_crit_edge, %if.end14.cleanup117_crit_edge, %if.end11.cleanup117_crit_edge, %if.then9, %entry.cleanup117_crit_edge
  %retval.0 = phi i32 [ %13, %if.then9 ], [ -117, %entry.cleanup117_crit_edge ], [ %call22, %if.then27 ], [ %call32, %if.then37 ], [ %call115, %if.end114 ], [ 0, %if.end11.cleanup117_crit_edge ], [ -22, %lor.lhs.false17.cleanup117_crit_edge ], [ -22, %if.end14.cleanup117_crit_edge ], [ %call54, %if.then74 ], [ %29, %if.then48 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %group_desc_bh) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_dirty_buffer(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ext4_has_group_desc_csum(ptr nocapture noundef readonly %sb) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  %and.i.i = and i32 %5, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.not.i, label %lor.rhs.if.end32.i_crit_edge, label %land.rhs.i

lor.rhs.if.end32.i_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32.i

land.rhs.i:                                       ; preds = %lor.rhs
  %s_chksum_driver.i = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 121
  %6 = ptrtoint ptr %s_chksum_driver.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_chksum_driver.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %land.rhs5.i, label %land.rhs.i.if.end32.i_crit_edge

land.rhs.i.if.end32.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32.i

land.rhs5.i:                                      ; preds = %land.rhs.i
  %.b50.i = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  br i1 %.b50.i, label %land.rhs5.i.if.end32.i_crit_edge, label %if.then.i, !prof !117

land.rhs5.i.if.end32.i_crit_edge:                 ; preds = %land.rhs5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32.i

if.then.i:                                        ; preds = %land.rhs5.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 3289, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end

land.rhs41.i:                                     ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #11
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

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ext4_read_block_bitmap(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_free_group_clusters_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_free_clusters_after_init(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_block_bitmap_csum_set(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_itable_unused_count(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_itable_unused_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__ext4_new_inode(ptr noundef %mnt_userns, ptr noundef %handle, ptr noundef %dir, i16 noundef zeroext %mode, ptr noundef %qstr, i32 noundef %goal, ptr noundef readonly %owner, i32 noundef %i_flags, i32 noundef %handle_type, i32 noundef %line_no, i32 noundef %nblocks) local_unnamed_addr #2 align 64 {
entry:
  %group_desc_bh = alloca ptr, align 4
  %group = alloca i32, align 4
  %ino = alloca i32, align 4
  %encrypt = alloca i8, align 1
  %tmp427 = alloca %struct.timespec64, align 8
  %inum = alloca i32, align 4
  %gen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %group_desc_bh) #9
  %0 = ptrtoint ptr %group_desc_bh to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %group_desc_bh, align 4, !annotation !116
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %group) #9
  %1 = ptrtoint ptr %group to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %group, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ino) #9
  %2 = ptrtoint ptr %ino to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %ino, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %encrypt) #9
  %3 = ptrtoint ptr %encrypt to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %encrypt, align 1
  %tobool.not = icmp eq ptr %dir, null
  br i1 %tobool.not, label %entry.cleanup539_crit_edge, label %lor.lhs.false

entry.cleanup539_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup539

lor.lhs.false:                                    ; preds = %entry
  %4 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 12
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool1.not = icmp eq i32 %6, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup539_crit_edge, label %if.end

lor.lhs.false.cleanup539_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup539

if.end:                                           ; preds = %lor.lhs.false
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %7 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 33
  %9 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_fs_info.i, align 16
  %s_ext4_flags.i = getelementptr inbounds %struct.ext4_sb_info, ptr %10, i32 0, i32 48
  %11 = ptrtoint ptr %s_ext4_flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %s_ext4_flags.i, align 4
  %13 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool4.not = icmp eq i32 %13, 0
  br i1 %tobool4.not, label %if.end9, label %if.end.cleanup539_crit_edge, !prof !117

if.end.cleanup539_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup539

if.end9:                                          ; preds = %if.end
  %s_groups_count.i = getelementptr inbounds %struct.ext4_sb_info, ptr %10, i32 0, i32 8
  %14 = ptrtoint ptr %s_groups_count.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %s_groups_count.i, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !132
  %conv = zext i16 %mode to i32
  tail call fastcc void @trace_ext4_request_inode(ptr noundef nonnull %dir, i32 noundef %conv)
  %call11 = tail call ptr @new_inode(ptr noundef %8) #9
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.end9.cleanup539_crit_edge, label %if.end15

if.end9.cleanup539_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup539

if.end15:                                         ; preds = %if.end9
  %add.ptr = getelementptr i8, ptr %call11, i32 -464
  %tobool16.not = icmp eq ptr %owner, null
  br i1 %tobool16.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %call11 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %mode, ptr %call11, align 8
  %17 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %owner, align 4
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %call11, i32 0, i32 2
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %call11, i32 0, i32 8
  %19 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i_sb.i.i, align 4
  %s_user_ns.i.i = getelementptr inbounds %struct.super_block, ptr %20, i32 0, i32 53
  %21 = ptrtoint ptr %s_user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %s_user_ns.i.i, align 8
  %call1.i859 = tail call i32 @make_kuid(ptr noundef %22, i32 noundef %18) #9
  %23 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call1.i859, ptr %i_uid.i, align 4
  %arrayidx18 = getelementptr i32, ptr %owner, i32 1
  %24 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx18, align 4
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %call11, i32 0, i32 3
  %26 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i_sb.i.i, align 4
  %s_user_ns.i.i861 = getelementptr inbounds %struct.super_block, ptr %27, i32 0, i32 53
  %28 = ptrtoint ptr %s_user_ns.i.i861 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %s_user_ns.i.i861, align 8
  %call1.i862 = tail call i32 @make_kgid(ptr noundef %29, i32 noundef %25) #9
  %30 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call1.i862, ptr %i_gid.i, align 8
  br label %if.end26

if.else:                                          ; preds = %if.end15
  %31 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt = getelementptr inbounds %struct.ext4_sb_info, ptr %32, i32 0, i32 17
  %33 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %s_mount_opt, align 4
  %and = and i32 %34, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not = icmp eq i32 %and, 0
  br i1 %tobool20.not, label %if.else24, label %if.then21

if.then21:                                        ; preds = %if.else
  %35 = ptrtoint ptr %call11 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %mode, ptr %call11, align 8
  %i_sb.i.i864 = getelementptr inbounds %struct.inode, ptr %call11, i32 0, i32 8
  %36 = ptrtoint ptr %i_sb.i.i864 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %i_sb.i.i864, align 4
  %s_user_ns.i.i865 = getelementptr inbounds %struct.super_block, ptr %37, i32 0, i32 53
  %38 = ptrtoint ptr %s_user_ns.i.i865 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %s_user_ns.i.i865, align 8
  %40 = tail call i32 @llvm.read_register.i32(metadata !104) #9
  %and.i.i.i = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %task.i.i, align 8
  %cred.i.i = getelementptr inbounds %struct.task_struct, ptr %43, i32 0, i32 99
  %44 = ptrtoint ptr %cred.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cred.i.i, align 16
  %fsuid.i.i = getelementptr inbounds %struct.cred, ptr %45, i32 0, i32 10
  %46 = ptrtoint ptr %fsuid.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %agg.tmp.sroa.0.0.copyload.i.i = load i32, ptr %fsuid.i.i, align 4
  %cmp.i.i.i.i.i = icmp eq ptr %mnt_userns, @init_user_ns
  %cmp.i.i.i.i = icmp eq ptr %39, %mnt_userns
  %spec.select.i.i.i.i = or i1 %cmp.i.i.i.i.i, %cmp.i.i.i.i
  br i1 %spec.select.i.i.i.i, label %if.then21.inode_fsuid_set.exit_crit_edge, label %if.end.i.i.i

if.then21.inode_fsuid_set.exit_crit_edge:         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  br label %inode_fsuid_set.exit

if.end.i.i.i:                                     ; preds = %if.then21
  %.fca.0.insert.i.i = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload.i.i, 0
  %call2.i.i.i = tail call i32 @from_kuid(ptr noundef %mnt_userns, [1 x i32] %.fca.0.insert.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i.i.i)
  %cmp.i.i.i = icmp eq i32 %call2.i.i.i, -1
  br i1 %cmp.i.i.i, label %if.end.i.i.i.inode_fsuid_set.exit_crit_edge, label %if.end4.i.i.i

if.end.i.i.i.inode_fsuid_set.exit_crit_edge:      ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %inode_fsuid_set.exit

if.end4.i.i.i:                                    ; preds = %if.end.i.i.i
  %cmp.i17.i.i.i = icmp eq ptr %39, @init_user_ns
  br i1 %cmp.i17.i.i.i, label %if.end4.i.i.i.inode_fsuid_set.exit_crit_edge, label %if.end8.i.i.i

if.end4.i.i.i.inode_fsuid_set.exit_crit_edge:     ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %inode_fsuid_set.exit

if.end8.i.i.i:                                    ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call9.i.i.i = tail call i32 @make_kuid(ptr noundef %39, i32 noundef %call2.i.i.i) #9
  br label %inode_fsuid_set.exit

inode_fsuid_set.exit:                             ; preds = %if.end8.i.i.i, %if.end4.i.i.i.inode_fsuid_set.exit_crit_edge, %if.end.i.i.i.inode_fsuid_set.exit_crit_edge, %if.then21.inode_fsuid_set.exit_crit_edge
  %retval.sroa.0.0.i.i.i = phi i32 [ %call9.i.i.i, %if.end8.i.i.i ], [ -1, %if.end.i.i.i.inode_fsuid_set.exit_crit_edge ], [ %call2.i.i.i, %if.end4.i.i.i.inode_fsuid_set.exit_crit_edge ], [ %agg.tmp.sroa.0.0.copyload.i.i, %if.then21.inode_fsuid_set.exit_crit_edge ]
  %i_uid.i866 = getelementptr inbounds %struct.inode, ptr %call11, i32 0, i32 2
  %47 = ptrtoint ptr %i_uid.i866 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %retval.sroa.0.0.i.i.i, ptr %i_uid.i866, align 4
  %i_gid = getelementptr inbounds %struct.inode, ptr %call11, i32 0, i32 3
  %i_gid23 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 3
  %48 = ptrtoint ptr %i_gid23 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %i_gid23, align 8
  %50 = ptrtoint ptr %i_gid to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %i_gid, align 8
  br label %if.end26

if.else24:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @inode_init_owner(ptr noundef %mnt_userns, ptr noundef nonnull %call11, ptr noundef nonnull %dir, i16 noundef zeroext %mode) #9
  br label %if.end26

if.end26:                                         ; preds = %if.else24, %inode_fsuid_set.exit, %if.then17
  %51 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %s_fs_info.i, align 16
  %s_es.i = getelementptr inbounds %struct.ext4_sb_info, ptr %52, i32 0, i32 15
  %53 = ptrtoint ptr %s_es.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %s_es.i, align 4
  %s_feature_ro_compat.i = getelementptr inbounds %struct.ext4_super_block, ptr %54, i32 0, i32 30
  %55 = ptrtoint ptr %s_feature_ro_compat.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %s_feature_ro_compat.i, align 4
  %and.i = and i32 %56, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 0
  br i1 %cmp.i.not, label %if.end26.if.else36_crit_edge, label %land.lhs.true

if.end26.if.else36_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else36

land.lhs.true:                                    ; preds = %if.end26
  %i_flags.i = getelementptr i8, ptr %dir, i32 -380
  %57 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %i_flags.i, align 4
  %59 = and i32 %58, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool30.not = icmp eq i32 %59, 0
  br i1 %tobool30.not, label %land.lhs.true.if.else36_crit_edge, label %if.then31

land.lhs.true.if.else36_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else36

if.then31:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %i_projid = getelementptr i8, ptr %call11, i32 1176
  %i_projid35 = getelementptr i8, ptr %dir, i32 1176
  %60 = ptrtoint ptr %i_projid35 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %i_projid35, align 8
  %62 = ptrtoint ptr %i_projid to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %i_projid, align 8
  br label %if.end40

if.else36:                                        ; preds = %land.lhs.true.if.else36_crit_edge, %if.end26.if.else36_crit_edge
  %i_projid37 = getelementptr i8, ptr %call11, i32 1176
  %call39 = tail call i32 @make_kprojid(ptr noundef nonnull @init_user_ns, i32 noundef 0) #9
  %63 = ptrtoint ptr %i_projid37 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %call39, ptr %i_projid37, align 8
  br label %if.end40

if.end40:                                         ; preds = %if.else36, %if.then31
  %and41 = and i32 %i_flags, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.then43, label %if.end40.if.end48_crit_edge

if.end40.if.end48_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.then43:                                        ; preds = %if.end40
  %call44 = call i32 @fscrypt_prepare_new_inode(ptr noundef nonnull %dir, ptr noundef nonnull %call11, ptr noundef nonnull %encrypt) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.then43.if.end48_crit_edge, label %if.then43.out_crit_edge

if.then43.out_crit_edge:                          ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then43.if.end48_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.end48:                                         ; preds = %if.then43.if.end48_crit_edge, %if.end40.if.end48_crit_edge
  %call49 = call i32 @dquot_initialize(ptr noundef nonnull %call11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %if.end48.out_crit_edge

if.end48.out_crit_edge:                           ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end52:                                         ; preds = %if.end48
  %tobool53.not = icmp eq ptr %handle, null
  br i1 %tobool53.not, label %land.lhs.true54, label %if.end52.if.end65_crit_edge

if.end52.if.end65_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

land.lhs.true54:                                  ; preds = %if.end52
  %s_journal = getelementptr inbounds %struct.ext4_sb_info, ptr %10, i32 0, i32 47
  %64 = ptrtoint ptr %s_journal to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %s_journal, align 8
  %tobool55.not = icmp ne ptr %65, null
  %66 = and i1 %tobool42.not, %tobool55.not
  br i1 %66, label %if.then59, label %land.lhs.true54.if.end65_crit_edge

land.lhs.true54.if.end65_crit_edge:               ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

if.then59:                                        ; preds = %land.lhs.true54
  %67 = ptrtoint ptr %encrypt to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %encrypt, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool60 = icmp ne i8 %68, 0
  %call61 = call fastcc i32 @ext4_xattr_credits_for_new_inode(ptr noundef nonnull %dir, i16 noundef zeroext %mode, i1 noundef zeroext %tobool60)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %cmp = icmp slt i32 %call61, 0
  br i1 %cmp, label %if.then59.out_crit_edge, label %if.end64

if.then59.out_crit_edge:                          ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end64:                                         ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #11
  %add = add i32 %call61, %nblocks
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %land.lhs.true54.if.end65_crit_edge, %if.end52.if.end65_crit_edge
  %nblocks.addr.0 = phi i32 [ %nblocks, %if.end52.if.end65_crit_edge ], [ %add, %if.end64 ], [ %nblocks, %land.lhs.true54.if.end65_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %goal)
  %tobool66.not = icmp eq i32 %goal, 0
  br i1 %tobool66.not, label %if.end68, label %if.end65.land.lhs.true70_crit_edge

if.end65.land.lhs.true70_crit_edge:               ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true70

if.end68:                                         ; preds = %if.end65
  %s_inode_goal = getelementptr inbounds %struct.ext4_sb_info, ptr %10, i32 0, i32 32
  %69 = ptrtoint ptr %s_inode_goal to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %s_inode_goal, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool69.not = icmp eq i32 %70, 0
  br i1 %tobool69.not, label %if.end68.if.end78_crit_edge, label %if.end68.land.lhs.true70_crit_edge

if.end68.land.lhs.true70_crit_edge:               ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true70

if.end68.if.end78_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end78

land.lhs.true70:                                  ; preds = %if.end68.land.lhs.true70_crit_edge, %if.end65.land.lhs.true70_crit_edge
  %goal.addr.0942 = phi i32 [ %70, %if.end68.land.lhs.true70_crit_edge ], [ %goal, %if.end65.land.lhs.true70_crit_edge ]
  %s_es = getelementptr inbounds %struct.ext4_sb_info, ptr %10, i32 0, i32 15
  %71 = ptrtoint ptr %s_es to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %s_es, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %72, align 8
  %75 = call i32 @llvm.bswap.i32(i32 %74)
  call void @__sanitizer_cov_trace_cmp4(i32 %goal.addr.0942, i32 %75)
  %cmp71.not = icmp ugt i32 %goal.addr.0942, %75
  br i1 %cmp71.not, label %land.lhs.true70.if.end78_crit_edge, label %if.then73

land.lhs.true70.if.end78_crit_edge:               ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end78

if.then73:                                        ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #11
  %sub = add i32 %goal.addr.0942, -1
  %76 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %s_fs_info.i, align 16
  %s_inodes_per_group = getelementptr inbounds %struct.ext4_sb_info, ptr %77, i32 0, i32 4
  %78 = ptrtoint ptr %s_inodes_per_group to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %s_inodes_per_group, align 16
  %sub.frozen = freeze i32 %sub
  %.frozen = freeze i32 %79
  %div = udiv i32 %sub.frozen, %.frozen
  %80 = ptrtoint ptr %group to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %div, ptr %group, align 4
  %81 = mul i32 %div, %.frozen
  %rem.decomposed = sub i32 %sub.frozen, %81
  %82 = ptrtoint ptr %ino to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %rem.decomposed, ptr %ino, align 4
  br label %got_group

if.end78:                                         ; preds = %land.lhs.true70.if.end78_crit_edge, %if.end68.if.end78_crit_edge
  %and80 = and i32 %conv, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %and80)
  %cmp81 = icmp eq i32 %and80, 16384
  br i1 %cmp81, label %if.then83, label %if.else85

if.then83:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  %call84 = call fastcc i32 @find_group_orlov(ptr noundef %8, ptr noundef nonnull %dir, ptr noundef nonnull %group, i16 noundef zeroext %mode, ptr noundef %qstr)
  br label %got_group

if.else85:                                        ; preds = %if.end78
  %i_block_group.i = getelementptr i8, ptr %dir, i32 -392
  %83 = ptrtoint ptr %i_block_group.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %i_block_group.i, align 8
  %85 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %s_fs_info.i, align 16
  %s_groups_count.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %86, i32 0, i32 8
  %87 = ptrtoint ptr %s_groups_count.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %s_groups_count.i.i, align 32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !132
  %89 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %s_fs_info.i, align 16
  %s_log_groups_per_flex.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %90, i32 0, i32 112
  %91 = ptrtoint ptr %s_log_groups_per_flex.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %s_log_groups_per_flex.i.i, align 4
  %shl.i.i = shl nuw i32 1, %92
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shl.i.i)
  %cmp.i872 = icmp sgt i32 %shl.i.i, 1
  br i1 %cmp.i872, label %try_again.preheader.i, label %if.end28.i

try_again.preheader.i:                            ; preds = %if.else85
  %neg.i = sub nsw i32 0, %shl.i.i
  %i_last_alloc_group.i = getelementptr i8, ptr %dir, i32 976
  %and.i873 = and i32 %84, %neg.i
  %add.i = add i32 %and.i873, %shl.i.i
  %93 = call i32 @llvm.umin.i32(i32 %add.i, i32 %88) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i873, i32 %93)
  %cmp5163.i = icmp ult i32 %and.i873, %93
  br i1 %cmp5163.i, label %try_again.preheader.i.for.body.i_crit_edge, label %try_again.preheader.i.for.end.i_crit_edge

try_again.preheader.i.for.end.i_crit_edge:        ; preds = %try_again.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

try_again.preheader.i.for.body.i_crit_edge:       ; preds = %try_again.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %try_again.preheader.i.for.body.i_crit_edge
  %i.0164.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ %and.i873, %try_again.preheader.i.for.body.i_crit_edge ]
  %call6.i = call ptr @ext4_get_group_desc(ptr noundef %8, i32 noundef %i.0164.i, ptr noundef null) #9
  %tobool.not.i874 = icmp eq ptr %call6.i, null
  br i1 %tobool.not.i874, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i875

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true.i875:                               ; preds = %for.body.i
  %call7.i = call i32 @ext4_free_inodes_count(ptr noundef %8, ptr noundef nonnull %call6.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %land.lhs.true.i875.for.inc.i_crit_edge, label %land.lhs.true.i875.if.then9.i_crit_edge

land.lhs.true.i875.if.then9.i_crit_edge:          ; preds = %land.lhs.true.i875
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9.i

land.lhs.true.i875.for.inc.i_crit_edge:           ; preds = %land.lhs.true.i875
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then9.i:                                       ; preds = %land.lhs.true.1.i.if.then9.i_crit_edge, %land.lhs.true.i875.if.then9.i_crit_edge
  %i.0164.lcssa.i = phi i32 [ %i.0164.1.i, %land.lhs.true.1.i.if.then9.i_crit_edge ], [ %i.0164.i, %land.lhs.true.i875.if.then9.i_crit_edge ]
  %94 = ptrtoint ptr %group to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %i.0164.lcssa.i, ptr %group, align 4
  br label %got_group

for.inc.i:                                        ; preds = %land.lhs.true.i875.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add i32 %i.0164.i, 1
  %exitcond170.not.i = icmp eq i32 %inc.i, %93
  br i1 %exitcond170.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %try_again.preheader.i.for.end.i_crit_edge
  %95 = ptrtoint ptr %i_last_alloc_group.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %i_last_alloc_group.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %96)
  %cmp16.not.i = icmp eq i32 %96, -1
  br i1 %cmp16.not.i, label %for.end.i.if.end22.i_crit_edge, label %try_again.1.i

for.end.i.if.end22.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i

try_again.1.i:                                    ; preds = %for.end.i
  %and.1.i = and i32 %96, %neg.i
  %add.1.i = add i32 %and.1.i, %shl.i.i
  %97 = call i32 @llvm.umin.i32(i32 %add.1.i, i32 %88) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %and.1.i, i32 %97)
  %cmp5163.1.i = icmp ult i32 %and.1.i, %97
  br i1 %cmp5163.1.i, label %try_again.1.i.for.body.1.i_crit_edge, label %try_again.1.i.if.end22.i_crit_edge

try_again.1.i.if.end22.i_crit_edge:               ; preds = %try_again.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i

try_again.1.i.for.body.1.i_crit_edge:             ; preds = %try_again.1.i
  br label %for.body.1.i

for.body.1.i:                                     ; preds = %for.inc.1.i.for.body.1.i_crit_edge, %try_again.1.i.for.body.1.i_crit_edge
  %i.0164.1.i = phi i32 [ %inc.1.i, %for.inc.1.i.for.body.1.i_crit_edge ], [ %and.1.i, %try_again.1.i.for.body.1.i_crit_edge ]
  %call6.1.i = call ptr @ext4_get_group_desc(ptr noundef %8, i32 noundef %i.0164.1.i, ptr noundef null) #9
  %tobool.not.1.i = icmp eq ptr %call6.1.i, null
  br i1 %tobool.not.1.i, label %for.body.1.i.for.inc.1.i_crit_edge, label %land.lhs.true.1.i

for.body.1.i.for.inc.1.i_crit_edge:               ; preds = %for.body.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1.i

land.lhs.true.1.i:                                ; preds = %for.body.1.i
  %call7.1.i = call i32 @ext4_free_inodes_count(ptr noundef %8, ptr noundef nonnull %call6.1.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.1.i)
  %tobool8.not.1.i = icmp eq i32 %call7.1.i, 0
  br i1 %tobool8.not.1.i, label %land.lhs.true.1.i.for.inc.1.i_crit_edge, label %land.lhs.true.1.i.if.then9.i_crit_edge

land.lhs.true.1.i.if.then9.i_crit_edge:           ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9.i

land.lhs.true.1.i.for.inc.1.i_crit_edge:          ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %land.lhs.true.1.i.for.inc.1.i_crit_edge, %for.body.1.i.for.inc.1.i_crit_edge
  %inc.1.i = add i32 %i.0164.1.i, 1
  %exitcond170.1.not.i = icmp eq i32 %inc.1.i, %97
  br i1 %exitcond170.1.not.i, label %for.inc.1.i.if.end22.i_crit_edge, label %for.inc.1.i.for.body.1.i_crit_edge

for.inc.1.i.for.body.1.i_crit_edge:               ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.1.i

for.inc.1.i.if.end22.i_crit_edge:                 ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i

if.end22.i:                                       ; preds = %for.inc.1.i.if.end22.i_crit_edge, %try_again.1.i.if.end22.i_crit_edge, %for.end.i.if.end22.i_crit_edge
  %add.lcssa169.i = phi i32 [ %add.i, %for.end.i.if.end22.i_crit_edge ], [ %add.1.i, %try_again.1.i.if.end22.i_crit_edge ], [ %add.1.i, %for.inc.1.i.if.end22.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %add.lcssa169.i, i32 %88)
  %cmp3.le.i = icmp ugt i32 %add.lcssa169.i, %88
  %spec.select151.i = select i1 %cmp3.le.i, i32 0, i32 %add.lcssa169.i
  %98 = ptrtoint ptr %group to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %spec.select151.i, ptr %group, align 4
  %call27.i = call fastcc i32 @find_group_orlov(ptr noundef %8, ptr noundef %dir, ptr noundef nonnull %group, i16 noundef zeroext %mode, ptr noundef null) #9
  br label %got_group

if.end28.i:                                       ; preds = %if.else85
  %99 = ptrtoint ptr %group to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %84, ptr %group, align 4
  %call29.i = call ptr @ext4_get_group_desc(ptr noundef %8, i32 noundef %84, ptr noundef null) #9
  %tobool30.not.i = icmp eq ptr %call29.i, null
  br i1 %tobool30.not.i, label %if.end28.i.if.end38.i_crit_edge, label %land.lhs.true31.i

if.end28.i.if.end38.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38.i

land.lhs.true31.i:                                ; preds = %if.end28.i
  %call32.i = call i32 @ext4_free_inodes_count(ptr noundef %8, ptr noundef nonnull %call29.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %tobool33.not.i = icmp eq i32 %call32.i, 0
  br i1 %tobool33.not.i, label %land.lhs.true31.i.if.end38.i_crit_edge, label %land.lhs.true34.i

land.lhs.true31.i.if.end38.i_crit_edge:           ; preds = %land.lhs.true31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38.i

land.lhs.true34.i:                                ; preds = %land.lhs.true31.i
  %call35.i = call i32 @ext4_free_group_clusters(ptr noundef %8, ptr noundef nonnull %call29.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool36.not.i = icmp eq i32 %call35.i, 0
  br i1 %tobool36.not.i, label %land.lhs.true34.i.if.end38.i_crit_edge, label %land.lhs.true34.i.got_group_crit_edge

land.lhs.true34.i.got_group_crit_edge:            ; preds = %land.lhs.true34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %got_group

land.lhs.true34.i.if.end38.i_crit_edge:           ; preds = %land.lhs.true34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38.i

if.end38.i:                                       ; preds = %land.lhs.true34.i.if.end38.i_crit_edge, %land.lhs.true31.i.if.end38.i_crit_edge, %if.end28.i.if.end38.i_crit_edge
  %100 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %group, align 4
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %102 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %i_ino.i, align 8
  %add39.i = add i32 %103, %101
  %rem.i = urem i32 %add39.i, %88
  store i32 %rem.i, ptr %group, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %88)
  %cmp41158.i = icmp ugt i32 %88, 1
  br i1 %cmp41158.i, label %if.end38.i.for.body42.i_crit_edge, label %for.end59.i

if.end38.i.for.body42.i_crit_edge:                ; preds = %if.end38.i
  br label %for.body42.i

for.body42.i:                                     ; preds = %for.inc58.i.for.body42.i_crit_edge, %if.end38.i.for.body42.i_crit_edge
  %i.1159.i = phi i32 [ %shl.i, %for.inc58.i.for.body42.i_crit_edge ], [ 1, %if.end38.i.for.body42.i_crit_edge ]
  %104 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %group, align 4
  %add43.i = add i32 %105, %i.1159.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add43.i, i32 %88)
  %cmp44.not.i = icmp ult i32 %add43.i, %88
  %sub46.i = select i1 %cmp44.not.i, i32 0, i32 %88
  %spec.select152.i = sub i32 %add43.i, %sub46.i
  %106 = ptrtoint ptr %group to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %spec.select152.i, ptr %group, align 4
  %call48.i = call ptr @ext4_get_group_desc(ptr noundef %8, i32 noundef %spec.select152.i, ptr noundef null) #9
  %tobool49.not.i = icmp eq ptr %call48.i, null
  br i1 %tobool49.not.i, label %for.body42.i.for.inc58.i_crit_edge, label %land.lhs.true50.i

for.body42.i.for.inc58.i_crit_edge:               ; preds = %for.body42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc58.i

land.lhs.true50.i:                                ; preds = %for.body42.i
  %call51.i = call i32 @ext4_free_inodes_count(ptr noundef %8, ptr noundef nonnull %call48.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i)
  %tobool52.not.i = icmp eq i32 %call51.i, 0
  br i1 %tobool52.not.i, label %land.lhs.true50.i.for.inc58.i_crit_edge, label %land.lhs.true53.i

land.lhs.true50.i.for.inc58.i_crit_edge:          ; preds = %land.lhs.true50.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc58.i

land.lhs.true53.i:                                ; preds = %land.lhs.true50.i
  %call54.i = call i32 @ext4_free_group_clusters(ptr noundef %8, ptr noundef nonnull %call48.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.i)
  %tobool55.not.i = icmp eq i32 %call54.i, 0
  br i1 %tobool55.not.i, label %land.lhs.true53.i.for.inc58.i_crit_edge, label %land.lhs.true53.i.got_group_crit_edge

land.lhs.true53.i.got_group_crit_edge:            ; preds = %land.lhs.true53.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %got_group

land.lhs.true53.i.for.inc58.i_crit_edge:          ; preds = %land.lhs.true53.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc58.i

for.inc58.i:                                      ; preds = %land.lhs.true53.i.for.inc58.i_crit_edge, %land.lhs.true50.i.for.inc58.i_crit_edge, %for.body42.i.for.inc58.i_crit_edge
  %shl.i = shl i32 %i.1159.i, 1
  %cmp41.i = icmp ult i32 %shl.i, %88
  br i1 %cmp41.i, label %for.inc58.i.for.body42.i_crit_edge, label %for.end59.thread.i

for.inc58.i.for.body42.i_crit_edge:               ; preds = %for.inc58.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body42.i

for.end59.thread.i:                               ; preds = %for.inc58.i
  call void @__sanitizer_cov_trace_pc() #11
  %107 = ptrtoint ptr %group to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %84, ptr %group, align 4
  br label %for.body62.i.preheader

for.end59.i:                                      ; preds = %if.end38.i
  %108 = ptrtoint ptr %group to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %84, ptr %group, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp61160.not.i = icmp eq i32 %88, 0
  br i1 %cmp61160.not.i, label %for.end59.i.got_group.thread_crit_edge, label %for.end59.i.for.body62.i.preheader_crit_edge

for.end59.i.for.body62.i.preheader_crit_edge:     ; preds = %for.end59.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body62.i.preheader

for.end59.i.got_group.thread_crit_edge:           ; preds = %for.end59.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %got_group.thread

for.body62.i.preheader:                           ; preds = %for.end59.i.for.body62.i.preheader_crit_edge, %for.end59.thread.i
  br label %for.body62.i

for.body62.i:                                     ; preds = %for.inc74.i.for.body62.i_crit_edge, %for.body62.i.preheader
  %i.2161.i = phi i32 [ %inc75.i, %for.inc74.i.for.body62.i_crit_edge ], [ 0, %for.body62.i.preheader ]
  %109 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %group, align 4
  %inc63.i = add i32 %110, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc63.i, i32 %88)
  %cmp64.not.i = icmp ult i32 %inc63.i, %88
  %spec.select153.i = select i1 %cmp64.not.i, i32 %inc63.i, i32 0
  %111 = ptrtoint ptr %group to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %spec.select153.i, ptr %group, align 4
  %call67.i = call ptr @ext4_get_group_desc(ptr noundef %8, i32 noundef %spec.select153.i, ptr noundef null) #9
  %tobool68.not.i = icmp eq ptr %call67.i, null
  br i1 %tobool68.not.i, label %for.body62.i.for.inc74.i_crit_edge, label %land.lhs.true69.i

for.body62.i.for.inc74.i_crit_edge:               ; preds = %for.body62.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc74.i

land.lhs.true69.i:                                ; preds = %for.body62.i
  %call70.i = call i32 @ext4_free_inodes_count(ptr noundef %8, ptr noundef nonnull %call67.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70.i)
  %tobool71.not.i = icmp eq i32 %call70.i, 0
  br i1 %tobool71.not.i, label %land.lhs.true69.i.for.inc74.i_crit_edge, label %land.lhs.true69.i.got_group_crit_edge

land.lhs.true69.i.got_group_crit_edge:            ; preds = %land.lhs.true69.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %got_group

land.lhs.true69.i.for.inc74.i_crit_edge:          ; preds = %land.lhs.true69.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc74.i

for.inc74.i:                                      ; preds = %land.lhs.true69.i.for.inc74.i_crit_edge, %for.body62.i.for.inc74.i_crit_edge
  %inc75.i = add nuw i32 %i.2161.i, 1
  %exitcond.not.i = icmp eq i32 %inc75.i, %88
  br i1 %exitcond.not.i, label %for.inc74.i.got_group.thread_crit_edge, label %for.inc74.i.for.body62.i_crit_edge

for.inc74.i.for.body62.i_crit_edge:               ; preds = %for.inc74.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body62.i

for.inc74.i.got_group.thread_crit_edge:           ; preds = %for.inc74.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %got_group.thread

got_group.thread:                                 ; preds = %for.inc74.i.got_group.thread_crit_edge, %for.end59.i.got_group.thread_crit_edge
  %112 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %group, align 4
  %i_last_alloc_group944 = getelementptr i8, ptr %dir, i32 976
  %114 = ptrtoint ptr %i_last_alloc_group944 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %i_last_alloc_group944, align 8
  br label %out

got_group:                                        ; preds = %land.lhs.true69.i.got_group_crit_edge, %land.lhs.true53.i.got_group_crit_edge, %land.lhs.true34.i.got_group_crit_edge, %if.end22.i, %if.then9.i, %if.then83, %if.then73
  %ret2.0 = phi i32 [ 0, %if.then73 ], [ %call84, %if.then83 ], [ 0, %if.then9.i ], [ %call27.i, %if.end22.i ], [ 0, %land.lhs.true34.i.got_group_crit_edge ], [ 0, %land.lhs.true69.i.got_group_crit_edge ], [ 0, %land.lhs.true53.i.got_group_crit_edge ]
  %115 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %group, align 4
  %i_last_alloc_group = getelementptr i8, ptr %dir, i32 976
  %117 = ptrtoint ptr %i_last_alloc_group to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %i_last_alloc_group, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ret2.0)
  %cmp91 = icmp ne i32 %ret2.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp95984 = icmp ne i32 %15, 0
  %or.cond994 = select i1 %cmp91, i1 %cmp95984, i1 false
  br i1 %or.cond994, label %for.body.lr.ph, label %got_group.out_crit_edge

got_group.out_crit_edge:                          ; preds = %got_group
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.body.lr.ph:                                   ; preds = %got_group
  %s_mount_state = getelementptr inbounds %struct.ext4_sb_info, ptr %10, i32 0, i32 25
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nblocks.addr.0)
  %cmp151 = icmp slt i32 %nblocks.addr.0, 1
  br label %for.body

for.body:                                         ; preds = %next_group.for.body_crit_edge, %for.body.lr.ph
  %handle.addr.0989 = phi ptr [ %handle, %for.body.lr.ph ], [ %handle.addr.3, %next_group.for.body_crit_edge ]
  %inode_bitmap_bh.0987 = phi ptr [ null, %for.body.lr.ph ], [ %inode_bitmap_bh.1, %next_group.for.body_crit_edge ]
  %i.0986 = phi i32 [ 0, %for.body.lr.ph ], [ %inc218, %next_group.for.body_crit_edge ]
  %grp.0985 = phi ptr [ null, %for.body.lr.ph ], [ %grp.2, %next_group.for.body_crit_edge ]
  %118 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %group, align 4
  %call97 = call ptr @ext4_get_group_desc(ptr noundef %8, i32 noundef %119, ptr noundef nonnull %group_desc_bh) #9
  %tobool98.not = icmp eq ptr %call97, null
  br i1 %tobool98.not, label %for.body.out_crit_edge, label %if.end100

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end100:                                        ; preds = %for.body
  %call101 = call i32 @ext4_free_inodes_count(ptr noundef %8, ptr noundef nonnull %call97) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %cmp102 = icmp eq i32 %call101, 0
  br i1 %cmp102, label %if.end100.next_group_crit_edge, label %if.end105

if.end100.next_group_crit_edge:                   ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #11
  br label %next_group

if.end105:                                        ; preds = %if.end100
  %120 = ptrtoint ptr %s_mount_state to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %s_mount_state, align 8
  %122 = and i16 %121, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %122)
  %tobool108.not = icmp eq i16 %122, 0
  br i1 %tobool108.not, label %if.then109, label %if.end105.if.end115_crit_edge

if.end105.if.end115_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end115

if.then109:                                       ; preds = %if.end105
  %123 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %group, align 4
  %call110 = call fastcc ptr @ext4_get_group_info(ptr noundef %8, i32 noundef %124)
  %125 = ptrtoint ptr %call110 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load volatile i32, ptr %call110, align 4
  %127 = and i32 %126, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %tobool112.not = icmp eq i32 %127, 0
  br i1 %tobool112.not, label %if.then109.if.end115_crit_edge, label %if.then109.next_group_crit_edge

if.then109.next_group_crit_edge:                  ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #11
  br label %next_group

if.then109.if.end115_crit_edge:                   ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end115

if.end115:                                        ; preds = %if.then109.if.end115_crit_edge, %if.end105.if.end115_crit_edge
  %grp.1 = phi ptr [ %grp.0985, %if.end105.if.end115_crit_edge ], [ %call110, %if.then109.if.end115_crit_edge ]
  %tobool.not.i876 = icmp eq ptr %inode_bitmap_bh.0987, null
  br i1 %tobool.not.i876, label %if.end115.brelse.exit_crit_edge, label %if.then.i877

if.end115.brelse.exit_crit_edge:                  ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit

if.then.i877:                                     ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %inode_bitmap_bh.0987) #9
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i877, %if.end115.brelse.exit_crit_edge
  %128 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %group, align 4
  %call116 = call fastcc ptr @ext4_read_inode_bitmap(ptr noundef %8, i32 noundef %129)
  %130 = ptrtoint ptr %s_mount_state to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %s_mount_state, align 8
  %132 = and i16 %131, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %132)
  %tobool120.not = icmp eq i16 %132, 0
  br i1 %tobool120.not, label %land.lhs.true121, label %lor.lhs.false125

land.lhs.true121:                                 ; preds = %brelse.exit
  %133 = ptrtoint ptr %grp.1 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load volatile i32, ptr %grp.1, align 4
  %135 = and i32 %134, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %tobool124.not = icmp ne i32 %135, 0
  %cmp.i878 = icmp ugt ptr %call116, inttoptr (i32 -4096 to ptr)
  %or.cond949 = select i1 %tobool124.not, i1 true, i1 %cmp.i878
  br i1 %or.cond949, label %land.lhs.true121.next_group_crit_edge, label %land.lhs.true121.repeat_in_this_group.preheader_crit_edge

land.lhs.true121.repeat_in_this_group.preheader_crit_edge: ; preds = %land.lhs.true121
  call void @__sanitizer_cov_trace_pc() #11
  br label %repeat_in_this_group.preheader

land.lhs.true121.next_group_crit_edge:            ; preds = %land.lhs.true121
  call void @__sanitizer_cov_trace_pc() #11
  br label %next_group

lor.lhs.false125:                                 ; preds = %brelse.exit
  %cmp.i878.old = icmp ugt ptr %call116, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i878.old, label %lor.lhs.false125.next_group_crit_edge, label %lor.lhs.false125.repeat_in_this_group.preheader_crit_edge

lor.lhs.false125.repeat_in_this_group.preheader_crit_edge: ; preds = %lor.lhs.false125
  call void @__sanitizer_cov_trace_pc() #11
  br label %repeat_in_this_group.preheader

lor.lhs.false125.next_group_crit_edge:            ; preds = %lor.lhs.false125
  call void @__sanitizer_cov_trace_pc() #11
  br label %next_group

repeat_in_this_group.preheader:                   ; preds = %lor.lhs.false125.repeat_in_this_group.preheader_crit_edge, %land.lhs.true121.repeat_in_this_group.preheader_crit_edge
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call116, i32 0, i32 5
  br label %repeat_in_this_group

repeat_in_this_group:                             ; preds = %if.end206.repeat_in_this_group_crit_edge, %repeat_in_this_group.preheader
  %handle.addr.1 = phi ptr [ %handle.addr.2, %if.end206.repeat_in_this_group_crit_edge ], [ %handle.addr.0989, %repeat_in_this_group.preheader ]
  %136 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %group, align 4
  %call130 = call fastcc i32 @find_inode_bit(ptr noundef %8, i32 noundef %137, ptr noundef %call116, ptr noundef nonnull %ino)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130)
  %tobool131.not = icmp eq i32 %call130, 0
  br i1 %tobool131.not, label %repeat_in_this_group.next_group_crit_edge, label %if.end133

repeat_in_this_group.next_group_crit_edge:        ; preds = %repeat_in_this_group
  call void @__sanitizer_cov_trace_pc() #11
  br label %next_group

if.end133:                                        ; preds = %repeat_in_this_group
  %138 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %group, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %cmp134 = icmp eq i32 %139, 0
  br i1 %cmp134, label %land.lhs.true136, label %if.end133.if.end143_crit_edge

if.end133.if.end143_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end143

land.lhs.true136:                                 ; preds = %if.end133
  %140 = ptrtoint ptr %ino to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %ino, align 4
  %add137 = add i32 %141, 1
  %142 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %s_fs_info.i, align 16
  %s_first_ino = getelementptr inbounds %struct.ext4_sb_info, ptr %143, i32 0, i32 30
  %144 = ptrtoint ptr %s_first_ino to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %s_first_ino, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add137, i32 %145)
  %cmp139 = icmp ult i32 %add137, %145
  br i1 %cmp139, label %if.then141, label %land.lhs.true136.if.end143_crit_edge

land.lhs.true136.if.end143_crit_edge:             ; preds = %land.lhs.true136
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end143

if.then141:                                       ; preds = %land.lhs.true136
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %8, ptr noundef nonnull @__func__.__ext4_new_inode, i32 noundef 1072, i1 noundef zeroext false, i32 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.9, i32 noundef %add137) #9
  %146 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %group, align 4
  call void @ext4_mark_group_bitmap_corrupted(ptr noundef %8, i32 noundef %147, i32 noundef 8) #9
  br label %next_group

if.end143:                                        ; preds = %land.lhs.true136.if.end143_crit_edge, %if.end133.if.end143_crit_edge
  %148 = ptrtoint ptr %s_mount_state to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %s_mount_state, align 8
  %150 = and i16 %149, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %150)
  %tobool147.not = icmp eq i16 %150, 0
  %tobool149.not = icmp eq ptr %handle.addr.1, null
  %or.cond = select i1 %tobool147.not, i1 %tobool149.not, i1 false
  br i1 %or.cond, label %do.body, label %if.end143.do.end183_crit_edge

if.end143.do.end183_crit_edge:                    ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end183

do.body:                                          ; preds = %if.end143
  br i1 %cmp151, label %do.body160, label %do.end166, !prof !125

do.body160:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ialloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1079, 0\0A.popsection", ""() #9, !srcloc !134
  unreachable

do.end166:                                        ; preds = %do.body
  %151 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %i_sb, align 4
  %153 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %s_fs_info.i, align 16
  %s_cluster_ratio.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %154, i32 0, i32 11
  %155 = ptrtoint ptr %s_cluster_ratio.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %s_cluster_ratio.i.i, align 4
  %mul.i.i = shl i32 %156, 3
  %call169 = call ptr @__ext4_journal_start_sb(ptr noundef %152, i32 noundef %line_no, i32 noundef %handle_type, i32 noundef %nblocks.addr.0, i32 noundef 0, i32 noundef %mul.i.i) #9
  %cmp.i881 = icmp ugt ptr %call169, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i881, label %if.then175, label %do.end166.do.end183_crit_edge

do.end166.do.end183_crit_edge:                    ; preds = %do.end166
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end183

if.then175:                                       ; preds = %do.end166
  call void @__sanitizer_cov_trace_pc() #11
  %157 = ptrtoint ptr %call169 to i32
  call void @__ext4_std_error(ptr noundef %8, ptr noundef nonnull @__func__.__ext4_new_inode, i32 noundef 1085, i32 noundef %157) #9
  br label %out

do.end183:                                        ; preds = %do.end166.do.end183_crit_edge, %if.end143.do.end183_crit_edge
  %handle.addr.2 = phi ptr [ %handle.addr.1, %if.end143.do.end183_crit_edge ], [ %call169, %do.end166.do.end183_crit_edge ]
  %call184 = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.__ext4_new_inode, i32 noundef 1091, ptr noundef %handle.addr.2, ptr noundef %8, ptr noundef %call116, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call184)
  %tobool185.not = icmp eq i32 %call184, 0
  br i1 %tobool185.not, label %if.end193, label %if.then189

if.then189:                                       ; preds = %do.end183
  call void @__sanitizer_cov_trace_pc() #11
  call void @__ext4_std_error(ptr noundef %8, ptr noundef nonnull @__func__.__ext4_new_inode, i32 noundef 1093, i32 noundef %call184) #9
  br label %out

if.end193:                                        ; preds = %do.end183
  %158 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %group, align 4
  %160 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %s_fs_info.i, align 16
  %s_blockgroup_lock.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %161, i32 0, i32 41
  %162 = ptrtoint ptr %s_blockgroup_lock.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %s_blockgroup_lock.i.i, align 8
  %and.i.i.i883 = and i32 %159, 15
  %arrayidx.i.i.i = getelementptr [16 x %struct.bgl_lock], ptr %163, i32 0, i32 %and.i.i.i883
  %call.i.i884 = call i32 @_raw_spin_trylock(ptr noundef %arrayidx.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i884)
  %tobool.not.i885 = icmp eq i32 %call.i.i884, 0
  %164 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %s_fs_info.i, align 16
  %s_lock_busy5.i = getelementptr inbounds %struct.ext4_sb_info, ptr %165, i32 0, i32 107
  %call.i.i10.i = call zeroext i1 @__kasan_check_write(ptr noundef %s_lock_busy5.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9
  call void @llvm.prefetch.p0(ptr %s_lock_busy5.i, i32 1, i32 3, i32 1) #9
  br i1 %tobool.not.i885, label %if.else.i, label %if.then.i886

if.then.i886:                                     ; preds = %if.end193
  %166 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %s_lock_busy5.i, ptr %s_lock_busy5.i, i32 0, i32 -1, ptr elementtype(i32) %s_lock_busy5.i) #9, !srcloc !128
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %166, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then.i886.ext4_lock_group.exit_crit_edge, label %do.end11.i.i.i.i

if.then.i886.ext4_lock_group.exit_crit_edge:      ; preds = %if.then.i886
  call void @__sanitizer_cov_trace_pc() #11
  br label %ext4_lock_group.exit

do.end11.i.i.i.i:                                 ; preds = %if.then.i886
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !129
  br label %ext4_lock_group.exit

if.else.i:                                        ; preds = %if.end193
  %167 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %s_lock_busy5.i, ptr %s_lock_busy5.i, i32 8, i32 1, ptr elementtype(i32) %s_lock_busy5.i) #9, !srcloc !128
  %asmresult.i.i.i11.i = extractvalue { i32, i32, i32 } %167, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %asmresult.i.i.i11.i)
  %cmp.not.i.i.i12.i = icmp eq i32 %asmresult.i.i.i11.i, 8
  br i1 %cmp.not.i.i.i12.i, label %if.else.i.atomic_add_unless.exit14.i_crit_edge, label %do.end11.i.i.i13.i

if.else.i.atomic_add_unless.exit14.i_crit_edge:   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %atomic_add_unless.exit14.i

do.end11.i.i.i13.i:                               ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !129
  br label %atomic_add_unless.exit14.i

atomic_add_unless.exit14.i:                       ; preds = %do.end11.i.i.i13.i, %if.else.i.atomic_add_unless.exit14.i_crit_edge
  call void @_raw_spin_lock(ptr noundef %arrayidx.i.i.i) #9
  br label %ext4_lock_group.exit

ext4_lock_group.exit:                             ; preds = %atomic_add_unless.exit14.i, %do.end11.i.i.i.i, %if.then.i886.ext4_lock_group.exit_crit_edge
  %168 = ptrtoint ptr %ino to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %ino, align 4
  %170 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %b_data, align 4
  %xor.i = and i32 %169, 31
  %rem.i.i = xor i32 %xor.i, 24
  %shl.i.i887 = shl nuw i32 1, %rem.i.i
  %div5.i.i = lshr i32 %169, 5
  %add.ptr.i.i = getelementptr i32, ptr %171, i32 %div5.i.i
  %172 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %shl.i.i887, %173
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  %174 = and i32 %shl.i.i887, %173
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %174)
  %tobool195.not = icmp eq i32 %174, 0
  br i1 %tobool195.not, label %ext4_lock_group.exit.if.end203_crit_edge, label %if.then196

ext4_lock_group.exit.if.end203_crit_edge:         ; preds = %ext4_lock_group.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end203

if.then196:                                       ; preds = %ext4_lock_group.exit
  %175 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %group, align 4
  %call197 = call fastcc i32 @find_inode_bit(ptr noundef %8, i32 noundef %176, ptr noundef %call116, ptr noundef nonnull %ino)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call197)
  %tobool198.not = icmp eq i32 %call197, 0
  br i1 %tobool198.not, label %if.then196.if.end203_crit_edge, label %if.then199

if.then196.if.end203_crit_edge:                   ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end203

if.then199:                                       ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #11
  %177 = ptrtoint ptr %ino to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %ino, align 4
  %179 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %b_data, align 4
  %xor.i888 = and i32 %178, 31
  %rem.i.i889 = xor i32 %xor.i888, 24
  %shl.i.i890 = shl nuw i32 1, %rem.i.i889
  %div2.i.i = lshr i32 %178, 5
  %add.ptr.i.i891 = getelementptr i32, ptr %180, i32 %div2.i.i
  %181 = ptrtoint ptr %add.ptr.i.i891 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %add.ptr.i.i891, align 4
  %or.i.i892 = or i32 %shl.i.i890, %182
  store i32 %or.i.i892, ptr %add.ptr.i.i891, align 4
  br label %if.end203

if.end203:                                        ; preds = %if.then199, %if.then196.if.end203_crit_edge, %ext4_lock_group.exit.if.end203_crit_edge
  %tobool204.not = phi i1 [ true, %if.then199 ], [ true, %ext4_lock_group.exit.if.end203_crit_edge ], [ false, %if.then196.if.end203_crit_edge ]
  %183 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %group, align 4
  %185 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %s_fs_info.i, align 16
  %s_blockgroup_lock.i.i894 = getelementptr inbounds %struct.ext4_sb_info, ptr %186, i32 0, i32 41
  %187 = ptrtoint ptr %s_blockgroup_lock.i.i894 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %s_blockgroup_lock.i.i894, align 8
  %and.i.i.i895 = and i32 %184, 15
  %arrayidx.i.i.i896 = getelementptr [16 x %struct.bgl_lock], ptr %188, i32 0, i32 %and.i.i.i895
  call void @_raw_spin_unlock(ptr noundef %arrayidx.i.i.i896) #9
  %189 = ptrtoint ptr %ino to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %ino, align 4
  %inc = add i32 %190, 1
  store i32 %inc, ptr %ino, align 4
  br i1 %tobool204.not, label %do.end221, label %if.end206

if.end206:                                        ; preds = %if.end203
  %191 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %s_fs_info.i, align 16
  %s_inodes_per_group208 = getelementptr inbounds %struct.ext4_sb_info, ptr %192, i32 0, i32 4
  %193 = ptrtoint ptr %s_inodes_per_group208 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %s_inodes_per_group208, align 16
  %cmp209 = icmp ult i32 %inc, %194
  br i1 %cmp209, label %if.end206.repeat_in_this_group_crit_edge, label %if.end206.next_group_crit_edge

if.end206.next_group_crit_edge:                   ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #11
  br label %next_group

if.end206.repeat_in_this_group_crit_edge:         ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #11
  br label %repeat_in_this_group

next_group:                                       ; preds = %if.end206.next_group_crit_edge, %if.then141, %repeat_in_this_group.next_group_crit_edge, %lor.lhs.false125.next_group_crit_edge, %land.lhs.true121.next_group_crit_edge, %if.then109.next_group_crit_edge, %if.end100.next_group_crit_edge
  %grp.2 = phi ptr [ %grp.0985, %if.end100.next_group_crit_edge ], [ %grp.1, %if.then141 ], [ %call110, %if.then109.next_group_crit_edge ], [ %grp.1, %lor.lhs.false125.next_group_crit_edge ], [ %grp.1, %land.lhs.true121.next_group_crit_edge ], [ %grp.1, %repeat_in_this_group.next_group_crit_edge ], [ %grp.1, %if.end206.next_group_crit_edge ]
  %inode_bitmap_bh.1 = phi ptr [ %inode_bitmap_bh.0987, %if.end100.next_group_crit_edge ], [ %call116, %if.then141 ], [ %inode_bitmap_bh.0987, %if.then109.next_group_crit_edge ], [ null, %lor.lhs.false125.next_group_crit_edge ], [ null, %land.lhs.true121.next_group_crit_edge ], [ %call116, %repeat_in_this_group.next_group_crit_edge ], [ %call116, %if.end206.next_group_crit_edge ]
  %handle.addr.3 = phi ptr [ %handle.addr.0989, %if.end100.next_group_crit_edge ], [ %handle.addr.1, %if.then141 ], [ %handle.addr.0989, %if.then109.next_group_crit_edge ], [ %handle.addr.0989, %lor.lhs.false125.next_group_crit_edge ], [ %handle.addr.0989, %land.lhs.true121.next_group_crit_edge ], [ %handle.addr.2, %if.end206.next_group_crit_edge ], [ %handle.addr.1, %repeat_in_this_group.next_group_crit_edge ]
  %195 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %group, align 4
  %inc213 = add i32 %196, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc213, i32 %15)
  %cmp214 = icmp eq i32 %inc213, %15
  %spec.store.select = select i1 %cmp214, i32 0, i32 %inc213
  %197 = ptrtoint ptr %group to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %spec.store.select, ptr %group, align 4
  %inc218 = add nuw i32 %i.0986, 1
  %198 = ptrtoint ptr %ino to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 0, ptr %ino, align 4
  %exitcond.not = icmp eq i32 %inc218, %15
  br i1 %exitcond.not, label %next_group.out_crit_edge, label %next_group.for.body_crit_edge

next_group.for.body_crit_edge:                    ; preds = %next_group
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

next_group.out_crit_edge:                         ; preds = %next_group
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.end221:                                        ; preds = %if.end203
  %call222 = call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.__ext4_new_inode, i32 noundef 1126, ptr noundef %handle.addr.2, ptr noundef null, ptr noundef %call116) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call222)
  %tobool223.not = icmp eq i32 %call222, 0
  br i1 %tobool223.not, label %do.end234, label %if.then227

if.then227:                                       ; preds = %do.end221
  call void @__sanitizer_cov_trace_pc() #11
  call void @__ext4_std_error(ptr noundef %8, ptr noundef nonnull @__func__.__ext4_new_inode, i32 noundef 1128, i32 noundef %call222) #9
  br label %out

do.end234:                                        ; preds = %do.end221
  %199 = ptrtoint ptr %group_desc_bh to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %group_desc_bh, align 4
  %call235 = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.__ext4_new_inode, i32 noundef 1134, ptr noundef %handle.addr.2, ptr noundef %8, ptr noundef %200, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call235)
  %tobool236.not = icmp eq i32 %call235, 0
  br i1 %tobool236.not, label %if.end244, label %if.then240

if.then240:                                       ; preds = %do.end234
  call void @__sanitizer_cov_trace_pc() #11
  call void @__ext4_std_error(ptr noundef %8, ptr noundef nonnull @__func__.__ext4_new_inode, i32 noundef 1136, i32 noundef %call235) #9
  br label %out

if.end244:                                        ; preds = %do.end234
  %call245 = call fastcc i32 @ext4_has_group_desc_csum(ptr noundef %8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call245)
  %tobool246.not = icmp eq i32 %call245, 0
  br i1 %tobool246.not, label %if.end244.if.end297_crit_edge, label %land.lhs.true247

if.end244.if.end297_crit_edge:                    ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end297

land.lhs.true247:                                 ; preds = %if.end244
  %bg_flags = getelementptr inbounds %struct.ext4_group_desc, ptr %call97, i32 0, i32 6
  %201 = ptrtoint ptr %bg_flags to i32
  call void @__asan_load2_noabort(i32 %201)
  %202 = load i16, ptr %bg_flags, align 2
  %203 = and i16 %202, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %203)
  %tobool250.not = icmp eq i16 %203, 0
  br i1 %tobool250.not, label %land.lhs.true247.if.end297_crit_edge, label %if.then251

land.lhs.true247.if.end297_crit_edge:             ; preds = %land.lhs.true247
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end297

if.then251:                                       ; preds = %land.lhs.true247
  %204 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %group, align 4
  %call252 = call ptr @ext4_read_block_bitmap(ptr noundef %8, i32 noundef %205) #9
  %cmp.i898 = icmp ugt ptr %call252, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i898, label %if.then254, label %do.end259

if.then254:                                       ; preds = %if.then251
  call void @__sanitizer_cov_trace_pc() #11
  %206 = ptrtoint ptr %call252 to i32
  br label %out

do.end259:                                        ; preds = %if.then251
  %call260 = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.__ext4_new_inode, i32 noundef 1152, ptr noundef %handle.addr.2, ptr noundef %8, ptr noundef %call252, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call260)
  %tobool261.not = icmp eq i32 %call260, 0
  br i1 %tobool261.not, label %do.end272, label %if.then262

if.then262:                                       ; preds = %do.end259
  %tobool.not.i899 = icmp eq ptr %call252, null
  br i1 %tobool.not.i899, label %if.then262.brelse.exit901_crit_edge, label %if.then.i900

if.then262.brelse.exit901_crit_edge:              ; preds = %if.then262
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit901

if.then.i900:                                     ; preds = %if.then262
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %call252) #9
  br label %brelse.exit901

brelse.exit901:                                   ; preds = %if.then.i900, %if.then262.brelse.exit901_crit_edge
  call void @__ext4_std_error(ptr noundef %8, ptr noundef nonnull @__func__.__ext4_new_inode, i32 noundef 1155, i32 noundef %call260) #9
  br label %out

do.end272:                                        ; preds = %do.end259
  %call273 = call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.__ext4_new_inode, i32 noundef 1160, ptr noundef %handle.addr.2, ptr noundef null, ptr noundef %call252) #9
  %207 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %group, align 4
  call fastcc void @ext4_lock_group(ptr noundef %8, i32 noundef %208)
  %call274 = call fastcc i32 @ext4_has_group_desc_csum(ptr noundef %8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call274)
  %tobool275.not = icmp eq i32 %call274, 0
  br i1 %tobool275.not, label %do.end272.if.end287_crit_edge, label %land.lhs.true276

do.end272.if.end287_crit_edge:                    ; preds = %do.end272
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end287

land.lhs.true276:                                 ; preds = %do.end272
  %209 = ptrtoint ptr %bg_flags to i32
  call void @__asan_load2_noabort(i32 %209)
  %210 = load i16, ptr %bg_flags, align 2
  %211 = and i16 %210, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %211)
  %tobool280.not = icmp eq i16 %211, 0
  br i1 %tobool280.not, label %land.lhs.true276.if.end287_crit_edge, label %if.then281

land.lhs.true276.if.end287_crit_edge:             ; preds = %land.lhs.true276
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end287

if.then281:                                       ; preds = %land.lhs.true276
  call void @__sanitizer_cov_trace_pc() #11
  %and284 = and i16 %210, -513
  %212 = ptrtoint ptr %bg_flags to i32
  call void @__asan_store2_noabort(i32 %212)
  store i16 %and284, ptr %bg_flags, align 2
  %213 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %group, align 4
  %call286 = call i32 @ext4_free_clusters_after_init(ptr noundef %8, i32 noundef %214, ptr noundef nonnull %call97) #9
  call void @ext4_free_group_clusters_set(ptr noundef %8, ptr noundef nonnull %call97, i32 noundef %call286) #9
  %215 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %group, align 4
  call void @ext4_block_bitmap_csum_set(ptr noundef %8, i32 noundef %216, ptr noundef nonnull %call97, ptr noundef %call252) #9
  %217 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %group, align 4
  call void @ext4_group_desc_csum_set(ptr noundef %8, i32 noundef %218, ptr noundef nonnull %call97) #9
  br label %if.end287

if.end287:                                        ; preds = %if.then281, %land.lhs.true276.if.end287_crit_edge, %do.end272.if.end287_crit_edge
  %219 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %group, align 4
  %221 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %s_fs_info.i, align 16
  %s_blockgroup_lock.i.i903 = getelementptr inbounds %struct.ext4_sb_info, ptr %222, i32 0, i32 41
  %223 = ptrtoint ptr %s_blockgroup_lock.i.i903 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %s_blockgroup_lock.i.i903, align 8
  %and.i.i.i904 = and i32 %220, 15
  %arrayidx.i.i.i905 = getelementptr [16 x %struct.bgl_lock], ptr %224, i32 0, i32 %and.i.i.i904
  call void @_raw_spin_unlock(ptr noundef %arrayidx.i.i.i905) #9
  %tobool.not.i906 = icmp eq ptr %call252, null
  br i1 %tobool.not.i906, label %if.end287.brelse.exit908_crit_edge, label %if.then.i907

if.end287.brelse.exit908_crit_edge:               ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit908

if.then.i907:                                     ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %call252) #9
  br label %brelse.exit908

brelse.exit908:                                   ; preds = %if.then.i907, %if.end287.brelse.exit908_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call273)
  %tobool288.not = icmp eq i32 %call273, 0
  br i1 %tobool288.not, label %brelse.exit908.if.end297_crit_edge, label %if.then292

brelse.exit908.if.end297_crit_edge:               ; preds = %brelse.exit908
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end297

if.then292:                                       ; preds = %brelse.exit908
  call void @__sanitizer_cov_trace_pc() #11
  call void @__ext4_std_error(ptr noundef %8, ptr noundef nonnull @__func__.__ext4_new_inode, i32 noundef 1177, i32 noundef %call273) #9
  br label %out

if.end297:                                        ; preds = %brelse.exit908.if.end297_crit_edge, %land.lhs.true247.if.end297_crit_edge, %if.end244.if.end297_crit_edge
  %call298 = call fastcc i32 @ext4_has_group_desc_csum(ptr noundef %8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call298)
  %tobool299.not = icmp eq i32 %call298, 0
  br i1 %tobool299.not, label %if.else337, label %if.then300

if.then300:                                       ; preds = %if.end297
  %225 = ptrtoint ptr %s_mount_state to i32
  call void @__asan_load2_noabort(i32 %225)
  %226 = load i16, ptr %s_mount_state, align 8
  %227 = and i16 %226, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %227)
  %tobool305.not = icmp eq i16 %227, 0
  br i1 %tobool305.not, label %if.then306, label %if.then300.if.end308_crit_edge

if.then300.if.end308_crit_edge:                   ; preds = %if.then300
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end308

if.then306:                                       ; preds = %if.then300
  call void @__sanitizer_cov_trace_pc() #11
  %228 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %group, align 4
  %call307 = call fastcc ptr @ext4_get_group_info(ptr noundef %8, i32 noundef %229)
  %alloc_sem = getelementptr inbounds %struct.ext4_group_info, ptr %call307, i32 0, i32 8
  call void @down_read(ptr noundef %alloc_sem) #9
  br label %if.end308

if.end308:                                        ; preds = %if.then306, %if.then300.if.end308_crit_edge
  %grp301.0 = phi ptr [ null, %if.then300.if.end308_crit_edge ], [ %call307, %if.then306 ]
  %230 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %group, align 4
  call fastcc void @ext4_lock_group(ptr noundef %8, i32 noundef %231)
  %232 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %s_fs_info.i, align 16
  %s_inodes_per_group310 = getelementptr inbounds %struct.ext4_sb_info, ptr %233, i32 0, i32 4
  %234 = ptrtoint ptr %s_inodes_per_group310 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %s_inodes_per_group310, align 16
  %call311 = call i32 @ext4_itable_unused_count(ptr noundef %8, ptr noundef nonnull %call97) #9
  %sub312 = sub i32 %235, %call311
  %bg_flags313 = getelementptr inbounds %struct.ext4_group_desc, ptr %call97, i32 0, i32 6
  %236 = ptrtoint ptr %bg_flags313 to i32
  call void @__asan_load2_noabort(i32 %236)
  %237 = load i16, ptr %bg_flags313, align 2
  %238 = and i16 %237, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %238)
  %tobool316.not = icmp eq i16 %238, 0
  br i1 %tobool316.not, label %if.end308.if.end322_crit_edge, label %if.then317

if.end308.if.end322_crit_edge:                    ; preds = %if.end308
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end322

if.then317:                                       ; preds = %if.end308
  call void @__sanitizer_cov_trace_pc() #11
  %and320 = and i16 %237, -257
  %239 = ptrtoint ptr %bg_flags313 to i32
  call void @__asan_store2_noabort(i32 %239)
  store i16 %and320, ptr %bg_flags313, align 2
  br label %if.end322

if.end322:                                        ; preds = %if.then317, %if.end308.if.end322_crit_edge
  %free.0 = phi i32 [ 0, %if.then317 ], [ %sub312, %if.end308.if.end322_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %free.0)
  %cmp323 = icmp ugt i32 %inc, %free.0
  br i1 %cmp323, label %if.then325, label %if.end322.if.end329_crit_edge

if.end322.if.end329_crit_edge:                    ; preds = %if.end322
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end329

if.then325:                                       ; preds = %if.end322
  call void @__sanitizer_cov_trace_pc() #11
  %240 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %s_fs_info.i, align 16
  %s_inodes_per_group327 = getelementptr inbounds %struct.ext4_sb_info, ptr %241, i32 0, i32 4
  %242 = ptrtoint ptr %s_inodes_per_group327 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %s_inodes_per_group327, align 16
  %sub328 = sub i32 %243, %inc
  call void @ext4_itable_unused_set(ptr noundef %8, ptr noundef nonnull %call97, i32 noundef %sub328) #9
  br label %if.end329

if.end329:                                        ; preds = %if.then325, %if.end322.if.end329_crit_edge
  %244 = ptrtoint ptr %s_mount_state to i32
  call void @__asan_load2_noabort(i32 %244)
  %245 = load i16, ptr %s_mount_state, align 8
  %246 = and i16 %245, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %246)
  %tobool333.not = icmp eq i16 %246, 0
  br i1 %tobool333.not, label %if.then334, label %if.end329.if.end338_crit_edge

if.end329.if.end338_crit_edge:                    ; preds = %if.end329
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end338

if.then334:                                       ; preds = %if.end329
  call void @__sanitizer_cov_trace_pc() #11
  %alloc_sem335 = getelementptr inbounds %struct.ext4_group_info, ptr %grp301.0, i32 0, i32 8
  call void @up_read(ptr noundef %alloc_sem335) #9
  br label %if.end338

if.else337:                                       ; preds = %if.end297
  call void @__sanitizer_cov_trace_pc() #11
  %247 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %group, align 4
  call fastcc void @ext4_lock_group(ptr noundef %8, i32 noundef %248)
  br label %if.end338

if.end338:                                        ; preds = %if.else337, %if.then334, %if.end329.if.end338_crit_edge
  %call339 = call i32 @ext4_free_inodes_count(ptr noundef %8, ptr noundef nonnull %call97) #9
  %sub340 = add i32 %call339, -1
  call void @ext4_free_inodes_set(ptr noundef %8, ptr noundef nonnull %call97, i32 noundef %sub340) #9
  %and342 = and i32 %conv, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %and342)
  %cmp343 = icmp eq i32 %and342, 16384
  br i1 %cmp343, label %if.then345, label %if.end338.if.end371_crit_edge

if.end338.if.end371_crit_edge:                    ; preds = %if.end338
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end371

if.then345:                                       ; preds = %if.end338
  %call346 = call i32 @ext4_used_dirs_count(ptr noundef %8, ptr noundef nonnull %call97) #9
  %add347 = add i32 %call346, 1
  call void @ext4_used_dirs_set(ptr noundef %8, ptr noundef nonnull %call97, i32 noundef %add347) #9
  %s_log_groups_per_flex = getelementptr inbounds %struct.ext4_sb_info, ptr %10, i32 0, i32 112
  %249 = ptrtoint ptr %s_log_groups_per_flex to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %s_log_groups_per_flex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %250)
  %tobool348.not = icmp eq i32 %250, 0
  br i1 %tobool348.not, label %if.then345.if.end371_crit_edge, label %if.then349

if.then345.if.end371_crit_edge:                   ; preds = %if.then345
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end371

if.then349:                                       ; preds = %if.then345
  %251 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %group, align 4
  %shr.i911 = lshr i32 %252, %250
  %253 = call i32 @llvm.read_register.i32(metadata !104) #9
  %and.i.i.i.i.i = and i32 %253, -16384
  %254 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %254, i32 0, i32 1
  %255 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %256, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !118
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %if.then349.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then349.rcu_read_lock.exit_crit_edge:          ; preds = %if.then349
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then349
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 696, ptr noundef nonnull @.str.38) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then349.rcu_read_lock.exit_crit_edge
  %s_flex_groups = getelementptr inbounds %struct.ext4_sb_info, ptr %10, i32 0, i32 113
  %257 = ptrtoint ptr %s_flex_groups to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load volatile ptr, ptr %s_flex_groups, align 64
  %call356 = call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call356)
  %tobool357.not = icmp eq i32 %call356, 0
  br i1 %tobool357.not, label %land.lhs.true358, label %rcu_read_lock.exit.do.end366_crit_edge

rcu_read_lock.exit.do.end366_crit_edge:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end366

land.lhs.true358:                                 ; preds = %rcu_read_lock.exit
  %call359 = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call359)
  %tobool360.not = icmp eq i32 %call359, 0
  br i1 %tobool360.not, label %land.lhs.true358.do.end366_crit_edge, label %land.lhs.true361

land.lhs.true358.do.end366_crit_edge:             ; preds = %land.lhs.true358
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end366

land.lhs.true361:                                 ; preds = %land.lhs.true358
  %.b840 = load i1, ptr @__ext4_new_inode.__warned, align 1
  br i1 %.b840, label %land.lhs.true361.do.end366_crit_edge, label %if.then363

land.lhs.true361.do.end366_crit_edge:             ; preds = %land.lhs.true361
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end366

if.then363:                                       ; preds = %land.lhs.true361
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__ext4_new_inode.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1222, ptr noundef nonnull @.str.7) #9
  br label %do.end366

do.end366:                                        ; preds = %if.then363, %land.lhs.true361.do.end366_crit_edge, %land.lhs.true358.do.end366_crit_edge, %rcu_read_lock.exit.do.end366_crit_edge
  %arrayidx368 = getelementptr ptr, ptr %258, i32 %shr.i911
  %259 = ptrtoint ptr %arrayidx368 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %arrayidx368, align 4
  call fastcc void @rcu_read_unlock()
  %used_dirs = getelementptr inbounds %struct.flex_groups, ptr %260, i32 0, i32 2
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %used_dirs, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %used_dirs, i32 1, i32 3, i32 1) #9
  %261 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %used_dirs, ptr %used_dirs, i32 1, ptr elementtype(i32) %used_dirs) #9, !srcloc !119
  br label %if.end371

if.end371:                                        ; preds = %do.end366, %if.then345.if.end371_crit_edge, %if.end338.if.end371_crit_edge
  %call372 = call fastcc i32 @ext4_has_group_desc_csum(ptr noundef %8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call372)
  %tobool373.not = icmp eq i32 %call372, 0
  br i1 %tobool373.not, label %if.end371.if.end378_crit_edge, label %if.then374

if.end371.if.end378_crit_edge:                    ; preds = %if.end371
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end378

if.then374:                                       ; preds = %if.end371
  call void @__sanitizer_cov_trace_pc() #11
  %262 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %group, align 4
  %264 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %s_fs_info.i, align 16
  %s_inodes_per_group376 = getelementptr inbounds %struct.ext4_sb_info, ptr %265, i32 0, i32 4
  %266 = ptrtoint ptr %s_inodes_per_group376 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %s_inodes_per_group376, align 16
  %div377839 = lshr i32 %267, 3
  call void @ext4_inode_bitmap_csum_set(ptr noundef %8, i32 noundef %263, ptr noundef nonnull %call97, ptr noundef %call116, i32 noundef %div377839) #9
  %268 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %group, align 4
  call void @ext4_group_desc_csum_set(ptr noundef %8, i32 noundef %269, ptr noundef nonnull %call97) #9
  br label %if.end378

if.end378:                                        ; preds = %if.then374, %if.end371.if.end378_crit_edge
  %270 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %group, align 4
  %272 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %s_fs_info.i, align 16
  %s_blockgroup_lock.i.i914 = getelementptr inbounds %struct.ext4_sb_info, ptr %273, i32 0, i32 41
  %274 = ptrtoint ptr %s_blockgroup_lock.i.i914 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %s_blockgroup_lock.i.i914, align 8
  %and.i.i.i915 = and i32 %271, 15
  %arrayidx.i.i.i916 = getelementptr [16 x %struct.bgl_lock], ptr %275, i32 0, i32 %and.i.i.i915
  call void @_raw_spin_unlock(ptr noundef %arrayidx.i.i.i916) #9
  %276 = ptrtoint ptr %group_desc_bh to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %group_desc_bh, align 4
  %call382 = call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.__ext4_new_inode, i32 noundef 1233, ptr noundef %handle.addr.2, ptr noundef null, ptr noundef %277) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call382)
  %tobool383.not = icmp eq i32 %call382, 0
  br i1 %tobool383.not, label %if.end391, label %if.then387

if.then387:                                       ; preds = %if.end378
  call void @__sanitizer_cov_trace_pc() #11
  call void @__ext4_std_error(ptr noundef %8, ptr noundef nonnull @__func__.__ext4_new_inode, i32 noundef 1235, i32 noundef %call382) #9
  br label %out

if.end391:                                        ; preds = %if.end378
  %s_freeinodes_counter = getelementptr inbounds %struct.ext4_sb_info, ptr %10, i32 0, i32 37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %278 = load i32, ptr @percpu_counter_batch, align 4
  call void @percpu_counter_add_batch(ptr noundef %s_freeinodes_counter, i64 noundef -1, i32 noundef %278) #9
  br i1 %cmp343, label %if.then396, label %if.end391.if.end397_crit_edge

if.end391.if.end397_crit_edge:                    ; preds = %if.end391
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end397

if.then396:                                       ; preds = %if.end391
  call void @__sanitizer_cov_trace_pc() #11
  %s_dirs_counter = getelementptr inbounds %struct.ext4_sb_info, ptr %10, i32 0, i32 38
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %279 = load i32, ptr @percpu_counter_batch, align 4
  call void @percpu_counter_add_batch(ptr noundef %s_dirs_counter, i64 noundef 1, i32 noundef %279) #9
  br label %if.end397

if.end397:                                        ; preds = %if.then396, %if.end391.if.end397_crit_edge
  %s_log_groups_per_flex398 = getelementptr inbounds %struct.ext4_sb_info, ptr %10, i32 0, i32 112
  %280 = ptrtoint ptr %s_log_groups_per_flex398 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %s_log_groups_per_flex398, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %281)
  %tobool399.not = icmp eq i32 %281, 0
  br i1 %tobool399.not, label %if.end397.if.end423_crit_edge, label %if.then400

if.end397.if.end423_crit_edge:                    ; preds = %if.end397
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end423

if.then400:                                       ; preds = %if.end397
  %282 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %group, align 4
  %shr.i918 = lshr i32 %283, %281
  %284 = call i32 @llvm.read_register.i32(metadata !104) #9
  %and.i.i.i.i.i847 = and i32 %284, -16384
  %285 = inttoptr i32 %and.i.i.i.i.i847 to ptr
  %preempt_count.i.i.i.i848 = getelementptr inbounds %struct.thread_info, ptr %285, i32 0, i32 1
  %286 = ptrtoint ptr %preempt_count.i.i.i.i848 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load volatile i32, ptr %preempt_count.i.i.i.i848, align 4
  %add.i.i.i849 = add i32 %287, 1
  store volatile i32 %add.i.i.i849, ptr %preempt_count.i.i.i.i848, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !118
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i850 = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i850, label %if.then400.rcu_read_lock.exit857_crit_edge, label %land.lhs.true.i853

if.then400.rcu_read_lock.exit857_crit_edge:       ; preds = %if.then400
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit857

land.lhs.true.i853:                               ; preds = %if.then400
  %call1.i851 = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i851)
  %tobool.not.i852 = icmp eq i32 %call1.i851, 0
  br i1 %tobool.not.i852, label %land.lhs.true.i853.rcu_read_lock.exit857_crit_edge, label %land.lhs.true2.i855

land.lhs.true.i853.rcu_read_lock.exit857_crit_edge: ; preds = %land.lhs.true.i853
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit857

land.lhs.true2.i855:                              ; preds = %land.lhs.true.i853
  %.b4.i854 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i854, label %land.lhs.true2.i855.rcu_read_lock.exit857_crit_edge, label %if.then.i856

land.lhs.true2.i855.rcu_read_lock.exit857_crit_edge: ; preds = %land.lhs.true2.i855
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit857

if.then.i856:                                     ; preds = %land.lhs.true2.i855
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 696, ptr noundef nonnull @.str.38) #9
  br label %rcu_read_lock.exit857

rcu_read_lock.exit857:                            ; preds = %if.then.i856, %land.lhs.true2.i855.rcu_read_lock.exit857_crit_edge, %land.lhs.true.i853.rcu_read_lock.exit857_crit_edge, %if.then400.rcu_read_lock.exit857_crit_edge
  %s_flex_groups407 = getelementptr inbounds %struct.ext4_sb_info, ptr %10, i32 0, i32 113
  %288 = ptrtoint ptr %s_flex_groups407 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load volatile ptr, ptr %s_flex_groups407, align 64
  %call409 = call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call409)
  %tobool410.not = icmp eq i32 %call409, 0
  br i1 %tobool410.not, label %land.lhs.true411, label %rcu_read_lock.exit857.do.end419_crit_edge

rcu_read_lock.exit857.do.end419_crit_edge:        ; preds = %rcu_read_lock.exit857
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end419

land.lhs.true411:                                 ; preds = %rcu_read_lock.exit857
  %call412 = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call412)
  %tobool413.not = icmp eq i32 %call412, 0
  br i1 %tobool413.not, label %land.lhs.true411.do.end419_crit_edge, label %land.lhs.true414

land.lhs.true411.do.end419_crit_edge:             ; preds = %land.lhs.true411
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end419

land.lhs.true414:                                 ; preds = %land.lhs.true411
  %.b837838 = load i1, ptr @__ext4_new_inode.__warned.10, align 1
  br i1 %.b837838, label %land.lhs.true414.do.end419_crit_edge, label %if.then416

land.lhs.true414.do.end419_crit_edge:             ; preds = %land.lhs.true414
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end419

if.then416:                                       ; preds = %land.lhs.true414
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__ext4_new_inode.__warned.10, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1246, ptr noundef nonnull @.str.7) #9
  br label %do.end419

do.end419:                                        ; preds = %if.then416, %land.lhs.true414.do.end419_crit_edge, %land.lhs.true411.do.end419_crit_edge, %rcu_read_lock.exit857.do.end419_crit_edge
  %arrayidx421 = getelementptr ptr, ptr %289, i32 %shr.i918
  %290 = ptrtoint ptr %arrayidx421 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %arrayidx421, align 4
  call fastcc void @rcu_read_unlock()
  %free_inodes = getelementptr inbounds %struct.flex_groups, ptr %291, i32 0, i32 1
  %call.i.i858 = call zeroext i1 @__kasan_check_write(ptr noundef %free_inodes, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %free_inodes, i32 1, i32 3, i32 1) #9
  %292 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %free_inodes, ptr %free_inodes, i32 1, ptr elementtype(i32) %free_inodes) #9, !srcloc !115
  br label %if.end423

if.end423:                                        ; preds = %do.end419, %if.end397.if.end423_crit_edge
  %293 = ptrtoint ptr %ino to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %ino, align 4
  %295 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %group, align 4
  %297 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %s_fs_info.i, align 16
  %s_inodes_per_group425 = getelementptr inbounds %struct.ext4_sb_info, ptr %298, i32 0, i32 4
  %299 = ptrtoint ptr %s_inodes_per_group425 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %s_inodes_per_group425, align 16
  %mul = mul i32 %300, %296
  %add426 = add i32 %mul, %294
  %i_ino = getelementptr inbounds %struct.inode, ptr %call11, i32 0, i32 11
  %301 = ptrtoint ptr %i_ino to i32
  call void @__asan_store4_noabort(i32 %301)
  store i32 %add426, ptr %i_ino, align 8
  %i_blocks = getelementptr inbounds %struct.inode, ptr %call11, i32 0, i32 22
  %302 = ptrtoint ptr %i_blocks to i32
  call void @__asan_store8_noabort(i32 %302)
  store i64 0, ptr %i_blocks, align 8
  %i_mtime = getelementptr inbounds %struct.inode, ptr %call11, i32 0, i32 16
  %i_atime = getelementptr inbounds %struct.inode, ptr %call11, i32 0, i32 15
  %i_ctime = getelementptr inbounds %struct.inode, ptr %call11, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp427) #9
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp427, ptr noundef %call11) #9
  %303 = call ptr @memcpy(ptr %i_ctime, ptr %tmp427, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp427) #9
  %304 = call ptr @memcpy(ptr %i_atime, ptr %i_ctime, i32 16)
  %305 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  %i_crtime = getelementptr i8, ptr %call11, i32 832
  %306 = call ptr @memcpy(ptr %i_crtime, ptr %i_ctime, i32 16)
  %307 = call ptr @memset(ptr %add.ptr, i32 0, i32 60)
  %i_dir_start_lookup = getelementptr i8, ptr %call11, i32 -388
  %308 = ptrtoint ptr %i_dir_start_lookup to i32
  call void @__asan_store4_noabort(i32 %308)
  store i32 0, ptr %i_dir_start_lookup, align 4
  %i_disksize = getelementptr i8, ptr %call11, i32 -104
  %309 = ptrtoint ptr %i_disksize to i32
  call void @__asan_store8_noabort(i32 %309)
  store i64 0, ptr %i_disksize, align 8
  %i_flags432 = getelementptr i8, ptr %dir, i32 -380
  %310 = ptrtoint ptr %i_flags432 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %i_flags432, align 4
  %and433 = and i32 %311, 1644283087
  %312 = and i16 %mode, -4096
  %313 = zext i16 %312 to i64
  call void @__sanitizer_cov_trace_switch(i64 %313, ptr @__sancov_gen_cov_switch_values)
  switch i16 %312, label %if.else8.i [
    i16 16384, label %if.end423.ext4_mask_flags.exit_crit_edge
    i16 -32768, label %if.then6.i
  ]

if.end423.ext4_mask_flags.exit_crit_edge:         ; preds = %if.end423
  call void @__sanitizer_cov_trace_pc() #11
  br label %ext4_mask_flags.exit

if.then6.i:                                       ; preds = %if.end423
  call void @__sanitizer_cov_trace_pc() #11
  %and7.i = and i32 %311, 33604815
  br label %ext4_mask_flags.exit

if.else8.i:                                       ; preds = %if.end423
  call void @__sanitizer_cov_trace_pc() #11
  %and9.i = and i32 %311, 192
  br label %ext4_mask_flags.exit

ext4_mask_flags.exit:                             ; preds = %if.else8.i, %if.then6.i, %if.end423.ext4_mask_flags.exit_crit_edge
  %retval.0.i = phi i32 [ %and7.i, %if.then6.i ], [ %and9.i, %if.else8.i ], [ %and433, %if.end423.ext4_mask_flags.exit_crit_edge ]
  %i_flags435 = getelementptr i8, ptr %call11, i32 -380
  %or = or i32 %retval.0.i, %i_flags
  %314 = ptrtoint ptr %i_flags435 to i32
  call void @__asan_store4_noabort(i32 %314)
  store i32 %or, ptr %i_flags435, align 4
  %i_file_acl = getelementptr i8, ptr %call11, i32 -400
  %315 = ptrtoint ptr %i_file_acl to i32
  call void @__asan_store8_noabort(i32 %315)
  store i64 0, ptr %i_file_acl, align 8
  %i_dtime = getelementptr i8, ptr %call11, i32 -404
  %316 = ptrtoint ptr %i_dtime to i32
  call void @__asan_store4_noabort(i32 %316)
  store i32 0, ptr %i_dtime, align 4
  %317 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %group, align 4
  %i_block_group = getelementptr i8, ptr %call11, i32 -392
  %319 = ptrtoint ptr %i_block_group to i32
  call void @__asan_store4_noabort(i32 %319)
  store i32 %318, ptr %i_block_group, align 8
  %i_last_alloc_group437 = getelementptr i8, ptr %call11, i32 976
  %320 = ptrtoint ptr %i_last_alloc_group437 to i32
  call void @__asan_store4_noabort(i32 %320)
  store i32 -1, ptr %i_last_alloc_group437, align 8
  call void @ext4_set_inode_flags(ptr noundef %call11, i1 noundef zeroext true) #9
  %i_sb438 = getelementptr inbounds %struct.inode, ptr %call11, i32 0, i32 8
  %321 = ptrtoint ptr %i_sb438 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %i_sb438, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %322, i32 0, i32 10
  %323 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %s_flags, align 4
  %and439 = and i32 %324, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and439)
  %tobool440.not = icmp eq i32 %and439, 0
  br i1 %tobool440.not, label %lor.lhs.false441, label %if.then445

lor.lhs.false441:                                 ; preds = %ext4_mask_flags.exit
  %i_flags442 = getelementptr inbounds %struct.inode, ptr %call11, i32 0, i32 4
  %325 = ptrtoint ptr %i_flags442 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %i_flags442, align 4
  %and443 = and i32 %326, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and443)
  %tobool444.not = icmp eq i32 %and443, 0
  %cmp.i.not.i = icmp ult ptr %handle.addr.2, inttoptr (i32 4096 to ptr)
  %or.cond950 = or i1 %cmp.i.not.i, %tobool444.not
  br i1 %or.cond950, label %lor.lhs.false441.if.end446_crit_edge, label %lor.lhs.false441.if.then.i920_crit_edge

lor.lhs.false441.if.then.i920_crit_edge:          ; preds = %lor.lhs.false441
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i920

lor.lhs.false441.if.end446_crit_edge:             ; preds = %lor.lhs.false441
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end446

if.then445:                                       ; preds = %ext4_mask_flags.exit
  %cmp.i.not.i.old = icmp ult ptr %handle.addr.2, inttoptr (i32 4096 to ptr)
  br i1 %cmp.i.not.i.old, label %if.then445.if.end446_crit_edge, label %if.then445.if.then.i920_crit_edge

if.then445.if.then.i920_crit_edge:                ; preds = %if.then445
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i920

if.then445.if.end446_crit_edge:                   ; preds = %if.then445
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end446

if.then.i920:                                     ; preds = %if.then445.if.then.i920_crit_edge, %lor.lhs.false441.if.then.i920_crit_edge
  %h_sync.i = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle.addr.2, i32 0, i32 7
  %327 = ptrtoint ptr %h_sync.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %bf.load.i = load i32, ptr %h_sync.i, align 4
  %bf.set.i = or i32 %bf.load.i, -2147483648
  store i32 %bf.set.i, ptr %h_sync.i, align 4
  br label %if.end446

if.end446:                                        ; preds = %if.then.i920, %if.then445.if.end446_crit_edge, %lor.lhs.false441.if.end446_crit_edge
  %call447 = call i32 @insert_inode_locked(ptr noundef %call11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call447)
  %cmp448 = icmp slt i32 %call447, 0
  br i1 %cmp448, label %if.then450, label %if.end452

if.then450:                                       ; preds = %if.end446
  call void @__sanitizer_cov_trace_pc() #11
  %328 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %i_ino, align 8
  call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %8, ptr noundef nonnull @__func__.__ext4_new_inode, i32 noundef 1278, i1 noundef zeroext false, i32 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.11, i32 noundef %329) #9
  %330 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %group, align 4
  call void @ext4_mark_group_bitmap_corrupted(ptr noundef %8, i32 noundef %331, i32 noundef 8) #9
  br label %out

if.end452:                                        ; preds = %if.end446
  %call453 = call i32 @prandom_u32() #9
  %i_generation = getelementptr inbounds %struct.inode, ptr %call11, i32 0, i32 49
  %332 = ptrtoint ptr %i_generation to i32
  call void @__asan_store4_noabort(i32 %332)
  store i32 %call453, ptr %i_generation, align 8
  %call454 = call fastcc i32 @ext4_has_metadata_csum(ptr noundef %8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call454)
  %tobool455.not = icmp eq i32 %call454, 0
  br i1 %tobool455.not, label %if.end452.if.end461_crit_edge, label %if.then456

if.end452.if.end461_crit_edge:                    ; preds = %if.end452
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end461

if.then456:                                       ; preds = %if.end452
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inum) #9
  %333 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %i_ino, align 8
  %335 = call i32 @llvm.bswap.i32(i32 %334)
  %336 = ptrtoint ptr %inum to i32
  call void @__asan_store4_noabort(i32 %336)
  store i32 %335, ptr %inum, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gen) #9
  %337 = ptrtoint ptr %i_generation to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %i_generation, align 8
  %339 = call i32 @llvm.bswap.i32(i32 %338)
  %340 = ptrtoint ptr %gen to i32
  call void @__asan_store4_noabort(i32 %340)
  store i32 %339, ptr %gen, align 4
  %s_csum_seed = getelementptr inbounds %struct.ext4_sb_info, ptr %10, i32 0, i32 122
  %341 = ptrtoint ptr %s_csum_seed to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %s_csum_seed, align 16
  %call459 = call fastcc i32 @ext4_chksum(ptr noundef %10, i32 noundef %342, ptr noundef nonnull %inum)
  %call460 = call fastcc i32 @ext4_chksum(ptr noundef %10, i32 noundef %call459, ptr noundef nonnull %gen)
  %i_csum_seed = getelementptr i8, ptr %call11, i32 1172
  %343 = ptrtoint ptr %i_csum_seed to i32
  call void @__asan_store4_noabort(i32 %343)
  store i32 %call460, ptr %i_csum_seed, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gen) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inum) #9
  br label %if.end461

if.end461:                                        ; preds = %if.then456, %if.end452.if.end461_crit_edge
  %i_state_flags.i = getelementptr i8, ptr %call11, i32 -384
  %344 = ptrtoint ptr %i_state_flags.i to i32
  call void @__asan_store4_noabort(i32 %344)
  store i32 0, ptr %i_state_flags.i, align 8
  call void @_set_bit(i32 noundef 1, ptr noundef %i_state_flags.i) #9
  %s_want_extra_isize = getelementptr inbounds %struct.ext4_sb_info, ptr %10, i32 0, i32 58
  %345 = ptrtoint ptr %s_want_extra_isize to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %s_want_extra_isize, align 128
  %conv462 = trunc i32 %346 to i16
  %i_extra_isize = getelementptr i8, ptr %call11, i32 988
  %347 = ptrtoint ptr %i_extra_isize to i32
  call void @__asan_store2_noabort(i32 %347)
  store i16 %conv462, ptr %i_extra_isize, align 4
  %i_inline_off = getelementptr i8, ptr %call11, i32 990
  %348 = ptrtoint ptr %i_inline_off to i32
  call void @__asan_store2_noabort(i32 %348)
  store i16 0, ptr %i_inline_off, align 2
  %349 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %s_fs_info.i, align 16
  %s_es.i923 = getelementptr inbounds %struct.ext4_sb_info, ptr %350, i32 0, i32 15
  %351 = ptrtoint ptr %s_es.i923 to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %s_es.i923, align 4
  %s_feature_incompat.i = getelementptr inbounds %struct.ext4_super_block, ptr %352, i32 0, i32 29
  %353 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load i32, ptr %s_feature_incompat.i, align 8
  %and.i924 = and i32 %354, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i924)
  %cmp.i925.not = icmp eq i32 %and.i924, 0
  br i1 %cmp.i925.not, label %if.end461.if.end475_crit_edge, label %land.lhs.true465

if.end461.if.end475_crit_edge:                    ; preds = %if.end461
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end475

land.lhs.true465:                                 ; preds = %if.end461
  %355 = ptrtoint ptr %i_flags435 to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %i_flags435, align 4
  %and467 = and i32 %356, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and467)
  %tobool468.not = icmp eq i32 %and467, 0
  %brmerge842 = or i1 %cmp343, %tobool468.not
  br i1 %brmerge842, label %if.then474, label %land.lhs.true465.if.end475_crit_edge

land.lhs.true465.if.end475_crit_edge:             ; preds = %land.lhs.true465
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end475

if.then474:                                       ; preds = %land.lhs.true465
  call void @__sanitizer_cov_trace_pc() #11
  call void @_set_bit(i32 noundef 7, ptr noundef %i_state_flags.i) #9
  br label %if.end475

if.end475:                                        ; preds = %if.then474, %land.lhs.true465.if.end475_crit_edge, %if.end461.if.end475_crit_edge
  %call476 = call i32 @dquot_alloc_inode(ptr noundef %call11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call476)
  %tobool477.not = icmp eq i32 %call476, 0
  br i1 %tobool477.not, label %if.end479, label %if.end475.fail_drop_crit_edge

if.end475.fail_drop_crit_edge:                    ; preds = %if.end475
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail_drop

if.end479:                                        ; preds = %if.end475
  %357 = ptrtoint ptr %encrypt to i32
  call void @__asan_load1_noabort(i32 %357)
  %358 = load i8, ptr %encrypt, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %358)
  %tobool480.not = icmp eq i8 %358, 0
  br i1 %tobool480.not, label %if.end479.if.end486_crit_edge, label %if.then481

if.end479.if.end486_crit_edge:                    ; preds = %if.end479
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end486

if.then481:                                       ; preds = %if.end479
  %call482 = call i32 @fscrypt_set_context(ptr noundef %call11, ptr noundef %handle.addr.2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call482)
  %tobool483.not = icmp eq i32 %call482, 0
  br i1 %tobool483.not, label %if.then481.if.end486_crit_edge, label %if.then481.fail_free_drop_crit_edge

if.then481.fail_free_drop_crit_edge:              ; preds = %if.then481
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail_free_drop

if.then481.if.end486_crit_edge:                   ; preds = %if.then481
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end486

if.end486:                                        ; preds = %if.then481.if.end486_crit_edge, %if.end479.if.end486_crit_edge
  %359 = ptrtoint ptr %i_flags435 to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load i32, ptr %i_flags435, align 4
  %and488 = and i32 %360, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and488)
  %tobool489.not = icmp eq i32 %and488, 0
  br i1 %tobool489.not, label %if.then490, label %if.end486.if.end499_crit_edge

if.end486.if.end499_crit_edge:                    ; preds = %if.end486
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end499

if.then490:                                       ; preds = %if.end486
  %call491 = call i32 @ext4_init_acl(ptr noundef %handle.addr.2, ptr noundef %call11, ptr noundef nonnull %dir) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call491)
  %tobool492.not = icmp eq i32 %call491, 0
  br i1 %tobool492.not, label %if.end494, label %if.then490.fail_free_drop_crit_edge

if.then490.fail_free_drop_crit_edge:              ; preds = %if.then490
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail_free_drop

if.end494:                                        ; preds = %if.then490
  %call495 = call i32 @ext4_init_security(ptr noundef %handle.addr.2, ptr noundef %call11, ptr noundef nonnull %dir, ptr noundef %qstr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call495)
  %tobool496.not = icmp eq i32 %call495, 0
  br i1 %tobool496.not, label %if.end494.if.end499_crit_edge, label %if.end494.fail_free_drop_crit_edge

if.end494.fail_free_drop_crit_edge:               ; preds = %if.end494
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail_free_drop

if.end494.if.end499_crit_edge:                    ; preds = %if.end494
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end499

if.end499:                                        ; preds = %if.end494.if.end499_crit_edge, %if.end486.if.end499_crit_edge
  %361 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %s_fs_info.i, align 16
  %s_es.i928 = getelementptr inbounds %struct.ext4_sb_info, ptr %362, i32 0, i32 15
  %363 = ptrtoint ptr %s_es.i928 to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %s_es.i928, align 4
  %s_feature_incompat.i929 = getelementptr inbounds %struct.ext4_super_block, ptr %364, i32 0, i32 29
  %365 = ptrtoint ptr %s_feature_incompat.i929 to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load i32, ptr %s_feature_incompat.i929, align 8
  %and.i930 = and i32 %366, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i930)
  %cmp.i931.not = icmp eq i32 %and.i930, 0
  br i1 %cmp.i931.not, label %if.end499.if.end518_crit_edge, label %if.then501

if.end499.if.end518_crit_edge:                    ; preds = %if.end499
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end518

if.then501:                                       ; preds = %if.end499
  %trunc = trunc i32 %and342 to i16
  %367 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %367, ptr @__sancov_gen_cov_switch_values.40)
  switch i16 %trunc, label %if.then501.if.end518_crit_edge [
    i16 -24576, label %if.then501.if.then516_crit_edge
    i16 -32768, label %if.then501.if.then516_crit_edge1084
    i16 16384, label %if.then501.if.then516_crit_edge1085
  ]

if.then501.if.then516_crit_edge1085:              ; preds = %if.then501
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then516

if.then501.if.then516_crit_edge1084:              ; preds = %if.then501
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then516

if.then501.if.then516_crit_edge:                  ; preds = %if.then501
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then516

if.then501.if.end518_crit_edge:                   ; preds = %if.then501
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end518

if.then516:                                       ; preds = %if.then501.if.then516_crit_edge, %if.then501.if.then516_crit_edge1084, %if.then501.if.then516_crit_edge1085
  call void @_set_bit(i32 noundef 19, ptr noundef %i_flags435) #9
  call void @ext4_ext_tree_init(ptr noundef %handle.addr.2, ptr noundef %call11) #9
  br label %if.end518

if.end518:                                        ; preds = %if.then516, %if.then501.if.end518_crit_edge, %if.end499.if.end518_crit_edge
  %cmp.i933.not = icmp ult ptr %handle.addr.2, inttoptr (i32 4096 to ptr)
  br i1 %cmp.i933.not, label %if.end518.if.end523_crit_edge, label %if.then521

if.end518.if.end523_crit_edge:                    ; preds = %if.end518
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end523

if.then521:                                       ; preds = %if.end518
  call void @__sanitizer_cov_trace_pc() #11
  %368 = ptrtoint ptr %handle.addr.2 to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %handle.addr.2, align 4
  %t_tid = getelementptr inbounds %struct.transaction_s, ptr %369, i32 0, i32 1
  %370 = ptrtoint ptr %t_tid to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %t_tid, align 4
  %i_sync_tid = getelementptr i8, ptr %call11, i32 1152
  %372 = ptrtoint ptr %i_sync_tid to i32
  call void @__asan_store4_noabort(i32 %372)
  store i32 %371, ptr %i_sync_tid, align 8
  %373 = load ptr, ptr %handle.addr.2, align 4
  %t_tid522 = getelementptr inbounds %struct.transaction_s, ptr %373, i32 0, i32 1
  %374 = ptrtoint ptr %t_tid522 to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load i32, ptr %t_tid522, align 4
  %i_datasync_tid = getelementptr i8, ptr %call11, i32 1156
  %376 = ptrtoint ptr %i_datasync_tid to i32
  call void @__asan_store4_noabort(i32 %376)
  store i32 %375, ptr %i_datasync_tid, align 4
  br label %if.end523

if.end523:                                        ; preds = %if.then521, %if.end518.if.end523_crit_edge
  %call524 = call i32 @__ext4_mark_inode_dirty(ptr noundef %handle.addr.2, ptr noundef %call11, ptr noundef nonnull @__func__.__ext4_new_inode, i32 noundef 1343) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call524)
  %tobool525.not = icmp eq i32 %call524, 0
  br i1 %tobool525.not, label %if.end533, label %if.then529

if.then529:                                       ; preds = %if.end523
  call void @__sanitizer_cov_trace_pc() #11
  call void @__ext4_std_error(ptr noundef %8, ptr noundef nonnull @__func__.__ext4_new_inode, i32 noundef 1345, i32 noundef %call524) #9
  br label %fail_free_drop

if.end533:                                        ; preds = %if.end523
  call fastcc void @trace_ext4_allocate_inode(ptr noundef %call11, ptr noundef nonnull %dir, i32 noundef %conv)
  %tobool.not.i934 = icmp eq ptr %call116, null
  br i1 %tobool.not.i934, label %if.end533.cleanup539_crit_edge, label %if.then.i935

if.end533.cleanup539_crit_edge:                   ; preds = %if.end533
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup539

if.then.i935:                                     ; preds = %if.end533
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %call116) #9
  br label %cleanup539

fail_free_drop:                                   ; preds = %if.then529, %if.end494.fail_free_drop_crit_edge, %if.then490.fail_free_drop_crit_edge, %if.then481.fail_free_drop_crit_edge
  %err.1 = phi i32 [ %call482, %if.then481.fail_free_drop_crit_edge ], [ %call524, %if.then529 ], [ %call491, %if.then490.fail_free_drop_crit_edge ], [ %call495, %if.end494.fail_free_drop_crit_edge ]
  call void @dquot_free_inode(ptr noundef %call11) #9
  br label %fail_drop

fail_drop:                                        ; preds = %fail_free_drop, %if.end475.fail_drop_crit_edge
  %err.2 = phi i32 [ %call476, %if.end475.fail_drop_crit_edge ], [ %err.1, %fail_free_drop ]
  call void @clear_nlink(ptr noundef %call11) #9
  call void @unlock_new_inode(ptr noundef %call11) #9
  br label %out

out:                                              ; preds = %fail_drop, %if.then450, %if.then387, %if.then292, %brelse.exit901, %if.then254, %if.then240, %if.then227, %next_group.out_crit_edge, %if.then189, %if.then175, %for.body.out_crit_edge, %got_group.out_crit_edge, %got_group.thread, %if.then59.out_crit_edge, %if.end48.out_crit_edge, %if.then43.out_crit_edge
  %err.3 = phi i32 [ %call49, %if.end48.out_crit_edge ], [ -28, %got_group.out_crit_edge ], [ %call184, %if.then189 ], [ %call222, %if.then227 ], [ %call235, %if.then240 ], [ %call382, %if.then387 ], [ -5, %if.then450 ], [ %err.2, %fail_drop ], [ %157, %if.then175 ], [ %call44, %if.then43.out_crit_edge ], [ %call61, %if.then59.out_crit_edge ], [ -28, %got_group.thread ], [ %call273, %if.then292 ], [ %call260, %brelse.exit901 ], [ %206, %if.then254 ], [ -5, %for.body.out_crit_edge ], [ -28, %next_group.out_crit_edge ]
  %inode_bitmap_bh.2 = phi ptr [ null, %if.end48.out_crit_edge ], [ null, %got_group.out_crit_edge ], [ %call116, %if.then189 ], [ %call116, %if.then227 ], [ %call116, %if.then240 ], [ %call116, %if.then387 ], [ %call116, %if.then450 ], [ %call116, %fail_drop ], [ %call116, %if.then175 ], [ null, %if.then43.out_crit_edge ], [ null, %if.then59.out_crit_edge ], [ null, %got_group.thread ], [ %call116, %if.then292 ], [ %call116, %brelse.exit901 ], [ %call116, %if.then254 ], [ %inode_bitmap_bh.0987, %for.body.out_crit_edge ], [ %inode_bitmap_bh.1, %next_group.out_crit_edge ]
  call void @dquot_drop(ptr noundef %call11) #9
  %i_flags536 = getelementptr inbounds %struct.inode, ptr %call11, i32 0, i32 4
  %377 = ptrtoint ptr %i_flags536 to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load i32, ptr %i_flags536, align 4
  %or537 = or i32 %378, 32
  store i32 %or537, ptr %i_flags536, align 4
  call void @iput(ptr noundef %call11) #9
  %tobool.not.i937 = icmp eq ptr %inode_bitmap_bh.2, null
  br i1 %tobool.not.i937, label %out.brelse.exit939_crit_edge, label %if.then.i938

out.brelse.exit939_crit_edge:                     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit939

if.then.i938:                                     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %inode_bitmap_bh.2) #9
  br label %brelse.exit939

brelse.exit939:                                   ; preds = %if.then.i938, %out.brelse.exit939_crit_edge
  %379 = inttoptr i32 %err.3 to ptr
  br label %cleanup539

cleanup539:                                       ; preds = %brelse.exit939, %if.then.i935, %if.end533.cleanup539_crit_edge, %if.end9.cleanup539_crit_edge, %if.end.cleanup539_crit_edge, %lor.lhs.false.cleanup539_crit_edge, %entry.cleanup539_crit_edge
  %retval.0 = phi ptr [ %379, %brelse.exit939 ], [ inttoptr (i32 -1 to ptr), %lor.lhs.false.cleanup539_crit_edge ], [ inttoptr (i32 -1 to ptr), %entry.cleanup539_crit_edge ], [ inttoptr (i32 -5 to ptr), %if.end.cleanup539_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end9.cleanup539_crit_edge ], [ %call11, %if.end533.cleanup539_crit_edge ], [ %call11, %if.then.i935 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %encrypt) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ino) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %group) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %group_desc_bh) #9
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ext4_request_inode(ptr noundef %dir, i32 noundef %mode) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_request_inode, i32 0, i32 1), ptr blockaddress(@trace_ext4_request_inode, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !120

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !104) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !117

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !104) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !135
  %call42 = tail call i32 @__traceiter_ext4_request_inode(ptr noundef null, ptr noundef %dir, i32 noundef %mode) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !136
  %13 = tail call i32 @llvm.read_register.i32(metadata !104) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !104) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !117

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !104) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !123
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_request_inode, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_request_inode, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_ext4_request_inode.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_ext4_request_inode.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.29, i32 noundef 189, ptr noundef nonnull @.str.7) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !124
  %31 = tail call i32 @llvm.read_register.i32(metadata !104) #9
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
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_init_owner(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kprojid(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fscrypt_prepare_new_inode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ext4_xattr_credits_for_new_inode(ptr noundef %dir, i16 noundef zeroext %mode, i1 noundef zeroext %encrypt) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %call = tail call ptr @get_acl(ptr noundef %dir, i32 noundef 16384) #9
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.if.end7_crit_edge, label %land.lhs.true.i

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

land.lhs.true.i:                                  ; preds = %if.end
  %a_count = getelementptr inbounds %struct.posix_acl, ptr %call, i32 0, i32 2
  %3 = ptrtoint ptr %a_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %a_count, align 4
  %mul = shl i32 %4, 3
  %5 = and i16 %mode, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %5)
  %cmp = icmp eq i16 %5, 16384
  %cond = select i1 %cmp, i32 2, i32 1
  %call5 = tail call i32 @__ext4_xattr_set_credits(ptr noundef %1, ptr noundef null, ptr noundef null, i32 noundef %mul, i1 noundef zeroext true) #9
  %mul6 = mul i32 %call5, %cond
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !137
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #9
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #9, !srcloc !138
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %do.end.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end7_crit_edge, label %if.then10.i.i.i.i, !prof !117

if.end5.i.i.i.i.if.end7_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #9
  br label %if.end7

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !139
  %a_rcu.i = getelementptr inbounds %struct.posix_acl, ptr %call, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %a_rcu.i, ptr noundef nonnull inttoptr (i32 4 to ptr)) #9
  br label %if.end7

if.end7:                                          ; preds = %do.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %nblocks.0 = phi i32 [ 0, %if.end.if.end7_crit_edge ], [ %mul6, %if.end5.i.i.i.i.if.end7_crit_edge ], [ %mul6, %if.then10.i.i.i.i ], [ %mul6, %do.end.i ]
  %call8 = tail call i32 @__ext4_xattr_set_credits(ptr noundef %1, ptr noundef null, ptr noundef null, i32 noundef 1024, i1 noundef zeroext true) #9
  %mul9 = shl i32 %call8, 1
  %add10 = add i32 %mul9, %nblocks.0
  br i1 %encrypt, label %if.then12, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %call13 = tail call i32 @__ext4_xattr_set_credits(ptr noundef %1, ptr noundef null, ptr noundef null, i32 noundef 40, i1 noundef zeroext true) #9
  %add14 = add i32 %call13, %add10
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end7.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %add14, %if.then12 ], [ %add10, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @find_group_orlov(ptr noundef %sb, ptr noundef %parent, ptr nocapture noundef writeonly %group, i16 noundef zeroext %mode, ptr noundef readonly %qstr) unnamed_addr #2 align 64 {
entry:
  %stats = alloca %struct.orlov_stats, align 8
  %hinfo = alloca %struct.dx_hash_info, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_block_group = getelementptr i8, ptr %parent, i32 -392
  %0 = ptrtoint ptr %i_block_group to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_block_group, align 8
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %s_groups_count.i = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %s_groups_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_groups_count.i, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !132
  %6 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i, align 16
  %s_inodes_per_group = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %s_inodes_per_group to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_inodes_per_group, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %stats) #9
  %10 = getelementptr inbounds %struct.orlov_stats, ptr %stats, i32 0, i32 1
  %11 = getelementptr inbounds %struct.orlov_stats, ptr %stats, i32 0, i32 2
  %s_log_groups_per_flex.i = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 112
  %12 = call ptr @memset(ptr %stats, i32 255, i32 16)
  %13 = ptrtoint ptr %s_log_groups_per_flex.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %s_log_groups_per_flex.i, align 4
  %shl.i = shl nuw i32 1, %14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %hinfo) #9
  %15 = getelementptr inbounds %struct.dx_hash_info, ptr %hinfo, i32 0, i32 2
  %16 = getelementptr inbounds %struct.dx_hash_info, ptr %hinfo, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shl.i)
  %cmp = icmp sgt i32 %shl.i, 1
  %add = add i32 %5, -1
  %sub = add i32 %add, %shl.i
  %shr = lshr i32 %sub, %14
  %ngroups.0 = select i1 %cmp, i32 %shr, i32 %5
  %shr5 = select i1 %cmp, i32 %14, i32 0
  %parent_group.0 = lshr i32 %1, %shr5
  %count.i = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 37, i32 1
  %17 = call ptr @memset(ptr %hinfo, i32 255, i32 16)
  %18 = ptrtoint ptr %count.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load volatile i64, ptr %count.i, align 8
  %20 = tail call i64 @llvm.smax.i64(i64 %19, i64 0) #9
  %conv = trunc i64 %20 to i32
  %div = udiv i32 %conv, %ngroups.0
  %count.i546 = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 36, i32 1
  %21 = ptrtoint ptr %count.i546 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load volatile i64, ptr %count.i546, align 8
  %23 = tail call i64 @llvm.smax.i64(i64 %22, i64 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ngroups.0)
  %cmp.not.i = icmp eq i32 %ngroups.0, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %23)
  %cmp182 = icmp ult i64 %23, 4294967296
  br i1 %cmp182, label %if.then186, label %if.else192, !prof !117

if.then186:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv187 = trunc i64 %23 to i32
  %div190 = udiv i32 %conv187, %ngroups.0
  %conv191 = zext i32 %div190 to i64
  br label %if.end196

if.else192:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %24 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %ngroups.0, i64 %23) #13, !srcloc !140
  %asmresult1.i = extractvalue { i64, i64 } %24, 1
  br label %if.end196

if.end196:                                        ; preds = %if.else192, %if.then186
  %avefreec.0 = phi i64 [ %conv191, %if.then186 ], [ %asmresult1.i, %if.else192 ]
  %count.i548 = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 38, i32 1
  %25 = ptrtoint ptr %count.i548 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load volatile i64, ptr %count.i548, align 8
  %27 = tail call i64 @llvm.smax.i64(i64 %26, i64 0) #9
  %conv199 = trunc i64 %27 to i32
  %28 = and i16 %mode, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %28)
  %cmp202 = icmp eq i16 %28, 16384
  br i1 %cmp202, label %land.lhs.true204, label %if.end196.if.end268_crit_edge

if.end196.if.end268_crit_edge:                    ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end268

land.lhs.true204:                                 ; preds = %if.end196
  %s_root = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 13
  %29 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %s_root, align 64
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %d_inode.i, align 8
  %cmp206 = icmp eq ptr %32, %parent
  br i1 %cmp206, label %land.lhs.true204.if.then210_crit_edge, label %lor.lhs.false

land.lhs.true204.if.then210_crit_edge:            ; preds = %land.lhs.true204
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then210

lor.lhs.false:                                    ; preds = %land.lhs.true204
  %i_flags.i = getelementptr i8, ptr %parent, i32 -380
  %33 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %i_flags.i, align 4
  %35 = and i32 %34, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool209.not = icmp eq i32 %35, 0
  br i1 %tobool209.not, label %lor.lhs.false.if.end268_crit_edge, label %lor.lhs.false.if.then210_crit_edge

lor.lhs.false.if.then210_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then210

lor.lhs.false.if.end268_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end268

if.then210:                                       ; preds = %lor.lhs.false.if.then210_crit_edge, %land.lhs.true204.if.then210_crit_edge
  %tobool211.not = icmp eq ptr %qstr, null
  br i1 %tobool211.not, label %if.else214, label %if.then212

if.then212:                                       ; preds = %if.then210
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %15, align 4
  %s_hash_seed = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 33
  %37 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %s_hash_seed, ptr %16, align 4
  %name = getelementptr inbounds %struct.qstr, ptr %qstr, i32 0, i32 1
  %38 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %name, align 8
  %40 = ptrtoint ptr %qstr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %qstr, align 8
  %call213 = call i32 @ext4fs_dirhash(ptr noundef %parent, ptr noundef %39, i32 noundef %41, ptr noundef nonnull %hinfo) #9
  %42 = ptrtoint ptr %hinfo to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %hinfo, align 4
  br label %if.end216

if.else214:                                       ; preds = %if.then210
  call void @__sanitizer_cov_trace_pc() #11
  %call215 = tail call i32 @prandom_u32() #9
  br label %if.end216

if.end216:                                        ; preds = %if.else214, %if.then212
  %grp.0 = phi i32 [ %43, %if.then212 ], [ %call215, %if.else214 ]
  %rem217 = urem i32 %grp.0, %ngroups.0
  br i1 %cmp.not.i, label %if.end216.fallback_crit_edge, label %if.end216.for.body_crit_edge

if.end216.for.body_crit_edge:                     ; preds = %if.end216
  br label %for.body

if.end216.fallback_crit_edge:                     ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #11
  br label %fallback

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end216.for.body_crit_edge
  %ret.0581 = phi i32 [ %ret.1, %for.inc.for.body_crit_edge ], [ -1, %if.end216.for.body_crit_edge ]
  %best_ndir.0580 = phi i32 [ %best_ndir.1, %for.inc.for.body_crit_edge ], [ %9, %if.end216.for.body_crit_edge ]
  %grp.1579 = phi i32 [ %grp.2, %for.inc.for.body_crit_edge ], [ %grp.0, %if.end216.for.body_crit_edge ]
  %i.0578 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end216.for.body_crit_edge ]
  %add220 = add i32 %i.0578, %rem217
  %rem221 = urem i32 %add220, %ngroups.0
  call fastcc void @get_orlov_stats(ptr noundef %sb, i32 noundef %rem221, i32 noundef %shl.i, ptr noundef nonnull %stats)
  %44 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %10, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool222.not = icmp eq i32 %45, 0
  br i1 %tobool222.not, label %for.body.for.inc_crit_edge, label %if.end224

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end224:                                        ; preds = %for.body
  %46 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %best_ndir.0580)
  %cmp225.not = icmp uge i32 %47, %best_ndir.0580
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %div)
  %cmp230 = icmp ult i32 %45, %div
  %or.cond = select i1 %cmp225.not, i1 true, i1 %cmp230
  br i1 %or.cond, label %if.end224.for.inc_crit_edge, label %if.end233

if.end224.for.inc_crit_edge:                      ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end233:                                        ; preds = %if.end224
  %48 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %stats, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %49, i64 %avefreec.0)
  %cmp234 = icmp ult i64 %49, %avefreec.0
  br i1 %cmp234, label %if.end233.for.inc_crit_edge, label %if.end237

if.end233.for.inc_crit_edge:                      ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end237:                                        ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %if.end237, %if.end233.for.inc_crit_edge, %if.end224.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %grp.2 = phi i32 [ %grp.1579, %if.end224.for.inc_crit_edge ], [ %grp.1579, %if.end233.for.inc_crit_edge ], [ %rem221, %if.end237 ], [ %grp.1579, %for.body.for.inc_crit_edge ]
  %best_ndir.1 = phi i32 [ %best_ndir.0580, %if.end224.for.inc_crit_edge ], [ %best_ndir.0580, %if.end233.for.inc_crit_edge ], [ %47, %if.end237 ], [ %best_ndir.0580, %for.body.for.inc_crit_edge ]
  %ret.1 = phi i32 [ %ret.0581, %if.end224.for.inc_crit_edge ], [ %ret.0581, %if.end233.for.inc_crit_edge ], [ 0, %if.end237 ], [ %ret.0581, %for.body.for.inc_crit_edge ]
  %inc = add nuw i32 %i.0578, 1
  %exitcond590.not = icmp eq i32 %inc, %ngroups.0
  br i1 %exitcond590.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool239.not = icmp eq i32 %ret.1, 0
  br i1 %tobool239.not, label %for.end.found_flex_bg_crit_edge, label %for.end.fallback_crit_edge

for.end.fallback_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %fallback

for.end.found_flex_bg_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %found_flex_bg

found_flex_bg:                                    ; preds = %if.end317.found_flex_bg_crit_edge, %for.end.found_flex_bg_crit_edge
  %grp.3 = phi i32 [ %grp.2, %for.end.found_flex_bg_crit_edge ], [ %rem307, %if.end317.found_flex_bg_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp242 = icmp eq i32 %14, 0
  br i1 %cmp242, label %found_flex_bg.cleanup.sink.split_crit_edge, label %if.end245

found_flex_bg.cleanup.sink.split_crit_edge:       ; preds = %found_flex_bg
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end245:                                        ; preds = %found_flex_bg
  %mul246 = shl i32 %grp.3, %14
  %50 = call i32 @llvm.usub.sat.i32(i32 %5, i32 %mul246)
  br label %for.body250

for.body250:                                      ; preds = %for.inc265.for.body250_crit_edge, %if.end245
  %i.1583 = phi i32 [ 0, %if.end245 ], [ %inc266, %for.inc265.for.body250_crit_edge ]
  %add251 = add nuw i32 %i.1583, %mul246
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1583, i32 %50)
  %exitcond591.not = icmp eq i32 %i.1583, %50
  br i1 %exitcond591.not, label %for.body250.fallback_crit_edge, label %if.end255

for.body250.fallback_crit_edge:                   ; preds = %for.body250
  call void @__sanitizer_cov_trace_pc() #11
  br label %fallback

if.end255:                                        ; preds = %for.body250
  %call257 = call ptr @ext4_get_group_desc(ptr noundef %sb, i32 noundef %add251, ptr noundef null) #9
  %tobool258.not = icmp eq ptr %call257, null
  br i1 %tobool258.not, label %if.end255.for.inc265_crit_edge, label %land.lhs.true259

if.end255.for.inc265_crit_edge:                   ; preds = %if.end255
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc265

land.lhs.true259:                                 ; preds = %if.end255
  %call260 = call i32 @ext4_free_inodes_count(ptr noundef %sb, ptr noundef nonnull %call257) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call260)
  %tobool261.not = icmp eq i32 %call260, 0
  br i1 %tobool261.not, label %land.lhs.true259.for.inc265_crit_edge, label %land.lhs.true259.cleanup.sink.split_crit_edge

land.lhs.true259.cleanup.sink.split_crit_edge:    ; preds = %land.lhs.true259
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

land.lhs.true259.for.inc265_crit_edge:            ; preds = %land.lhs.true259
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc265

for.inc265:                                       ; preds = %land.lhs.true259.for.inc265_crit_edge, %if.end255.for.inc265_crit_edge
  %inc266 = add nuw i32 %i.1583, 1
  %exitcond593.not = icmp eq i32 %inc266, %shl.i
  br i1 %exitcond593.not, label %for.inc265.fallback_crit_edge, label %for.inc265.for.body250_crit_edge

for.inc265.for.body250_crit_edge:                 ; preds = %for.inc265
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body250

for.inc265.fallback_crit_edge:                    ; preds = %for.inc265
  call void @__sanitizer_cov_trace_pc() #11
  br label %fallback

if.end268:                                        ; preds = %lor.lhs.false.if.end268_crit_edge, %if.end196.if.end268_crit_edge
  %div269 = udiv i32 %conv199, %ngroups.0
  %div270 = sdiv i32 %9, 16
  %add271 = add i32 %div269, %div270
  %mul272 = shl i32 %9, %14
  %div273.neg = sdiv i32 %mul272, -4
  %sub274 = add i32 %div, %div273.neg
  %51 = tail call i32 @llvm.smax.i32(i32 %sub274, i32 1)
  %i_last_alloc_group = getelementptr i8, ptr %parent, i32 976
  %52 = ptrtoint ptr %i_last_alloc_group to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %i_last_alloc_group, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %53)
  %cmp288.not = icmp eq i32 %53, -1
  %cmp.not = xor i1 %cmp, true
  %brmerge = select i1 %cmp288.not, i1 true, i1 %cmp.not
  %parent_group.0.mux = select i1 %cmp288.not, i32 %parent_group.0, i32 %53
  %shr299 = lshr i32 %53, %14
  %spec.select = select i1 %brmerge, i32 %parent_group.0.mux, i32 %shr299
  br i1 %cmp.not.i, label %if.end268.fallback_crit_edge, label %for.body305.lr.ph

if.end268.fallback_crit_edge:                     ; preds = %if.end268
  call void @__sanitizer_cov_trace_pc() #11
  br label %fallback

for.body305.lr.ph:                                ; preds = %if.end268
  %54 = trunc i64 %avefreec.0 to i32
  %s_clusters_per_group = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 3
  %55 = ptrtoint ptr %s_clusters_per_group to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %s_clusters_per_group, align 4
  %mul280 = shl i32 %56, %14
  %div281542 = lshr i32 %mul280, 2
  %conv284 = sub i32 %54, %div281542
  %conv319 = sext i32 %conv284 to i64
  br label %for.body305

for.body305:                                      ; preds = %for.inc324.for.body305_crit_edge, %for.body305.lr.ph
  %i.2576 = phi i32 [ 0, %for.body305.lr.ph ], [ %inc325, %for.inc324.for.body305_crit_edge ]
  %add306 = add i32 %i.2576, %spec.select
  %rem307 = urem i32 %add306, %ngroups.0
  call fastcc void @get_orlov_stats(ptr noundef %sb, i32 noundef %rem307, i32 noundef %shl.i, ptr noundef nonnull %stats)
  %57 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %add271)
  %cmp309.not = icmp ult i32 %58, %add271
  br i1 %cmp309.not, label %if.end312, label %for.body305.for.inc324_crit_edge

for.body305.for.inc324_crit_edge:                 ; preds = %for.body305
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc324

if.end312:                                        ; preds = %for.body305
  %59 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %10, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %51)
  %cmp314 = icmp ult i32 %60, %51
  br i1 %cmp314, label %if.end312.for.inc324_crit_edge, label %if.end317

if.end312.for.inc324_crit_edge:                   ; preds = %if.end312
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc324

if.end317:                                        ; preds = %if.end312
  %61 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %stats, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %62, i64 %conv319)
  %cmp320 = icmp ult i64 %62, %conv319
  br i1 %cmp320, label %if.end317.for.inc324_crit_edge, label %if.end317.found_flex_bg_crit_edge

if.end317.found_flex_bg_crit_edge:                ; preds = %if.end317
  call void @__sanitizer_cov_trace_pc() #11
  br label %found_flex_bg

if.end317.for.inc324_crit_edge:                   ; preds = %if.end317
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc324

for.inc324:                                       ; preds = %if.end317.for.inc324_crit_edge, %if.end312.for.inc324_crit_edge, %for.body305.for.inc324_crit_edge
  %inc325 = add nuw i32 %i.2576, 1
  %exitcond.not = icmp eq i32 %inc325, %ngroups.0
  br i1 %exitcond.not, label %for.inc324.fallback_crit_edge, label %for.inc324.for.body305_crit_edge

for.inc324.for.body305_crit_edge:                 ; preds = %for.inc324
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body305

for.inc324.fallback_crit_edge:                    ; preds = %for.inc324
  call void @__sanitizer_cov_trace_pc() #11
  br label %fallback

fallback:                                         ; preds = %for.inc324.fallback_crit_edge, %if.end268.fallback_crit_edge, %for.inc265.fallback_crit_edge, %for.body250.fallback_crit_edge, %for.end.fallback_crit_edge, %if.end216.fallback_crit_edge
  %div327 = udiv i32 %conv, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp333584.not = icmp eq i32 %5, 0
  br label %fallback_retry

fallback_retry:                                   ; preds = %for.end351.fallback_retry_crit_edge, %fallback
  %avefreei.0 = phi i32 [ %div327, %fallback ], [ 0, %for.end351.fallback_retry_crit_edge ]
  %63 = ptrtoint ptr %i_block_group to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %i_block_group, align 8
  br i1 %cmp333584.not, label %fallback_retry.for.end351_crit_edge, label %fallback_retry.for.body335_crit_edge

fallback_retry.for.body335_crit_edge:             ; preds = %fallback_retry
  br label %for.body335

fallback_retry.for.end351_crit_edge:              ; preds = %fallback_retry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end351

for.body335:                                      ; preds = %for.inc349.for.body335_crit_edge, %fallback_retry.for.body335_crit_edge
  %i.3585 = phi i32 [ %inc350, %for.inc349.for.body335_crit_edge ], [ 0, %fallback_retry.for.body335_crit_edge ]
  %add336 = add i32 %i.3585, %64
  %rem337 = urem i32 %add336, %5
  %call338 = call ptr @ext4_get_group_desc(ptr noundef %sb, i32 noundef %rem337, ptr noundef null) #9
  %tobool339.not = icmp eq ptr %call338, null
  br i1 %tobool339.not, label %for.body335.for.inc349_crit_edge, label %if.then340

for.body335.for.inc349_crit_edge:                 ; preds = %for.body335
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc349

if.then340:                                       ; preds = %for.body335
  %call341 = call i32 @ext4_free_inodes_count(ptr noundef %sb, ptr noundef nonnull %call338) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call341)
  %tobool342.not = icmp eq i32 %call341, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %call341, i32 %avefreei.0)
  %cmp344.not = icmp ult i32 %call341, %avefreei.0
  %or.cond544 = select i1 %tobool342.not, i1 true, i1 %cmp344.not
  br i1 %or.cond544, label %if.then340.for.inc349_crit_edge, label %if.then340.cleanup.sink.split_crit_edge

if.then340.cleanup.sink.split_crit_edge:          ; preds = %if.then340
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.then340.for.inc349_crit_edge:                  ; preds = %if.then340
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc349

for.inc349:                                       ; preds = %if.then340.for.inc349_crit_edge, %for.body335.for.inc349_crit_edge
  %inc350 = add nuw i32 %i.3585, 1
  %exitcond594.not = icmp eq i32 %inc350, %5
  br i1 %exitcond594.not, label %for.inc349.for.end351_crit_edge, label %for.inc349.for.body335_crit_edge

for.inc349.for.body335_crit_edge:                 ; preds = %for.inc349
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body335

for.inc349.for.end351_crit_edge:                  ; preds = %for.inc349
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end351

for.end351:                                       ; preds = %for.inc349.for.end351_crit_edge, %fallback_retry.for.end351_crit_edge
  %tobool352.not = icmp eq i32 %avefreei.0, 0
  br i1 %tobool352.not, label %for.end351.cleanup_crit_edge, label %for.end351.fallback_retry_crit_edge

for.end351.fallback_retry_crit_edge:              ; preds = %for.end351
  call void @__sanitizer_cov_trace_pc() #11
  br label %fallback_retry

for.end351.cleanup_crit_edge:                     ; preds = %for.end351
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.then340.cleanup.sink.split_crit_edge, %land.lhs.true259.cleanup.sink.split_crit_edge, %found_flex_bg.cleanup.sink.split_crit_edge
  %rem337.lcssa.sink = phi i32 [ %grp.3, %found_flex_bg.cleanup.sink.split_crit_edge ], [ %rem337, %if.then340.cleanup.sink.split_crit_edge ], [ %add251, %land.lhs.true259.cleanup.sink.split_crit_edge ]
  %65 = ptrtoint ptr %group to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %rem337.lcssa.sink, ptr %group, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.end351.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cleanup.sink.split ], [ -1, %for.end351.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %hinfo) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %stats) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @find_inode_bit(ptr noundef %sb, i32 noundef %group, ptr nocapture noundef readonly %bitmap, ptr nocapture noundef %ino) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 47
  %2 = ptrtoint ptr %s_journal to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_journal, align 8
  %s_inodes_per_group = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %s_inodes_per_group to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_inodes_per_group, align 16
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %bitmap, i32 0, i32 5
  %6 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %b_data, align 4
  %8 = ptrtoint ptr %ino to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ino, align 4
  %call.i50 = tail call i32 @_find_next_zero_bit_le(ptr noundef %7, i32 noundef %5, i32 noundef %9) #9
  %10 = ptrtoint ptr %ino to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call.i50, ptr %ino, align 4
  %11 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_fs_info.i, align 16
  %s_inodes_per_group651 = getelementptr inbounds %struct.ext4_sb_info, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %s_inodes_per_group651 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %s_inodes_per_group651, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i50, i32 %14)
  %cmp7.not52 = icmp ult i32 %call.i50, %14
  br i1 %cmp7.not52, label %if.end.lr.ph, label %entry.not_found_crit_edge

entry.not_found_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %not_found

if.end.lr.ph:                                     ; preds = %entry
  %cmp = icmp eq ptr %3, null
  %s_bdev.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  br i1 %cmp, label %if.end.lr.ph.if.end_crit_edge, label %if.end.lr.ph.cleanup_crit_edge

if.end.lr.ph.cleanup_crit_edge:                   ; preds = %if.end.lr.ph
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.lr.ph.if.end_crit_edge:                    ; preds = %if.end.lr.ph
  br label %if.end

next:                                             ; preds = %if.then10
  %15 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %b_data, align 4
  %17 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_fs_info.i, align 16
  %s_inodes_per_group3 = getelementptr inbounds %struct.ext4_sb_info, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %s_inodes_per_group3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %s_inodes_per_group3, align 16
  %21 = ptrtoint ptr %ino to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ino, align 4
  %call.i = tail call i32 @_find_next_zero_bit_le(ptr noundef %16, i32 noundef %20, i32 noundef %22) #9
  %23 = ptrtoint ptr %ino to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call.i, ptr %ino, align 4
  %24 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %s_fs_info.i, align 16
  %s_inodes_per_group6 = getelementptr inbounds %struct.ext4_sb_info, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %s_inodes_per_group6 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %s_inodes_per_group6, align 16
  %cmp7.not = icmp ult i32 %call.i, %27
  br i1 %cmp7.not, label %next.if.end_crit_edge, label %next.not_found_crit_edge

next.not_found_crit_edge:                         ; preds = %next
  call void @__sanitizer_cov_trace_pc() #11
  br label %not_found

next.if.end_crit_edge:                            ; preds = %next
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %next.if.end_crit_edge, %if.end.lr.ph.if.end_crit_edge
  %28 = phi ptr [ %25, %next.if.end_crit_edge ], [ %12, %if.end.lr.ph.if.end_crit_edge ]
  %call.i53 = phi i32 [ %call.i, %next.if.end_crit_edge ], [ %call.i50, %if.end.lr.ph.if.end_crit_edge ]
  %s_inodes_per_block.i = getelementptr inbounds %struct.ext4_sb_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %s_inodes_per_block.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %s_inodes_per_block.i, align 4
  %call1.i = tail call ptr @ext4_get_group_desc(ptr noundef %sb, i32 noundef %group, ptr noundef null) #9
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i, !prof !125

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %call5.i = tail call i64 @ext4_inode_table(ptr noundef %sb, ptr noundef nonnull %call1.i) #9
  %call.i53.frozen = freeze i32 %call.i53
  %.frozen = freeze i32 %30
  %div.i = sdiv i32 %call.i53.frozen, %.frozen
  %conv.i = sext i32 %div.i to i64
  %add.i = add i64 %call5.i, %conv.i
  %31 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %s_bdev.i.i, align 4
  %33 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %s_blocksize.i.i, align 16
  %call.i.i = tail call ptr @__find_get_block(ptr noundef %32, i64 noundef %add.i, i32 noundef %34) #9
  %tobool7.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool7.not.i, label %if.end.i.cleanup_crit_edge, label %lor.lhs.false.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end.i
  %35 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %call.i.i, align 4
  %and1.i.i.i = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool9.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool9.not.i, label %lor.lhs.false.i.recently_deleted.exit.thread46_crit_edge, label %if.end11.i

lor.lhs.false.i.recently_deleted.exit.thread46_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %recently_deleted.exit.thread46

if.end11.i:                                       ; preds = %lor.lhs.false.i
  %37 = mul i32 %div.i, %.frozen
  %rem.i.decomposed = sub i32 %call.i53.frozen, %37
  %38 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %s_fs_info.i, align 16
  %s_inode_size.i = getelementptr inbounds %struct.ext4_sb_info, ptr %39, i32 0, i32 29
  %40 = ptrtoint ptr %s_inode_size.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %s_inode_size.i, align 4
  %mul.i = mul i32 %41, %rem.i.decomposed
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %call.i.i, i32 0, i32 5
  %42 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %b_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %43, i32 %mul.i
  %i_dtime.i = getelementptr inbounds %struct.ext4_inode, ptr %add.ptr.i, i32 0, i32 6
  %44 = ptrtoint ptr %i_dtime.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %i_dtime.i, align 4
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #9
  %call13.i = tail call i64 @ktime_get_real_seconds() #9
  %conv14.i = trunc i64 %call13.i to i32
  %47 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %call.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool20.not.i = icmp ne i32 %45, 0
  %sub.i = sub i32 %46, %conv14.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  %or.cond.i = select i1 %tobool20.not.i, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %recently_deleted.exit, label %if.end11.i.recently_deleted.exit.thread46_crit_edge

if.end11.i.recently_deleted.exit.thread46_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %recently_deleted.exit.thread46

recently_deleted.exit.thread46:                   ; preds = %if.end11.i.recently_deleted.exit.thread46_crit_edge, %lor.lhs.false.i.recently_deleted.exit.thread46_crit_edge
  tail call void @__brelse(ptr noundef nonnull %call.i.i) #9
  br label %cleanup

recently_deleted.exit:                            ; preds = %if.end11.i
  %49 = and i32 %48, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool16.not.i = icmp eq i32 %49, 0
  %spec.select.neg58.i = select i1 %tobool16.not.i, i32 -60, i32 -360
  %add23.neg.i = sub i32 %conv14.i, %46
  %sub24.i = add i32 %add23.neg.i, %spec.select.neg58.i
  tail call void @__brelse(ptr noundef nonnull %call.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub24.i)
  %tobool9.not = icmp sgt i32 %sub24.i, -1
  br i1 %tobool9.not, label %recently_deleted.exit.cleanup_crit_edge, label %if.then10

recently_deleted.exit.cleanup_crit_edge:          ; preds = %recently_deleted.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10:                                        ; preds = %recently_deleted.exit
  %50 = ptrtoint ptr %ino to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ino, align 4
  %add = add i32 %51, 1
  store i32 %add, ptr %ino, align 4
  %52 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %s_fs_info.i, align 16
  %s_inodes_per_group12 = getelementptr inbounds %struct.ext4_sb_info, ptr %53, i32 0, i32 4
  %54 = ptrtoint ptr %s_inodes_per_group12 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %s_inodes_per_group12, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %55)
  %cmp13 = icmp ult i32 %add, %55
  br i1 %cmp13, label %next, label %if.then10.not_found_crit_edge

if.then10.not_found_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %not_found

not_found:                                        ; preds = %if.then10.not_found_crit_edge, %next.not_found_crit_edge, %entry.not_found_crit_edge
  %recently_deleted_ino.1 = phi i32 [ %5, %entry.not_found_crit_edge ], [ %51, %if.then10.not_found_crit_edge ], [ %51, %next.not_found_crit_edge ]
  %56 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %s_fs_info.i, align 16
  %s_inodes_per_group18 = getelementptr inbounds %struct.ext4_sb_info, ptr %57, i32 0, i32 4
  %58 = ptrtoint ptr %s_inodes_per_group18 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %s_inodes_per_group18, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %recently_deleted_ino.1, i32 %59)
  %cmp19.not = icmp ult i32 %recently_deleted_ino.1, %59
  br i1 %cmp19.not, label %if.end21, label %not_found.cleanup_crit_edge

not_found.cleanup_crit_edge:                      ; preds = %not_found
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end21:                                         ; preds = %not_found
  call void @__sanitizer_cov_trace_pc() #11
  %60 = ptrtoint ptr %ino to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %recently_deleted_ino.1, ptr %ino, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %not_found.cleanup_crit_edge, %recently_deleted.exit.cleanup_crit_edge, %recently_deleted.exit.thread46, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end.lr.ph.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end21 ], [ 0, %not_found.cleanup_crit_edge ], [ 1, %recently_deleted.exit.thread46 ], [ 1, %if.end.lr.ph.cleanup_crit_edge ], [ 1, %if.end.i.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %recently_deleted.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ext4_journal_start_sb(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_set_inode_flags(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @insert_inode_locked(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ext4_has_metadata_csum(ptr nocapture noundef readonly %sb) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %and.i = and i32 %5, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 0
  br i1 %cmp.i.not, label %entry.if.end32_crit_edge, label %land.rhs

entry.if.end32_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

land.rhs:                                         ; preds = %entry
  %s_chksum_driver = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 121
  %6 = ptrtoint ptr %s_chksum_driver to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_chksum_driver, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %land.rhs5, label %land.rhs.if.end32_crit_edge

land.rhs.if.end32_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

land.rhs5:                                        ; preds = %land.rhs
  %.b50 = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  br i1 %.b50, label %land.rhs5.if.end32_crit_edge, label %if.then, !prof !117

land.rhs5.if.end32_crit_edge:                     ; preds = %land.rhs5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then:                                          ; preds = %land.rhs5
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 3289, i32 noundef 9, ptr noundef null) #9
  br label %if.end32

if.end32:                                         ; preds = %if.then, %land.rhs5.if.end32_crit_edge, %land.rhs.if.end32_crit_edge, %entry.if.end32_crit_edge
  %8 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_es.i53 = getelementptr inbounds %struct.ext4_sb_info, ptr %9, i32 0, i32 15
  %10 = ptrtoint ptr %s_es.i53 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_es.i53, align 4
  %s_feature_ro_compat.i54 = getelementptr inbounds %struct.ext4_super_block, ptr %11, i32 0, i32 30
  %12 = ptrtoint ptr %s_feature_ro_compat.i54 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_feature_ro_compat.i54, align 4
  %and.i55 = and i32 %13, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i55)
  %cmp.i56.not = icmp eq i32 %and.i55, 0
  br i1 %cmp.i56.not, label %if.end32.land.end44_crit_edge, label %land.rhs41

if.end32.land.end44_crit_edge:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end44

land.rhs41:                                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  %s_chksum_driver43 = getelementptr inbounds %struct.ext4_sb_info, ptr %9, i32 0, i32 121
  %14 = ptrtoint ptr %s_chksum_driver43 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_chksum_driver43, align 4
  %cmp = icmp ne ptr %15, null
  %phi.cast = zext i1 %cmp to i32
  br label %land.end44

land.end44:                                       ; preds = %land.rhs41, %if.end32.land.end44_crit_edge
  %16 = phi i32 [ 0, %if.end32.land.end44_crit_edge ], [ %phi.cast, %land.rhs41 ]
  ret i32 %16
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ext4_chksum(ptr nocapture noundef readonly %sbi, i32 noundef %crc, ptr noundef %address) unnamed_addr #4 align 64 {
entry:
  %desc = alloca %struct.anon.95, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %desc) #9
  %0 = getelementptr inbounds %struct.anon.95, ptr %desc, i32 0, i32 1
  %s_chksum_driver = getelementptr inbounds %struct.ext4_sb_info, ptr %sbi, i32 0, i32 121
  %1 = call ptr @memset(ptr %desc, i32 255, i32 16)
  %2 = ptrtoint ptr %s_chksum_driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_chksum_driver, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp.not = icmp eq i32 %5, 4
  br i1 %cmp.not, label %do.end7, label %do.body2, !prof !117

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #9, !srcloc !141
  unreachable

do.end7:                                          ; preds = %entry
  %6 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %desc, align 8
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %crc, ptr %0, align 8
  %call11 = call i32 @crypto_shash_update(ptr noundef nonnull %desc, ptr noundef %address, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %do.end28, label %do.body20, !prof !117

do.body20:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #9, !srcloc !142
  unreachable

do.end28:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %0, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %desc) #9
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dquot_alloc_inode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fscrypt_set_context(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_init_acl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_init_security(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_ext_tree_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_mark_inode_dirty(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ext4_allocate_inode(ptr noundef %inode, ptr noundef %dir, i32 noundef %mode) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_allocate_inode, i32 0, i32 1), ptr blockaddress(@trace_ext4_allocate_inode, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !120

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !104) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !117

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !104) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !143
  %call42 = tail call i32 @__traceiter_ext4_allocate_inode(ptr noundef null, ptr noundef %inode, ptr noundef %dir, i32 noundef %mode) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !144
  %13 = tail call i32 @llvm.read_register.i32(metadata !104) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !104) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !117

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !104) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !123
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_allocate_inode, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_allocate_inode, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_ext4_allocate_inode.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_ext4_allocate_inode.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.29, i32 noundef 214, ptr noundef nonnull @.str.7) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !124
  %31 = tail call i32 @llvm.read_register.i32(metadata !104) #9
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
declare dso_local void @clear_nlink(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_new_inode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dquot_drop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ext4_orphan_get(ptr noundef %sb, i32 noundef %ino) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_es = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %s_es to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_es, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %s_first_ino = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 30
  %7 = ptrtoint ptr %s_first_ino to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_first_ino, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %ino)
  %cmp = icmp ugt i32 %8, %ino
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %ino)
  %cmp2 = icmp ult i32 %6, %ino
  %or.cond = select i1 %cmp, i1 true, i1 %cmp2
  br i1 %or.cond, label %if.end69.thread, label %if.end

if.end69.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %sb, ptr noundef nonnull @__func__.ext4_orphan_get, i32 noundef 1419, i1 noundef zeroext false, i32 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.13, i32 noundef %ino) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub = add i32 %ino, -1
  %s_inodes_per_group = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %s_inodes_per_group to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %s_inodes_per_group, align 16
  %.frozen = freeze i32 %10
  %div = udiv i32 %sub, %.frozen
  %11 = mul i32 %div, %.frozen
  %rem.decomposed = sub i32 %sub, %11
  %call7 = tail call fastcc ptr @ext4_read_inode_bitmap(ptr noundef %sb, i32 noundef %div)
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call7, i32 0, i32 5
  %12 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %b_data, align 4
  %div3.i.i = lshr i32 %rem.decomposed, 5
  %arrayidx.i.i = getelementptr i32, ptr %13, i32 %div3.i.i
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %arrayidx.i.i, align 4
  %xor.i = and i32 %rem.decomposed, 31
  %and.i.i = xor i32 %xor.i, 24
  %16 = shl nuw i32 1, %and.i.i
  %17 = and i32 %15, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not = icmp eq i32 %17, 0
  br i1 %tobool.not, label %bad_orphan.thread, label %if.end14

if.end14:                                         ; preds = %if.end11
  %call15 = tail call ptr @__ext4_iget(ptr noundef %sb, i32 noundef %ino, i32 noundef 0, ptr noundef nonnull @__func__.ext4_orphan_get, i32 noundef 1393) #9
  %cmp.i120 = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i120, label %if.then17, label %if.end20

if.then17:                                        ; preds = %if.end14
  %18 = ptrtoint ptr %call15 to i32
  %sub19 = sub i32 0, %18
  tail call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %sb, ptr noundef nonnull @__func__.ext4_orphan_get, i32 noundef 1398, i1 noundef zeroext false, i32 noundef %sub19, i64 noundef 0, ptr noundef nonnull @.str.12, i32 noundef %ino, i32 noundef %18) #9
  %tobool.not.i = icmp eq ptr %call7, null
  br i1 %tobool.not.i, label %if.then17.cleanup_crit_edge, label %if.then.i

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__brelse(ptr noundef nonnull %call7) #9
  br label %cleanup

if.end20:                                         ; preds = %if.end14
  %19 = getelementptr inbounds %struct.inode, ptr %call15, i32 0, i32 12
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool21.not = icmp eq i32 %21, 0
  br i1 %tobool21.not, label %if.end20.lor.lhs.false24_crit_edge, label %land.lhs.true

if.end20.lor.lhs.false24_crit_edge:               ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false24

land.lhs.true:                                    ; preds = %if.end20
  %call22 = tail call i32 @ext4_can_truncate(ptr noundef %call15) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %land.lhs.true.bad_orphan_crit_edge, label %land.lhs.true.lor.lhs.false24_crit_edge

land.lhs.true.lor.lhs.false24_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false24

land.lhs.true.bad_orphan_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %bad_orphan

lor.lhs.false24:                                  ; preds = %land.lhs.true.lor.lhs.false24_crit_edge, %if.end20.lor.lhs.false24_crit_edge
  %call25 = tail call zeroext i1 @is_bad_inode(ptr noundef %call15) #9
  br i1 %call25, label %lor.lhs.false24.bad_orphan_crit_edge, label %if.end27

lor.lhs.false24.bad_orphan_crit_edge:             ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #11
  br label %bad_orphan

if.end27:                                         ; preds = %lor.lhs.false24
  %i_dtime = getelementptr i8, ptr %call15, i32 -404
  %22 = ptrtoint ptr %i_dtime to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %i_dtime, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %6)
  %cmp28 = icmp ugt i32 %23, %6
  br i1 %cmp28, label %if.end27.bad_orphan_crit_edge, label %if.end30

if.end27.bad_orphan_crit_edge:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %bad_orphan

if.end30:                                         ; preds = %if.end27
  %tobool.not.i121 = icmp eq ptr %call7, null
  br i1 %tobool.not.i121, label %if.end30.cleanup_crit_edge, label %if.then.i122

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i122:                                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__brelse(ptr noundef nonnull %call7) #9
  br label %cleanup

bad_orphan:                                       ; preds = %if.end27.bad_orphan_crit_edge, %lor.lhs.false24.bad_orphan_crit_edge, %land.lhs.true.bad_orphan_crit_edge
  tail call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %sb, ptr noundef nonnull @__func__.ext4_orphan_get, i32 noundef 1419, i1 noundef zeroext false, i32 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.13, i32 noundef %ino) #9
  %tobool31.not = icmp eq ptr %call7, null
  br i1 %tobool31.not, label %if.end37, label %bad_orphan.if.end37.thread_crit_edge

bad_orphan.if.end37.thread_crit_edge:             ; preds = %bad_orphan
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37.thread

bad_orphan.thread:                                ; preds = %if.end11
  tail call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %sb, ptr noundef nonnull @__func__.ext4_orphan_get, i32 noundef 1419, i1 noundef zeroext false, i32 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.13, i32 noundef %ino) #9
  %tobool31.not157 = icmp eq ptr %call7, null
  br i1 %tobool31.not157, label %bad_orphan.thread.cleanup_crit_edge, label %bad_orphan.thread.if.end37.thread_crit_edge

bad_orphan.thread.if.end37.thread_crit_edge:      ; preds = %bad_orphan.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37.thread

bad_orphan.thread.cleanup_crit_edge:              ; preds = %bad_orphan.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end37:                                         ; preds = %bad_orphan
  %tobool38.not = icmp eq ptr %call15, null
  br i1 %tobool38.not, label %if.end37.cleanup_crit_edge, label %if.end37.do.end42_crit_edge

if.end37.do.end42_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end42

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end37.thread:                                  ; preds = %bad_orphan.thread.if.end37.thread_crit_edge, %bad_orphan.if.end37.thread_crit_edge
  %inode.0159 = phi ptr [ null, %bad_orphan.thread.if.end37.thread_crit_edge ], [ %call15, %bad_orphan.if.end37.thread_crit_edge ]
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %call7, i32 0, i32 3
  %24 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %b_blocknr, align 8
  %26 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %b_data, align 4
  %arrayidx.i.i125 = getelementptr i32, ptr %27, i32 %div3.i.i
  %28 = ptrtoint ptr %arrayidx.i.i125 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %arrayidx.i.i125, align 4
  %shr.i.i128 = lshr i32 %29, %and.i.i
  %and1.i.i129 = and i32 %shr.i.i128, 1
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %rem.decomposed, i64 noundef %25, i32 noundef %and1.i.i129) #12
  %tobool38.not150 = icmp eq ptr %inode.0159, null
  br i1 %tobool38.not150, label %if.end37.thread.if.then.i131_crit_edge, label %if.end37.thread.do.end42_crit_edge

if.end37.thread.do.end42_crit_edge:               ; preds = %if.end37.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end42

if.end37.thread.if.then.i131_crit_edge:           ; preds = %if.end37.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i131

do.end42:                                         ; preds = %if.end37.thread.do.end42_crit_edge, %if.end37.do.end42_crit_edge
  %tobool31.not162 = phi i1 [ false, %if.end37.thread.do.end42_crit_edge ], [ true, %if.end37.do.end42_crit_edge ]
  %inode.0158 = phi ptr [ %inode.0159, %if.end37.thread.do.end42_crit_edge ], [ %call15, %if.end37.do.end42_crit_edge ]
  %call44 = tail call zeroext i1 @is_bad_inode(ptr noundef nonnull %inode.0158) #9
  %conv = zext i1 %call44 to i32
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %conv) #12
  %i_dtime53 = getelementptr i8, ptr %inode.0158, i32 -404
  %30 = ptrtoint ptr %i_dtime53 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %i_dtime53, align 4
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %31) #12
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %6) #12
  %32 = getelementptr inbounds %struct.inode, ptr %inode.0158, i32 0, i32 12
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %34) #12
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp65 = icmp eq i32 %36, 0
  br i1 %cmp65, label %if.then67, label %do.end42.if.end68_crit_edge

do.end42.if.end68_crit_edge:                      ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

if.then67:                                        ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #11
  %i_blocks = getelementptr inbounds %struct.inode, ptr %inode.0158, i32 0, i32 22
  %37 = ptrtoint ptr %i_blocks to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 0, ptr %i_blocks, align 8
  br label %if.end68

if.end68:                                         ; preds = %if.then67, %do.end42.if.end68_crit_edge
  tail call void @iput(ptr noundef nonnull %inode.0158) #9
  br i1 %tobool31.not162, label %if.end68.cleanup_crit_edge, label %if.end68.if.then.i131_crit_edge

if.end68.if.then.i131_crit_edge:                  ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i131

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i131:                                     ; preds = %if.end68.if.then.i131_crit_edge, %if.end37.thread.if.then.i131_crit_edge
  tail call void @__brelse(ptr noundef nonnull %call7) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i131, %if.end68.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %bad_orphan.thread.cleanup_crit_edge, %if.then.i122, %if.end30.cleanup_crit_edge, %if.then.i, %if.then17.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end69.thread
  %retval.0 = phi ptr [ %call7, %if.end.cleanup_crit_edge ], [ %call15, %if.then17.cleanup_crit_edge ], [ %call15, %if.then.i ], [ %call15, %if.end30.cleanup_crit_edge ], [ %call15, %if.then.i122 ], [ inttoptr (i32 -117 to ptr), %if.end68.cleanup_crit_edge ], [ inttoptr (i32 -117 to ptr), %if.end69.thread ], [ inttoptr (i32 -117 to ptr), %if.then.i131 ], [ inttoptr (i32 -117 to ptr), %if.end37.cleanup_crit_edge ], [ inttoptr (i32 -117 to ptr), %bad_orphan.thread.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ext4_iget(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_can_truncate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_bad_inode(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_count_free_inodes(ptr noundef %sb) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_groups_count.i = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %s_groups_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_groups_count.i, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !132
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp10.not = icmp eq i32 %3, 0
  br i1 %cmp10.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %desc_count.012 = phi i32 [ %desc_count.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %i.011 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call1 = tail call ptr @ext4_get_group_desc(ptr noundef %sb, i32 noundef %i.011, ptr noundef null) #9
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 @ext4_free_inodes_count(ptr noundef %sb, ptr noundef nonnull %call1) #9
  %add = add i32 %call2, %desc_count.012
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 1484, i32 noundef 0) #9
  %call.i = tail call i32 @__cond_resched() #9
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %desc_count.1 = phi i32 [ %add, %if.end ], [ %desc_count.012, %for.body.for.inc_crit_edge ]
  %inc = add nuw i32 %i.011, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %desc_count.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %desc_count.1, %for.inc.for.end_crit_edge ]
  ret i32 %desc_count.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_count_dirs(ptr noundef %sb) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_groups_count.i = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %s_groups_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_groups_count.i, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !132
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp12.not = icmp eq i32 %3, 0
  br i1 %cmp12.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry.for.body_crit_edge
  %i.014 = phi i32 [ %inc, %cleanup.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %count.013 = phi i32 [ %count.1, %cleanup.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call1 = tail call ptr @ext4_get_group_desc(ptr noundef %sb, i32 noundef %i.014, ptr noundef null) #9
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 @ext4_used_dirs_count(ptr noundef %sb, ptr noundef nonnull %call1) #9
  %add = add i32 %call2, %count.013
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.body.cleanup_crit_edge
  %count.1 = phi i32 [ %add, %if.end ], [ %count.013, %for.body.cleanup_crit_edge ]
  %inc = add nuw i32 %i.014, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  %count.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %count.1, %cleanup.for.end_crit_edge ]
  ret i32 %count.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_init_inode_table(ptr noundef %sb, i32 noundef %group, i32 noundef %barrier) local_unnamed_addr #2 align 64 {
entry:
  %group_desc_bh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @ext4_get_group_info(ptr noundef %sb, i32 noundef %group)
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %group_desc_bh) #9
  %2 = ptrtoint ptr %group_desc_bh to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %group_desc_bh, align 4, !annotation !116
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %3 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  %call3 = call ptr @ext4_get_group_desc(ptr noundef %sb, i32 noundef %group, ptr noundef nonnull %group_desc_bh) #9
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.out_crit_edge, label %if.end5

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end5:                                          ; preds = %if.end
  %bg_flags = getelementptr inbounds %struct.ext4_group_desc, ptr %call3, i32 0, i32 6
  %5 = ptrtoint ptr %bg_flags to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %bg_flags, align 2
  %7 = and i16 %6, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool6.not = icmp eq i16 %7, 0
  br i1 %tobool6.not, label %if.end8, label %if.end5.out_crit_edge

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end8:                                          ; preds = %if.end5
  %8 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i, align 16
  %s_cluster_ratio.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %s_cluster_ratio.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_cluster_ratio.i.i, align 4
  %mul.i.i = shl i32 %11, 3
  %call10 = call ptr @__ext4_journal_start_sb(ptr noundef %sb, i32 noundef 1542, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef %mul.i.i) #9
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %call10 to i32
  br label %out

if.end14:                                         ; preds = %if.end8
  %alloc_sem = getelementptr inbounds %struct.ext4_group_info, ptr %call, i32 0, i32 8
  call void @down_write(ptr noundef %alloc_sem) #9
  %13 = ptrtoint ptr %bg_flags to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %bg_flags, align 2
  %15 = and i16 %14, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool18.not = icmp eq i16 %15, 0
  br i1 %tobool18.not, label %if.then19, label %if.end14.if.end42_crit_edge

if.end14.if.end42_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.then19:                                        ; preds = %if.end14
  %16 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_fs_info.i, align 16
  %s_inodes_per_group = getelementptr inbounds %struct.ext4_sb_info, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %s_inodes_per_group to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %s_inodes_per_group, align 16
  %call21 = call i32 @ext4_itable_unused_count(ptr noundef %sb, ptr noundef nonnull %call3) #9
  %sub = sub i32 %19, %call21
  %s_inodes_per_block = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %s_inodes_per_block to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %s_inodes_per_block, align 4
  %add = add i32 %21, -1
  %sub22 = add i32 %add, %sub
  %div = udiv i32 %sub22, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div)
  %cmp = icmp slt i32 %div, 0
  br i1 %cmp, label %if.then19.if.then27_crit_edge, label %lor.lhs.false

if.then19.if.then27_crit_edge:                    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then27

lor.lhs.false:                                    ; preds = %if.then19
  %s_itb_per_group = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 5
  %22 = ptrtoint ptr %s_itb_per_group to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %s_itb_per_group, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %23)
  %cmp25 = icmp ugt i32 %div, %23
  br i1 %cmp25, label %lor.lhs.false.if.then27_crit_edge, label %if.end29

lor.lhs.false.if.then27_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then27

if.then27:                                        ; preds = %lor.lhs.false.if.then27_crit_edge, %if.then19.if.then27_crit_edge
  %call28 = call i32 @ext4_itable_unused_count(ptr noundef %sb, ptr noundef nonnull %call3) #9
  call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %sb, ptr noundef nonnull @__func__.ext4_init_inode_table, i32 noundef 1565, i1 noundef zeroext false, i32 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.27, i32 noundef %group, i32 noundef %div, i32 noundef %call28) #9
  br label %err_out

if.end29:                                         ; preds = %lor.lhs.false
  %24 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %s_fs_info.i, align 16
  %s_inodes_per_group31 = getelementptr inbounds %struct.ext4_sb_info, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %s_inodes_per_group31 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %s_inodes_per_group31, align 16
  %mul = mul i32 %27, %group
  %add32 = add i32 %mul, %sub
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %23)
  %cmp34.not = icmp eq i32 %div, %23
  br i1 %cmp34.not, label %if.end29.if.end42_crit_edge, label %land.lhs.true

if.end29.if.end42_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

land.lhs.true:                                    ; preds = %if.end29
  %s_first_ino = getelementptr inbounds %struct.ext4_sb_info, ptr %25, i32 0, i32 30
  %28 = ptrtoint ptr %s_first_ino to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %s_first_ino, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add32, i32 %29)
  %cmp37 = icmp ult i32 %add32, %29
  br i1 %cmp37, label %if.then39, label %land.lhs.true.if.end42_crit_edge

land.lhs.true.if.end42_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.then39:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call40 = call i32 @ext4_itable_unused_count(ptr noundef %sb, ptr noundef nonnull %call3) #9
  call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %sb, ptr noundef nonnull @__func__.ext4_init_inode_table, i32 noundef 1581, i1 noundef zeroext false, i32 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.28, i32 noundef %group, i32 noundef %call40, i32 noundef %add32) #9
  br label %err_out

if.end42:                                         ; preds = %land.lhs.true.if.end42_crit_edge, %if.end29.if.end42_crit_edge, %if.end14.if.end42_crit_edge
  %used_blks.0 = phi i32 [ 0, %if.end14.if.end42_crit_edge ], [ %div, %land.lhs.true.if.end42_crit_edge ], [ %div, %if.end29.if.end42_crit_edge ]
  %call43 = call i64 @ext4_inode_table(ptr noundef %sb, ptr noundef nonnull %call3) #9
  %conv44136 = zext i32 %used_blks.0 to i64
  %add45 = add i64 %call43, %conv44136
  %s_itb_per_group46 = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 5
  %30 = ptrtoint ptr %s_itb_per_group46 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %s_itb_per_group46, align 4
  %sub47 = sub i32 %31, %used_blks.0
  %32 = ptrtoint ptr %group_desc_bh to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %group_desc_bh, align 4
  %call48 = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_init_inode_table, i32 noundef 1592, ptr noundef %call10, ptr noundef %sb, ptr noundef %33, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %if.end42.err_out_crit_edge

if.end42.err_out_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out

if.end51:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %used_blks.0)
  %cmp52 = icmp eq i32 %31, %used_blks.0
  br i1 %cmp52, label %if.end51.skip_zeroout_crit_edge, label %if.end57, !prof !125

if.end51.skip_zeroout_crit_edge:                  ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %skip_zeroout

if.end57:                                         ; preds = %if.end51
  %conv58 = sext i32 %sub47 to i64
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %34 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %s_bdev.i, align 4
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %36 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %s_blocksize_bits.i, align 4
  %conv.i = zext i8 %37 to i32
  %sub.i = add nsw i32 %conv.i, -9
  %sh_prom.i = zext i32 %sub.i to i64
  %shl.i = shl i64 %add45, %sh_prom.i
  %shl5.i = shl i64 %conv58, %sh_prom.i
  %call.i = call i32 @blkdev_issue_zeroout(ptr noundef %35, i64 noundef %shl.i, i64 noundef %shl5.i, i32 noundef 3136, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp60 = icmp slt i32 %call.i, 0
  br i1 %cmp60, label %if.end57.err_out_crit_edge, label %if.end63

if.end57.err_out_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out

if.end63:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %barrier)
  %tobool64.not = icmp eq i32 %barrier, 0
  br i1 %tobool64.not, label %if.end63.skip_zeroout_crit_edge, label %if.then65

if.end63.skip_zeroout_crit_edge:                  ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  br label %skip_zeroout

if.then65:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %s_bdev.i, align 4
  %call66 = call i32 @blkdev_issue_flush(ptr noundef %39) #9
  br label %skip_zeroout

skip_zeroout:                                     ; preds = %if.then65, %if.end63.skip_zeroout_crit_edge, %if.end51.skip_zeroout_crit_edge
  call fastcc void @ext4_lock_group(ptr noundef %sb, i32 noundef %group)
  %40 = ptrtoint ptr %bg_flags to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %bg_flags, align 2
  %42 = or i16 %41, 1024
  store i16 %42, ptr %bg_flags, align 2
  call void @ext4_group_desc_csum_set(ptr noundef %sb, i32 noundef %group, ptr noundef nonnull %call3) #9
  %43 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %s_fs_info.i, align 16
  %s_blockgroup_lock.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %44, i32 0, i32 41
  %45 = ptrtoint ptr %s_blockgroup_lock.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %s_blockgroup_lock.i.i, align 8
  %and.i.i.i = and i32 %group, 15
  %arrayidx.i.i.i = getelementptr [16 x %struct.bgl_lock], ptr %46, i32 0, i32 %and.i.i.i
  call void @_raw_spin_unlock(ptr noundef %arrayidx.i.i.i) #9
  %47 = ptrtoint ptr %group_desc_bh to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %group_desc_bh, align 4
  %call74 = call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_init_inode_table, i32 noundef 1621, ptr noundef %call10, ptr noundef null, ptr noundef %48) #9
  br label %err_out

err_out:                                          ; preds = %skip_zeroout, %if.end57.err_out_crit_edge, %if.end42.err_out_crit_edge, %if.then39, %if.then27
  %ret.0 = phi i32 [ %call48, %if.end42.err_out_crit_edge ], [ %call74, %skip_zeroout ], [ %call.i, %if.end57.err_out_crit_edge ], [ 1, %if.then27 ], [ 1, %if.then39 ]
  call void @up_write(ptr noundef %alloc_sem) #9
  %call76 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_init_inode_table, i32 noundef 1625, ptr noundef %call10) #9
  br label %out

out:                                              ; preds = %err_out, %if.then12, %if.end5.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.1 = phi i32 [ 0, %if.end5.out_crit_edge ], [ %12, %if.then12 ], [ %ret.0, %err_out ], [ 0, %if.end.out_crit_edge ], [ 1, %entry.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %group_desc_bh) #9
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ext4_inode_table(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_issue_flush(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_journal_stop(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_free_inode(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ext4_inode_bitmap(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_warning(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ext4_load_inode_bitmap(ptr noundef %sb, i32 noundef %group) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_load_inode_bitmap, i32 0, i32 1), ptr blockaddress(@trace_ext4_load_inode_bitmap, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !120

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !104) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !117

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !104) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !145
  %call42 = tail call i32 @__traceiter_ext4_load_inode_bitmap(ptr noundef null, ptr noundef %sb, i32 noundef %group) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !146
  %13 = tail call i32 @llvm.read_register.i32(metadata !104) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !104) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !117

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !104) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !123
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_load_inode_bitmap, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_load_inode_bitmap, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_ext4_load_inode_bitmap.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_ext4_load_inode_bitmap.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.29, i32 noundef 1336, ptr noundef nonnull @.str.7) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !124
  %31 = tail call i32 @llvm.read_register.i32(metadata !104) #9
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
declare dso_local i32 @ext4_read_bh(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__getblk_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_buffer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_load_inode_bitmap(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_inode_bitmap_csum_verify(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_add_batch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_request_inode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_acl(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_xattr_set_credits(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4fs_dirhash(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @get_orlov_stats(ptr noundef %sb, i32 noundef %g, i32 noundef %flex_size, ptr nocapture noundef writeonly %stats) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %flex_size)
  %cmp = icmp sgt i32 %flex_size, 1
  br i1 %cmp, label %if.then, label %if.end18

if.then:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !104) #9
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !118
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %if.then.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then.rcu_read_lock.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 696, ptr noundef nonnull @.str.38) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then.rcu_read_lock.exit_crit_edge
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %s_flex_groups = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 113
  %6 = ptrtoint ptr %s_flex_groups to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %s_flex_groups, align 64
  %call2 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end9_crit_edge

rcu_read_lock.exit.do.end9_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end9_crit_edge, label %land.lhs.true5

land.lhs.true.do.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b50 = load i1, ptr @get_orlov_stats.__warned, align 1
  br i1 %.b50, label %land.lhs.true5.do.end9_crit_edge, label %if.then7

land.lhs.true5.do.end9_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9

if.then7:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @get_orlov_stats.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 383, ptr noundef nonnull @.str.7) #9
  br label %do.end9

do.end9:                                          ; preds = %if.then7, %land.lhs.true5.do.end9_crit_edge, %land.lhs.true.do.end9_crit_edge, %rcu_read_lock.exit.do.end9_crit_edge
  %arrayidx = getelementptr ptr, ptr %7, i32 %g
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %call.i54 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i54, label %do.end9.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i57

do.end9.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i57:                                ; preds = %do.end9
  %call1.i55 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i55)
  %tobool.not.i56 = icmp eq i32 %call1.i55, 0
  br i1 %tobool.not.i56, label %land.lhs.true.i57.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i59

land.lhs.true.i57.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i57
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i59:                               ; preds = %land.lhs.true.i57
  %.b4.i58 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i58, label %land.lhs.true2.i59.rcu_read_unlock.exit_crit_edge, label %if.then.i60

land.lhs.true2.i59.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i59
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i60:                                      ; preds = %land.lhs.true2.i59
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 724, ptr noundef nonnull @.str.39) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i60, %land.lhs.true2.i59.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i57.rcu_read_unlock.exit_crit_edge, %do.end9.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !131
  %10 = tail call i32 @llvm.read_register.i32(metadata !104) #9
  %and.i.i.i.i.i61 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i61 to ptr
  %preempt_count.i.i.i.i62 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i62 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i62, align 4
  %sub.i.i.i = add i32 %13, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i62, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  %free_inodes = getelementptr inbounds %struct.flex_groups, ptr %9, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %free_inodes, i32 noundef 4) #9
  %14 = ptrtoint ptr %free_inodes to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %free_inodes, align 4
  %free_inodes13 = getelementptr inbounds %struct.orlov_stats, ptr %stats, i32 0, i32 1
  %16 = ptrtoint ptr %free_inodes13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %free_inodes13, align 8
  %call.i.i51 = tail call zeroext i1 @__kasan_check_read(ptr noundef %9, i32 noundef 8) #9
  %call.i52 = tail call i64 @generic_atomic64_read(ptr noundef %9) #9
  %17 = ptrtoint ptr %stats to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %call.i52, ptr %stats, align 8
  %used_dirs = getelementptr inbounds %struct.flex_groups, ptr %9, i32 0, i32 2
  %call.i.i53 = tail call zeroext i1 @__kasan_check_read(ptr noundef %used_dirs, i32 noundef 4) #9
  %18 = ptrtoint ptr %used_dirs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %used_dirs, align 4
  %used_dirs17 = getelementptr inbounds %struct.orlov_stats, ptr %stats, i32 0, i32 2
  %20 = ptrtoint ptr %used_dirs17 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %used_dirs17, align 4
  br label %cleanup

if.end18:                                         ; preds = %entry
  %call19 = tail call ptr @ext4_get_group_desc(ptr noundef %sb, i32 noundef %g, ptr noundef null) #9
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %if.else, label %if.then21

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %call22 = tail call i32 @ext4_free_inodes_count(ptr noundef %sb, ptr noundef nonnull %call19) #9
  %free_inodes23 = getelementptr inbounds %struct.orlov_stats, ptr %stats, i32 0, i32 1
  %21 = ptrtoint ptr %free_inodes23 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call22, ptr %free_inodes23, align 8
  %call24 = tail call i32 @ext4_free_group_clusters(ptr noundef %sb, ptr noundef nonnull %call19) #9
  %conv = zext i32 %call24 to i64
  %22 = ptrtoint ptr %stats to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %conv, ptr %stats, align 8
  %call26 = tail call i32 @ext4_used_dirs_count(ptr noundef %sb, ptr noundef nonnull %call19) #9
  %used_dirs27 = getelementptr inbounds %struct.orlov_stats, ptr %stats, i32 0, i32 2
  %23 = ptrtoint ptr %used_dirs27 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call26, ptr %used_dirs27, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %24 = call ptr @memset(ptr %stats, i32 0, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then21, %rcu_read_unlock.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_free_group_clusters(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__find_get_block(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_allocate_inode(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_issue_zeroout(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !13, !15, !16, !18, !20, !22, !23, !25, !27, !29, !31, !33, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !60, !62, !63, !64, !66, !67, !69, !70, !72, !74, !76, !78, !79, !81, !82, !84, !85, !87, !88, !89, !91, !92, !94, !95, !97, !99, !101, !103}
!llvm.named.register.sp = !{!104}
!llvm.module.flags = !{!105, !106, !107, !108, !109, !110, !111, !112}
!llvm.ident = !{!113}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ext4/ialloc.c", i32 251, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @ext4_free_inode._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @ext4_free_inode._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/ext4/ialloc.c", i32 256, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/ext4/ialloc.c", i32 262, i32 3}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/ext4/ialloc.c", i32 282, i32 3}
!13 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!14 = !{!"../fs/ext4/ialloc.c", i32 340, i32 8}
!15 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/ext4/ialloc.c", i32 355, i32 3}
!18 = !{ptr @__func__.ext4_mark_inode_used, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/ext4/ialloc.c", i32 784, i32 8}
!20 = !{ptr @__func__.__ext4_new_inode, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/ext4/ialloc.c", i32 1071, i32 4}
!22 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../fs/ext4/ialloc.c", i32 1221, i32 16}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../fs/ext4/ialloc.c", i32 1245, i32 15}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/ext4/ialloc.c", i32 1277, i32 3}
!29 = !{ptr @__func__.ext4_orphan_get, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/ext4/ialloc.c", i32 1393, i32 10}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/ext4/ialloc.c", i32 1396, i32 3}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/ext4/ialloc.c", i32 1419, i32 2}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/ext4/ialloc.c", i32 1421, i32 3}
!37 = !{ptr @ext4_orphan_get._entry, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @ext4_orphan_get._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/ext4/ialloc.c", i32 1425, i32 3}
!41 = !{ptr @ext4_orphan_get._entry.15, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @ext4_orphan_get._entry_ptr.17, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/ext4/ialloc.c", i32 1427, i32 3}
!45 = !{ptr @ext4_orphan_get._entry.18, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @ext4_orphan_get._entry_ptr.20, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/ext4/ialloc.c", i32 1429, i32 3}
!49 = !{ptr @ext4_orphan_get._entry.21, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @ext4_orphan_get._entry_ptr.23, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/ext4/ialloc.c", i32 1430, i32 3}
!53 = !{ptr @ext4_orphan_get._entry.24, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @ext4_orphan_get._entry_ptr.26, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @__func__.ext4_init_inode_table, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/ext4/ialloc.c", i32 1561, i32 4}
!57 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/ext4/ialloc.c", i32 1577, i32 4}
!60 = distinct !{null, !61, !"__already_done", i1 false, i1 false}
!61 = !{!"../include/trace/events/ext4.h", i32 140, i32 1}
!62 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!63 = distinct !{null, !61, !"__warned", i1 false, i1 false}
!64 = distinct !{null, !65, !"__already_done", i1 false, i1 false}
!65 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!66 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @__func__.ext4_read_inode_bitmap, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/ext4/ialloc.c", i32 139, i32 3}
!69 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/ext4/ialloc.c", i32 147, i32 3}
!72 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/ext4/ialloc.c", i32 167, i32 4}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../include/linux/buffer_head.h", i32 366, i32 2}
!76 = distinct !{null, !77, !"__already_done", i1 false, i1 false}
!77 = !{!"../include/trace/events/ext4.h", i32 1331, i32 1}
!78 = distinct !{null, !77, !"__warned", i1 false, i1 false}
!79 = !{ptr @__func__.ext4_validate_inode_bitmap, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../fs/ext4/ialloc.c", i32 105, i32 3}
!81 = !{ptr @.str.35, !80, !"<string literal>", i1 false, i1 false}
!82 = distinct !{null, !83, !"__warned", i1 false, i1 false}
!83 = !{!"../fs/ext4/ext4.h", i32 3367, i32 14}
!84 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!85 = distinct !{null, !86, !"__warned", i1 false, i1 false}
!86 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!87 = !{ptr @.str.37, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.38, !86, !"<string literal>", i1 false, i1 false}
!89 = distinct !{null, !90, !"__warned", i1 false, i1 false}
!90 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!91 = !{ptr @.str.39, !90, !"<string literal>", i1 false, i1 false}
!92 = distinct !{null, !93, !"__already_done", i1 false, i1 false}
!93 = !{!"../include/trace/events/ext4.h", i32 169, i32 1}
!94 = distinct !{null, !93, !"__warned", i1 false, i1 false}
!95 = distinct !{null, !96, !"__warned", i1 false, i1 false}
!96 = !{!"../include/linux/mnt_idmapping.h", i32 212, i32 49}
!97 = distinct !{null, !98, !"__warned", i1 false, i1 false}
!98 = !{!"../fs/ext4/ialloc.c", i32 382, i32 28}
!99 = distinct !{null, !100, !"__already_done", i1 false, i1 false}
!100 = !{!"../fs/ext4/ext4.h", i32 3288, i32 2}
!101 = distinct !{null, !102, !"__already_done", i1 false, i1 false}
!102 = !{!"../include/trace/events/ext4.h", i32 191, i32 1}
!103 = distinct !{null, !102, !"__warned", i1 false, i1 false}
!104 = !{!"sp"}
!105 = !{i32 1, !"wchar_size", i32 2}
!106 = !{i32 1, !"min_enum_size", i32 4}
!107 = !{i32 8, !"branch-target-enforcement", i32 0}
!108 = !{i32 8, !"sign-return-address", i32 0}
!109 = !{i32 8, !"sign-return-address-all", i32 0}
!110 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!111 = !{i32 7, !"uwtable", i32 1}
!112 = !{i32 7, !"frame-pointer", i32 2}
!113 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!114 = !{i64 2153857219}
!115 = !{i64 2148246307, i64 2148246333, i64 2148246362, i64 2148246396, i64 2148246427, i64 2148246450}
!116 = !{!"auto-init"}
!117 = !{!"branch_weights", i32 2000, i32 1}
!118 = !{i64 2149532189}
!119 = !{i64 2148243842, i64 2148243868, i64 2148243897, i64 2148243931, i64 2148243962, i64 2148243985}
!120 = !{i64 2149094183, i64 2149094188, i64 2149094201, i64 2149094245, i64 2149094279, i64 2149094300}
!121 = !{i64 2155750202}
!122 = !{i64 2155750405}
!123 = !{i64 2149540748}
!124 = !{i64 2149541784}
!125 = !{!"branch_weights", i32 1, i32 2000}
!126 = !{i64 2148252700, i64 2148252732, i64 2148252761, i64 2148252795, i64 2148252826, i64 2148252849}
!127 = !{i64 2148341781}
!128 = !{i64 728881, i64 728906, i64 728928, i64 728944, i64 728956, i64 728976, i64 729000, i64 729016, i64 729028}
!129 = !{i64 2148243449}
!130 = !{i64 2155119730, i64 2155120210, i64 2155119767, i64 2155119823, i64 2155119857, i64 2155119881, i64 2155119922, i64 2155119943, i64 2155119971, i64 2155120005}
!131 = !{i64 2149532455}
!132 = !{i64 2155126317}
!133 = !{i8 0, i8 2}
!134 = !{i64 2157841828, i64 2157842310, i64 2157841865, i64 2157841921, i64 2157841955, i64 2157841979, i64 2157842020, i64 2157842041, i64 2157842069, i64 2157842103}
!135 = !{i64 2155766482}
!136 = !{i64 2155766699}
!137 = !{i64 2148333373}
!138 = !{i64 2148247837, i64 2148247869, i64 2148247898, i64 2148247932, i64 2148247963, i64 2148247986}
!139 = !{i64 2150406736}
!140 = !{i64 2148040859, i64 2148041139, i64 2148041473, i64 2148041807}
!141 = !{i64 2155103313, i64 2155103793, i64 2155103350, i64 2155103406, i64 2155103440, i64 2155103464, i64 2155103505, i64 2155103526, i64 2155103554, i64 2155103588}
!142 = !{i64 2155104955, i64 2155105435, i64 2155104992, i64 2155105048, i64 2155105082, i64 2155105106, i64 2155105147, i64 2155105168, i64 2155105196, i64 2155105230}
!143 = !{i64 2155787428}
!144 = !{i64 2155787661}
!145 = !{i64 2156589887}
!146 = !{i64 2156590112}
