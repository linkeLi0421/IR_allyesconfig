; ModuleID = '/llk/IR_all_yes/fs/ext4/xattr.c_pt.bc'
source_filename = "../fs/ext4/xattr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xattr_handler = type { ptr, ptr, i32, ptr, ptr, ptr }
%struct.ext4_xattr_ibody_find = type { %struct.ext4_xattr_search, %struct.ext4_iloc }
%struct.ext4_xattr_search = type { ptr, ptr, ptr, ptr, i32 }
%struct.ext4_iloc = type { ptr, i32, i32 }
%struct.ext4_xattr_block_find = type { %struct.ext4_xattr_search, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.5 }
%union.anon.5 = type { [5 x %struct.uid_gid_extent] }
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
%struct.ctl_table_header = type { %union.anon.15, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.15 = type { %struct.anon.16 }
%struct.anon.16 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.74, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.75, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.76, ptr, %struct.address_space, %struct.list_head, %union.anon.77, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.74 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.75 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.76 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.77 = type { ptr }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
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
%struct.ext4_xattr_ibody_header = type { i32 }
%struct.ext4_xattr_entry = type { i8, i8, i16, i32, i32, i32, [0 x i8] }
%struct.anon.94 = type { %struct.shash_desc, [4 x i8], [4 x i8] }
%struct.shash_desc = type { ptr, [4 x i8], [0 x ptr] }
%struct.ext4_xattr_header = type { i32, i32, i32, i32, i32, [3 x i32] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.80, %struct.list_head, %struct.list_head, %union.anon.81 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.78 }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { %struct.spinlock, i32 }
%union.anon.80 = type { %struct.list_head }
%union.anon.81 = type { %struct.hlist_node }
%struct.ext4_super_block = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i16, i16, i32, i16, i16, i32, i32, i32, [16 x i8], [16 x i8], [64 x i8], i32, i8, i8, i16, [16 x i8], i32, i32, i32, [4 x i32], i8, i8, i16, i32, i32, i32, [17 x i32], i32, i32, i32, i16, i16, i32, i16, i16, i64, i32, i8, i8, i8, i8, i64, i32, i32, i64, i32, i32, i32, i32, i64, [32 x i8], i32, i32, i32, i32, i64, [32 x i8], [64 x i8], i32, i32, i32, [2 x i32], [4 x i8], [16 x i8], i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, [94 x i32], i32 }
%struct.ext4_xattr_info = type { ptr, ptr, i32, i32, i32 }
%struct.ext4_map_blocks = type { i64, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.56, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.31 }
%struct.llist_node = type { ptr }
%union.anon.31 = type { i32 }
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
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.33 }
%union.anon.33 = type { %struct.anon.34 }
%struct.anon.34 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.56 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.mb_cache_entry = type { %struct.list_head, %struct.hlist_bl_node, %struct.atomic_t, i32, i8, i64 }
%struct.jbd2_journal_handle = type { %union.anon.93, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.anon.93 = type { ptr }
%struct.journal_s = type { i32, i32, i32, %struct.mutex, ptr, ptr, i32, %struct.rwlock_t, i32, %struct.mutex, ptr, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.mutex, [64 x ptr], %struct.shrinker, %struct.percpu_counter, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i64, [56 x i8], ptr, i32, %struct.atomic_t, %struct.spinlock, ptr, i32, i32, i32, i32, [16 x i8], ptr, i32, i32, i32, %struct.timer_list, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, i32, i32, i32, i64, i32, i32, ptr, ptr, ptr, %struct.spinlock, ptr, %struct.transaction_stats_s, i32, ptr, ptr, i32, %struct.lockdep_map, ptr, ptr }
%struct.transaction_stats_s = type { i32, i32, %struct.transaction_run_stats_s }
%struct.transaction_run_stats_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ext4_xattr_inode_array = type { i32, [0 x ptr] }

@ext4_xattr_user_handler = external dso_local constant %struct.xattr_handler, align 4
@ext4_xattr_trusted_handler = external dso_local constant %struct.xattr_handler, align 4
@posix_acl_access_xattr_handler = external dso_local constant %struct.xattr_handler, align 4
@posix_acl_default_xattr_handler = external dso_local constant %struct.xattr_handler, align 4
@ext4_xattr_security_handler = external dso_local constant %struct.xattr_handler, align 4
@ext4_xattr_hurd_handler = external dso_local constant %struct.xattr_handler, align 4
@ext4_xattr_handlers = dso_local global { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @ext4_xattr_user_handler, ptr @ext4_xattr_trusted_handler, ptr @posix_acl_access_xattr_handler, ptr @posix_acl_default_xattr_handler, ptr @ext4_xattr_security_handler, ptr @ext4_xattr_hurd_handler, ptr null], [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&ea_inode->i_rwsem\00", [45 x i8] zeroinitializer }, align 32
@__func__.ext4_xattr_ibody_get = private unnamed_addr constant [21 x i8] c"ext4_xattr_ibody_get\00", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/ext4/xattr.c\00", [16 x i8] zeroinitializer }, align 32
@__func__.ext4_get_inode_usage = private unnamed_addr constant [21 x i8] c"ext4_get_inode_usage\00", align 1
@__func__.ext4_xattr_ibody_find = private unnamed_addr constant [22 x i8] c"ext4_xattr_ibody_find\00", align 1
@__const.ext4_xattr_set_handle.is = private unnamed_addr constant %struct.ext4_xattr_ibody_find { %struct.ext4_xattr_search { ptr null, ptr null, ptr null, ptr null, i32 -61 }, %struct.ext4_iloc zeroinitializer }, align 4
@__const.ext4_xattr_set_handle.bs = private unnamed_addr constant %struct.ext4_xattr_block_find { %struct.ext4_xattr_search { ptr null, ptr null, ptr null, ptr null, i32 -61 }, ptr null }, align 4
@ext4_xattr_set_handle.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.ext4_xattr_set = private unnamed_addr constant [15 x i8] c"ext4_xattr_set\00", align 1
@ext4_expand_extra_isize_ea.mnt_count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__func__.ext4_expand_extra_isize_ea = private unnamed_addr constant [27 x i8] c"ext4_expand_extra_isize_ea\00", align 1
@.str.2 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Unable to expand inode %lu. Delete some EAs or run e2fsck.\00", [37 x i8] zeroinitializer }, align 32
@__func__.ext4_xattr_delete_inode = private unnamed_addr constant [24 x i8] c"ext4_xattr_delete_inode\00", align 1
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ensure credits (error %d)\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"inode loc (error %d)\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"write access (error %d)\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"block %llu read error\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mark inode dirty (error %d)\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"corrupted in-inode xattr\00", [39 x i8] zeroinitializer }, align 32
@__func__.xattr_find_entry = private unnamed_addr constant [17 x i8] c"xattr_find_entry\00", align 1
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"corrupted xattr entries\00", [40 x i8] zeroinitializer }, align 32
@__func__.ext4_xattr_inode_get = private unnamed_addr constant [21 x i8] c"ext4_xattr_inode_get\00", align 1
@.str.10 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ea_inode file size=%llu entry size=%zu\00", [57 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"EA inode hash validation failed\00", [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__func__.ext4_xattr_block_get = private unnamed_addr constant [21 x i8] c"ext4_xattr_block_get\00", align 1
@__func__.ext4_xattr_ibody_list = private unnamed_addr constant [22 x i8] c"ext4_xattr_ibody_list\00", align 1
@ext4_xattr_handler_map = internal constant { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr null, ptr @ext4_xattr_user_handler, ptr @posix_acl_access_xattr_handler, ptr @posix_acl_default_xattr_handler, ptr @ext4_xattr_trusted_handler, ptr null, ptr @ext4_xattr_security_handler, ptr null, ptr null, ptr null, ptr @ext4_xattr_hurd_handler], [52 x i8] zeroinitializer }, align 32
@__func__.ext4_xattr_block_list = private unnamed_addr constant [22 x i8] c"ext4_xattr_block_list\00", align 1
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"corrupted xattr block %llu\00", [37 x i8] zeroinitializer }, align 32
@ext4_has_metadata_csum.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/ext4/ext4.h\00", [17 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/buffer_head.h\00", [36 x i8] zeroinitializer }, align 32
@__func__.ext4_xattr_set_entry = private unnamed_addr constant [21 x i8] c"ext4_xattr_set_entry\00", align 1
@ext4_xattr_set_entry.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dec ref new_ea_inode err=%d\00", [36 x i8] zeroinitializer }, align 32
@ext4_xattr_inode_cache_find.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.ext4_xattr_inode_cache_find = private unnamed_addr constant [28 x i8] c"ext4_xattr_inode_cache_find\00", align 1
@ext4_xattr_inode_update_ref.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"EA inode %lu ref_count=%lld\00", [36 x i8] zeroinitializer }, align 32
@ext4_xattr_inode_update_ref.__already_done.17 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"EA inode %lu i_nlink=%u\00", [40 x i8] zeroinitializer }, align 32
@ext4_xattr_inode_update_ref.__already_done.19 = internal unnamed_addr global i1 false, section ".data.once", align 1
@ext4_xattr_inode_update_ref.__already_done.20 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.ext4_xattr_inode_update_ref = private unnamed_addr constant [28 x i8] c"ext4_xattr_inode_update_ref\00", align 1
@.str.21 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ext4_mark_iloc_dirty() failed ret=%d\00", [59 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@ext4_file_inode_operations = external dso_local constant %struct.inode_operations, align 128
@ext4_file_operations = external dso_local constant %struct.file_operations, align 4
@__func__.ext4_xattr_inode_create = private unnamed_addr constant [24 x i8] c"ext4_xattr_inode_create\00", align 1
@__func__.ext4_xattr_inode_write = private unnamed_addr constant [23 x i8] c"ext4_xattr_inode_write\00", align 1
@ext4_xattr_inode_write.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ext4_getblk() return bh = NULL\00", [33 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@ext4_update_i_disksize.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.ext4_xattr_get_block = private unnamed_addr constant [21 x i8] c"ext4_xattr_get_block\00", align 1
@__func__.ext4_xattr_block_find = private unnamed_addr constant [22 x i8] c"ext4_xattr_block_find\00", align 1
@__func__.ext4_xattr_block_set = private unnamed_addr constant [21 x i8] c"ext4_xattr_block_set\00", align 1
@ext4_xattr_block_set.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ext4_xattr_block_set.__already_done.24 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dec ref error=%d\00", [47 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bad block %llu\00", [17 x i8] zeroinitializer }, align 32
@__func__.ext4_xattr_block_cache_find = private unnamed_addr constant [28 x i8] c"ext4_xattr_block_cache_find\00", align 1
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"block %lu read error\00", [43 x i8] zeroinitializer }, align 32
@__func__.ext4_xattr_inode_inc_ref_all = private unnamed_addr constant [29 x i8] c"ext4_xattr_inode_inc_ref_all\00", align 1
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"inc ref error %d\00", [47 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cleanup ea_ino %u iget error %d\00", [32 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cleanup dec ref error %d\00", [39 x i8] zeroinitializer }, align 32
@__func__.ext4_xattr_update_super_block = private unnamed_addr constant [30 x i8] c"ext4_xattr_update_super_block\00", align 1
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"data\00", [27 x i8] zeroinitializer }, align 32
@__func__.ext4_xattr_inode_dec_ref_all = private unnamed_addr constant [29 x i8] c"ext4_xattr_inode_dec_ref_all\00", align 1
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Expand inode array err=%d\00", [38 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Ensure credits err=%d\00", [42 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Re-get write access err=%d\00", [37 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ea_inode dec ref err=%d\00", [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"handle dirty metadata err=%d\00", [35 x i8] zeroinitializer }, align 32
@__func__.ext4_xattr_restart_fn = private unnamed_addr constant [22 x i8] c"ext4_xattr_restart_fn\00", align 1
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Handle metadata (error %d)\00", [37 x i8] zeroinitializer }, align 32
@__func__.ext4_xattr_inode_iget = private unnamed_addr constant [22 x i8] c"ext4_xattr_inode_iget\00", align 1
@.str.38 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"error while reading EA inode %lu err=%d\00", [56 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"error while reading EA inode %lu is_bad_inode\00", [50 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"EA inode %lu does not have EXT4_EA_INODE_FL flag\00", [47 x i8] zeroinitializer }, align 32
@__func__.ext4_xattr_release_block = private unnamed_addr constant [25 x i8] c"ext4_xattr_release_block\00", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967268]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967268]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967179]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967179]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967268]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967268]
@___asan_gen_.46 = private unnamed_addr constant [20 x i8] c"ext4_xattr_handlers\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 99, i32 29 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 126, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 815, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant [10 x i8] c"mnt_count\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 2679, i32 22 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 2771, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 2845, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 2854, i32 4 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 2861, i32 4 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 2881, i32 5 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 2919, i32 4 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 275, i32 8 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 296, i32 4 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 483, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 498, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant [23 x i8] c"ext4_xattr_handler_map\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 86, i32 43 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 251, i32 8 }
@___asan_gen_.95 = private unnamed_addr constant [18 x i8] c"../fs/ext4/ext4.h\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 3288, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant [31 x i8] c"../include/linux/buffer_head.h\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 366, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 1677, i32 6 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 996, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 1000, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 1036, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 1373, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 271, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 2093, i32 6 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 2165, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 3044, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 1074, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 1095, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 1102, i32 4 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 2629, i32 30 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 1157, i32 4 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 1168, i32 4 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 1176, i32 5 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 1185, i32 4 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 1215, i32 4 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 1119, i32 4 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 392, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 399, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.164 = private constant [19 x i8] c"../fs/ext4/xattr.c\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 407, i32 3 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @ext4_xattr_handlers, ptr @.str, ptr @.str.1, ptr @ext4_expand_extra_isize_ea.mnt_count, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @ext4_xattr_handler_map, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_xattr_handlers to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_expand_extra_isize_ea.mnt_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_xattr_handler_map to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ext4_xattr_inode_set_class(ptr noundef %ea_inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dep_map = getelementptr inbounds %struct.inode, ptr %ea_inode, i32 0, i32 25, i32 6
  %0 = ptrtoint ptr %dep_map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dep_map, align 4
  %wait_type_inner = getelementptr inbounds %struct.inode, ptr %ea_inode, i32 0, i32 25, i32 6, i32 4
  %2 = ptrtoint ptr %wait_type_inner to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %wait_type_inner, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map, ptr noundef nonnull @.str, ptr noundef %1, i32 noundef 1, i8 noundef zeroext %3, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_xattr_ibody_get(ptr noundef %inode, i32 noundef %name_index, ptr noundef readonly %name, ptr noundef %buffer, i32 noundef %buffer_size) local_unnamed_addr #0 align 64 {
entry:
  %iloc = alloca %struct.ext4_iloc, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %iloc) #13
  %0 = ptrtoint ptr %iloc to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %iloc, align 4, !annotation !157
  %1 = getelementptr inbounds %struct.ext4_iloc, ptr %iloc, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !157
  %3 = getelementptr inbounds %struct.ext4_iloc, ptr %iloc, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !157
  %i_state_flags.i = getelementptr i8, ptr %inode, i32 -384
  %5 = ptrtoint ptr %i_state_flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %i_state_flags.i, align 4
  %7 = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.cleanup55_crit_edge, label %if.end

entry.cleanup55_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup55

if.end:                                           ; preds = %entry
  %call2 = call i32 @ext4_get_inode_loc(ptr noundef %inode, ptr noundef nonnull %iloc) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup55_crit_edge

if.end.cleanup55_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup55

if.end5:                                          ; preds = %if.end
  %8 = ptrtoint ptr %iloc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iloc, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %b_data.i, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 %13
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 128
  %i_extra_isize = getelementptr i8, ptr %inode, i32 988
  %14 = ptrtoint ptr %i_extra_isize to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %i_extra_isize, align 4
  %conv = zext i16 %15 to i32
  %add.ptr8 = getelementptr i8, ptr %add.ptr, i32 %conv
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %16 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 33
  %18 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %s_fs_info.i, align 16
  %s_inode_size = getelementptr inbounds %struct.ext4_sb_info, ptr %19, i32 0, i32 29
  %20 = ptrtoint ptr %s_inode_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %s_inode_size, align 4
  %add.ptr10 = getelementptr i8, ptr %add.ptr.i, i32 %21
  %call11 = call fastcc i32 @__xattr_check_inode(ptr noundef %inode, ptr noundef %add.ptr8, ptr noundef %add.ptr10, ptr noundef nonnull @__func__.ext4_xattr_ibody_get, i32 noundef 593)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end5.cleanup54_crit_edge

if.end5.cleanup54_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup54

if.end14:                                         ; preds = %if.end5
  %add.ptr15 = getelementptr %struct.ext4_xattr_ibody_header, ptr %add.ptr8, i32 1
  %cmp2.i = icmp eq ptr %name, null
  br i1 %cmp2.i, label %if.end14.cleanup54_crit_edge, label %if.end.i

if.end14.cleanup54_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup54

if.end.i:                                         ; preds = %if.end14
  %call.i = call i32 @strlen(ptr noundef nonnull %name) #16
  %22 = ptrtoint ptr %add.ptr15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp3.not54.i = icmp eq i32 %23, 0
  br i1 %cmp3.not54.i, label %if.end.i.cleanup54_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.cleanup54_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup54

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %entry1.055.i = phi ptr [ %add.ptr.i88, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr15, %if.end.i.for.body.i_crit_edge ]
  %24 = ptrtoint ptr %entry1.055.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %entry1.055.i, align 4
  %conv.i = zext i8 %25 to i32
  %add4.i = add nuw nsw i32 %conv.i, 19
  %and.i = and i32 %add4.i, 508
  %add.ptr.i88 = getelementptr i8, ptr %entry1.055.i, i32 %and.i
  %cmp5.not.i = icmp ult ptr %add.ptr.i88, %add.ptr10
  br i1 %cmp5.not.i, label %if.end8.i, label %if.then7.i

if.then7.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %inode, ptr noundef nonnull @__func__.xattr_find_entry, i32 noundef 296, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.9) #13
  br label %cleanup54

if.end8.i:                                        ; preds = %for.body.i
  %e_name_index.i = getelementptr inbounds %struct.ext4_xattr_entry, ptr %entry1.055.i, i32 0, i32 1
  %26 = ptrtoint ptr %e_name_index.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %e_name_index.i, align 1
  %conv9.i = zext i8 %27 to i32
  %sub.i = sub i32 %name_index, %conv9.i
  call void @__sanitizer_cov_trace_cmp4(i32 %conv9.i, i32 %name_index)
  %tobool.not.i = icmp eq i32 %conv9.i, %name_index
  %sub13.i = sub i32 %call.i, %conv.i
  %spec.select.i = select i1 %tobool.not.i, i32 %sub13.i, i32 %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %tobool15.not.i = icmp eq i32 %spec.select.i, 0
  br i1 %tobool15.not.i, label %if.end18.i, label %if.end8.i.for.inc.i_crit_edge

if.end8.i.for.inc.i_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.end18.i:                                       ; preds = %if.end8.i
  %e_name.i = getelementptr inbounds %struct.ext4_xattr_entry, ptr %entry1.055.i, i32 0, i32 6
  %bcmp = call i32 @bcmp(ptr nonnull %name, ptr %e_name.i, i32 %call.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp22.i = icmp eq i32 %bcmp, 0
  br i1 %cmp22.i, label %if.end19, label %if.end18.i.for.inc.i_crit_edge

if.end18.i.for.inc.i_crit_edge:                   ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end18.i.for.inc.i_crit_edge, %if.end8.i.for.inc.i_crit_edge
  %28 = ptrtoint ptr %add.ptr.i88 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %add.ptr.i88, align 4
  %cmp3.not.i = icmp eq i32 %29, 0
  br i1 %cmp3.not.i, label %for.inc.i.cleanup54_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.cleanup54_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup54

if.end19:                                         ; preds = %if.end18.i
  %e_value_size = getelementptr inbounds %struct.ext4_xattr_entry, ptr %entry1.055.i, i32 0, i32 4
  %30 = ptrtoint ptr %e_value_size to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %e_value_size, align 4
  %32 = call i32 @llvm.bswap.i32(i32 %31)
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %32)
  %cmp = icmp ugt i32 %32, 16777216
  br i1 %cmp, label %if.end19.cleanup54_crit_edge, label %if.end24, !prof !158

if.end19.cleanup54_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup54

if.end24:                                         ; preds = %if.end19
  %tobool25.not = icmp eq ptr %buffer, null
  br i1 %tobool25.not, label %if.end24.if.end53_crit_edge, label %if.then26

if.end24.if.end53_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end53

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %buffer_size)
  %cmp27 = icmp ugt i32 %32, %buffer_size
  br i1 %cmp27, label %if.then26.cleanup54_crit_edge, label %if.end30

if.then26.cleanup54_crit_edge:                    ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup54

if.end30:                                         ; preds = %if.then26
  %e_value_inum = getelementptr inbounds %struct.ext4_xattr_entry, ptr %entry1.055.i, i32 0, i32 3
  %33 = ptrtoint ptr %e_value_inum to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %e_value_inum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool31.not = icmp eq i32 %34, 0
  br i1 %tobool31.not, label %if.else, label %if.then32

if.then32:                                        ; preds = %if.end30
  %call33 = call fastcc i32 @ext4_xattr_inode_get(ptr noundef %inode, ptr noundef %entry1.055.i, ptr noundef nonnull %buffer, i32 noundef %32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.then32.if.end53_crit_edge, label %if.then32.cleanup54_crit_edge

if.then32.cleanup54_crit_edge:                    ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup54

if.then32.if.end53_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end53

if.else:                                          ; preds = %if.end30
  %e_value_offs = getelementptr inbounds %struct.ext4_xattr_entry, ptr %entry1.055.i, i32 0, i32 2
  %35 = ptrtoint ptr %e_value_offs to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %e_value_offs, align 2
  %37 = call i16 @llvm.bswap.i16(i16 %36)
  %conv38 = zext i16 %37 to i32
  %add.ptr39 = getelementptr i8, ptr %add.ptr15, i32 %conv38
  %add.ptr40 = getelementptr i8, ptr %add.ptr39, i32 %32
  %cmp41 = icmp ugt ptr %add.ptr40, %add.ptr10
  br i1 %cmp41, label %if.else.cleanup54_crit_edge, label %cleanup.thread, !prof !158

if.else.cleanup54_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup54

cleanup.thread:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %38 = call ptr @memcpy(ptr %buffer, ptr %add.ptr39, i32 %32)
  br label %if.end53

if.end53:                                         ; preds = %cleanup.thread, %if.then32.if.end53_crit_edge, %if.end24.if.end53_crit_edge
  br label %cleanup54

cleanup54:                                        ; preds = %if.end53, %if.else.cleanup54_crit_edge, %if.then32.cleanup54_crit_edge, %if.then26.cleanup54_crit_edge, %if.end19.cleanup54_crit_edge, %for.inc.i.cleanup54_crit_edge, %if.then7.i, %if.end.i.cleanup54_crit_edge, %if.end14.cleanup54_crit_edge, %if.end5.cleanup54_crit_edge
  %error.0 = phi i32 [ %call11, %if.end5.cleanup54_crit_edge ], [ -34, %if.end19.cleanup54_crit_edge ], [ -34, %if.then26.cleanup54_crit_edge ], [ %call33, %if.then32.cleanup54_crit_edge ], [ %32, %if.end53 ], [ -34, %if.else.cleanup54_crit_edge ], [ -61, %if.end.i.cleanup54_crit_edge ], [ -22, %if.end14.cleanup54_crit_edge ], [ -117, %if.then7.i ], [ -61, %for.inc.i.cleanup54_crit_edge ]
  %39 = ptrtoint ptr %iloc to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %iloc, align 4
  %tobool.not.i89 = icmp eq ptr %40, null
  br i1 %tobool.not.i89, label %cleanup54.cleanup55_crit_edge, label %if.then.i

cleanup54.cleanup55_crit_edge:                    ; preds = %cleanup54
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup55

if.then.i:                                        ; preds = %cleanup54
  call void @__sanitizer_cov_trace_pc() #15
  call void @__brelse(ptr noundef nonnull %40) #13
  br label %cleanup55

cleanup55:                                        ; preds = %if.then.i, %cleanup54.cleanup55_crit_edge, %if.end.cleanup55_crit_edge, %entry.cleanup55_crit_edge
  %retval.0 = phi i32 [ -61, %entry.cleanup55_crit_edge ], [ %call2, %if.end.cleanup55_crit_edge ], [ %error.0, %cleanup54.cleanup55_crit_edge ], [ %error.0, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %iloc) #13
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_get_inode_loc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__xattr_check_inode(ptr noundef %inode, ptr noundef %header, ptr noundef %end, ptr noundef %function, i32 noundef %line) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sub.ptr.lhs.cast = ptrtoint ptr %end to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %header to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.ptr.sub)
  %cmp = icmp ult i32 %sub.ptr.sub, 8
  br i1 %cmp, label %entry.if.then3_crit_edge, label %lor.lhs.false

entry.if.then3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %header, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 746, i32 %1)
  %cmp1.not = icmp eq i32 %1, 746
  br i1 %cmp1.not, label %if.end, label %lor.lhs.false.if.then3_crit_edge

lor.lhs.false.if.then3_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3

if.end:                                           ; preds = %lor.lhs.false
  %add.ptr = getelementptr %struct.ext4_xattr_ibody_header, ptr %header, i32 1
  br label %while.cond.i

while.cond.i:                                     ; preds = %cleanup.i.while.cond.i_crit_edge, %if.end
  %e.0.i = phi ptr [ %add.ptr, %if.end ], [ %add.ptr.i, %cleanup.i.while.cond.i_crit_edge ]
  %2 = ptrtoint ptr %e.0.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %e.0.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not.i = icmp eq i32 %3, 0
  br i1 %cmp.not.i, label %while.cond13.preheader.i, label %while.body.i

while.cond13.preheader.i:                         ; preds = %while.cond.i
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp14.not101.i = icmp eq i32 %5, 0
  br i1 %cmp14.not101.i, label %while.cond13.preheader.i.if.end4_crit_edge, label %while.body17.lr.ph.i

while.cond13.preheader.i.if.end4_crit_edge:       ; preds = %while.cond13.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

while.body17.lr.ph.i:                             ; preds = %while.cond13.preheader.i
  %sub.ptr.rhs.cast.i = ptrtoint ptr %add.ptr to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast.i
  %add.ptr34.i = getelementptr i8, ptr %e.0.i, i32 4
  br label %while.body17.i

while.body.i:                                     ; preds = %while.cond.i
  %6 = ptrtoint ptr %e.0.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %e.0.i, align 4
  %conv.i = zext i8 %7 to i32
  %add2.i = add nuw nsw i32 %conv.i, 19
  %and.i = and i32 %add2.i, 508
  %add.ptr.i = getelementptr i8, ptr %e.0.i, i32 %and.i
  %cmp3.not.i = icmp ult ptr %add.ptr.i, %end
  br i1 %cmp3.not.i, label %cleanup.i, label %while.body.i.if.then3_crit_edge

while.body.i.if.then3_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3

cleanup.i:                                        ; preds = %while.body.i
  %e_name.i = getelementptr inbounds %struct.ext4_xattr_entry, ptr %e.0.i, i32 0, i32 6
  %call.i = tail call i32 @strnlen(ptr noundef %e_name.i, i32 noundef %conv.i) #16
  %cmp9.not.i = icmp eq i32 %call.i, %conv.i
  br i1 %cmp9.not.i, label %cleanup.i.while.cond.i_crit_edge, label %cleanup.i.if.then3_crit_edge

cleanup.i.if.then3_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3

cleanup.i.while.cond.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i

while.body17.i:                                   ; preds = %cleanup63.i.while.body17.i_crit_edge, %while.body17.lr.ph.i
  %entry.addr.0102.i = phi ptr [ %add.ptr, %while.body17.lr.ph.i ], [ %add.ptr62.i, %cleanup63.i.while.body17.i_crit_edge ]
  %e_value_size.i = getelementptr inbounds %struct.ext4_xattr_entry, ptr %entry.addr.0102.i, i32 0, i32 4
  %8 = ptrtoint ptr %e_value_size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %e_value_size.i, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %10)
  %cmp18.i = icmp ugt i32 %10, 16777216
  br i1 %cmp18.i, label %while.body17.i.if.then3_crit_edge, label %if.end21.i

while.body17.i.if.then3_crit_edge:                ; preds = %while.body17.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3

if.end21.i:                                       ; preds = %while.body17.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp22.not.i = icmp eq i32 %9, 0
  br i1 %cmp22.not.i, label %if.end21.i.cleanup63.i_crit_edge, label %land.lhs.true.i

if.end21.i.cleanup63.i_crit_edge:                 ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup63.i

land.lhs.true.i:                                  ; preds = %if.end21.i
  %e_value_inum.i = getelementptr inbounds %struct.ext4_xattr_entry, ptr %entry.addr.0102.i, i32 0, i32 3
  %11 = ptrtoint ptr %e_value_inum.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %e_value_inum.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp24.i = icmp eq i32 %12, 0
  br i1 %cmp24.i, label %if.then26.i, label %land.lhs.true.i.cleanup63.i_crit_edge

land.lhs.true.i.cleanup63.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup63.i

if.then26.i:                                      ; preds = %land.lhs.true.i
  %e_value_offs.i = getelementptr inbounds %struct.ext4_xattr_entry, ptr %entry.addr.0102.i, i32 0, i32 2
  %13 = ptrtoint ptr %e_value_offs.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %e_value_offs.i, align 2
  %15 = tail call i16 @llvm.bswap.i16(i16 %14) #13
  %conv27.i = zext i16 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %conv27.i)
  %cmp28.i = icmp slt i32 %sub.ptr.sub.i, %conv27.i
  br i1 %cmp28.i, label %if.then26.i.if.then3_crit_edge, label %if.end31.i

if.then26.i.if.then3_crit_edge:                   ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3

if.end31.i:                                       ; preds = %if.then26.i
  %add.ptr33.i = getelementptr i8, ptr %add.ptr, i32 %conv27.i
  %cmp35.i = icmp ult ptr %add.ptr33.i, %add.ptr34.i
  br i1 %cmp35.i, label %if.end31.i.if.then3_crit_edge, label %lor.lhs.false.i

if.end31.i.if.then3_crit_edge:                    ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3

lor.lhs.false.i:                                  ; preds = %if.end31.i
  %sub.ptr.rhs.cast38.i = ptrtoint ptr %add.ptr33.i to i32
  %sub.ptr.sub39.i = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast38.i
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %sub.ptr.sub39.i)
  %cmp40.i = icmp ugt i32 %10, %sub.ptr.sub39.i
  br i1 %cmp40.i, label %lor.lhs.false.i.if.then3_crit_edge, label %lor.lhs.false42.i

lor.lhs.false.i.if.then3_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3

lor.lhs.false42.i:                                ; preds = %lor.lhs.false.i
  %add43.i = add nuw nsw i32 %10, 3
  %and44.i = and i32 %add43.i, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %and44.i, i32 %sub.ptr.sub39.i)
  %cmp48.i = icmp ugt i32 %and44.i, %sub.ptr.sub39.i
  br i1 %cmp48.i, label %lor.lhs.false42.i.if.then3_crit_edge, label %lor.lhs.false42.i.cleanup63.i_crit_edge

lor.lhs.false42.i.cleanup63.i_crit_edge:          ; preds = %lor.lhs.false42.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup63.i

lor.lhs.false42.i.if.then3_crit_edge:             ; preds = %lor.lhs.false42.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3

cleanup63.i:                                      ; preds = %lor.lhs.false42.i.cleanup63.i_crit_edge, %land.lhs.true.i.cleanup63.i_crit_edge, %if.end21.i.cleanup63.i_crit_edge
  %16 = ptrtoint ptr %entry.addr.0102.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %entry.addr.0102.i, align 4
  %conv58.i = zext i8 %17 to i32
  %add60.i = add nuw nsw i32 %conv58.i, 19
  %and61.i = and i32 %add60.i, 508
  %add.ptr62.i = getelementptr i8, ptr %entry.addr.0102.i, i32 %and61.i
  %18 = ptrtoint ptr %add.ptr62.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr62.i, align 4
  %cmp14.not.i = icmp eq i32 %19, 0
  br i1 %cmp14.not.i, label %cleanup63.i.if.end4_crit_edge, label %cleanup63.i.while.body17.i_crit_edge

cleanup63.i.while.body17.i_crit_edge:             ; preds = %cleanup63.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body17.i

cleanup63.i.if.end4_crit_edge:                    ; preds = %cleanup63.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.then3:                                         ; preds = %lor.lhs.false42.i.if.then3_crit_edge, %lor.lhs.false.i.if.then3_crit_edge, %if.end31.i.if.then3_crit_edge, %if.then26.i.if.then3_crit_edge, %while.body17.i.if.then3_crit_edge, %cleanup.i.if.then3_crit_edge, %while.body.i.if.then3_crit_edge, %lor.lhs.false.if.then3_crit_edge, %entry.if.then3_crit_edge
  tail call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %inode, ptr noundef %function, i32 noundef %line, i64 noundef 0, i32 noundef 117, ptr noundef nonnull @.str.8) #13
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %cleanup63.i.if.end4_crit_edge, %while.cond13.preheader.i.if.end4_crit_edge
  %error.014 = phi i32 [ -117, %if.then3 ], [ 0, %while.cond13.preheader.i.if.end4_crit_edge ], [ 0, %cleanup63.i.if.end4_crit_edge ]
  ret i32 %error.014
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ext4_xattr_inode_get(ptr nocapture noundef readonly %inode, ptr noundef readonly %entry1, ptr noundef %buffer, i32 noundef %size) unnamed_addr #0 align 64 {
entry:
  %desc.i.i.i = alloca %struct.anon.94, align 8
  %ea_inode = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %s_ea_inode_cache = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 128
  %4 = ptrtoint ptr %s_ea_inode_cache to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_ea_inode_cache, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ea_inode) #13
  %6 = ptrtoint ptr %ea_inode to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %ea_inode, align 4, !annotation !157
  %e_value_inum = getelementptr inbounds %struct.ext4_xattr_entry, ptr %entry1, i32 0, i32 3
  %7 = ptrtoint ptr %e_value_inum to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %e_value_inum, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %e_hash = getelementptr inbounds %struct.ext4_xattr_entry, ptr %entry1, i32 0, i32 5
  %10 = ptrtoint ptr %e_hash to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %e_hash, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %call = call fastcc i32 @ext4_xattr_inode_iget(ptr noundef %inode, i32 noundef %9, i32 noundef %12, ptr noundef nonnull %ea_inode)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %ea_inode to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %ea_inode, align 4
  br label %out

if.end:                                           ; preds = %entry
  %14 = ptrtoint ptr %ea_inode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ea_inode, align 4
  %call2 = tail call fastcc i64 @i_size_read(ptr noundef %15)
  %conv = zext i32 %size to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %call2, i64 %conv)
  %cmp.not = icmp eq i64 %call2, %conv
  br i1 %cmp.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call5 = tail call fastcc i64 @i_size_read(ptr noundef %15)
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning_inode(ptr noundef %15, ptr noundef nonnull @__func__.ext4_xattr_inode_get, i32 noundef 485, ptr noundef nonnull @.str.10, i64 noundef %call5, i32 noundef %size) #13
  br label %out

if.end6:                                          ; preds = %if.end
  %call7 = tail call fastcc i32 @ext4_xattr_inode_read(ptr noundef %15, ptr noundef %buffer, i32 noundef %size)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.out_crit_edge

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end10:                                         ; preds = %if.end6
  %i_state_flags.i = getelementptr i8, ptr %15, i32 -384
  %16 = ptrtoint ptr %i_state_flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %i_state_flags.i, align 4
  %18 = and i32 %17, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool12.not = icmp eq i32 %18, 0
  br i1 %tobool12.not, label %if.then13, label %if.end10.out_crit_edge

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then13:                                        ; preds = %if.end10
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 8
  %19 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %20, i32 0, i32 33
  %21 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_csum_seed.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %22, i32 0, i32 122
  %23 = ptrtoint ptr %s_csum_seed.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %s_csum_seed.i.i, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %desc.i.i.i) #13
  %25 = getelementptr inbounds %struct.anon.94, ptr %desc.i.i.i, i32 0, i32 1
  %s_chksum_driver.i.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %22, i32 0, i32 121
  %26 = call ptr @memset(ptr %desc.i.i.i, i32 255, i32 16)
  %27 = ptrtoint ptr %s_chksum_driver.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %s_chksum_driver.i.i.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %30)
  %cmp.not.i.i.i = icmp eq i32 %30, 4
  br i1 %cmp.not.i.i.i, label %do.end7.i.i.i, label %do.body2.i.i.i, !prof !159

do.body2.i.i.i:                                   ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #13, !srcloc !160
  unreachable

do.end7.i.i.i:                                    ; preds = %if.then13
  %31 = ptrtoint ptr %desc.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %desc.i.i.i, align 8
  %32 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %24, ptr %25, align 8
  %call11.i.i.i = call i32 @crypto_shash_update(ptr noundef nonnull %desc.i.i.i, ptr noundef %buffer, i32 noundef %size) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i.i)
  %tobool12.not.i.i.i = icmp eq i32 %call11.i.i.i, 0
  br i1 %tobool12.not.i.i.i, label %ext4_xattr_inode_hash.exit.i, label %do.body20.i.i.i, !prof !159

do.body20.i.i.i:                                  ; preds = %do.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #13, !srcloc !161
  unreachable

ext4_xattr_inode_hash.exit.i:                     ; preds = %do.end7.i.i.i
  %33 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %25, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %desc.i.i.i) #13
  %i_atime.i.i = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 15
  %35 = ptrtoint ptr %i_atime.i.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %i_atime.i.i, align 8
  %conv.i.i = trunc i64 %36 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %conv.i.i)
  %cmp.not.i = icmp eq i32 %34, %conv.i.i
  br i1 %cmp.not.i, label %if.end.i, label %ext4_xattr_inode_hash.exit.i.if.then16_crit_edge

ext4_xattr_inode_hash.exit.i.if.then16_crit_edge: ; preds = %ext4_xattr_inode_hash.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then16

if.end.i:                                         ; preds = %ext4_xattr_inode_hash.exit.i
  %tobool.not.i = icmp eq ptr %entry1, null
  br i1 %tobool.not.i, label %if.end.i.if.end17_crit_edge, label %if.then4.i

if.end.i.if.end17_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.then4.i:                                       ; preds = %if.end.i
  %37 = ptrtoint ptr %entry1 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %entry1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not18.i.i = icmp eq i8 %38, 0
  br i1 %tobool.not18.i.i, label %if.then4.i.while.cond2.preheader.i.i_crit_edge, label %while.body.i.preheader.i

if.then4.i.while.cond2.preheader.i.i_crit_edge:   ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond2.preheader.i.i

while.body.i.preheader.i:                         ; preds = %if.then4.i
  %conv.i = zext i8 %38 to i32
  %e_name.i = getelementptr inbounds %struct.ext4_xattr_entry, ptr %entry1, i32 0, i32 6
  br label %while.body.i.i

while.cond2.preheader.i.i:                        ; preds = %while.body.i.i.while.cond2.preheader.i.i_crit_edge, %if.then4.i.while.cond2.preheader.i.i_crit_edge
  %hash.0.lcssa.i.i = phi i32 [ 0, %if.then4.i.while.cond2.preheader.i.i_crit_edge ], [ %xor1.i.i, %while.body.i.i.while.cond2.preheader.i.i_crit_edge ]
  %xor816.i.i = call i32 @llvm.fshl.i32(i32 %hash.0.lcssa.i.i, i32 %hash.0.lcssa.i.i, i32 16) #13
  %xor10.i.i = xor i32 %xor816.i.i, %34
  %39 = call i32 @llvm.bswap.i32(i32 %xor10.i.i) #13
  %40 = ptrtoint ptr %e_hash to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %e_hash, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %41)
  %cmp7.not.i = icmp eq i32 %39, %41
  br i1 %cmp7.not.i, label %while.cond2.preheader.i.i.if.end17_crit_edge, label %while.cond2.preheader.i.i.if.then16_crit_edge

while.cond2.preheader.i.i.if.then16_crit_edge:    ; preds = %while.cond2.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then16

while.cond2.preheader.i.i.if.end17_crit_edge:     ; preds = %while.cond2.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.i.preheader.i
  %hash.021.i.i = phi i32 [ %xor1.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ 0, %while.body.i.preheader.i ]
  %name_len.addr.020.i.i = phi i32 [ %dec.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %conv.i, %while.body.i.preheader.i ]
  %name.addr.019.i.i = phi ptr [ %incdec.ptr.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %e_name.i, %while.body.i.preheader.i ]
  %dec.i.i = add nsw i32 %name_len.addr.020.i.i, -1
  %xor17.i.i = call i32 @llvm.fshl.i32(i32 %hash.021.i.i, i32 %hash.021.i.i, i32 5) #13
  %incdec.ptr.i.i = getelementptr i8, ptr %name.addr.019.i.i, i32 1
  %42 = ptrtoint ptr %name.addr.019.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %name.addr.019.i.i, align 1
  %conv.i19.i = zext i8 %43 to i32
  %xor1.i.i = xor i32 %xor17.i.i, %conv.i19.i
  %tobool.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i, label %while.body.i.i.while.cond2.preheader.i.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i.i

while.body.i.i.while.cond2.preheader.i.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond2.preheader.i.i

if.then16:                                        ; preds = %while.cond2.preheader.i.i.if.then16_crit_edge, %ext4_xattr_inode_hash.exit.i.if.then16_crit_edge
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning_inode(ptr noundef %15, ptr noundef nonnull @__func__.ext4_xattr_inode_get, i32 noundef 499, ptr noundef nonnull @.str.11) #13
  br label %out

if.end17:                                         ; preds = %while.cond2.preheader.i.i.if.end17_crit_edge, %if.end.i.if.end17_crit_edge
  %tobool18.not = icmp eq ptr %5, null
  br i1 %tobool18.not, label %if.end17.out_crit_edge, label %if.then19

if.end17.out_crit_edge:                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  %i_ino = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 11
  %44 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %i_ino, align 8
  %conv21 = zext i32 %45 to i64
  %call22 = call i32 @mb_cache_entry_create(ptr noundef nonnull %5, i32 noundef 3136, i32 noundef %34, i64 noundef %conv21, i1 noundef zeroext true) #13
  br label %out

out:                                              ; preds = %if.then19, %if.end17.out_crit_edge, %if.then16, %if.end10.out_crit_edge, %if.end6.out_crit_edge, %if.then4, %if.then
  %err.0 = phi i32 [ %call, %if.then ], [ -117, %if.then4 ], [ %call7, %if.end6.out_crit_edge ], [ 0, %if.end10.out_crit_edge ], [ -117, %if.then16 ], [ 0, %if.then19 ], [ 0, %if.end17.out_crit_edge ]
  %46 = ptrtoint ptr %ea_inode to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ea_inode, align 4
  call void @iput(ptr noundef %47) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ea_inode) #13
  ret i32 %err.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_xattr_get(ptr noundef %inode, i32 noundef %name_index, ptr noundef %name, ptr noundef %buffer, i32 noundef %buffer_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %s_ext4_flags.i = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 48
  %4 = ptrtoint ptr %s_ext4_flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %s_ext4_flags.i, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge, !prof !159

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @strlen(ptr noundef %name) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call4)
  %cmp = icmp ugt i32 %call4, 255
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %xattr_sem = getelementptr i8, ptr %inode, i32 -376
  tail call void @down_read(ptr noundef %xattr_sem) #13
  %call8 = tail call i32 @ext4_xattr_ibody_get(ptr noundef %inode, i32 noundef %name_index, ptr noundef %name, ptr noundef %buffer, i32 noundef %buffer_size)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -61, i32 %call8)
  %cmp9 = icmp eq i32 %call8, -61
  br i1 %cmp9, label %if.then10, label %if.end6.if.end12_crit_edge

if.end6.if.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.then10:                                        ; preds = %if.end6
  %7 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i25 = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 33
  %9 = ptrtoint ptr %s_fs_info.i25 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_fs_info.i25, align 16
  %s_ea_block_cache.i = getelementptr inbounds %struct.ext4_sb_info, ptr %10, i32 0, i32 127
  %11 = ptrtoint ptr %s_ea_block_cache.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_ea_block_cache.i, align 128
  %i_file_acl.i = getelementptr i8, ptr %inode, i32 -400
  %13 = ptrtoint ptr %i_file_acl.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %i_file_acl.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %14)
  %tobool.not.i = icmp eq i64 %14, 0
  br i1 %tobool.not.i, label %if.then10.if.end12_crit_edge, label %if.end.i

if.then10.if.end12_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.end.i:                                         ; preds = %if.then10
  %call6.i = tail call ptr @ext4_sb_bread(ptr noundef %8, i64 noundef %14, i32 noundef 8192) #13
  %cmp.i.i = icmp ugt ptr %call6.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then8.i, label %if.end10.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %15 = ptrtoint ptr %call6.i to i32
  br label %if.end12

if.end10.i:                                       ; preds = %if.end.i
  %call12.i = tail call fastcc i32 @__ext4_xattr_check_block(ptr noundef %inode, ptr noundef %call6.i, ptr noundef nonnull @__func__.ext4_xattr_block_get, i32 noundef 536) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end15.i, label %if.end10.i.cleanup53.i_crit_edge

if.end10.i.cleanup53.i_crit_edge:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup53.i

if.end15.i:                                       ; preds = %if.end10.i
  %tobool.not.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i, label %if.end15.i.ext4_xattr_block_cache_insert.exit.i_crit_edge, label %if.end.i.i

if.end15.i.ext4_xattr_block_cache_insert.exit.i_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ext4_xattr_block_cache_insert.exit.i

if.end.i.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #15
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %call6.i, i32 0, i32 5
  %16 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %b_data.i.i, align 4
  %h_refcount.i.i = getelementptr inbounds %struct.ext4_xattr_header, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %h_refcount.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %h_refcount.i.i, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %20)
  %cmp.i88.i = icmp ult i32 %20, 1024
  %h_hash.i.i = getelementptr inbounds %struct.ext4_xattr_header, ptr %17, i32 0, i32 3
  %21 = ptrtoint ptr %h_hash.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %h_hash.i.i, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #13
  %b_blocknr.i.i = getelementptr inbounds %struct.buffer_head, ptr %call6.i, i32 0, i32 3
  %24 = ptrtoint ptr %b_blocknr.i.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %b_blocknr.i.i, align 8
  %call.i.i = tail call i32 @mb_cache_entry_create(ptr noundef nonnull %12, i32 noundef 3136, i32 noundef %23, i64 noundef %25, i1 noundef zeroext %cmp.i88.i) #13
  br label %ext4_xattr_block_cache_insert.exit.i

ext4_xattr_block_cache_insert.exit.i:             ; preds = %if.end.i.i, %if.end15.i.ext4_xattr_block_cache_insert.exit.i_crit_edge
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %call6.i, i32 0, i32 5
  %26 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %b_data.i, align 4
  %b_size.i = getelementptr inbounds %struct.buffer_head, ptr %call6.i, i32 0, i32 4
  %28 = ptrtoint ptr %b_size.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %b_size.i, align 8
  %add.ptr17.i = getelementptr i8, ptr %27, i32 %29
  %cmp2.i.i = icmp eq ptr %name, null
  br i1 %cmp2.i.i, label %ext4_xattr_block_cache_insert.exit.i.cleanup53.i_crit_edge, label %if.end.i90.i

ext4_xattr_block_cache_insert.exit.i.cleanup53.i_crit_edge: ; preds = %ext4_xattr_block_cache_insert.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup53.i

if.end.i90.i:                                     ; preds = %ext4_xattr_block_cache_insert.exit.i
  %add.ptr.i26 = getelementptr %struct.ext4_xattr_header, ptr %27, i32 1
  %call.i89.i = tail call i32 @strlen(ptr noundef nonnull %name) #16
  %30 = ptrtoint ptr %add.ptr.i26 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr.i26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp3.not54.i.i = icmp eq i32 %31, 0
  br i1 %cmp3.not54.i.i, label %if.end.i90.i.cleanup53.i_crit_edge, label %if.end.i90.i.for.body.i.i_crit_edge

if.end.i90.i.for.body.i.i_crit_edge:              ; preds = %if.end.i90.i
  br label %for.body.i.i

if.end.i90.i.cleanup53.i_crit_edge:               ; preds = %if.end.i90.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup53.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.i90.i.for.body.i.i_crit_edge
  %entry1.055.i.i = phi ptr [ %add.ptr.i91.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %add.ptr.i26, %if.end.i90.i.for.body.i.i_crit_edge ]
  %32 = ptrtoint ptr %entry1.055.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %entry1.055.i.i, align 4
  %conv.i.i = zext i8 %33 to i32
  %add4.i.i = add nuw nsw i32 %conv.i.i, 19
  %and.i.i = and i32 %add4.i.i, 508
  %add.ptr.i91.i = getelementptr i8, ptr %entry1.055.i.i, i32 %and.i.i
  %cmp5.not.i.i = icmp ult ptr %add.ptr.i91.i, %add.ptr17.i
  br i1 %cmp5.not.i.i, label %if.end8.i.i, label %if.then7.i.i

if.then7.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %inode, ptr noundef nonnull @__func__.xattr_find_entry, i32 noundef 296, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.9) #13
  br label %cleanup53.i

if.end8.i.i:                                      ; preds = %for.body.i.i
  %e_name_index.i.i = getelementptr inbounds %struct.ext4_xattr_entry, ptr %entry1.055.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %e_name_index.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %e_name_index.i.i, align 1
  %conv9.i.i = zext i8 %35 to i32
  %sub.i.i = sub i32 %name_index, %conv9.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %conv9.i.i, i32 %name_index)
  %tobool.not.i92.i = icmp eq i32 %conv9.i.i, %name_index
  %sub13.i.i = sub i32 %call.i89.i, %conv.i.i
  %spec.select.i.i = select i1 %tobool.not.i92.i, i32 %sub13.i.i, i32 %sub.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i.i)
  %tobool15.not.i.i = icmp eq i32 %spec.select.i.i, 0
  br i1 %tobool15.not.i.i, label %if.then16.i.i, label %if.end8.i.i.if.end18.i.i_crit_edge

if.end8.i.i.if.end18.i.i_crit_edge:               ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18.i.i

if.then16.i.i:                                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %e_name.i.i = getelementptr inbounds %struct.ext4_xattr_entry, ptr %entry1.055.i.i, i32 0, i32 6
  %call17.i.i = tail call i32 @memcmp(ptr noundef nonnull %name, ptr noundef %e_name.i.i, i32 noundef %call.i89.i) #16
  br label %if.end18.i.i

if.end18.i.i:                                     ; preds = %if.then16.i.i, %if.end8.i.i.if.end18.i.i_crit_edge
  %cmp.2.i.i = phi i32 [ %spec.select.i.i, %if.end8.i.i.if.end18.i.i_crit_edge ], [ %call17.i.i, %if.then16.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cmp.2.i.i)
  %cmp19.i.i = icmp slt i32 %cmp.2.i.i, 1
  br i1 %cmp19.i.i, label %land.lhs.true.i.i, label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmp.2.i.i)
  %tobool26.not.i.i = icmp eq i32 %cmp.2.i.i, 0
  br i1 %tobool26.not.i.i, label %if.end21.i, label %land.lhs.true.i.i.cleanup53.i_crit_edge

land.lhs.true.i.i.cleanup53.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup53.i

for.inc.i.i:                                      ; preds = %if.end18.i.i
  %36 = ptrtoint ptr %add.ptr.i91.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr.i91.i, align 4
  %cmp3.not.i.i = icmp eq i32 %37, 0
  br i1 %cmp3.not.i.i, label %for.inc.i.i.cleanup53.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.inc.i.i.cleanup53.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup53.i

if.end21.i:                                       ; preds = %land.lhs.true.i.i
  %e_value_size.i = getelementptr inbounds %struct.ext4_xattr_entry, ptr %entry1.055.i.i, i32 0, i32 4
  %38 = ptrtoint ptr %e_value_size.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %e_value_size.i, align 4
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %40)
  %cmp.i = icmp ugt i32 %40, 16777216
  br i1 %cmp.i, label %if.end21.i.cleanup53.i_crit_edge, label %if.end25.i, !prof !158

if.end21.i.cleanup53.i_crit_edge:                 ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup53.i

if.end25.i:                                       ; preds = %if.end21.i
  %tobool26.not.i = icmp eq ptr %buffer, null
  br i1 %tobool26.not.i, label %if.end25.i.if.end52.i_crit_edge, label %if.then27.i

if.end25.i.if.end52.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end52.i

if.then27.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %buffer_size)
  %cmp28.i = icmp ugt i32 %40, %buffer_size
  br i1 %cmp28.i, label %if.then27.i.cleanup53.i_crit_edge, label %if.end30.i

if.then27.i.cleanup53.i_crit_edge:                ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup53.i

if.end30.i:                                       ; preds = %if.then27.i
  %e_value_inum.i = getelementptr inbounds %struct.ext4_xattr_entry, ptr %entry1.055.i.i, i32 0, i32 3
  %41 = ptrtoint ptr %e_value_inum.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %e_value_inum.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool31.not.i = icmp eq i32 %42, 0
  br i1 %tobool31.not.i, label %if.else.i, label %if.then32.i

if.then32.i:                                      ; preds = %if.end30.i
  %call33.i = tail call fastcc i32 @ext4_xattr_inode_get(ptr noundef %inode, ptr noundef %entry1.055.i.i, ptr noundef nonnull %buffer, i32 noundef %40) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool34.not.i = icmp eq i32 %call33.i, 0
  br i1 %tobool34.not.i, label %if.then32.i.if.end52.i_crit_edge, label %if.then32.i.cleanup53.i_crit_edge

if.then32.i.cleanup53.i_crit_edge:                ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup53.i

if.then32.i.if.end52.i_crit_edge:                 ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end52.i

if.else.i:                                        ; preds = %if.end30.i
  %e_value_offs.i = getelementptr inbounds %struct.ext4_xattr_entry, ptr %entry1.055.i.i, i32 0, i32 2
  %43 = ptrtoint ptr %e_value_offs.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %e_value_offs.i, align 2
  %45 = tail call i16 @llvm.bswap.i16(i16 %44) #13
  %conv.i = zext i16 %45 to i32
  %add.ptr38.i = getelementptr i8, ptr %27, i32 %conv.i
  %add.ptr39.i = getelementptr i8, ptr %add.ptr38.i, i32 %40
  %cmp40.i = icmp ugt ptr %add.ptr39.i, %add.ptr17.i
  br i1 %cmp40.i, label %if.else.i.cleanup53.i_crit_edge, label %cleanup.thread.i, !prof !158

if.else.i.cleanup53.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup53.i

cleanup.thread.i:                                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %46 = call ptr @memcpy(ptr %buffer, ptr %add.ptr38.i, i32 %40)
  br label %if.end52.i

if.end52.i:                                       ; preds = %cleanup.thread.i, %if.then32.i.if.end52.i_crit_edge, %if.end25.i.if.end52.i_crit_edge
  br label %cleanup53.i

cleanup53.i:                                      ; preds = %if.end52.i, %if.else.i.cleanup53.i_crit_edge, %if.then32.i.cleanup53.i_crit_edge, %if.then27.i.cleanup53.i_crit_edge, %if.end21.i.cleanup53.i_crit_edge, %for.inc.i.i.cleanup53.i_crit_edge, %land.lhs.true.i.i.cleanup53.i_crit_edge, %if.then7.i.i, %if.end.i90.i.cleanup53.i_crit_edge, %ext4_xattr_block_cache_insert.exit.i.cleanup53.i_crit_edge, %if.end10.i.cleanup53.i_crit_edge
  %error.0.i = phi i32 [ %call12.i, %if.end10.i.cleanup53.i_crit_edge ], [ -34, %if.end21.i.cleanup53.i_crit_edge ], [ -34, %if.then27.i.cleanup53.i_crit_edge ], [ %call33.i, %if.then32.i.cleanup53.i_crit_edge ], [ %40, %if.end52.i ], [ -34, %if.else.i.cleanup53.i_crit_edge ], [ -61, %if.end.i90.i.cleanup53.i_crit_edge ], [ -61, %land.lhs.true.i.i.cleanup53.i_crit_edge ], [ -22, %ext4_xattr_block_cache_insert.exit.i.cleanup53.i_crit_edge ], [ -117, %if.then7.i.i ], [ -61, %for.inc.i.i.cleanup53.i_crit_edge ]
  %tobool.not.i93.i = icmp eq ptr %call6.i, null
  br i1 %tobool.not.i93.i, label %cleanup53.i.if.end12_crit_edge, label %if.then.i.i

cleanup53.i.if.end12_crit_edge:                   ; preds = %cleanup53.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.then.i.i:                                      ; preds = %cleanup53.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__brelse(ptr noundef nonnull %call6.i) #13
  br label %if.end12

if.end12:                                         ; preds = %if.then.i.i, %cleanup53.i.if.end12_crit_edge, %if.then8.i, %if.then10.if.end12_crit_edge, %if.end6.if.end12_crit_edge
  %error.0 = phi i32 [ %call8, %if.end6.if.end12_crit_edge ], [ %15, %if.then8.i ], [ -61, %if.then10.if.end12_crit_edge ], [ %error.0.i, %cleanup53.i.if.end12_crit_edge ], [ %error.0.i, %if.then.i.i ]
  tail call void @up_read(ptr noundef %xattr_sem) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %if.end12 ], [ -5, %entry.cleanup_crit_edge ], [ -34, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_listxattr(ptr noundef %dentry, ptr noundef writeonly %buffer, i32 noundef %buffer_size) local_unnamed_addr #0 align 64 {
entry:
  %iloc.i = alloca %struct.ext4_iloc, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %xattr_sem = getelementptr i8, ptr %1, i32 -376
  tail call void @down_read(ptr noundef %xattr_sem) #13
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %iloc.i) #13
  %4 = ptrtoint ptr %iloc.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %iloc.i, align 4, !annotation !157
  %5 = getelementptr inbounds %struct.ext4_iloc, ptr %iloc.i, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !157
  %7 = getelementptr inbounds %struct.ext4_iloc, ptr %iloc.i, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4, !annotation !157
  %i_state_flags.i.i = getelementptr i8, ptr %3, i32 -384
  %9 = ptrtoint ptr %i_state_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %i_state_flags.i.i, align 4
  %11 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %ext4_xattr_ibody_list.exit.thread, label %if.end.i

ext4_xattr_ibody_list.exit.thread:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %iloc.i) #13
  br label %if.end

if.end.i:                                         ; preds = %entry
  %call2.i = call i32 @ext4_get_inode_loc(ptr noundef %3, ptr noundef nonnull %iloc.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.ext4_xattr_ibody_list.exit_crit_edge

if.end.i.ext4_xattr_ibody_list.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ext4_xattr_ibody_list.exit

if.end5.i:                                        ; preds = %if.end.i
  %12 = ptrtoint ptr %iloc.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iloc.i, align 4
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %b_data.i.i, align 4
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %5, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 %17
  %add.ptr.i25 = getelementptr i8, ptr %add.ptr.i.i, i32 128
  %i_extra_isize.i = getelementptr i8, ptr %3, i32 988
  %18 = ptrtoint ptr %i_extra_isize.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %i_extra_isize.i, align 4
  %conv.i = zext i16 %19 to i32
  %add.ptr8.i = getelementptr i8, ptr %add.ptr.i25, i32 %conv.i
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %20 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %21, i32 0, i32 33
  %22 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_inode_size.i = getelementptr inbounds %struct.ext4_sb_info, ptr %23, i32 0, i32 29
  %24 = ptrtoint ptr %s_inode_size.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %s_inode_size.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %add.ptr.i.i, i32 %25
  %call11.i = call fastcc i32 @__xattr_check_inode(ptr noundef %3, ptr noundef %add.ptr8.i, ptr noundef %add.ptr10.i, ptr noundef nonnull @__func__.ext4_xattr_ibody_list, i32 noundef 738) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %if.end5.i.cleanup.i_crit_edge

if.end5.i.cleanup.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i

if.end14.i:                                       ; preds = %if.end5.i
  %add.ptr15.i = getelementptr %struct.ext4_xattr_ibody_header, ptr %add.ptr8.i, i32 1
  %26 = ptrtoint ptr %add.ptr15.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr15.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.not73.i.i = icmp eq i32 %27, 0
  br i1 %cmp.not73.i.i, label %if.end14.i.for.end.i.i_crit_edge, label %if.end14.i.for.body.i.i_crit_edge

if.end14.i.for.body.i.i_crit_edge:                ; preds = %if.end14.i
  br label %for.body.i.i

if.end14.i.for.end.i.i_crit_edge:                 ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end14.i.for.body.i.i_crit_edge
  %rest.077.i.i = phi i32 [ %rest.3.ph.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %buffer_size, %if.end14.i.for.body.i.i_crit_edge ]
  %buffer.addr.075.i.i = phi ptr [ %buffer.addr.4.ph.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %buffer, %if.end14.i.for.body.i.i_crit_edge ]
  %entry.addr.074.i.i = phi ptr [ %add.ptr32.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %add.ptr15.i, %if.end14.i.for.body.i.i_crit_edge ]
  %e_name_index.i.i = getelementptr inbounds %struct.ext4_xattr_entry, ptr %entry.addr.074.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %e_name_index.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %e_name_index.i.i, align 1
  %conv.i.i = zext i8 %29 to i32
  %30 = add nsw i32 %conv.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %30)
  %31 = icmp ult i32 %30, 10
  br i1 %31, label %ext4_xattr_handler.exit.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

ext4_xattr_handler.exit.i.i:                      ; preds = %for.body.i.i
  %arrayidx.i.i.i = getelementptr [11 x ptr], ptr @ext4_xattr_handler_map, i32 0, i32 %conv.i.i
  %32 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i.i.i, align 4
  %34 = lshr i32 929, %conv.i.i
  %35 = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.not.i.i = icmp eq i32 %35, 0
  br i1 %tobool.not.not.i.i, label %land.lhs.true.i.i, label %ext4_xattr_handler.exit.i.i.for.inc.i.i_crit_edge

ext4_xattr_handler.exit.i.i.for.inc.i.i_crit_edge: ; preds = %ext4_xattr_handler.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %ext4_xattr_handler.exit.i.i
  %list.i.i = getelementptr inbounds %struct.xattr_handler, ptr %33, i32 0, i32 3
  %36 = ptrtoint ptr %list.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %list.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %37, null
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.if.then.i.i_crit_edge, label %lor.lhs.false.i.i

land.lhs.true.i.i.if.then.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i

lor.lhs.false.i.i:                                ; preds = %land.lhs.true.i.i
  %call4.i.i = call zeroext i1 %37(ptr noundef %dentry) #13
  br i1 %call4.i.i, label %lor.lhs.false.i.i.if.then.i.i_crit_edge, label %lor.lhs.false.i.i.for.inc.i.i_crit_edge

lor.lhs.false.i.i.for.inc.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

lor.lhs.false.i.i.if.then.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %lor.lhs.false.i.i.if.then.i.i_crit_edge, %land.lhs.true.i.i.if.then.i.i_crit_edge
  %prefix6.i.i = getelementptr inbounds %struct.xattr_handler, ptr %33, i32 0, i32 1
  %38 = ptrtoint ptr %prefix6.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prefix6.i.i, align 4
  %tobool7.not.i.i = icmp eq ptr %39, null
  br i1 %tobool7.not.i.i, label %cond.false.i.i, label %if.then.i.i.cond.end.i.i_crit_edge

if.then.i.i.cond.end.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.i.i

cond.false.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %40 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %33, align 4
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %if.then.i.i.cond.end.i.i_crit_edge
  %cond.i.i = phi ptr [ %41, %cond.false.i.i ], [ %39, %if.then.i.i.cond.end.i.i_crit_edge ]
  %call8.i.i = call i32 @strlen(ptr noundef %cond.i.i) #16
  %42 = ptrtoint ptr %entry.addr.074.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %entry.addr.074.i.i, align 4
  %conv9.i.i = zext i8 %43 to i32
  %add.i.i = add i32 %call8.i.i, 1
  %add10.i.i = add i32 %add.i.i, %conv9.i.i
  %tobool11.not.i.i = icmp eq ptr %buffer.addr.075.i.i, null
  br i1 %tobool11.not.i.i, label %cond.end.i.i.cleanup.thread.i.i_crit_edge, label %if.then12.i.i

cond.end.i.i.cleanup.thread.i.i_crit_edge:        ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread.i.i

if.then12.i.i:                                    ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %rest.077.i.i, i32 %add10.i.i)
  %cmp13.i.i = icmp ult i32 %rest.077.i.i, %add10.i.i
  br i1 %cmp13.i.i, label %if.then12.i.i.cleanup.i_crit_edge, label %if.end.i.i

if.then12.i.i.cleanup.i_crit_edge:                ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i

if.end.i.i:                                       ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %44 = call ptr @memcpy(ptr %buffer.addr.075.i.i, ptr %cond.i.i, i32 %call8.i.i)
  %add.ptr.i34.i = getelementptr i8, ptr %buffer.addr.075.i.i, i32 %call8.i.i
  %e_name.i.i = getelementptr inbounds %struct.ext4_xattr_entry, ptr %entry.addr.074.i.i, i32 0, i32 6
  %45 = ptrtoint ptr %entry.addr.074.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %entry.addr.074.i.i, align 4
  %conv17.i.i = zext i8 %46 to i32
  %47 = call ptr @memcpy(ptr %add.ptr.i34.i, ptr %e_name.i.i, i32 %conv17.i.i)
  %48 = load i8, ptr %entry.addr.074.i.i, align 4
  %conv19.i.i = zext i8 %48 to i32
  %add.ptr20.i.i = getelementptr i8, ptr %add.ptr.i34.i, i32 %conv19.i.i
  %incdec.ptr.i.i = getelementptr i8, ptr %add.ptr20.i.i, i32 1
  %49 = ptrtoint ptr %add.ptr20.i.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %add.ptr20.i.i, align 1
  br label %cleanup.thread.i.i

cleanup.thread.i.i:                               ; preds = %if.end.i.i, %cond.end.i.i.cleanup.thread.i.i_crit_edge
  %buffer.addr.1.i.i = phi ptr [ %incdec.ptr.i.i, %if.end.i.i ], [ null, %cond.end.i.i.cleanup.thread.i.i_crit_edge ]
  %sub.i.i = sub i32 %rest.077.i.i, %add10.i.i
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %cleanup.thread.i.i, %lor.lhs.false.i.i.for.inc.i.i_crit_edge, %ext4_xattr_handler.exit.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %buffer.addr.4.ph.i.i = phi ptr [ %buffer.addr.1.i.i, %cleanup.thread.i.i ], [ %buffer.addr.075.i.i, %ext4_xattr_handler.exit.i.i.for.inc.i.i_crit_edge ], [ %buffer.addr.075.i.i, %lor.lhs.false.i.i.for.inc.i.i_crit_edge ], [ %buffer.addr.075.i.i, %for.body.i.i.for.inc.i.i_crit_edge ]
  %rest.3.ph.i.i = phi i32 [ %sub.i.i, %cleanup.thread.i.i ], [ %rest.077.i.i, %ext4_xattr_handler.exit.i.i.for.inc.i.i_crit_edge ], [ %rest.077.i.i, %lor.lhs.false.i.i.for.inc.i.i_crit_edge ], [ %rest.077.i.i, %for.body.i.i.for.inc.i.i_crit_edge ]
  %50 = ptrtoint ptr %entry.addr.074.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %entry.addr.074.i.i, align 4
  %conv29.i.i = zext i8 %51 to i32
  %add31.i.i = add nuw nsw i32 %conv29.i.i, 19
  %and.i.i = and i32 %add31.i.i, 508
  %add.ptr32.i.i = getelementptr i8, ptr %entry.addr.074.i.i, i32 %and.i.i
  %52 = ptrtoint ptr %add.ptr32.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %add.ptr32.i.i, align 4
  %cmp.not.i.i = icmp eq i32 %53, 0
  br i1 %cmp.not.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %if.end14.i.for.end.i.i_crit_edge
  %rest.0.lcssa.i.i = phi i32 [ %buffer_size, %if.end14.i.for.end.i.i_crit_edge ], [ %rest.3.ph.i.i, %for.inc.i.i.for.end.i.i_crit_edge ]
  %sub33.i.i = sub i32 %buffer_size, %rest.0.lcssa.i.i
  br label %cleanup.i

cleanup.i:                                        ; preds = %for.end.i.i, %if.then12.i.i.cleanup.i_crit_edge, %if.end5.i.cleanup.i_crit_edge
  %error.0.i = phi i32 [ %call11.i, %if.end5.i.cleanup.i_crit_edge ], [ %sub33.i.i, %for.end.i.i ], [ -34, %if.then12.i.i.cleanup.i_crit_edge ]
  %54 = ptrtoint ptr %iloc.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %iloc.i, align 4
  %tobool.not.i.i = icmp eq ptr %55, null
  br i1 %tobool.not.i.i, label %cleanup.i.ext4_xattr_ibody_list.exit_crit_edge, label %if.then.i35.i

cleanup.i.ext4_xattr_ibody_list.exit_crit_edge:   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ext4_xattr_ibody_list.exit

if.then.i35.i:                                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__brelse(ptr noundef nonnull %55) #13
  br label %ext4_xattr_ibody_list.exit

ext4_xattr_ibody_list.exit:                       ; preds = %if.then.i35.i, %cleanup.i.ext4_xattr_ibody_list.exit_crit_edge, %if.end.i.ext4_xattr_ibody_list.exit_crit_edge
  %retval.0.i = phi i32 [ %call2.i, %if.end.i.ext4_xattr_ibody_list.exit_crit_edge ], [ %error.0.i, %cleanup.i.ext4_xattr_ibody_list.exit_crit_edge ], [ %error.0.i, %if.then.i35.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %iloc.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %ext4_xattr_ibody_list.exit.errout_crit_edge, label %ext4_xattr_ibody_list.exit.if.end_crit_edge

ext4_xattr_ibody_list.exit.if.end_crit_edge:      ; preds = %ext4_xattr_ibody_list.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

ext4_xattr_ibody_list.exit.errout_crit_edge:      ; preds = %ext4_xattr_ibody_list.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %errout

if.end:                                           ; preds = %ext4_xattr_ibody_list.exit.if.end_crit_edge, %ext4_xattr_ibody_list.exit.thread
  %retval.0.i91 = phi i32 [ 0, %ext4_xattr_ibody_list.exit.thread ], [ %retval.0.i, %ext4_xattr_ibody_list.exit.if.end_crit_edge ]
  %tobool.not = icmp eq ptr %buffer, null
  %add.ptr = getelementptr i8, ptr %buffer, i32 %retval.0.i91
  %buffer.addr.0 = select i1 %tobool.not, ptr null, ptr %add.ptr
  %sub = select i1 %tobool.not, i32 0, i32 %retval.0.i91
  %buffer_size.addr.0 = sub i32 %buffer_size, %sub
  %56 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %d_inode.i, align 8
  %i_file_acl.i = getelementptr i8, ptr %57, i32 -400
  %58 = ptrtoint ptr %i_file_acl.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %i_file_acl.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %59)
  %tobool.not.i27 = icmp eq i64 %59, 0
  br i1 %tobool.not.i27, label %if.end.errout_crit_edge, label %if.end.i29

if.end.errout_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %errout

if.end.i29:                                       ; preds = %if.end
  %i_sb.i28 = getelementptr inbounds %struct.inode, ptr %57, i32 0, i32 8
  %60 = ptrtoint ptr %i_sb.i28 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %i_sb.i28, align 4
  %call5.i = call ptr @ext4_sb_bread(ptr noundef %61, i64 noundef %59, i32 noundef 8192) #13
  %cmp.i.i = icmp ugt ptr %call5.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then7.i, label %if.end9.i

if.then7.i:                                       ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #15
  %62 = ptrtoint ptr %call5.i to i32
  br label %ext4_xattr_block_list.exit

if.end9.i:                                        ; preds = %if.end.i29
  %call11.i30 = call fastcc i32 @__ext4_xattr_check_block(ptr noundef %57, ptr noundef %call5.i, ptr noundef nonnull @__func__.ext4_xattr_block_list, i32 noundef 709) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i30)
  %tobool12.not.i31 = icmp eq i32 %call11.i30, 0
  br i1 %tobool12.not.i31, label %if.end14.i33, label %if.end9.i.cleanup.i85_crit_edge

if.end9.i.cleanup.i85_crit_edge:                  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i85

if.end14.i33:                                     ; preds = %if.end9.i
  %63 = ptrtoint ptr %i_sb.i28 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %i_sb.i28, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %64, i32 0, i32 33
  %65 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %s_fs_info.i, align 16
  %s_ea_block_cache.i = getelementptr inbounds %struct.ext4_sb_info, ptr %66, i32 0, i32 127
  %67 = ptrtoint ptr %s_ea_block_cache.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %s_ea_block_cache.i, align 128
  %tobool.not.i.i32 = icmp eq ptr %68, null
  br i1 %tobool.not.i.i32, label %if.end14.i33.ext4_xattr_block_cache_insert.exit.i_crit_edge, label %if.end.i.i35

if.end14.i33.ext4_xattr_block_cache_insert.exit.i_crit_edge: ; preds = %if.end14.i33
  call void @__sanitizer_cov_trace_pc() #15
  br label %ext4_xattr_block_cache_insert.exit.i

if.end.i.i35:                                     ; preds = %if.end14.i33
  call void @__sanitizer_cov_trace_pc() #15
  %b_data.i.i34 = getelementptr inbounds %struct.buffer_head, ptr %call5.i, i32 0, i32 5
  %69 = ptrtoint ptr %b_data.i.i34 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %b_data.i.i34, align 4
  %h_refcount.i.i = getelementptr inbounds %struct.ext4_xattr_header, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %h_refcount.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %h_refcount.i.i, align 4
  %73 = call i32 @llvm.bswap.i32(i32 %72) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %73)
  %cmp.i32.i = icmp ult i32 %73, 1024
  %h_hash.i.i = getelementptr inbounds %struct.ext4_xattr_header, ptr %70, i32 0, i32 3
  %74 = ptrtoint ptr %h_hash.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %h_hash.i.i, align 4
  %76 = call i32 @llvm.bswap.i32(i32 %75) #13
  %b_blocknr.i.i = getelementptr inbounds %struct.buffer_head, ptr %call5.i, i32 0, i32 3
  %77 = ptrtoint ptr %b_blocknr.i.i to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %b_blocknr.i.i, align 8
  %call.i.i = call i32 @mb_cache_entry_create(ptr noundef nonnull %68, i32 noundef 3136, i32 noundef %76, i64 noundef %78, i1 noundef zeroext %cmp.i32.i) #13
  br label %ext4_xattr_block_cache_insert.exit.i

ext4_xattr_block_cache_insert.exit.i:             ; preds = %if.end.i.i35, %if.end14.i33.ext4_xattr_block_cache_insert.exit.i_crit_edge
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %call5.i, i32 0, i32 5
  %79 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %b_data.i, align 4
  %add.ptr.i36 = getelementptr %struct.ext4_xattr_header, ptr %80, i32 1
  %81 = ptrtoint ptr %add.ptr.i36 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %add.ptr.i36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp.not73.i.i37 = icmp eq i32 %82, 0
  br i1 %cmp.not73.i.i37, label %ext4_xattr_block_cache_insert.exit.i.for.end.i.i83_crit_edge, label %ext4_xattr_block_cache_insert.exit.i.for.body.i.i43_crit_edge

ext4_xattr_block_cache_insert.exit.i.for.body.i.i43_crit_edge: ; preds = %ext4_xattr_block_cache_insert.exit.i
  br label %for.body.i.i43

ext4_xattr_block_cache_insert.exit.i.for.end.i.i83_crit_edge: ; preds = %ext4_xattr_block_cache_insert.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i83

for.body.i.i43:                                   ; preds = %for.inc.i.i80.for.body.i.i43_crit_edge, %ext4_xattr_block_cache_insert.exit.i.for.body.i.i43_crit_edge
  %rest.077.i.i38 = phi i32 [ %rest.3.ph.i.i74, %for.inc.i.i80.for.body.i.i43_crit_edge ], [ %buffer_size.addr.0, %ext4_xattr_block_cache_insert.exit.i.for.body.i.i43_crit_edge ]
  %buffer.addr.075.i.i39 = phi ptr [ %buffer.addr.4.ph.i.i73, %for.inc.i.i80.for.body.i.i43_crit_edge ], [ %buffer.addr.0, %ext4_xattr_block_cache_insert.exit.i.for.body.i.i43_crit_edge ]
  %entry.addr.074.i.i40 = phi ptr [ %add.ptr32.i.i78, %for.inc.i.i80.for.body.i.i43_crit_edge ], [ %add.ptr.i36, %ext4_xattr_block_cache_insert.exit.i.for.body.i.i43_crit_edge ]
  %e_name_index.i.i41 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %entry.addr.074.i.i40, i32 0, i32 1
  %83 = ptrtoint ptr %e_name_index.i.i41 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %e_name_index.i.i41, align 1
  %conv.i.i42 = zext i8 %84 to i32
  %85 = add nsw i32 %conv.i.i42, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %85)
  %86 = icmp ult i32 %85, 10
  br i1 %86, label %ext4_xattr_handler.exit.i.i46, label %for.body.i.i43.for.inc.i.i80_crit_edge

for.body.i.i43.for.inc.i.i80_crit_edge:           ; preds = %for.body.i.i43
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i80

ext4_xattr_handler.exit.i.i46:                    ; preds = %for.body.i.i43
  %arrayidx.i.i.i44 = getelementptr [11 x ptr], ptr @ext4_xattr_handler_map, i32 0, i32 %conv.i.i42
  %87 = ptrtoint ptr %arrayidx.i.i.i44 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx.i.i.i44, align 4
  %89 = lshr i32 929, %conv.i.i42
  %90 = and i32 %89, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool.not.not.i.i45 = icmp eq i32 %90, 0
  br i1 %tobool.not.not.i.i45, label %land.lhs.true.i.i49, label %ext4_xattr_handler.exit.i.i46.for.inc.i.i80_crit_edge

ext4_xattr_handler.exit.i.i46.for.inc.i.i80_crit_edge: ; preds = %ext4_xattr_handler.exit.i.i46
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i80

land.lhs.true.i.i49:                              ; preds = %ext4_xattr_handler.exit.i.i46
  %list.i.i47 = getelementptr inbounds %struct.xattr_handler, ptr %88, i32 0, i32 3
  %91 = ptrtoint ptr %list.i.i47 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %list.i.i47, align 4
  %tobool2.not.i.i48 = icmp eq ptr %92, null
  br i1 %tobool2.not.i.i48, label %land.lhs.true.i.i49.if.then.i.i54_crit_edge, label %lor.lhs.false.i.i51

land.lhs.true.i.i49.if.then.i.i54_crit_edge:      ; preds = %land.lhs.true.i.i49
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i54

lor.lhs.false.i.i51:                              ; preds = %land.lhs.true.i.i49
  %call4.i.i50 = call zeroext i1 %92(ptr noundef %dentry) #13
  br i1 %call4.i.i50, label %lor.lhs.false.i.i51.if.then.i.i54_crit_edge, label %lor.lhs.false.i.i51.for.inc.i.i80_crit_edge

lor.lhs.false.i.i51.for.inc.i.i80_crit_edge:      ; preds = %lor.lhs.false.i.i51
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i80

lor.lhs.false.i.i51.if.then.i.i54_crit_edge:      ; preds = %lor.lhs.false.i.i51
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i54

if.then.i.i54:                                    ; preds = %lor.lhs.false.i.i51.if.then.i.i54_crit_edge, %land.lhs.true.i.i49.if.then.i.i54_crit_edge
  %prefix6.i.i52 = getelementptr inbounds %struct.xattr_handler, ptr %88, i32 0, i32 1
  %93 = ptrtoint ptr %prefix6.i.i52 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %prefix6.i.i52, align 4
  %tobool7.not.i.i53 = icmp eq ptr %94, null
  br i1 %tobool7.not.i.i53, label %cond.false.i.i55, label %if.then.i.i54.cond.end.i.i62_crit_edge

if.then.i.i54.cond.end.i.i62_crit_edge:           ; preds = %if.then.i.i54
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.i.i62

cond.false.i.i55:                                 ; preds = %if.then.i.i54
  call void @__sanitizer_cov_trace_pc() #15
  %95 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %88, align 4
  br label %cond.end.i.i62

cond.end.i.i62:                                   ; preds = %cond.false.i.i55, %if.then.i.i54.cond.end.i.i62_crit_edge
  %cond.i.i56 = phi ptr [ %96, %cond.false.i.i55 ], [ %94, %if.then.i.i54.cond.end.i.i62_crit_edge ]
  %call8.i.i57 = call i32 @strlen(ptr noundef %cond.i.i56) #16
  %97 = ptrtoint ptr %entry.addr.074.i.i40 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %entry.addr.074.i.i40, align 4
  %conv9.i.i58 = zext i8 %98 to i32
  %add.i.i59 = add i32 %call8.i.i57, 1
  %add10.i.i60 = add i32 %add.i.i59, %conv9.i.i58
  %tobool11.not.i.i61 = icmp eq ptr %buffer.addr.075.i.i39, null
  br i1 %tobool11.not.i.i61, label %cond.end.i.i62.cleanup.thread.i.i72_crit_edge, label %if.then12.i.i64

cond.end.i.i62.cleanup.thread.i.i72_crit_edge:    ; preds = %cond.end.i.i62
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread.i.i72

if.then12.i.i64:                                  ; preds = %cond.end.i.i62
  call void @__sanitizer_cov_trace_cmp4(i32 %rest.077.i.i38, i32 %add10.i.i60)
  %cmp13.i.i63 = icmp ult i32 %rest.077.i.i38, %add10.i.i60
  br i1 %cmp13.i.i63, label %if.then12.i.i64.cleanup.i85_crit_edge, label %if.end.i34.i

if.then12.i.i64.cleanup.i85_crit_edge:            ; preds = %if.then12.i.i64
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i85

if.end.i34.i:                                     ; preds = %if.then12.i.i64
  call void @__sanitizer_cov_trace_pc() #15
  %99 = call ptr @memcpy(ptr %buffer.addr.075.i.i39, ptr %cond.i.i56, i32 %call8.i.i57)
  %add.ptr.i33.i = getelementptr i8, ptr %buffer.addr.075.i.i39, i32 %call8.i.i57
  %e_name.i.i65 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %entry.addr.074.i.i40, i32 0, i32 6
  %100 = ptrtoint ptr %entry.addr.074.i.i40 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %entry.addr.074.i.i40, align 4
  %conv17.i.i66 = zext i8 %101 to i32
  %102 = call ptr @memcpy(ptr %add.ptr.i33.i, ptr %e_name.i.i65, i32 %conv17.i.i66)
  %103 = load i8, ptr %entry.addr.074.i.i40, align 4
  %conv19.i.i67 = zext i8 %103 to i32
  %add.ptr20.i.i68 = getelementptr i8, ptr %add.ptr.i33.i, i32 %conv19.i.i67
  %incdec.ptr.i.i69 = getelementptr i8, ptr %add.ptr20.i.i68, i32 1
  %104 = ptrtoint ptr %add.ptr20.i.i68 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 0, ptr %add.ptr20.i.i68, align 1
  br label %cleanup.thread.i.i72

cleanup.thread.i.i72:                             ; preds = %if.end.i34.i, %cond.end.i.i62.cleanup.thread.i.i72_crit_edge
  %buffer.addr.1.i.i70 = phi ptr [ %incdec.ptr.i.i69, %if.end.i34.i ], [ null, %cond.end.i.i62.cleanup.thread.i.i72_crit_edge ]
  %sub.i.i71 = sub i32 %rest.077.i.i38, %add10.i.i60
  br label %for.inc.i.i80

for.inc.i.i80:                                    ; preds = %cleanup.thread.i.i72, %lor.lhs.false.i.i51.for.inc.i.i80_crit_edge, %ext4_xattr_handler.exit.i.i46.for.inc.i.i80_crit_edge, %for.body.i.i43.for.inc.i.i80_crit_edge
  %buffer.addr.4.ph.i.i73 = phi ptr [ %buffer.addr.1.i.i70, %cleanup.thread.i.i72 ], [ %buffer.addr.075.i.i39, %ext4_xattr_handler.exit.i.i46.for.inc.i.i80_crit_edge ], [ %buffer.addr.075.i.i39, %lor.lhs.false.i.i51.for.inc.i.i80_crit_edge ], [ %buffer.addr.075.i.i39, %for.body.i.i43.for.inc.i.i80_crit_edge ]
  %rest.3.ph.i.i74 = phi i32 [ %sub.i.i71, %cleanup.thread.i.i72 ], [ %rest.077.i.i38, %ext4_xattr_handler.exit.i.i46.for.inc.i.i80_crit_edge ], [ %rest.077.i.i38, %lor.lhs.false.i.i51.for.inc.i.i80_crit_edge ], [ %rest.077.i.i38, %for.body.i.i43.for.inc.i.i80_crit_edge ]
  %105 = ptrtoint ptr %entry.addr.074.i.i40 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %entry.addr.074.i.i40, align 4
  %conv29.i.i75 = zext i8 %106 to i32
  %add31.i.i76 = add nuw nsw i32 %conv29.i.i75, 19
  %and.i.i77 = and i32 %add31.i.i76, 508
  %add.ptr32.i.i78 = getelementptr i8, ptr %entry.addr.074.i.i40, i32 %and.i.i77
  %107 = ptrtoint ptr %add.ptr32.i.i78 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %add.ptr32.i.i78, align 4
  %cmp.not.i.i79 = icmp eq i32 %108, 0
  br i1 %cmp.not.i.i79, label %for.inc.i.i80.for.end.i.i83_crit_edge, label %for.inc.i.i80.for.body.i.i43_crit_edge

for.inc.i.i80.for.body.i.i43_crit_edge:           ; preds = %for.inc.i.i80
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i43

for.inc.i.i80.for.end.i.i83_crit_edge:            ; preds = %for.inc.i.i80
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i83

for.end.i.i83:                                    ; preds = %for.inc.i.i80.for.end.i.i83_crit_edge, %ext4_xattr_block_cache_insert.exit.i.for.end.i.i83_crit_edge
  %rest.0.lcssa.i.i81 = phi i32 [ %buffer_size.addr.0, %ext4_xattr_block_cache_insert.exit.i.for.end.i.i83_crit_edge ], [ %rest.3.ph.i.i74, %for.inc.i.i80.for.end.i.i83_crit_edge ]
  %sub33.i.i82 = sub i32 %buffer_size.addr.0, %rest.0.lcssa.i.i81
  br label %cleanup.i85

cleanup.i85:                                      ; preds = %for.end.i.i83, %if.then12.i.i64.cleanup.i85_crit_edge, %if.end9.i.cleanup.i85_crit_edge
  %error.0.i84 = phi i32 [ %call11.i30, %if.end9.i.cleanup.i85_crit_edge ], [ %sub33.i.i82, %for.end.i.i83 ], [ -34, %if.then12.i.i64.cleanup.i85_crit_edge ]
  %tobool.not.i35.i = icmp eq ptr %call5.i, null
  br i1 %tobool.not.i35.i, label %cleanup.i85.ext4_xattr_block_list.exit_crit_edge, label %if.then.i36.i

cleanup.i85.ext4_xattr_block_list.exit_crit_edge: ; preds = %cleanup.i85
  call void @__sanitizer_cov_trace_pc() #15
  br label %ext4_xattr_block_list.exit

if.then.i36.i:                                    ; preds = %cleanup.i85
  call void @__sanitizer_cov_trace_pc() #15
  call void @__brelse(ptr noundef nonnull %call5.i) #13
  br label %ext4_xattr_block_list.exit

ext4_xattr_block_list.exit:                       ; preds = %if.then.i36.i, %cleanup.i85.ext4_xattr_block_list.exit_crit_edge, %if.then7.i
  %retval.0.i86 = phi i32 [ %62, %if.then7.i ], [ %error.0.i84, %cleanup.i85.ext4_xattr_block_list.exit_crit_edge ], [ %error.0.i84, %if.then.i36.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i86)
  %cmp6 = icmp slt i32 %retval.0.i86, 0
  %add = select i1 %cmp6, i32 0, i32 %retval.0.i91
  %spec.select = add i32 %add, %retval.0.i86
  br label %errout

errout:                                           ; preds = %ext4_xattr_block_list.exit, %if.end.errout_crit_edge, %ext4_xattr_ibody_list.exit.errout_crit_edge
  %ret.0 = phi i32 [ %retval.0.i, %ext4_xattr_ibody_list.exit.errout_crit_edge ], [ %retval.0.i91, %if.end.errout_crit_edge ], [ %spec.select, %ext4_xattr_block_list.exit ]
  %109 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %d_inode.i, align 8
  %xattr_sem11 = getelementptr i8, ptr %110, i32 -376
  call void @up_read(ptr noundef %xattr_sem11) #13
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_get_inode_usage(ptr noundef %inode, ptr nocapture noundef writeonly %usage) local_unnamed_addr #0 align 64 {
entry:
  %iloc = alloca %struct.ext4_iloc, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %iloc) #13
  %0 = call ptr @memset(ptr %iloc, i32 0, i32 12)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %1 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr i8, ptr %inode, i32 -308
  %call2 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !158

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 815, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %i_state_flags.i = getelementptr i8, ptr %inode, i32 -384
  %2 = ptrtoint ptr %i_state_flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %i_state_flags.i, align 4
  %4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool28.not = icmp eq i32 %4, 0
  br i1 %tobool28.not, label %if.end.if.end53_crit_edge, label %if.then29

if.end.if.end53_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end53

if.then29:                                        ; preds = %if.end
  %call30 = call i32 @ext4_get_inode_loc(ptr noundef %inode, ptr noundef nonnull %iloc) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.then29.out_crit_edge

if.then29.out_crit_edge:                          ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end33:                                         ; preds = %if.then29
  %5 = ptrtoint ptr %iloc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %iloc, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %b_data.i, align 4
  %offset.i = getelementptr inbounds %struct.ext4_iloc, ptr %iloc, i32 0, i32 1
  %9 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %offset.i, align 4
  %add.ptr.i121 = getelementptr i8, ptr %8, i32 %10
  %add.ptr = getelementptr i8, ptr %add.ptr.i121, i32 128
  %i_extra_isize = getelementptr i8, ptr %inode, i32 988
  %11 = ptrtoint ptr %i_extra_isize to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %i_extra_isize, align 4
  %conv = zext i16 %12 to i32
  %add.ptr36 = getelementptr i8, ptr %add.ptr, i32 %conv
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %13 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %14, i32 0, i32 33
  %15 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_fs_info.i, align 16
  %s_inode_size = getelementptr inbounds %struct.ext4_sb_info, ptr %16, i32 0, i32 29
  %17 = ptrtoint ptr %s_inode_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %s_inode_size, align 4
  %add.ptr38 = getelementptr i8, ptr %add.ptr.i121, i32 %18
  %call39 = call fastcc i32 @__xattr_check_inode(ptr noundef %inode, ptr noundef %add.ptr36, ptr noundef %add.ptr38, ptr noundef nonnull @__func__.ext4_get_inode_usage, i32 noundef 824)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.end33.out_crit_edge

if.end33.out_crit_edge:                           ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end42:                                         ; preds = %if.end33
  %add.ptr43 = getelementptr %struct.ext4_xattr_ibody_header, ptr %add.ptr36, i32 1
  %19 = ptrtoint ptr %add.ptr43 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.not128 = icmp eq i32 %20, 0
  br i1 %cmp.not128, label %if.end42.if.end53_crit_edge, label %if.end42.for.body_crit_edge

if.end42.for.body_crit_edge:                      ; preds = %if.end42
  br label %for.body

if.end42.if.end53_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end53

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end42.for.body_crit_edge
  %ea_inode_refs.0130 = phi i64 [ %spec.select, %for.body.for.body_crit_edge ], [ 0, %if.end42.for.body_crit_edge ]
  %entry1.0129 = phi ptr [ %add.ptr52, %for.body.for.body_crit_edge ], [ %add.ptr43, %if.end42.for.body_crit_edge ]
  %e_value_inum = getelementptr inbounds %struct.ext4_xattr_entry, ptr %entry1.0129, i32 0, i32 3
  %21 = ptrtoint ptr %e_value_inum to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %e_value_inum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool47.not = icmp ne i32 %22, 0
  %inc = zext i1 %tobool47.not to i64
  %spec.select = add i64 %ea_inode_refs.0130, %inc
  %23 = ptrtoint ptr %entry1.0129 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %entry1.0129, align 4
  %conv50 = zext i8 %24 to i32
  %add51 = add nuw nsw i32 %conv50, 19
  %and = and i32 %add51, 508
  %add.ptr52 = getelementptr i8, ptr %entry1.0129, i32 %and
  %25 = ptrtoint ptr %add.ptr52 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr52, align 4
  %cmp.not = icmp eq i32 %26, 0
  br i1 %cmp.not, label %for.body.if.end53_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.if.end53_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end53

if.end53:                                         ; preds = %for.body.if.end53_crit_edge, %if.end42.if.end53_crit_edge, %if.end.if.end53_crit_edge
  %ea_inode_refs.2 = phi i64 [ 0, %if.end.if.end53_crit_edge ], [ 0, %if.end42.if.end53_crit_edge ], [ %spec.select, %for.body.if.end53_crit_edge ]
  %i_file_acl = getelementptr i8, ptr %inode, i32 -400
  %27 = ptrtoint ptr %i_file_acl to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %i_file_acl, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %28)
  %tobool55.not = icmp eq i64 %28, 0
  br i1 %tobool55.not, label %if.end53.if.end89_crit_edge, label %if.then56

if.end53.if.end89_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end89

if.then56:                                        ; preds = %if.end53
  %i_sb57 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %29 = ptrtoint ptr %i_sb57 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i_sb57, align 4
  %call60 = call ptr @ext4_sb_bread(ptr noundef %30, i64 noundef %28, i32 noundef 8192) #13
  %cmp.i = icmp ugt ptr %call60, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then62, label %if.end64

if.then62:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #15
  %31 = ptrtoint ptr %call60 to i32
  br label %out

if.end64:                                         ; preds = %if.then56
  %call65 = call fastcc i32 @__ext4_xattr_check_block(ptr noundef %inode, ptr noundef %call60, ptr noundef nonnull @__func__.ext4_get_inode_usage, i32 noundef 842)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end68, label %if.end64.out_crit_edge

if.end64.out_crit_edge:                           ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end68:                                         ; preds = %if.end64
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call60, i32 0, i32 5
  %32 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %b_data, align 4
  %add.ptr69 = getelementptr %struct.ext4_xattr_header, ptr %33, i32 1
  %34 = ptrtoint ptr %add.ptr69 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %add.ptr69, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp71.not131 = icmp eq i32 %35, 0
  br i1 %cmp71.not131, label %if.end68.if.end89_crit_edge, label %if.end68.for.body75_crit_edge

if.end68.for.body75_crit_edge:                    ; preds = %if.end68
  br label %for.body75

if.end68.if.end89_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end89

for.body75:                                       ; preds = %for.body75.for.body75_crit_edge, %if.end68.for.body75_crit_edge
  %ea_inode_refs.3133 = phi i64 [ %spec.select120, %for.body75.for.body75_crit_edge ], [ %ea_inode_refs.2, %if.end68.for.body75_crit_edge ]
  %entry1.1132 = phi ptr [ %add.ptr87, %for.body75.for.body75_crit_edge ], [ %add.ptr69, %if.end68.for.body75_crit_edge ]
  %e_value_inum76 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %entry1.1132, i32 0, i32 3
  %36 = ptrtoint ptr %e_value_inum76 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %e_value_inum76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool77.not = icmp ne i32 %37, 0
  %inc79 = zext i1 %tobool77.not to i64
  %spec.select120 = add i64 %ea_inode_refs.3133, %inc79
  %38 = ptrtoint ptr %entry1.1132 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %entry1.1132, align 4
  %conv83 = zext i8 %39 to i32
  %add85 = add nuw nsw i32 %conv83, 19
  %and86 = and i32 %add85, 508
  %add.ptr87 = getelementptr i8, ptr %entry1.1132, i32 %and86
  %40 = ptrtoint ptr %add.ptr87 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr87, align 4
  %cmp71.not = icmp eq i32 %41, 0
  br i1 %cmp71.not, label %for.body75.if.end89_crit_edge, label %for.body75.for.body75_crit_edge

for.body75.for.body75_crit_edge:                  ; preds = %for.body75
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body75

for.body75.if.end89_crit_edge:                    ; preds = %for.body75
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end89

if.end89:                                         ; preds = %for.body75.if.end89_crit_edge, %if.end68.if.end89_crit_edge, %if.end53.if.end89_crit_edge
  %ea_inode_refs.5 = phi i64 [ %ea_inode_refs.2, %if.end53.if.end89_crit_edge ], [ %ea_inode_refs.2, %if.end68.if.end89_crit_edge ], [ %spec.select120, %for.body75.if.end89_crit_edge ]
  %bh.0 = phi ptr [ null, %if.end53.if.end89_crit_edge ], [ %call60, %if.end68.if.end89_crit_edge ], [ %call60, %for.body75.if.end89_crit_edge ]
  %add90 = add i64 %ea_inode_refs.5, 1
  %42 = ptrtoint ptr %usage to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %add90, ptr %usage, align 8
  br label %out

out:                                              ; preds = %if.end89, %if.end64.out_crit_edge, %if.then62, %if.end33.out_crit_edge, %if.then29.out_crit_edge
  %ret.0 = phi i32 [ %call30, %if.then29.out_crit_edge ], [ %call39, %if.end33.out_crit_edge ], [ %31, %if.then62 ], [ %call65, %if.end64.out_crit_edge ], [ 0, %if.end89 ]
  %bh.1 = phi ptr [ null, %if.then29.out_crit_edge ], [ null, %if.end33.out_crit_edge ], [ null, %if.then62 ], [ %call60, %if.end64.out_crit_edge ], [ %bh.0, %if.end89 ]
  %43 = ptrtoint ptr %iloc to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %iloc, align 4
  %tobool.not.i = icmp eq ptr %44, null
  br i1 %tobool.not.i, label %out.brelse.exit_crit_edge, label %if.then.i

out.brelse.exit_crit_edge:                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %brelse.exit

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  call void @__brelse(ptr noundef nonnull %44) #13
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %out.brelse.exit_crit_edge
  %tobool.not.i125 = icmp eq ptr %bh.1, null
  br i1 %tobool.not.i125, label %brelse.exit.brelse.exit127_crit_edge, label %if.then.i126

brelse.exit.brelse.exit127_crit_edge:             ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %brelse.exit127

if.then.i126:                                     ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void @__brelse(ptr noundef nonnull %bh.1) #13
  br label %brelse.exit127

brelse.exit127:                                   ; preds = %if.then.i126, %brelse.exit.brelse.exit127_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %iloc) #13
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ext4_sb_bread(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__ext4_xattr_check_block(ptr noundef %inode, ptr noundef %bh, ptr noundef %function, i32 noundef %line) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 5
  %0 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 746, i32 %3)
  %cmp.not = icmp eq i32 %3, 746
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then15_crit_edge

entry.if.then15_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then15

lor.lhs.false:                                    ; preds = %entry
  %h_blocks = getelementptr inbounds %struct.ext4_xattr_header, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %h_blocks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %h_blocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %5)
  %cmp2.not = icmp eq i32 %5, 16777216
  br i1 %cmp2.not, label %if.end, label %lor.lhs.false.if.then15_crit_edge

lor.lhs.false.if.then15_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then15

if.end:                                           ; preds = %lor.lhs.false
  %6 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %bh, align 4
  %8 = and i32 %7, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %9 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 33
  %11 = ptrtoint ptr %s_fs_info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_fs_info.i.i.i.i, align 16
  %s_es.i.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %12, i32 0, i32 15
  %13 = ptrtoint ptr %s_es.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_es.i.i.i, align 4
  %s_feature_ro_compat.i.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %14, i32 0, i32 30
  %15 = ptrtoint ptr %s_feature_ro_compat.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %s_feature_ro_compat.i.i.i, align 4
  %and.i.i.i = and i32 %16, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.not.i.i, label %if.end4.if.end32.i.i_crit_edge, label %land.rhs.i.i

if.end4.if.end32.i.i_crit_edge:                   ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32.i.i

land.rhs.i.i:                                     ; preds = %if.end4
  %s_chksum_driver.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %12, i32 0, i32 121
  %17 = ptrtoint ptr %s_chksum_driver.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_chksum_driver.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i, label %land.rhs5.i.i, label %land.rhs.i.i.if.end32.i.i_crit_edge

land.rhs.i.i.if.end32.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32.i.i

land.rhs5.i.i:                                    ; preds = %land.rhs.i.i
  %.b50.i.i = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  br i1 %.b50.i.i, label %land.rhs5.i.i.if.end32.i.i_crit_edge, label %if.then.i.i, !prof !159

land.rhs5.i.i.if.end32.i.i_crit_edge:             ; preds = %land.rhs5.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32.i.i

if.then.i.i:                                      ; preds = %land.rhs5.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 3289, i32 noundef 9, ptr noundef null) #13
  br label %if.end32.i.i

if.end32.i.i:                                     ; preds = %if.then.i.i, %land.rhs5.i.i.if.end32.i.i_crit_edge, %land.rhs.i.i.if.end32.i.i_crit_edge, %if.end4.if.end32.i.i_crit_edge
  %19 = ptrtoint ptr %s_fs_info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_fs_info.i.i.i.i, align 16
  %s_es.i53.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %20, i32 0, i32 15
  %21 = ptrtoint ptr %s_es.i53.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %s_es.i53.i.i, align 4
  %s_feature_ro_compat.i54.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %22, i32 0, i32 30
  %23 = ptrtoint ptr %s_feature_ro_compat.i54.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %s_feature_ro_compat.i54.i.i, align 4
  %and.i55.i.i = and i32 %24, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i55.i.i)
  %cmp.i56.not.i.i = icmp eq i32 %and.i55.i.i, 0
  br i1 %cmp.i56.not.i.i, label %if.end32.i.i.if.end8_crit_edge, label %ext4_has_metadata_csum.exit.i

if.end32.i.i.if.end8_crit_edge:                   ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

ext4_has_metadata_csum.exit.i:                    ; preds = %if.end32.i.i
  %s_chksum_driver43.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %20, i32 0, i32 121
  %25 = ptrtoint ptr %s_chksum_driver43.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %s_chksum_driver43.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %26, null
  br i1 %cmp.i.not.i, label %ext4_has_metadata_csum.exit.i.if.end8_crit_edge, label %if.then.i29

ext4_has_metadata_csum.exit.i.if.end8_crit_edge:  ; preds = %ext4_has_metadata_csum.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.then.i29:                                      ; preds = %ext4_has_metadata_csum.exit.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.14, i32 noundef 366) #13
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bh, i32 noundef 4) #13
  %27 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %bh, align 4
  %and.i.i.i.i.i = and i32 %28, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %trylock_buffer.exit.i.i, label %if.then.i29.if.then.i7.i_crit_edge

if.then.i29.if.then.i7.i_crit_edge:               ; preds = %if.then.i29
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i7.i

trylock_buffer.exit.i.i:                          ; preds = %if.then.i29
  tail call void @llvm.prefetch.p0(ptr %bh, i32 1, i32 3, i32 1) #13
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bh, ptr %bh, i32 4, ptr elementtype(i32) %bh) #13, !srcloc !162
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %29, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !163
  %30 = and i32 %asmresult.i.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.not.i.i = icmp eq i32 %30, 0
  br i1 %tobool.not.not.i.i, label %trylock_buffer.exit.i.i.ext4_xattr_block_csum_verify.exit_crit_edge, label %trylock_buffer.exit.i.i.if.then.i7.i_crit_edge

trylock_buffer.exit.i.i.if.then.i7.i_crit_edge:   ; preds = %trylock_buffer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i7.i

trylock_buffer.exit.i.i.ext4_xattr_block_csum_verify.exit_crit_edge: ; preds = %trylock_buffer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ext4_xattr_block_csum_verify.exit

if.then.i7.i:                                     ; preds = %trylock_buffer.exit.i.i.if.then.i7.i_crit_edge, %if.then.i29.if.then.i7.i_crit_edge
  tail call void @__lock_buffer(ptr noundef %bh) #13
  br label %ext4_xattr_block_csum_verify.exit

ext4_xattr_block_csum_verify.exit:                ; preds = %if.then.i7.i, %trylock_buffer.exit.i.i.ext4_xattr_block_csum_verify.exit_crit_edge
  %h_checksum.i = getelementptr inbounds %struct.ext4_xattr_header, ptr %1, i32 0, i32 4
  %31 = ptrtoint ptr %h_checksum.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %h_checksum.i, align 4
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 3
  %33 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %b_blocknr.i, align 8
  %call1.i = tail call fastcc i32 @ext4_xattr_block_csum(ptr noundef %inode, i64 noundef %34, ptr noundef %1) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %call1.i)
  %cmp.i.not = icmp eq i32 %32, %call1.i
  tail call void @unlock_buffer(ptr noundef %bh) #13
  br i1 %cmp.i.not, label %ext4_xattr_block_csum_verify.exit.if.end8_crit_edge, label %ext4_xattr_block_csum_verify.exit.if.then15_crit_edge

ext4_xattr_block_csum_verify.exit.if.then15_crit_edge: ; preds = %ext4_xattr_block_csum_verify.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then15

ext4_xattr_block_csum_verify.exit.if.end8_crit_edge: ; preds = %ext4_xattr_block_csum_verify.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.end8:                                          ; preds = %ext4_xattr_block_csum_verify.exit.if.end8_crit_edge, %ext4_has_metadata_csum.exit.i.if.end8_crit_edge, %if.end32.i.i.if.end8_crit_edge
  %35 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %b_data, align 4
  %add.ptr = getelementptr %struct.ext4_xattr_header, ptr %36, i32 1
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 4
  %37 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %b_size, align 8
  %add.ptr11 = getelementptr i8, ptr %36, i32 %38
  br label %while.cond.i

while.cond.i:                                     ; preds = %cleanup.i.while.cond.i_crit_edge, %if.end8
  %e.0.i = phi ptr [ %add.ptr, %if.end8 ], [ %add.ptr.i, %cleanup.i.while.cond.i_crit_edge ]
  %39 = ptrtoint ptr %e.0.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %e.0.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp.not.i = icmp eq i32 %40, 0
  br i1 %cmp.not.i, label %while.cond13.preheader.i, label %while.body.i

while.cond13.preheader.i:                         ; preds = %while.cond.i
  %41 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp14.not101.i = icmp eq i32 %42, 0
  br i1 %cmp14.not101.i, label %while.cond13.preheader.i.if.else_crit_edge, label %while.body17.lr.ph.i

while.cond13.preheader.i.if.else_crit_edge:       ; preds = %while.cond13.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

while.body17.lr.ph.i:                             ; preds = %while.cond13.preheader.i
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr11 to i32
  %add.ptr34.i = getelementptr i8, ptr %e.0.i, i32 4
  br label %while.body17.i

while.body.i:                                     ; preds = %while.cond.i
  %43 = ptrtoint ptr %e.0.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %e.0.i, align 4
  %conv.i30 = zext i8 %44 to i32
  %add2.i = add nuw nsw i32 %conv.i30, 19
  %and.i = and i32 %add2.i, 508
  %add.ptr.i = getelementptr i8, ptr %e.0.i, i32 %and.i
  %cmp3.not.i = icmp ult ptr %add.ptr.i, %add.ptr11
  br i1 %cmp3.not.i, label %cleanup.i, label %while.body.i.if.then15_crit_edge

while.body.i.if.then15_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then15

cleanup.i:                                        ; preds = %while.body.i
  %e_name.i = getelementptr inbounds %struct.ext4_xattr_entry, ptr %e.0.i, i32 0, i32 6
  %call.i = tail call i32 @strnlen(ptr noundef %e_name.i, i32 noundef %conv.i30) #16
  %cmp9.not.i = icmp eq i32 %call.i, %conv.i30
  br i1 %cmp9.not.i, label %cleanup.i.while.cond.i_crit_edge, label %cleanup.i.if.then15_crit_edge

cleanup.i.if.then15_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then15

cleanup.i.while.cond.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i

while.body17.i:                                   ; preds = %cleanup63.i.while.body17.i_crit_edge, %while.body17.lr.ph.i
  %entry.addr.0102.i = phi ptr [ %add.ptr, %while.body17.lr.ph.i ], [ %add.ptr62.i, %cleanup63.i.while.body17.i_crit_edge ]
  %e_value_size.i = getelementptr inbounds %struct.ext4_xattr_entry, ptr %entry.addr.0102.i, i32 0, i32 4
  %45 = ptrtoint ptr %e_value_size.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %e_value_size.i, align 4
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %47)
  %cmp18.i = icmp ugt i32 %47, 16777216
  br i1 %cmp18.i, label %while.body17.i.if.then15_crit_edge, label %if.end21.i

while.body17.i.if.then15_crit_edge:               ; preds = %while.body17.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then15

if.end21.i:                                       ; preds = %while.body17.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp22.not.i = icmp eq i32 %46, 0
  br i1 %cmp22.not.i, label %if.end21.i.cleanup63.i_crit_edge, label %land.lhs.true.i

if.end21.i.cleanup63.i_crit_edge:                 ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup63.i

land.lhs.true.i:                                  ; preds = %if.end21.i
  %e_value_inum.i = getelementptr inbounds %struct.ext4_xattr_entry, ptr %entry.addr.0102.i, i32 0, i32 3
  %48 = ptrtoint ptr %e_value_inum.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %e_value_inum.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp24.i = icmp eq i32 %49, 0
  br i1 %cmp24.i, label %if.then26.i, label %land.lhs.true.i.cleanup63.i_crit_edge

land.lhs.true.i.cleanup63.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup63.i

if.then26.i:                                      ; preds = %land.lhs.true.i
  %e_value_offs.i = getelementptr inbounds %struct.ext4_xattr_entry, ptr %entry.addr.0102.i, i32 0, i32 2
  %50 = ptrtoint ptr %e_value_offs.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %e_value_offs.i, align 2
  %52 = tail call i16 @llvm.bswap.i16(i16 %51) #13
  %conv27.i = zext i16 %52 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %conv27.i)
  %cmp28.i = icmp slt i32 %38, %conv27.i
  br i1 %cmp28.i, label %if.then26.i.if.then15_crit_edge, label %if.end31.i

if.then26.i.if.then15_crit_edge:                  ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then15

if.end31.i:                                       ; preds = %if.then26.i
  %add.ptr33.i = getelementptr i8, ptr %36, i32 %conv27.i
  %cmp35.i = icmp ult ptr %add.ptr33.i, %add.ptr34.i
  br i1 %cmp35.i, label %if.end31.i.if.then15_crit_edge, label %lor.lhs.false.i

if.end31.i.if.then15_crit_edge:                   ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then15

lor.lhs.false.i:                                  ; preds = %if.end31.i
  %sub.ptr.rhs.cast38.i = ptrtoint ptr %add.ptr33.i to i32
  %sub.ptr.sub39.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast38.i
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %sub.ptr.sub39.i)
  %cmp40.i = icmp ugt i32 %47, %sub.ptr.sub39.i
  br i1 %cmp40.i, label %lor.lhs.false.i.if.then15_crit_edge, label %lor.lhs.false42.i

lor.lhs.false.i.if.then15_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then15

lor.lhs.false42.i:                                ; preds = %lor.lhs.false.i
  %add43.i = add nuw nsw i32 %47, 3
  %and44.i = and i32 %add43.i, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %and44.i, i32 %sub.ptr.sub39.i)
  %cmp48.i = icmp ugt i32 %and44.i, %sub.ptr.sub39.i
  br i1 %cmp48.i, label %lor.lhs.false42.i.if.then15_crit_edge, label %lor.lhs.false42.i.cleanup63.i_crit_edge

lor.lhs.false42.i.cleanup63.i_crit_edge:          ; preds = %lor.lhs.false42.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup63.i

lor.lhs.false42.i.if.then15_crit_edge:            ; preds = %lor.lhs.false42.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then15

cleanup63.i:                                      ; preds = %lor.lhs.false42.i.cleanup63.i_crit_edge, %land.lhs.true.i.cleanup63.i_crit_edge, %if.end21.i.cleanup63.i_crit_edge
  %53 = ptrtoint ptr %entry.addr.0102.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %entry.addr.0102.i, align 4
  %conv58.i = zext i8 %54 to i32
  %add60.i = add nuw nsw i32 %conv58.i, 19
  %and61.i = and i32 %add60.i, 508
  %add.ptr62.i = getelementptr i8, ptr %entry.addr.0102.i, i32 %and61.i
  %55 = ptrtoint ptr %add.ptr62.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %add.ptr62.i, align 4
  %cmp14.not.i = icmp eq i32 %56, 0
  br i1 %cmp14.not.i, label %cleanup63.i.if.else_crit_edge, label %cleanup63.i.while.body17.i_crit_edge

cleanup63.i.while.body17.i_crit_edge:             ; preds = %cleanup63.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body17.i

cleanup63.i.if.else_crit_edge:                    ; preds = %cleanup63.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then15:                                        ; preds = %lor.lhs.false42.i.if.then15_crit_edge, %lor.lhs.false.i.if.then15_crit_edge, %if.end31.i.if.then15_crit_edge, %if.then26.i.if.then15_crit_edge, %while.body17.i.if.then15_crit_edge, %cleanup.i.if.then15_crit_edge, %while.body.i.if.then15_crit_edge, %ext4_xattr_block_csum_verify.exit.if.then15_crit_edge, %lor.lhs.false.if.then15_crit_edge, %entry.if.then15_crit_edge
  %error.0.ph = phi i32 [ -74, %ext4_xattr_block_csum_verify.exit.if.then15_crit_edge ], [ -117, %lor.lhs.false.if.then15_crit_edge ], [ -117, %entry.if.then15_crit_edge ], [ -117, %if.then26.i.if.then15_crit_edge ], [ -117, %lor.lhs.false42.i.if.then15_crit_edge ], [ -117, %lor.lhs.false.i.if.then15_crit_edge ], [ -117, %if.end31.i.if.then15_crit_edge ], [ -117, %while.body17.i.if.then15_crit_edge ], [ -117, %while.body.i.if.then15_crit_edge ], [ -117, %cleanup.i.if.then15_crit_edge ]
  %sub = sub nsw i32 0, %error.0.ph
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 3
  %57 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %b_blocknr, align 8
  tail call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %inode, ptr noundef %function, i32 noundef %line, i64 noundef 0, i32 noundef %sub, ptr noundef nonnull @.str.12, i64 noundef %58) #13
  br label %cleanup

if.else:                                          ; preds = %cleanup63.i.if.else_crit_edge, %while.cond13.preheader.i.if.else_crit_edge
  %59 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %bh, align 4
  %61 = and i32 %60, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool.not.i = icmp eq i32 %61, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_set_bit(i32 noundef 24, ptr noundef %bh) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.else.cleanup_crit_edge, %if.then15, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %error.0.ph, %if.then15 ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__ext4_xattr_set_credits(ptr nocapture noundef readonly %sb, ptr noundef %inode, ptr noundef readonly %block_bh, i32 noundef %value_len, i1 noundef zeroext %is_create) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_mount_opt.i = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %s_mount_opt.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_mount_opt.i, align 4
  %and.i = and i32 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %ext4_quota_capable.exit, label %entry.ext4_quota_capable.exit.thread_crit_edge

entry.ext4_quota_capable.exit.thread_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %ext4_quota_capable.exit.thread

ext4_quota_capable.exit:                          ; preds = %entry
  %s_es.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %s_es.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_es.i.i, align 4
  %s_feature_ro_compat.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %5, i32 0, i32 30
  %6 = ptrtoint ptr %s_feature_ro_compat.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_feature_ro_compat.i.i, align 4
  %and.i.i = and i32 %7, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.i.not = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.i.not, label %ext4_quota_capable.exit._crit_edge, label %ext4_quota_capable.exit.ext4_quota_capable.exit.thread_crit_edge

ext4_quota_capable.exit.ext4_quota_capable.exit.thread_crit_edge: ; preds = %ext4_quota_capable.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %ext4_quota_capable.exit.thread

ext4_quota_capable.exit._crit_edge:               ; preds = %ext4_quota_capable.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %8

ext4_quota_capable.exit.thread:                   ; preds = %ext4_quota_capable.exit.ext4_quota_capable.exit.thread_crit_edge, %entry.ext4_quota_capable.exit.thread_crit_edge
  br label %8

8:                                                ; preds = %ext4_quota_capable.exit.thread, %ext4_quota_capable.exit._crit_edge
  %9 = phi i32 [ 10, %ext4_quota_capable.exit.thread ], [ 7, %ext4_quota_capable.exit._crit_edge ]
  %tobool.not = icmp eq ptr %inode, null
  br i1 %tobool.not, label %.if.end_crit_edge, label %land.lhs.true

.if.end_crit_edge:                                ; preds = %8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %8
  %i_flags.i.i = getelementptr i8, ptr %inode, i32 -380
  %10 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %i_flags.i.i, align 4
  %12 = and i32 %11, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i62 = icmp eq i32 %12, 0
  br i1 %tobool.not.i62, label %land.lhs.true.if.end_crit_edge, label %ext4_has_inline_data.exit

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

ext4_has_inline_data.exit:                        ; preds = %land.lhs.true
  %i_inline_off.i = getelementptr i8, ptr %inode, i32 990
  %13 = ptrtoint ptr %i_inline_off.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %i_inline_off.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool2.i.not = icmp eq i16 %14, 0
  br i1 %tobool2.i.not, label %ext4_has_inline_data.exit.if.end_crit_edge, label %if.then

ext4_has_inline_data.exit.if.end_crit_edge:       ; preds = %ext4_has_inline_data.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %ext4_has_inline_data.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call3 = tail call i32 @ext4_writepage_trans_blocks(ptr noundef nonnull %inode) #13
  %add4 = add nuw nsw i32 %9, 1
  %add5 = add i32 %add4, %call3
  br label %if.end

if.end:                                           ; preds = %if.then, %ext4_has_inline_data.exit.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %.if.end_crit_edge
  %credits.0 = phi i32 [ %add5, %if.then ], [ %9, %ext4_has_inline_data.exit.if.end_crit_edge ], [ %9, %.if.end_crit_edge ], [ %9, %land.lhs.true.if.end_crit_edge ]
  %15 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_es.i = getelementptr inbounds %struct.ext4_sb_info, ptr %16, i32 0, i32 15
  %17 = ptrtoint ptr %s_es.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_es.i, align 4
  %s_feature_incompat.i = getelementptr inbounds %struct.ext4_super_block, ptr %18, i32 0, i32 29
  %19 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %s_feature_incompat.i, align 8
  %and.i64 = and i32 %20, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i64)
  %cmp.i.not = icmp eq i32 %and.i64, 0
  br i1 %cmp.i.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %add9 = add i32 %credits.0, 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %21 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %s_blocksize, align 16
  %add10 = add i32 %value_len, -1
  %sub = add i32 %add10, %22
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %23 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %s_blocksize_bits, align 4
  %conv = zext i8 %24 to i32
  %shr = lshr i32 %sub, %conv
  %add11 = add i32 %shr, 1
  %mul12 = shl i32 %add11, 1
  %add13 = add i32 %add9, %add11
  %add14 = add i32 %add13, %mul12
  %shr20 = lshr i32 65536, %conv
  %add21 = shl nuw nsw i32 %shr20, 1
  %mul22 = add nuw nsw i32 %add21, 6
  %add23 = select i1 %is_create, i32 0, i32 %mul22
  %credits.1 = add i32 %add14, %add23
  %tobool25.not = icmp eq ptr %block_bh, null
  br i1 %tobool25.not, label %if.end8.cleanup_crit_edge, label %if.then26

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then26:                                        ; preds = %if.end8
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %block_bh, i32 0, i32 5
  %25 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %b_data, align 4
  %add.ptr = getelementptr %struct.ext4_xattr_header, ptr %26, i32 1
  %27 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.not66 = icmp eq i32 %28, 0
  br i1 %cmp.not66, label %if.then26.cleanup_crit_edge, label %if.then26.for.body_crit_edge

if.then26.for.body_crit_edge:                     ; preds = %if.then26
  br label %for.body

if.then26.cleanup_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then26.for.body_crit_edge
  %entry27.068 = phi ptr [ %add.ptr36, %for.body.for.body_crit_edge ], [ %add.ptr, %if.then26.for.body_crit_edge ]
  %credits.267 = phi i32 [ %spec.select, %for.body.for.body_crit_edge ], [ %credits.1, %if.then26.for.body_crit_edge ]
  %e_value_inum = getelementptr inbounds %struct.ext4_xattr_entry, ptr %entry27.068, i32 0, i32 3
  %29 = ptrtoint ptr %e_value_inum to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %e_value_inum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool29.not = icmp ne i32 %30, 0
  %add31 = zext i1 %tobool29.not to i32
  %spec.select = add i32 %credits.267, %add31
  %31 = ptrtoint ptr %entry27.068 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %entry27.068, align 4
  %conv33 = zext i8 %32 to i32
  %add35 = add nuw nsw i32 %conv33, 19
  %and = and i32 %add35, 508
  %add.ptr36 = getelementptr i8, ptr %entry27.068, i32 %and
  %33 = ptrtoint ptr %add.ptr36 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr36, align 4
  %cmp.not = icmp eq i32 %34, 0
  br i1 %cmp.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.then26.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %credits.0, %if.end.cleanup_crit_edge ], [ %credits.1, %if.end8.cleanup_crit_edge ], [ %credits.1, %if.then26.cleanup_crit_edge ], [ %spec.select, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_writepage_trans_blocks(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_xattr_ibody_find(ptr noundef %inode, ptr nocapture noundef readonly %i, ptr nocapture noundef %is) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_extra_isize = getelementptr i8, ptr %inode, i32 988
  %0 = ptrtoint ptr %i_extra_isize to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %i_extra_isize, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp = icmp eq i16 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %iloc = getelementptr inbounds %struct.ext4_xattr_ibody_find, ptr %is, i32 0, i32 1
  %2 = ptrtoint ptr %iloc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iloc, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b_data.i, align 4
  %offset.i = getelementptr inbounds %struct.ext4_xattr_ibody_find, ptr %is, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset.i, align 4
  %add.ptr.i59 = getelementptr i8, ptr %5, i32 %7
  %add.ptr = getelementptr i8, ptr %add.ptr.i59, i32 128
  %conv5 = zext i16 %1 to i32
  %add.ptr6 = getelementptr i8, ptr %add.ptr, i32 %conv5
  %add.ptr7 = getelementptr %struct.ext4_xattr_ibody_header, ptr %add.ptr6, i32 1
  %8 = ptrtoint ptr %is to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr7, ptr %is, align 4
  %base = getelementptr inbounds %struct.ext4_xattr_search, ptr %is, i32 0, i32 1
  %9 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr7, ptr %base, align 4
  %here = getelementptr inbounds %struct.ext4_xattr_search, ptr %is, i32 0, i32 3
  %10 = ptrtoint ptr %here to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr7, ptr %here, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %11 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 33
  %13 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_fs_info.i, align 16
  %s_inode_size = getelementptr inbounds %struct.ext4_sb_info, ptr %14, i32 0, i32 29
  %15 = ptrtoint ptr %s_inode_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %s_inode_size, align 4
  %add.ptr13 = getelementptr i8, ptr %add.ptr.i59, i32 %16
  %end = getelementptr inbounds %struct.ext4_xattr_search, ptr %is, i32 0, i32 2
  %17 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr13, ptr %end, align 4
  %i_state_flags.i = getelementptr i8, ptr %inode, i32 -384
  %18 = ptrtoint ptr %i_state_flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %i_state_flags.i, align 4
  %20 = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not = icmp eq i32 %20, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then16:                                        ; preds = %if.end
  %call19 = tail call fastcc i32 @__xattr_check_inode(ptr noundef %inode, ptr noundef %add.ptr6, ptr noundef %add.ptr13, ptr noundef nonnull @__func__.ext4_xattr_ibody_find, i32 noundef 2187)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.then16.cleanup_crit_edge

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end22:                                         ; preds = %if.then16
  %21 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %end, align 4
  %name_index = getelementptr inbounds %struct.ext4_xattr_info, ptr %i, i32 0, i32 3
  %23 = ptrtoint ptr %name_index to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %name_index, align 4
  %25 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i, align 4
  %cmp2.i = icmp eq ptr %26, null
  br i1 %cmp2.i, label %if.end22.cleanup_crit_edge, label %if.end.i

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %if.end22
  %call.i = tail call i32 @strlen(ptr noundef nonnull %26) #16
  %27 = ptrtoint ptr %here to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %here, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp3.not54.i = icmp eq i32 %30, 0
  br i1 %cmp3.not54.i, label %if.end.i.if.end32_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.if.end32_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %entry1.055.i = phi ptr [ %add.ptr.i61, %for.inc.i.for.body.i_crit_edge ], [ %28, %if.end.i.for.body.i_crit_edge ]
  %31 = ptrtoint ptr %entry1.055.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %entry1.055.i, align 4
  %conv.i = zext i8 %32 to i32
  %add4.i = add nuw nsw i32 %conv.i, 19
  %and.i = and i32 %add4.i, 508
  %add.ptr.i61 = getelementptr i8, ptr %entry1.055.i, i32 %and.i
  %cmp5.not.i = icmp ult ptr %add.ptr.i61, %22
  br i1 %cmp5.not.i, label %if.end8.i, label %if.then7.i

if.then7.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %inode, ptr noundef nonnull @__func__.xattr_find_entry, i32 noundef 296, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.9) #13
  br label %cleanup

if.end8.i:                                        ; preds = %for.body.i
  %e_name_index.i = getelementptr inbounds %struct.ext4_xattr_entry, ptr %entry1.055.i, i32 0, i32 1
  %33 = ptrtoint ptr %e_name_index.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %e_name_index.i, align 1
  %conv9.i = zext i8 %34 to i32
  %sub.i = sub i32 %24, %conv9.i
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %conv9.i)
  %tobool.not.i = icmp eq i32 %24, %conv9.i
  %sub13.i = sub i32 %call.i, %conv.i
  %spec.select.i = select i1 %tobool.not.i, i32 %sub13.i, i32 %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %tobool15.not.i = icmp eq i32 %spec.select.i, 0
  br i1 %tobool15.not.i, label %if.end18.i, label %if.end8.i.for.inc.i_crit_edge

if.end8.i.for.inc.i_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.end18.i:                                       ; preds = %if.end8.i
  %e_name.i = getelementptr inbounds %struct.ext4_xattr_entry, ptr %entry1.055.i, i32 0, i32 6
  %bcmp = tail call i32 @bcmp(ptr nonnull %26, ptr %e_name.i, i32 %call.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp22.i = icmp eq i32 %bcmp, 0
  br i1 %cmp22.i, label %if.end18.i.if.end32_crit_edge, label %if.end18.i.for.inc.i_crit_edge

if.end18.i.for.inc.i_crit_edge:                   ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.end18.i.if.end32_crit_edge:                    ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

for.inc.i:                                        ; preds = %if.end18.i.for.inc.i_crit_edge, %if.end8.i.for.inc.i_crit_edge
  %35 = ptrtoint ptr %add.ptr.i61 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr.i61, align 4
  %cmp3.not.i = icmp eq i32 %36, 0
  br i1 %cmp3.not.i, label %for.inc.i.if.end32_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.if.end32_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

if.end32:                                         ; preds = %for.inc.i.if.end32_crit_edge, %if.end18.i.if.end32_crit_edge, %if.end.i.if.end32_crit_edge
  %storemerge = phi ptr [ %28, %if.end.i.if.end32_crit_edge ], [ %entry1.055.i, %if.end18.i.if.end32_crit_edge ], [ %add.ptr.i61, %for.inc.i.if.end32_crit_edge ]
  %retval.0.i = phi i32 [ -61, %if.end.i.if.end32_crit_edge ], [ 0, %if.end18.i.if.end32_crit_edge ], [ -61, %for.inc.i.if.end32_crit_edge ]
  %37 = ptrtoint ptr %here to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %storemerge, ptr %here, align 4
  %not_found = getelementptr inbounds %struct.ext4_xattr_search, ptr %is, i32 0, i32 4
  %38 = ptrtoint ptr %not_found to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %retval.0.i, ptr %not_found, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.then7.i, %if.end22.cleanup_crit_edge, %if.then16.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call19, %if.then16.cleanup_crit_edge ], [ 0, %if.end32 ], [ 0, %if.end.cleanup_crit_edge ], [ -22, %if.end22.cleanup_crit_edge ], [ -117, %if.then7.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_xattr_ibody_set(ptr noundef %handle, ptr noundef %inode, ptr nocapture noundef readonly %i, ptr nocapture noundef readonly %is) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_extra_isize = getelementptr i8, ptr %inode, i32 988
  %0 = ptrtoint ptr %i_extra_isize to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %i_extra_isize, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp = icmp eq i16 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call fastcc i32 @ext4_xattr_set_entry(ptr noundef %i, ptr noundef %is, ptr noundef %handle, ptr noundef %inode, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %iloc = getelementptr inbounds %struct.ext4_xattr_ibody_find, ptr %is, i32 0, i32 1
  %2 = ptrtoint ptr %iloc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iloc, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b_data.i, align 4
  %offset.i = getelementptr inbounds %struct.ext4_xattr_ibody_find, ptr %is, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset.i, align 4
  %add.ptr.i26 = getelementptr i8, ptr %5, i32 %7
  %add.ptr = getelementptr i8, ptr %add.ptr.i26, i32 128
  %8 = ptrtoint ptr %i_extra_isize to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %i_extra_isize, align 4
  %conv9 = zext i16 %9 to i32
  %add.ptr10 = getelementptr i8, ptr %add.ptr, i32 %conv9
  %10 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %is, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp11 = icmp eq i32 %13, 0
  br i1 %cmp11, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %add.ptr10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 746, ptr %add.ptr10, align 4
  %i_state_flags.i = getelementptr i8, ptr %inode, i32 -384
  tail call void @_set_bit(i32 noundef 2, ptr noundef %i_state_flags.i) #13
  br label %cleanup

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  %15 = ptrtoint ptr %add.ptr10 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %add.ptr10, align 4
  %i_state_flags.i28 = getelementptr i8, ptr %inode, i32 -384
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %i_state_flags.i28) #13
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then13, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -28, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %if.then13 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ext4_xattr_set_entry(ptr nocapture noundef readonly %i, ptr nocapture noundef readonly %s, ptr noundef %handle, ptr noundef %inode, i1 noundef zeroext %is_block) unnamed_addr #0 align 64 {
entry:
  %retries.i.i = alloca i32, align 4
  %map.i.i = alloca %struct.ext4_map_blocks, align 8
  %owner.i.i = alloca [2 x i32], align 4
  %desc.i.i.i.i.i = alloca %struct.anon.94, align 8
  %desc.i.i.i = alloca %struct.anon.94, align 8
  %old_ea_inode = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %here1 = getelementptr inbounds %struct.ext4_xattr_search, ptr %s, i32 0, i32 3
  %0 = ptrtoint ptr %here1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %here1, align 4
  %end = getelementptr inbounds %struct.ext4_xattr_search, ptr %s, i32 0, i32 2
  %2 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %end, align 4
  %base = getelementptr inbounds %struct.ext4_xattr_search, ptr %s, i32 0, i32 1
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %5 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %6 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i, align 4
  %call = tail call i32 @strlen(ptr noundef %7) #17
  %in_inode2 = getelementptr inbounds %struct.ext4_xattr_info, ptr %i, i32 0, i32 4
  %8 = ptrtoint ptr %in_inode2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %in_inode2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old_ea_inode) #13
  %10 = ptrtoint ptr %old_ea_inode to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %old_ea_inode, align 4
  %not_found = getelementptr inbounds %struct.ext4_xattr_search, ptr %s, i32 0, i32 4
  %11 = ptrtoint ptr %not_found to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %not_found, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

land.lhs.true:                                    ; preds = %entry
  %e_value_inum = getelementptr inbounds %struct.ext4_xattr_entry, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %e_value_inum to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %e_value_inum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool3.not = icmp eq i32 %14, 0
  br i1 %tobool3.not, label %cond.true, label %land.lhs.true.cond.end_crit_edge

land.lhs.true.cond.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.true:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %e_value_size = getelementptr inbounds %struct.ext4_xattr_entry, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %e_value_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %e_value_size, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %add = add i32 %17, 3
  %and = and i32 %add, -4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %land.lhs.true.cond.end_crit_edge, %entry.cond.end_crit_edge
  %cond = phi i32 [ %and, %cond.true ], [ 0, %land.lhs.true.cond.end_crit_edge ], [ 0, %entry.cond.end_crit_edge ]
  %value = getelementptr inbounds %struct.ext4_xattr_info, ptr %i, i32 0, i32 1
  %18 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %value, align 4
  %tobool4.not = icmp ne ptr %19, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool6.not = icmp eq i32 %9, 0
  %or.cond = select i1 %tobool4.not, i1 %tobool6.not, i1 false
  br i1 %or.cond, label %cond.end11, label %cond.end.if.end27_crit_edge

cond.end.if.end27_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

cond.end11:                                       ; preds = %cond.end
  %value_len = getelementptr inbounds %struct.ext4_xattr_info, ptr %i, i32 0, i32 2
  %20 = ptrtoint ptr %value_len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %value_len, align 4
  %add8 = add i32 %21, 3
  %and9 = and i32 %add8, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool13.not = icmp eq i32 %and9, 0
  %tobool13.not.not = xor i1 %tobool13.not, true
  call void @__sanitizer_cov_trace_cmp4(i32 %and9, i32 %cond)
  %cmp = icmp eq i32 %and9, %cond
  %or.cond525 = select i1 %tobool13.not.not, i1 %cmp, i1 false
  br i1 %or.cond525, label %if.then, label %cond.end11.if.end27_crit_edge

cond.end11.if.end27_crit_edge:                    ; preds = %cond.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

if.then:                                          ; preds = %cond.end11
  %e_value_offs = getelementptr inbounds %struct.ext4_xattr_entry, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %e_value_offs to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %e_value_offs, align 2
  %24 = tail call i16 @llvm.bswap.i16(i16 %23)
  %conv = zext i16 %24 to i32
  %add.ptr = getelementptr i8, ptr %5, i32 %conv
  %25 = ptrtoint ptr %value_len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %value_len, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %e_value_size17 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %1, i32 0, i32 4
  %28 = ptrtoint ptr %e_value_size17 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %e_value_size17, align 4
  %29 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %value, align 4
  %cmp19 = icmp eq ptr %30, inttoptr (i32 -1 to ptr)
  br i1 %cmp19, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %31 = call ptr @memset(ptr %add.ptr, i32 0, i32 %cond)
  br label %update_hash

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %32 = ptrtoint ptr %value_len to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %value_len, align 4
  %34 = call ptr @memcpy(ptr %add.ptr, ptr %30, i32 %33)
  %35 = load i32, ptr %value_len, align 4
  %add.ptr25 = getelementptr i8, ptr %add.ptr, i32 %35
  %sub = sub i32 %cond, %35
  %36 = call ptr @memset(ptr %add.ptr25, i32 0, i32 %sub)
  br label %update_hash

if.end27:                                         ; preds = %cond.end11.if.end27_crit_edge, %cond.end.if.end27_crit_edge
  %tobool13.not586 = phi i1 [ %tobool13.not, %cond.end11.if.end27_crit_edge ], [ true, %cond.end.if.end27_crit_edge ]
  %cond12585 = phi i32 [ %and9, %cond.end11.if.end27_crit_edge ], [ 0, %cond.end.if.end27_crit_edge ]
  %idx.neg289 = sub i32 0, %cond12585
  %37 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %s, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp28.not623 = icmp eq i32 %40, 0
  br i1 %cmp28.not623, label %if.end27.for.end_crit_edge, label %if.end27.for.body_crit_edge

if.end27.for.body_crit_edge:                      ; preds = %if.end27
  br label %for.body

if.end27.for.end_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end27.for.body_crit_edge
  %last.0625 = phi ptr [ %add.ptr34, %for.inc.for.body_crit_edge ], [ %38, %if.end27.for.body_crit_edge ]
  %min_offs.0624 = phi i32 [ %min_offs.2, %for.inc.for.body_crit_edge ], [ %sub.ptr.sub, %if.end27.for.body_crit_edge ]
  %41 = ptrtoint ptr %last.0625 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %last.0625, align 4
  %conv30 = zext i8 %42 to i32
  %add32 = add nuw nsw i32 %conv30, 19
  %and33 = and i32 %add32, 508
  %add.ptr34 = getelementptr i8, ptr %last.0625, i32 %and33
  %cmp36.not = icmp ult ptr %add.ptr34, %3
  br i1 %cmp36.not, label %if.end39, label %if.then38

if.then38:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %inode, ptr noundef nonnull @__func__.ext4_xattr_set_entry, i32 noundef 1596, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.9) #13
  br label %cleanup344

if.end39:                                         ; preds = %for.body
  %e_value_inum40 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %last.0625, i32 0, i32 3
  %43 = ptrtoint ptr %e_value_inum40 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %e_value_inum40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool41.not = icmp eq i32 %44, 0
  br i1 %tobool41.not, label %land.lhs.true42, label %if.end39.for.inc_crit_edge

if.end39.for.inc_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true42:                                  ; preds = %if.end39
  %e_value_size43 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %last.0625, i32 0, i32 4
  %45 = ptrtoint ptr %e_value_size43 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %e_value_size43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool44.not = icmp eq i32 %46, 0
  br i1 %tobool44.not, label %land.lhs.true42.for.inc_crit_edge, label %if.then45

land.lhs.true42.for.inc_crit_edge:                ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then45:                                        ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #15
  %e_value_offs47 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %last.0625, i32 0, i32 2
  %47 = ptrtoint ptr %e_value_offs47 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %e_value_offs47, align 2
  %49 = tail call i16 @llvm.bswap.i16(i16 %48)
  %conv48 = zext i16 %49 to i32
  %50 = tail call i32 @llvm.umin.i32(i32 %min_offs.0624, i32 %conv48)
  br label %for.inc

for.inc:                                          ; preds = %if.then45, %land.lhs.true42.for.inc_crit_edge, %if.end39.for.inc_crit_edge
  %min_offs.2 = phi i32 [ %min_offs.0624, %if.end39.for.inc_crit_edge ], [ %50, %if.then45 ], [ %min_offs.0624, %land.lhs.true42.for.inc_crit_edge ]
  %51 = ptrtoint ptr %add.ptr34 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %add.ptr34, align 4
  %cmp28.not = icmp eq i32 %52, 0
  br i1 %cmp28.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end27.for.end_crit_edge
  %min_offs.0.lcssa = phi i32 [ %sub.ptr.sub, %if.end27.for.end_crit_edge ], [ %min_offs.2, %for.inc.for.end_crit_edge ]
  %last.0.lcssa = phi ptr [ %38, %if.end27.for.end_crit_edge ], [ %add.ptr34, %for.inc.for.end_crit_edge ]
  %tobool55.not = icmp eq ptr %19, null
  br i1 %tobool55.not, label %for.end.if.end101_crit_edge, label %if.then56

for.end.if.end101_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end101

if.then56:                                        ; preds = %for.end
  %sub.ptr.lhs.cast58 = ptrtoint ptr %last.0.lcssa to i32
  %add67 = add i32 %call, 19
  %and68 = and i32 %add67, -4
  %add69 = add i32 %cond, %and68
  %add70 = select i1 %tobool.not, i32 %add69, i32 0
  %sub.ptr.sub60.neg = add i32 %sub.ptr.rhs.cast, -4
  %sub61 = add i32 %sub.ptr.sub60.neg, %add70
  %sub62 = add i32 %sub61, %min_offs.0.lcssa
  %free.0 = sub i32 %sub62, %sub.ptr.lhs.cast58
  %add75 = add i32 %cond12585, %and68
  call void @__sanitizer_cov_trace_cmp4(i32 %free.0, i32 %add75)
  %cmp76 = icmp ult i32 %free.0, %add75
  br i1 %cmp76, label %if.then56.cleanup344_crit_edge, label %if.end79

if.then56.cleanup344_crit_edge:                   ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup344

if.end79:                                         ; preds = %if.then56
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %53 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %54, i32 0, i32 33
  %55 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_es.i = getelementptr inbounds %struct.ext4_sb_info, ptr %56, i32 0, i32 15
  %57 = ptrtoint ptr %s_es.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %s_es.i, align 4
  %s_feature_incompat.i = getelementptr inbounds %struct.ext4_super_block, ptr %58, i32 0, i32 29
  %59 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %s_feature_incompat.i, align 8
  %and.i = and i32 %60, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 0
  %brmerge = select i1 %cmp.i.not, i1 true, i1 %tobool13.not586
  %is_block.not = xor i1 %is_block, true
  %brmerge526 = or i1 %brmerge, %is_block.not
  br i1 %brmerge526, label %if.end79.if.end101_crit_edge, label %land.lhs.true87

if.end79.if.end101_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end101

land.lhs.true87:                                  ; preds = %if.end79
  %add88 = add i32 %min_offs.0.lcssa, %cond
  %sub89 = sub i32 %add88, %cond12585
  %i_blkbits.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %61 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %i_blkbits.i, align 2
  %conv.i = zext i8 %62 to i32
  %shl.i = shl nuw i32 1, %conv.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %62)
  %cmp91 = icmp ult i8 %62, 13
  %div524 = lshr i32 %shl.i, 3
  %cond96 = select i1 %cmp91, i32 %div524, i32 1024
  call void @__sanitizer_cov_trace_cmp4(i32 %sub89, i32 %cond96)
  %cmp97 = icmp ult i32 %sub89, %cond96
  br i1 %cmp97, label %land.lhs.true87.cleanup344_crit_edge, label %land.lhs.true87.if.end101_crit_edge

land.lhs.true87.if.end101_crit_edge:              ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end101

land.lhs.true87.cleanup344_crit_edge:             ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup344

if.end101:                                        ; preds = %land.lhs.true87.if.end101_crit_edge, %if.end79.if.end101_crit_edge, %for.end.if.end101_crit_edge
  br i1 %tobool.not, label %land.lhs.true104, label %if.end101.if.end113_crit_edge

if.end101.if.end113_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end113

land.lhs.true104:                                 ; preds = %if.end101
  %e_value_inum105 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %1, i32 0, i32 3
  %63 = ptrtoint ptr %e_value_inum105 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %e_value_inum105, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool106.not = icmp eq i32 %64, 0
  br i1 %tobool106.not, label %land.lhs.true104.if.end113_crit_edge, label %if.then107

land.lhs.true104.if.end113_crit_edge:             ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end113

if.then107:                                       ; preds = %land.lhs.true104
  %65 = tail call i32 @llvm.bswap.i32(i32 %64)
  %e_hash = getelementptr inbounds %struct.ext4_xattr_entry, ptr %1, i32 0, i32 5
  %66 = ptrtoint ptr %e_hash to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %e_hash, align 4
  %68 = tail call i32 @llvm.bswap.i32(i32 %67)
  %call109 = call fastcc i32 @ext4_xattr_inode_iget(ptr noundef %inode, i32 noundef %65, i32 noundef %68, ptr noundef nonnull %old_ea_inode)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %if.then107.if.end113_crit_edge, label %if.then111

if.then107.if.end113_crit_edge:                   ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end113

if.then111:                                       ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #15
  %69 = ptrtoint ptr %old_ea_inode to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %old_ea_inode, align 4
  br label %cleanup344

if.end113:                                        ; preds = %if.then107.if.end113_crit_edge, %land.lhs.true104.if.end113_crit_edge, %if.end101.if.end113_crit_edge
  %70 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %value, align 4
  %tobool115.not = icmp eq ptr %71, null
  %or.cond527 = select i1 %tobool115.not, i1 true, i1 %tobool6.not
  br i1 %or.cond527, label %if.end113.if.end175_crit_edge, label %if.then118

if.end113.if.end175_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end175

if.then118:                                       ; preds = %if.end113
  %value_len119 = getelementptr inbounds %struct.ext4_xattr_info, ptr %i, i32 0, i32 2
  %72 = ptrtoint ptr %value_len119 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %value_len119, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool120.not = icmp eq i32 %73, 0
  br i1 %tobool120.not, label %land.rhs, label %if.then118.if.end155_crit_edge

if.then118.if.end155_crit_edge:                   ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end155

land.rhs:                                         ; preds = %if.then118
  %.b523 = load i1, ptr @ext4_xattr_set_entry.__already_done, align 1
  br i1 %.b523, label %land.rhs.if.end155_crit_edge, label %if.then132, !prof !159

land.rhs.if.end155_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end155

if.then132:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @ext4_xattr_set_entry.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1650, i32 noundef 9, ptr noundef null) #13
  br label %if.end155

if.end155:                                        ; preds = %if.then132, %land.rhs.if.end155_crit_edge, %if.then118.if.end155_crit_edge
  %74 = ptrtoint ptr %value_len119 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %value_len119, align 4
  %call.i = tail call i32 @dquot_alloc_inode(ptr noundef %inode) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end155.cleanup344_crit_edge

if.end155.cleanup344_crit_edge:                   ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup344

if.end.i:                                         ; preds = %if.end155
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %76 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %77, i32 0, i32 33
  %78 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_cluster_bits.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %79, i32 0, i32 12
  %80 = ptrtoint ptr %s_cluster_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %s_cluster_bits.i.i, align 16
  %i_blkbits.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %82 = ptrtoint ptr %i_blkbits.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %i_blkbits.i.i, align 2
  %conv.i.i = zext i8 %83 to i32
  %add.i.i = add i32 %81, %conv.i.i
  %shl.i.i = shl nuw i32 1, %add.i.i
  %neg.i.i = sub i32 0, %shl.i.i
  %add1.i.i = add i32 %75, -1
  %sub2.i.i = add i32 %add1.i.i, %shl.i.i
  %and.i.i = and i32 %sub2.i.i, %neg.i.i
  %conv.i529 = zext i32 %and.i.i to i64
  %call.i.i = tail call i32 @__dquot_alloc_space(ptr noundef %inode, i64 noundef %conv.i529, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool3.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool3.not.i, label %if.end167, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dquot_free_inode(ptr noundef %inode) #13
  br label %cleanup344

if.end167:                                        ; preds = %if.end.i
  %84 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %value, align 4
  %86 = ptrtoint ptr %value_len119 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %value_len119, align 4
  %88 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i530 = getelementptr inbounds %struct.super_block, ptr %89, i32 0, i32 33
  %90 = ptrtoint ptr %s_fs_info.i.i530 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %s_fs_info.i.i530, align 16
  %s_csum_seed.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %91, i32 0, i32 122
  %92 = ptrtoint ptr %s_csum_seed.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %s_csum_seed.i.i, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %desc.i.i.i) #13
  %94 = getelementptr inbounds %struct.anon.94, ptr %desc.i.i.i, i32 0, i32 1
  %s_chksum_driver.i.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %91, i32 0, i32 121
  %95 = call ptr @memset(ptr %desc.i.i.i, i32 255, i32 16)
  %96 = ptrtoint ptr %s_chksum_driver.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %s_chksum_driver.i.i.i, align 4
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %97, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %99)
  %cmp.not.i.i.i = icmp eq i32 %99, 4
  br i1 %cmp.not.i.i.i, label %do.end7.i.i.i, label %do.body2.i.i.i, !prof !159

do.body2.i.i.i:                                   ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #13, !srcloc !160
  unreachable

do.end7.i.i.i:                                    ; preds = %if.end167
  %100 = ptrtoint ptr %desc.i.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %97, ptr %desc.i.i.i, align 8
  %101 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %93, ptr %94, align 8
  %call11.i.i.i = call i32 @crypto_shash_update(ptr noundef nonnull %desc.i.i.i, ptr noundef %85, i32 noundef %87) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i.i)
  %tobool12.not.i.i.i = icmp eq i32 %call11.i.i.i, 0
  br i1 %tobool12.not.i.i.i, label %ext4_xattr_inode_hash.exit.i, label %do.body20.i.i.i, !prof !159

do.body20.i.i.i:                                  ; preds = %do.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #13, !srcloc !161
  unreachable

ext4_xattr_inode_hash.exit.i:                     ; preds = %do.end7.i.i.i
  %102 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %94, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %desc.i.i.i) #13
  %104 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i54.i = getelementptr inbounds %struct.super_block, ptr %105, i32 0, i32 33
  %106 = ptrtoint ptr %s_fs_info.i54.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %s_fs_info.i54.i, align 16
  %s_ea_inode_cache.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %107, i32 0, i32 128
  %108 = ptrtoint ptr %s_ea_inode_cache.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %s_ea_inode_cache.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %109, null
  br i1 %tobool.not.i.i, label %ext4_xattr_inode_hash.exit.i.if.end6.i_crit_edge, label %if.end.i.i

ext4_xattr_inode_hash.exit.i.if.end6.i_crit_edge: ; preds = %ext4_xattr_inode_hash.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6.i

if.end.i.i:                                       ; preds = %ext4_xattr_inode_hash.exit.i
  %call.i.i531 = call ptr @mb_cache_entry_find_first(ptr noundef nonnull %109, i32 noundef %103) #13
  %tobool1.not.i.i = icmp eq ptr %call.i.i531, null
  br i1 %tobool1.not.i.i, label %if.end.i.i.if.end6.i_crit_edge, label %if.end3.i.i

if.end.i.i.if.end6.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6.i

if.end3.i.i:                                      ; preds = %if.end.i.i
  %110 = call i32 @llvm.read_register.i32(metadata !147) #13
  %and.i.i.i.i = and i32 %110, -16384
  %111 = inttoptr i32 %and.i.i.i.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %111, i32 0, i32 2
  %112 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %task.i.i.i, align 8
  %journal_info.i.i.i = getelementptr inbounds %struct.task_struct, ptr %113, i32 0, i32 146
  %114 = ptrtoint ptr %journal_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %journal_info.i.i.i, align 4
  %cmp.i.not.i.i = icmp ult ptr %115, inttoptr (i32 4096 to ptr)
  br i1 %cmp.i.not.i.i, label %if.end3.i.i.if.end41.i.i_crit_edge, label %land.rhs.i.i

if.end3.i.i.if.end41.i.i_crit_edge:               ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41.i.i

land.rhs.i.i:                                     ; preds = %if.end3.i.i
  %flags.i.i = getelementptr inbounds %struct.task_struct, ptr %113, i32 0, i32 3
  %116 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %flags.i.i, align 4
  %and.i.i532 = and i32 %117, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i532)
  %tobool8.not.i.i = icmp eq i32 %and.i.i532, 0
  br i1 %tobool8.not.i.i, label %land.rhs12.i.i, label %land.rhs.i.i.if.end41.i.i_crit_edge

land.rhs.i.i.if.end41.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41.i.i

land.rhs12.i.i:                                   ; preds = %land.rhs.i.i
  %.b117.i.i = load i1, ptr @ext4_xattr_inode_cache_find.__already_done, align 1
  br i1 %.b117.i.i, label %land.rhs12.i.i.if.end41.i.i_crit_edge, label %if.then19.i.i, !prof !159

land.rhs12.i.i.if.end41.i.i_crit_edge:            ; preds = %land.rhs12.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41.i.i

if.then19.i.i:                                    ; preds = %land.rhs12.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @ext4_xattr_inode_cache_find.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1470, i32 noundef 9, ptr noundef null) #13
  br label %if.end41.i.i

if.end41.i.i:                                     ; preds = %if.then19.i.i, %land.rhs12.i.i.if.end41.i.i_crit_edge, %land.rhs.i.i.if.end41.i.i_crit_edge, %if.end3.i.i.if.end41.i.i_crit_edge
  %call.i.i.i = call noalias ptr @kvmalloc_node(i32 noundef %87, i32 noundef 3264, i32 noundef -1) #18
  %tobool50.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool50.not.i.i, label %if.then51.i.i, label %while.body.lr.ph.i.i

while.body.lr.ph.i.i:                             ; preds = %if.end41.i.i
  %conv65.i.i = zext i32 %87 to i64
  %118 = getelementptr inbounds %struct.anon.94, ptr %desc.i.i.i.i.i, i32 0, i32 1
  br label %while.body.i.i

if.then51.i.i:                                    ; preds = %if.end41.i.i
  %e_refcnt.i.i.i = getelementptr inbounds %struct.mb_cache_entry, ptr %call.i.i531, i32 0, i32 2
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %e_refcnt.i.i.i, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !164
  call void @llvm.prefetch.p0(ptr %e_refcnt.i.i.i, i32 1, i32 3, i32 1) #13
  %119 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %e_refcnt.i.i.i, ptr %e_refcnt.i.i.i, i32 1, ptr elementtype(i32) %e_refcnt.i.i.i) #13, !srcloc !165
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %119, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !166
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i.i, label %if.end.i.i.i, label %if.then51.i.i.if.end6.i_crit_edge

if.then51.i.i.if.end6.i_crit_edge:                ; preds = %if.then51.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6.i

if.end.i.i.i:                                     ; preds = %if.then51.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__mb_cache_entry_free(ptr noundef nonnull %call.i.i531) #13
  br label %if.end6.i

while.body.i.i:                                   ; preds = %if.end81.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %ce.0130.i.i = phi ptr [ %call.i.i531, %while.body.lr.ph.i.i ], [ %call82.i.i, %if.end81.i.i.while.body.i.i_crit_edge ]
  %120 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %i_sb.i.i, align 4
  %e_value.i.i = getelementptr inbounds %struct.mb_cache_entry, ptr %ce.0130.i.i, i32 0, i32 5
  %122 = ptrtoint ptr %e_value.i.i to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %e_value.i.i, align 8
  %conv.i.i533 = trunc i64 %123 to i32
  %call56.i.i = call ptr @__ext4_iget(ptr noundef %121, i32 noundef %conv.i.i533, i32 noundef 0, ptr noundef nonnull @__func__.ext4_xattr_inode_cache_find, i32 noundef 1480) #13
  %cmp.i119.i.i = icmp ugt ptr %call56.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i119.i.i, label %while.body.i.i.if.end81.i.i_crit_edge, label %land.lhs.true.i.i

while.body.i.i.if.end81.i.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end81.i.i

land.lhs.true.i.i:                                ; preds = %while.body.i.i
  %call58.i.i = call zeroext i1 @is_bad_inode(ptr noundef %call56.i.i) #13
  br i1 %call58.i.i, label %land.lhs.true.i.i.if.then80.i.i_crit_edge, label %land.lhs.true59.i.i

land.lhs.true.i.i.if.then80.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then80.i.i

land.lhs.true59.i.i:                              ; preds = %land.lhs.true.i.i
  %i_flags.i.i = getelementptr i8, ptr %call56.i.i, i32 -380
  %124 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %i_flags.i.i, align 4
  %and61.i.i = and i32 %125, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61.i.i)
  %tobool62.not.i.i = icmp eq i32 %and61.i.i, 0
  br i1 %tobool62.not.i.i, label %land.lhs.true59.i.i.if.then80.i.i_crit_edge, label %land.lhs.true63.i.i

land.lhs.true59.i.i.if.then80.i.i_crit_edge:      ; preds = %land.lhs.true59.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then80.i.i

land.lhs.true63.i.i:                              ; preds = %land.lhs.true59.i.i
  %call64.i.i = call fastcc i64 @i_size_read(ptr noundef %call56.i.i) #13
  call void @__sanitizer_cov_trace_cmp8(i64 %call64.i.i, i64 %conv65.i.i)
  %cmp.i.i = icmp eq i64 %call64.i.i, %conv65.i.i
  br i1 %cmp.i.i, label %land.lhs.true67.i.i, label %land.lhs.true63.i.i.if.then80.i.i_crit_edge

land.lhs.true63.i.i.if.then80.i.i_crit_edge:      ; preds = %land.lhs.true63.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then80.i.i

land.lhs.true67.i.i:                              ; preds = %land.lhs.true63.i.i
  %call68.i.i = call fastcc i32 @ext4_xattr_inode_read(ptr noundef %call56.i.i, ptr noundef nonnull %call.i.i.i, i32 noundef %87) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68.i.i)
  %tobool69.not.i.i = icmp eq i32 %call68.i.i, 0
  br i1 %tobool69.not.i.i, label %land.lhs.true70.i.i, label %land.lhs.true67.i.i.if.then80.i.i_crit_edge

land.lhs.true67.i.i.if.then80.i.i_crit_edge:      ; preds = %land.lhs.true67.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then80.i.i

land.lhs.true70.i.i:                              ; preds = %land.lhs.true67.i.i
  %i_sb.i.i.i = getelementptr inbounds %struct.inode, ptr %call56.i.i, i32 0, i32 8
  %126 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_fs_info.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %127, i32 0, i32 33
  %128 = ptrtoint ptr %s_fs_info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %s_fs_info.i.i.i.i, align 16
  %s_csum_seed.i.i.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %129, i32 0, i32 122
  %130 = ptrtoint ptr %s_csum_seed.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %s_csum_seed.i.i.i.i, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %desc.i.i.i.i.i) #13
  %s_chksum_driver.i.i.i.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %129, i32 0, i32 121
  %132 = call ptr @memset(ptr %desc.i.i.i.i.i, i32 255, i32 16)
  %133 = ptrtoint ptr %s_chksum_driver.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %s_chksum_driver.i.i.i.i.i, align 4
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %134, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %136)
  %cmp.not.i.i.i.i.i = icmp eq i32 %136, 4
  br i1 %cmp.not.i.i.i.i.i, label %do.end7.i.i.i.i.i, label %do.body2.i.i.i.i.i, !prof !159

do.body2.i.i.i.i.i:                               ; preds = %land.lhs.true70.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #13, !srcloc !160
  unreachable

do.end7.i.i.i.i.i:                                ; preds = %land.lhs.true70.i.i
  %137 = ptrtoint ptr %desc.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %134, ptr %desc.i.i.i.i.i, align 8
  %138 = ptrtoint ptr %118 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %131, ptr %118, align 8
  %call11.i.i.i.i.i = call i32 @crypto_shash_update(ptr noundef nonnull %desc.i.i.i.i.i, ptr noundef nonnull %call.i.i.i, i32 noundef %87) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i.i.i.i)
  %tobool12.not.i.i.i.i.i = icmp eq i32 %call11.i.i.i.i.i, 0
  br i1 %tobool12.not.i.i.i.i.i, label %ext4_xattr_inode_hash.exit.i.i.i, label %do.body20.i.i.i.i.i, !prof !159

do.body20.i.i.i.i.i:                              ; preds = %do.end7.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #13, !srcloc !161
  unreachable

ext4_xattr_inode_hash.exit.i.i.i:                 ; preds = %do.end7.i.i.i.i.i
  %139 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %118, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %desc.i.i.i.i.i) #13
  %i_atime.i.i.i.i = getelementptr inbounds %struct.inode, ptr %call56.i.i, i32 0, i32 15
  %141 = ptrtoint ptr %i_atime.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %141)
  %142 = load i64, ptr %i_atime.i.i.i.i, align 8
  %conv.i.i.i.i = trunc i64 %142 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %140, i32 %conv.i.i.i.i)
  %cmp.not.i.i55.i = icmp eq i32 %140, %conv.i.i.i.i
  br i1 %cmp.not.i.i55.i, label %land.lhs.true73.i.i, label %ext4_xattr_inode_hash.exit.i.i.i.if.then80.i.i_crit_edge

ext4_xattr_inode_hash.exit.i.i.i.if.then80.i.i_crit_edge: ; preds = %ext4_xattr_inode_hash.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then80.i.i

land.lhs.true73.i.i:                              ; preds = %ext4_xattr_inode_hash.exit.i.i.i
  %bcmp.i.i = call i32 @bcmp(ptr %85, ptr nonnull %call.i.i.i, i32 %87) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool75.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool75.not.i.i, label %ext4_xattr_inode_cache_find.exit.i, label %land.lhs.true73.i.i.if.then80.i.i_crit_edge

land.lhs.true73.i.i.if.then80.i.i_crit_edge:      ; preds = %land.lhs.true73.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then80.i.i

if.then80.i.i:                                    ; preds = %land.lhs.true73.i.i.if.then80.i.i_crit_edge, %ext4_xattr_inode_hash.exit.i.i.i.if.then80.i.i_crit_edge, %land.lhs.true67.i.i.if.then80.i.i_crit_edge, %land.lhs.true63.i.i.if.then80.i.i_crit_edge, %land.lhs.true59.i.i.if.then80.i.i_crit_edge, %land.lhs.true.i.i.if.then80.i.i_crit_edge
  call void @iput(ptr noundef %call56.i.i) #13
  br label %if.end81.i.i

if.end81.i.i:                                     ; preds = %if.then80.i.i, %while.body.i.i.if.end81.i.i_crit_edge
  %call82.i.i = call ptr @mb_cache_entry_find_next(ptr noundef nonnull %109, ptr noundef nonnull %ce.0130.i.i) #13
  %tobool54.not.i.i = icmp eq ptr %call82.i.i, null
  br i1 %tobool54.not.i.i, label %while.end.i.i, label %if.end81.i.i.while.body.i.i_crit_edge

if.end81.i.i.while.body.i.i_crit_edge:            ; preds = %if.end81.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %if.end81.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @kvfree(ptr noundef nonnull %call.i.i.i) #13
  br label %if.end6.i

ext4_xattr_inode_cache_find.exit.i:               ; preds = %land.lhs.true73.i.i
  call void @mb_cache_entry_touch(ptr noundef nonnull %109, ptr noundef nonnull %ce.0130.i.i) #13
  call fastcc void @mb_cache_entry_put(ptr noundef nonnull %ce.0130.i.i) #13
  call void @kvfree(ptr noundef nonnull %call.i.i.i) #13
  %tobool.not.i534 = icmp eq ptr %call56.i.i, null
  br i1 %tobool.not.i534, label %ext4_xattr_inode_cache_find.exit.i.if.end6.i_crit_edge, label %if.then.i

ext4_xattr_inode_cache_find.exit.i.if.end6.i_crit_edge: ; preds = %ext4_xattr_inode_cache_find.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6.i

if.then.i:                                        ; preds = %ext4_xattr_inode_cache_find.exit.i
  %call.i56.i = call fastcc i32 @ext4_xattr_inode_update_ref(ptr noundef %handle, ptr noundef nonnull %call56.i.i, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56.i)
  %tobool4.not.i = icmp eq i32 %call.i56.i, 0
  br i1 %tobool4.not.i, label %if.then.i.if.end175_crit_edge, label %if.then5.i

if.then.i.if.end175_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end175

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @iput(ptr noundef nonnull %call56.i.i) #13
  br label %if.then172

if.end6.i:                                        ; preds = %ext4_xattr_inode_cache_find.exit.i.if.end6.i_crit_edge, %while.end.i.i, %if.end.i.i.i, %if.then51.i.i.if.end6.i_crit_edge, %if.end.i.i.if.end6.i_crit_edge, %ext4_xattr_inode_hash.exit.i.if.end6.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %owner.i.i) #13
  %143 = getelementptr inbounds [2 x i32], ptr %owner.i.i, i32 0, i32 1
  %144 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %i_sb.i.i, align 4
  %s_user_ns.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %145, i32 0, i32 53
  %146 = ptrtoint ptr %s_user_ns.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %s_user_ns.i.i.i.i, align 8
  %i_uid.i.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 2
  %148 = ptrtoint ptr %i_uid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %.unpack.i.i.i = load i32, ptr %i_uid.i.i.i, align 4
  %149 = insertvalue [1 x i32] undef, i32 %.unpack.i.i.i, 0
  %call1.i.i.i = call i32 @from_kuid(ptr noundef %147, [1 x i32] %149) #13
  %150 = ptrtoint ptr %owner.i.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %call1.i.i.i, ptr %owner.i.i, align 4
  %151 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %i_sb.i.i, align 4
  %s_user_ns.i.i37.i.i = getelementptr inbounds %struct.super_block, ptr %152, i32 0, i32 53
  %153 = ptrtoint ptr %s_user_ns.i.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %s_user_ns.i.i37.i.i, align 8
  %i_gid.i.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %155 = ptrtoint ptr %i_gid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %.unpack.i38.i.i = load i32, ptr %i_gid.i.i.i, align 8
  %156 = insertvalue [1 x i32] undef, i32 %.unpack.i38.i.i, 0
  %call1.i39.i.i = call i32 @from_kgid(ptr noundef %154, [1 x i32] %156) #13
  %157 = ptrtoint ptr %143 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %call1.i39.i.i, ptr %143, align 4
  %158 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %i_sb.i.i, align 4
  %s_root.i.i = getelementptr inbounds %struct.super_block, ptr %159, i32 0, i32 13
  %160 = ptrtoint ptr %s_root.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %s_root.i.i, align 64
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %161, i32 0, i32 5
  %162 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %d_inode.i.i, align 8
  %i_ino.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %164 = ptrtoint ptr %i_ino.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %i_ino.i.i, align 8
  %add.i.i536 = add i32 %165, 1
  %call2.i.i = call ptr @__ext4_new_inode(ptr noundef nonnull @init_user_ns, ptr noundef %handle, ptr noundef %163, i16 noundef zeroext -32384, ptr noundef null, i32 noundef %add.i.i536, ptr noundef nonnull %owner.i.i, i32 noundef 2097152, i32 noundef 0, i32 noundef 0, i32 noundef 0) #13
  %cmp.i.i.i = icmp ugt ptr %call2.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.end6.i.ext4_xattr_inode_create.exit.i_crit_edge, label %if.then.i.i

if.end6.i.ext4_xattr_inode_create.exit.i_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ext4_xattr_inode_create.exit.i

if.then.i.i:                                      ; preds = %if.end6.i
  %i_op.i.i = getelementptr inbounds %struct.inode, ptr %call2.i.i, i32 0, i32 7
  %166 = ptrtoint ptr %i_op.i.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr @ext4_file_inode_operations, ptr %i_op.i.i, align 8
  %167 = getelementptr inbounds %struct.inode, ptr %call2.i.i, i32 0, i32 44
  %168 = ptrtoint ptr %167 to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr @ext4_file_operations, ptr %167, align 8
  call void @ext4_set_aops(ptr noundef %call2.i.i) #13
  %dep_map.i.i.i = getelementptr inbounds %struct.inode, ptr %call2.i.i, i32 0, i32 25, i32 6
  %169 = ptrtoint ptr %dep_map.i.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %dep_map.i.i.i, align 4
  %wait_type_inner.i.i.i = getelementptr inbounds %struct.inode, ptr %call2.i.i, i32 0, i32 25, i32 6, i32 4
  %171 = ptrtoint ptr %wait_type_inner.i.i.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %wait_type_inner.i.i.i, align 1
  call void @lockdep_init_map_type(ptr noundef %dep_map.i.i.i, ptr noundef nonnull @.str, ptr noundef %170, i32 noundef 1, i8 noundef zeroext %172, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  call void @unlock_new_inode(ptr noundef %call2.i.i) #13
  %i_ctime.i.i.i = getelementptr inbounds %struct.inode, ptr %call2.i.i, i32 0, i32 17
  %173 = ptrtoint ptr %i_ctime.i.i.i to i32
  call void @__asan_store8_noabort(i32 %173)
  store i64 0, ptr %i_ctime.i.i.i, align 8
  %i_version.i.i.i.i = getelementptr inbounds %struct.inode, ptr %call2.i.i, i32 0, i32 38
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i.i.i.i, i32 noundef 8) #13
  call void @generic_atomic64_set(ptr noundef %i_version.i.i.i.i, i64 noundef 1) #13
  %conv.i.i.i = zext i32 %103 to i64
  %i_atime.i.i.i = getelementptr inbounds %struct.inode, ptr %call2.i.i, i32 0, i32 15
  %174 = ptrtoint ptr %i_atime.i.i.i to i32
  call void @__asan_store8_noabort(i32 %174)
  store i64 %conv.i.i.i, ptr %i_atime.i.i.i, align 8
  %call4.i.i = call i32 @__ext4_mark_inode_dirty(ptr noundef %handle, ptr noundef %call2.i.i, ptr noundef nonnull @__func__.ext4_xattr_inode_create, i32 noundef 1431) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool.not.i57.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool.not.i57.i, label %if.end.i58.i, label %if.then.i.i.if.then8.i.i_crit_edge

if.then.i.i.if.then8.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then8.i.i

if.end.i58.i:                                     ; preds = %if.then.i.i
  %call6.i.i = call i32 @ext4_inode_attach_jinode(ptr noundef %call2.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool7.not.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool7.not.i.i, label %if.end10.i.i, label %if.end.i58.i.if.then8.i.i_crit_edge

if.end.i58.i.if.then8.i.i_crit_edge:              ; preds = %if.end.i58.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then8.i.i

if.then8.i.i:                                     ; preds = %if.end.i58.i.if.then8.i.i_crit_edge, %if.then.i.i.if.then8.i.i_crit_edge
  %err.043.i.i = phi i32 [ %call6.i.i, %if.end.i58.i.if.then8.i.i_crit_edge ], [ %call4.i.i, %if.then.i.i.if.then8.i.i_crit_edge ]
  call void @iput(ptr noundef %call2.i.i) #13
  %175 = inttoptr i32 %err.043.i.i to ptr
  br label %ext4_xattr_inode_create.exit.i

if.end10.i.i:                                     ; preds = %if.end.i58.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @dquot_free_inode(ptr noundef %call2.i.i) #13
  call void @dquot_drop(ptr noundef %call2.i.i) #13
  %i_rwsem.i.i.i = getelementptr inbounds %struct.inode, ptr %call2.i.i, i32 0, i32 25
  call void @down_write(ptr noundef %i_rwsem.i.i.i) #13
  %i_flags.i59.i = getelementptr inbounds %struct.inode, ptr %call2.i.i, i32 0, i32 4
  %176 = ptrtoint ptr %i_flags.i59.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %i_flags.i59.i, align 4
  %or.i.i = or i32 %177, 32
  store i32 %or.i.i, ptr %i_flags.i59.i, align 4
  call void @up_write(ptr noundef %i_rwsem.i.i.i) #13
  br label %ext4_xattr_inode_create.exit.i

ext4_xattr_inode_create.exit.i:                   ; preds = %if.end10.i.i, %if.then8.i.i, %if.end6.i.ext4_xattr_inode_create.exit.i_crit_edge
  %retval.0.i60.i = phi ptr [ %175, %if.then8.i.i ], [ %call2.i.i, %if.end10.i.i ], [ %call2.i.i, %if.end6.i.ext4_xattr_inode_create.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %owner.i.i) #13
  %cmp.i61.i = icmp ugt ptr %retval.0.i60.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i61.i, label %ext4_xattr_inode_lookup_create.exit, label %if.end11.i

if.end11.i:                                       ; preds = %ext4_xattr_inode_create.exit.i
  %i_sb.i62.i = getelementptr inbounds %struct.inode, ptr %retval.0.i60.i, i32 0, i32 8
  %178 = ptrtoint ptr %i_sb.i62.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %i_sb.i62.i, align 4
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %179, i32 0, i32 3
  %180 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %s_blocksize.i.i, align 16
  %add.i63.i = add i32 %87, -1
  %sub.i.i = add i32 %add.i63.i, %181
  %i_blkbits.i.i537 = getelementptr inbounds %struct.inode, ptr %retval.0.i60.i, i32 0, i32 20
  %182 = ptrtoint ptr %i_blkbits.i.i537 to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %i_blkbits.i.i537, align 2
  %conv.i64.i = zext i8 %183 to i32
  %shr.i.i = ashr i32 %sub.i.i, %conv.i64.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retries.i.i) #13
  %184 = ptrtoint ptr %retries.i.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 0, ptr %retries.i.i, align 4
  %m_lblk.i.i = getelementptr inbounds %struct.ext4_map_blocks, ptr %map.i.i, i32 0, i32 1
  %m_len.i.i = getelementptr inbounds %struct.ext4_map_blocks, ptr %map.i.i, i32 0, i32 2
  br label %retry.i.i

retry.i.i:                                        ; preds = %land.lhs.true.i69.i.retry.i.i_crit_edge, %if.end11.i
  %block.0.i.i = phi i32 [ 0, %if.end11.i ], [ %add4.i.i, %land.lhs.true.i69.i.retry.i.i_crit_edge ]
  %max_blocks.0.i.i = phi i32 [ %shr.i.i, %if.end11.i ], [ %sub5.i.i, %land.lhs.true.i69.i.retry.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_blocks.0.i.i)
  %cmp2.i93.i = icmp sgt i32 %max_blocks.0.i.i, 0
  br i1 %cmp2.i93.i, label %retry.i.i.while.body.i66.i_crit_edge, label %retry.i.i.while.cond19.preheader.i.i_crit_edge

retry.i.i.while.cond19.preheader.i.i_crit_edge:   ; preds = %retry.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond19.preheader.i.i

retry.i.i.while.body.i66.i_crit_edge:             ; preds = %retry.i.i
  br label %while.body.i66.i

while.body.i66.i:                                 ; preds = %cleanup.i.i.while.body.i66.i_crit_edge, %retry.i.i.while.body.i66.i_crit_edge
  %ret.1.i96.i = phi i32 [ %call.i65.i, %cleanup.i.i.while.body.i66.i_crit_edge ], [ 0, %retry.i.i.while.body.i66.i_crit_edge ]
  %max_blocks.1.i95.i = phi i32 [ %sub5.i.i, %cleanup.i.i.while.body.i66.i_crit_edge ], [ %max_blocks.0.i.i, %retry.i.i.while.body.i66.i_crit_edge ]
  %block.1.i94.i = phi i32 [ %add4.i.i, %cleanup.i.i.while.body.i66.i_crit_edge ], [ %block.0.i.i, %retry.i.i.while.body.i66.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %map.i.i) #13
  %185 = call ptr @memset(ptr %map.i.i, i32 255, i32 24)
  %add4.i.i = add i32 %block.1.i94.i, %ret.1.i96.i
  %186 = ptrtoint ptr %m_lblk.i.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %add4.i.i, ptr %m_lblk.i.i, align 8
  %sub5.i.i = sub i32 %max_blocks.1.i95.i, %ret.1.i96.i
  %187 = ptrtoint ptr %m_len.i.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %sub5.i.i, ptr %m_len.i.i, align 4
  %call.i65.i = call i32 @ext4_map_blocks(ptr noundef %handle, ptr noundef %retval.0.i60.i, ptr noundef nonnull %map.i.i, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i65.i)
  %cmp6.i.i = icmp slt i32 %call.i65.i, 1
  br i1 %cmp6.i.i, label %if.then.i67.i, label %cleanup.i.i

if.then.i67.i:                                    ; preds = %while.body.i66.i
  %call8.i.i = call i32 @__ext4_mark_inode_dirty(ptr noundef %handle, ptr noundef %retval.0.i60.i, ptr noundef nonnull @__func__.ext4_xattr_inode_write, i32 noundef 1350) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call.i65.i)
  %cmp9.i.i = icmp eq i32 %call.i65.i, -28
  br i1 %cmp9.i.i, label %land.lhs.true.i69.i, label %while.end.i70.i

land.lhs.true.i69.i:                              ; preds = %if.then.i67.i
  %188 = ptrtoint ptr %i_sb.i62.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %i_sb.i62.i, align 4
  %call12.i.i = call i32 @ext4_should_retry_alloc(ptr noundef %189, ptr noundef nonnull %retries.i.i) #13
  %tobool.not.i68.i = icmp eq i32 %call12.i.i, 0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %map.i.i) #13
  br i1 %tobool.not.i68.i, label %land.lhs.true.i69.i.ext4_xattr_inode_write.exit.thread.i_crit_edge, label %land.lhs.true.i69.i.retry.i.i_crit_edge

land.lhs.true.i69.i.retry.i.i_crit_edge:          ; preds = %land.lhs.true.i69.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %retry.i.i

land.lhs.true.i69.i.ext4_xattr_inode_write.exit.thread.i_crit_edge: ; preds = %land.lhs.true.i69.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ext4_xattr_inode_write.exit.thread.i

cleanup.i.i:                                      ; preds = %while.body.i66.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %map.i.i) #13
  %cmp2.i.i = icmp sgt i32 %sub5.i.i, %call.i65.i
  br i1 %cmp2.i.i, label %cleanup.i.i.while.body.i66.i_crit_edge, label %cleanup.i.i.while.cond19.preheader.i.i_crit_edge

cleanup.i.i.while.cond19.preheader.i.i_crit_edge: ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond19.preheader.i.i

cleanup.i.i.while.body.i66.i_crit_edge:           ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i66.i

while.end.i70.i:                                  ; preds = %if.then.i67.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %map.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i65.i)
  %cmp15.i.i = icmp slt i32 %call.i65.i, 0
  br i1 %cmp15.i.i, label %while.end.i70.i.ext4_xattr_inode_write.exit.thread.i_crit_edge, label %while.end.i70.i.while.cond19.preheader.i.i_crit_edge

while.end.i70.i.while.cond19.preheader.i.i_crit_edge: ; preds = %while.end.i70.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond19.preheader.i.i

while.end.i70.i.ext4_xattr_inode_write.exit.thread.i_crit_edge: ; preds = %while.end.i70.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ext4_xattr_inode_write.exit.thread.i

while.cond19.preheader.i.i:                       ; preds = %while.end.i70.i.while.cond19.preheader.i.i_crit_edge, %cleanup.i.i.while.cond19.preheader.i.i_crit_edge, %retry.i.i.while.cond19.preheader.i.i_crit_edge
  %ret.3217.i.i = phi i32 [ 0, %while.end.i70.i.while.cond19.preheader.i.i_crit_edge ], [ %call.i65.i, %cleanup.i.i.while.cond19.preheader.i.i_crit_edge ], [ 0, %retry.i.i.while.cond19.preheader.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cmp20196.i.i = icmp sgt i32 %87, 0
  br i1 %cmp20196.i.i, label %while.cond19.preheader.i.i.while.body22.i.i_crit_edge, label %while.cond19.preheader.i.i.while.end81.i.i_crit_edge

while.cond19.preheader.i.i.while.end81.i.i_crit_edge: ; preds = %while.cond19.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end81.i.i

while.cond19.preheader.i.i.while.body22.i.i_crit_edge: ; preds = %while.cond19.preheader.i.i
  br label %while.body22.i.i

while.body22.i.i:                                 ; preds = %set_buffer_uptodate.exit.i.i.while.body22.i.i_crit_edge, %while.cond19.preheader.i.i.while.body22.i.i_crit_edge
  %buf.addr.0200.i.i = phi ptr [ %add.ptr.i.i, %set_buffer_uptodate.exit.i.i.while.body22.i.i_crit_edge ], [ %85, %while.cond19.preheader.i.i.while.body22.i.i_crit_edge ]
  %wsize.0199.i.i = phi i32 [ %add79.i.i, %set_buffer_uptodate.exit.i.i.while.body22.i.i_crit_edge ], [ 0, %while.cond19.preheader.i.i.while.body22.i.i_crit_edge ]
  %block.2198.i.i = phi i32 [ %add80.i.i, %set_buffer_uptodate.exit.i.i.while.body22.i.i_crit_edge ], [ 0, %while.cond19.preheader.i.i.while.body22.i.i_crit_edge ]
  %bh.0197.i.i = phi ptr [ %call27.i.i, %set_buffer_uptodate.exit.i.i.while.body22.i.i_crit_edge ], [ null, %while.cond19.preheader.i.i.while.body22.i.i_crit_edge ]
  %tobool.not.i164.i.i = icmp eq ptr %bh.0197.i.i, null
  br i1 %tobool.not.i164.i.i, label %while.body22.i.i.brelse.exit.i.i_crit_edge, label %if.then.i165.i.i

while.body22.i.i.brelse.exit.i.i_crit_edge:       ; preds = %while.body22.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %brelse.exit.i.i

if.then.i165.i.i:                                 ; preds = %while.body22.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__brelse(ptr noundef nonnull %bh.0197.i.i) #13
  br label %brelse.exit.i.i

brelse.exit.i.i:                                  ; preds = %if.then.i165.i.i, %while.body22.i.i.brelse.exit.i.i_crit_edge
  %sub23.i.i = sub i32 %87, %wsize.0199.i.i
  %190 = call i32 @llvm.smin.i32(i32 %sub23.i.i, i32 %181) #13
  %call27.i.i = call ptr @ext4_getblk(ptr noundef %handle, ptr noundef %retval.0.i60.i, i32 noundef %block.2198.i.i, i32 noundef 0) #13
  %cmp.i.i71.i = icmp ugt ptr %call27.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i71.i, label %if.then29.i.i, label %if.end31.i.i

if.then29.i.i:                                    ; preds = %brelse.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %191 = ptrtoint ptr %call27.i.i to i32
  br label %ext4_xattr_inode_write.exit.i

if.end31.i.i:                                     ; preds = %brelse.exit.i.i
  %tobool32.not.i.i = icmp eq ptr %call27.i.i, null
  br i1 %tobool32.not.i.i, label %land.end38.i.i, label %if.end72.i.i

land.end38.i.i:                                   ; preds = %if.end31.i.i
  %.b163.i.i = load i1, ptr @ext4_xattr_inode_write.__already_done, align 1
  br i1 %.b163.i.i, label %land.end38.i.i.if.end64.i.i_crit_edge, label %if.then42.i.i, !prof !159

land.end38.i.i.if.end64.i.i_crit_edge:            ; preds = %land.end38.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end64.i.i

if.then42.i.i:                                    ; preds = %land.end38.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @ext4_xattr_inode_write.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1372, i32 noundef 9, ptr noundef null) #13
  br label %if.end64.i.i

if.end64.i.i:                                     ; preds = %if.then42.i.i, %land.end38.i.i.if.end64.i.i_crit_edge
  call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %retval.0.i60.i, ptr noundef nonnull @__func__.ext4_xattr_inode_write, i32 noundef 1374, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.22) #13
  br label %ext4_xattr_inode_write.exit.thread.i

if.end72.i.i:                                     ; preds = %if.end31.i.i
  %192 = ptrtoint ptr %i_sb.i62.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %i_sb.i62.i, align 4
  %call74.i.i = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_xattr_inode_write, i32 noundef 1378, ptr noundef %handle, ptr noundef %193, ptr noundef nonnull %call27.i.i, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74.i.i)
  %tobool75.not.i72.i = icmp eq i32 %call74.i.i, 0
  br i1 %tobool75.not.i72.i, label %if.end77.i.i, label %if.end72.i.i.if.then.i170.i.i_crit_edge

if.end72.i.i.if.then.i170.i.i_crit_edge:          ; preds = %if.end72.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i170.i.i

if.end77.i.i:                                     ; preds = %if.end72.i.i
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %call27.i.i, i32 0, i32 5
  %194 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %b_data.i.i, align 4
  %196 = call ptr @memcpy(ptr %195, ptr %buf.addr.0200.i.i, i32 %190)
  %197 = ptrtoint ptr %call27.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load volatile i32, ptr %call27.i.i, align 4
  %and1.i.i.i.i = and i32 %198, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.end77.i.i.set_buffer_uptodate.exit.i.i_crit_edge

if.end77.i.i.set_buffer_uptodate.exit.i.i_crit_edge: ; preds = %if.end77.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %set_buffer_uptodate.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end77.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @_set_bit(i32 noundef 0, ptr noundef nonnull %call27.i.i) #13
  br label %set_buffer_uptodate.exit.i.i

set_buffer_uptodate.exit.i.i:                     ; preds = %if.then.i.i.i, %if.end77.i.i.set_buffer_uptodate.exit.i.i_crit_edge
  %call78.i.i = call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_xattr_inode_write, i32 noundef 1384, ptr noundef %handle, ptr noundef %retval.0.i60.i, ptr noundef nonnull %call27.i.i) #13
  %add.ptr.i.i = getelementptr i8, ptr %buf.addr.0200.i.i, i32 %190
  %add79.i.i = add i32 %190, %wsize.0199.i.i
  %add80.i.i = add i32 %block.2198.i.i, 1
  %cmp20.i.i = icmp slt i32 %add79.i.i, %87
  br i1 %cmp20.i.i, label %set_buffer_uptodate.exit.i.i.while.body22.i.i_crit_edge, label %set_buffer_uptodate.exit.i.i.while.end81.i.i_crit_edge

set_buffer_uptodate.exit.i.i.while.end81.i.i_crit_edge: ; preds = %set_buffer_uptodate.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end81.i.i

set_buffer_uptodate.exit.i.i.while.body22.i.i_crit_edge: ; preds = %set_buffer_uptodate.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body22.i.i

while.end81.i.i:                                  ; preds = %set_buffer_uptodate.exit.i.i.while.end81.i.i_crit_edge, %while.cond19.preheader.i.i.while.end81.i.i_crit_edge
  %bh.0.lcssa.i.i = phi ptr [ null, %while.cond19.preheader.i.i.while.end81.i.i_crit_edge ], [ %call27.i.i, %set_buffer_uptodate.exit.i.i.while.end81.i.i_crit_edge ]
  %wsize.0.lcssa.i.i = phi i32 [ 0, %while.cond19.preheader.i.i.while.end81.i.i_crit_edge ], [ %add79.i.i, %set_buffer_uptodate.exit.i.i.while.end81.i.i_crit_edge ]
  %ret.4.lcssa.i.i = phi i32 [ %ret.3217.i.i, %while.cond19.preheader.i.i.while.end81.i.i_crit_edge ], [ 0, %set_buffer_uptodate.exit.i.i.while.end81.i.i_crit_edge ]
  %i_rwsem.i.i73.i = getelementptr inbounds %struct.inode, ptr %retval.0.i60.i, i32 0, i32 25
  call void @down_write(ptr noundef %i_rwsem.i.i73.i) #13
  %conv82.i.i = sext i32 %wsize.0.lcssa.i.i to i64
  %199 = call i32 @llvm.read_register.i32(metadata !147) #13
  %and.i.i.i.i.i.i = and i32 %199, -16384
  %200 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %200, i32 0, i32 1
  %201 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %202, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !167
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %203 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %203)
  %tobool.not.i.i.i.i = icmp eq i32 %203, 0
  br i1 %tobool.not.i.i.i.i, label %while.end81.i.i.i_size_write.exit.i.i_crit_edge, label %land.lhs.true.i.i.i.i

while.end81.i.i.i_size_write.exit.i.i_crit_edge:  ; preds = %while.end81.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %i_size_write.exit.i.i

land.lhs.true.i.i.i.i:                            ; preds = %while.end81.i.i
  %204 = call i32 @llvm.read_register.i32(metadata !147) #13
  %and.i.i.i.i.i.i.i = and i32 %204, -16384
  %205 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %205, i32 0, i32 1
  %206 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %207, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !168
  %208 = call i32 @llvm.read_register.i32(metadata !147) #13
  %and.i.i.i.i.i = and i32 %208, -16384
  %209 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %209, i32 0, i32 3
  %210 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %211
  %212 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.i28.i.i.i = add i32 %213, ptrtoint (ptr @lockdep_recursion to i32)
  %214 = inttoptr i32 %add.i28.i.i.i to ptr
  %215 = ptrtoint ptr %214 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load volatile i32, ptr %214, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !169
  %217 = call i32 @llvm.read_register.i32(metadata !147) #13
  %and.i.i.i7.i.i.i.i = and i32 %217, -16384
  %218 = inttoptr i32 %and.i.i.i7.i.i.i.i to ptr
  %preempt_count.i.i8.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %218, i32 0, i32 1
  %219 = ptrtoint ptr %preempt_count.i.i8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load volatile i32, ptr %preempt_count.i.i8.i.i.i.i, align 4
  %sub.i.i.i.i.i = add i32 %220, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i8.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %216)
  %tobool20.not.i.i.i.i = icmp eq i32 %216, 0
  br i1 %tobool20.not.i.i.i.i, label %land.rhs.i.i.i.i, label %land.lhs.true.i.i.i.i.i_size_write.exit.i.i_crit_edge

land.lhs.true.i.i.i.i.i_size_write.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %i_size_write.exit.i.i

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %221 = call i32 @llvm.read_register.i32(metadata !147) #13
  %and.i.i.i29.i.i.i = and i32 %221, -16384
  %222 = inttoptr i32 %and.i.i.i29.i.i.i to ptr
  %preempt_count.i.i30.i.i.i = getelementptr inbounds %struct.thread_info, ptr %222, i32 0, i32 1
  %223 = ptrtoint ptr %preempt_count.i.i30.i.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load volatile i32, ptr %preempt_count.i.i30.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %224)
  %cmp.i.i.i.i = icmp eq i32 %224, 0
  br i1 %cmp.i.i.i.i, label %land.rhs22.i.i.i.i, label %land.rhs.i.i.i.i.i_size_write.exit.i.i_crit_edge

land.rhs.i.i.i.i.i_size_write.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %i_size_write.exit.i.i

land.rhs22.i.i.i.i:                               ; preds = %land.rhs.i.i.i.i
  %225 = call i32 @llvm.read_register.i32(metadata !147) #13
  %and.i.i.i9.i.i.i.i = and i32 %225, -16384
  %226 = inttoptr i32 %and.i.i.i9.i.i.i.i to ptr
  %preempt_count.i.i10.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %226, i32 0, i32 1
  %227 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i, align 4
  %add.i11.i.i.i.i = add i32 %228, 1
  store volatile i32 %add.i11.i.i.i.i, ptr %preempt_count.i.i10.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !170
  %229 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx46.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %230
  %231 = ptrtoint ptr %arrayidx46.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %arrayidx46.i.i.i.i, align 4
  %add47.i.i.i.i = add i32 %232, ptrtoint (ptr @hardirqs_enabled to i32)
  %233 = inttoptr i32 %add47.i.i.i.i to ptr
  %234 = ptrtoint ptr %233 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load volatile i32, ptr %233, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !171
  %236 = call i32 @llvm.read_register.i32(metadata !147) #13
  %and.i.i.i12.i.i.i.i = and i32 %236, -16384
  %237 = inttoptr i32 %and.i.i.i12.i.i.i.i to ptr
  %preempt_count.i.i13.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %237, i32 0, i32 1
  %238 = ptrtoint ptr %preempt_count.i.i13.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load volatile i32, ptr %preempt_count.i.i13.i.i.i.i, align 4
  %sub.i14.i.i.i.i = add i32 %239, -1
  store volatile i32 %sub.i14.i.i.i.i, ptr %preempt_count.i.i13.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %235)
  %tobool54.not.i.i.i.i = icmp eq i32 %235, 0
  br i1 %tobool54.not.i.i.i.i, label %land.rhs22.i.i.i.i.i_size_write.exit.i.i_crit_edge, label %land.rhs58.i.i.i.i

land.rhs22.i.i.i.i.i_size_write.exit.i.i_crit_edge: ; preds = %land.rhs22.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %i_size_write.exit.i.i

land.rhs58.i.i.i.i:                               ; preds = %land.rhs22.i.i.i.i
  %.b1.i.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs58.i.i.i.i.i_size_write.exit.i.i_crit_edge, label %if.then.i.i.i.i, !prof !159

land.rhs58.i.i.i.i.i_size_write.exit.i.i_crit_edge: ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %i_size_write.exit.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 271, i32 noundef 9, ptr noundef null) #13
  br label %i_size_write.exit.i.i

i_size_write.exit.i.i:                            ; preds = %if.then.i.i.i.i, %land.rhs58.i.i.i.i.i_size_write.exit.i.i_crit_edge, %land.rhs22.i.i.i.i.i_size_write.exit.i.i_crit_edge, %land.rhs.i.i.i.i.i_size_write.exit.i.i_crit_edge, %land.lhs.true.i.i.i.i.i_size_write.exit.i.i_crit_edge, %while.end81.i.i.i_size_write.exit.i.i_crit_edge
  %i_size_seqcount.i.i.i = getelementptr inbounds %struct.inode, ptr %retval.0.i60.i, i32 0, i32 23
  %240 = ptrtoint ptr %i_size_seqcount.i.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %i_size_seqcount.i.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %241, 1
  store i32 %inc.i.i.i.i.i.i, ptr %i_size_seqcount.i.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !172
  %dep_map.i.i.i.i.i = getelementptr inbounds %struct.inode, ptr %retval.0.i60.i, i32 0, i32 23, i32 1
  %242 = call ptr @llvm.returnaddress(i32 0) #13
  %243 = ptrtoint ptr %242 to i32
  call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %243) #13
  %i_size8.i.i.i = getelementptr inbounds %struct.inode, ptr %retval.0.i60.i, i32 0, i32 14
  %244 = ptrtoint ptr %i_size8.i.i.i to i32
  call void @__asan_store8_noabort(i32 %244)
  store i64 %conv82.i.i, ptr %i_size8.i.i.i, align 8
  call void @lock_release(ptr noundef %dep_map.i.i.i.i.i, i32 noundef %243) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !173
  %245 = ptrtoint ptr %i_size_seqcount.i.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %i_size_seqcount.i.i.i, align 4
  %inc.i.i.i.i.i = add i32 %246, 1
  store i32 %inc.i.i.i.i.i, ptr %i_size_seqcount.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !174
  %247 = call i32 @llvm.read_register.i32(metadata !147) #13
  %and.i.i.i26.i.i.i = and i32 %247, -16384
  %248 = inttoptr i32 %and.i.i.i26.i.i.i to ptr
  %preempt_count.i.i27.i.i.i = getelementptr inbounds %struct.thread_info, ptr %248, i32 0, i32 1
  %249 = ptrtoint ptr %preempt_count.i.i27.i.i.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load volatile i32, ptr %preempt_count.i.i27.i.i.i, align 4
  %sub.i.i.i.i = add i32 %250, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i27.i.i.i, align 4
  %251 = ptrtoint ptr %retval.0.i60.i to i32
  call void @__asan_load2_noabort(i32 %251)
  %252 = load i16, ptr %retval.0.i60.i, align 8
  %253 = and i16 %252, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %253)
  %cmp.i166.i.i = icmp eq i16 %253, -32768
  br i1 %cmp.i166.i.i, label %land.rhs.i.i.i, label %i_size_write.exit.i.i.if.end33.i.i.i_crit_edge

i_size_write.exit.i.i.if.end33.i.i.i_crit_edge:   ; preds = %i_size_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33.i.i.i

land.rhs.i.i.i:                                   ; preds = %i_size_write.exit.i.i
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %i_rwsem.i.i73.i, i32 noundef 4) #13
  %254 = ptrtoint ptr %i_rwsem.i.i73.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load volatile i32, ptr %i_rwsem.i.i73.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %255)
  %cmp.i.i.not.i.i.i = icmp eq i32 %255, 0
  br i1 %cmp.i.i.not.i.i.i, label %land.rhs6.i.i.i, label %land.rhs.i.i.i.if.end33.i.i.i_crit_edge

land.rhs.i.i.i.if.end33.i.i.i_crit_edge:          ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33.i.i.i

land.rhs6.i.i.i:                                  ; preds = %land.rhs.i.i.i
  %.b68.i.i.i = load i1, ptr @ext4_update_i_disksize.__already_done, align 1
  br i1 %.b68.i.i.i, label %land.rhs6.i.i.i.if.end33.i.i.i_crit_edge, label %if.then.i167.i.i, !prof !159

land.rhs6.i.i.i.if.end33.i.i.i_crit_edge:         ; preds = %land.rhs6.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33.i.i.i

if.then.i167.i.i:                                 ; preds = %land.rhs6.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @ext4_update_i_disksize.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 3415, i32 noundef 9, ptr noundef null) #13
  br label %if.end33.i.i.i

if.end33.i.i.i:                                   ; preds = %if.then.i167.i.i, %land.rhs6.i.i.i.if.end33.i.i.i_crit_edge, %land.rhs.i.i.i.if.end33.i.i.i_crit_edge, %i_size_write.exit.i.i.if.end33.i.i.i_crit_edge
  %i_data_sem.i.i.i = getelementptr i8, ptr %retval.0.i60.i, i32 -96
  call void @down_write(ptr noundef %i_data_sem.i.i.i) #13
  %i_disksize.i.i.i = getelementptr i8, ptr %retval.0.i60.i, i32 -104
  %256 = ptrtoint ptr %i_disksize.i.i.i to i32
  call void @__asan_load8_noabort(i32 %256)
  %257 = load i64, ptr %i_disksize.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %257, i64 %conv82.i.i)
  %cmp43.i.i.i = icmp slt i64 %257, %conv82.i.i
  br i1 %cmp43.i.i.i, label %do.body50.i.i.i, label %if.end33.i.i.i.ext4_update_i_disksize.exit.i.i_crit_edge

if.end33.i.i.i.ext4_update_i_disksize.exit.i.i_crit_edge: ; preds = %if.end33.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ext4_update_i_disksize.exit.i.i

do.body50.i.i.i:                                  ; preds = %if.end33.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %258 = ptrtoint ptr %i_disksize.i.i.i to i32
  call void @__asan_store8_noabort(i32 %258)
  store volatile i64 %conv82.i.i, ptr %i_disksize.i.i.i, align 8
  br label %ext4_update_i_disksize.exit.i.i

ext4_update_i_disksize.exit.i.i:                  ; preds = %do.body50.i.i.i, %if.end33.i.i.i.ext4_update_i_disksize.exit.i.i_crit_edge
  call void @up_write(ptr noundef %i_data_sem.i.i.i) #13
  call void @up_write(ptr noundef %i_rwsem.i.i73.i) #13
  %call84.i.i = call i32 @__ext4_mark_inode_dirty(ptr noundef %handle, ptr noundef %retval.0.i60.i, ptr noundef nonnull @__func__.ext4_xattr_inode_write, i32 noundef 1396) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84.i.i)
  %tobool85.not.i.i = icmp ne i32 %call84.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.4.lcssa.i.i)
  %tobool87.not.i.i = icmp eq i32 %ret.4.lcssa.i.i, 0
  %spec.select.i.i = select i1 %tobool85.not.i.i, i1 %tobool87.not.i.i, i1 false
  br i1 %spec.select.i.i, label %if.then97.i.i, label %ext4_update_i_disksize.exit.i.i.out.i.i_crit_edge, !prof !158

ext4_update_i_disksize.exit.i.i.out.i.i_crit_edge: ; preds = %ext4_update_i_disksize.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.i.i

if.then97.i.i:                                    ; preds = %ext4_update_i_disksize.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.i.i

out.i.i:                                          ; preds = %if.then97.i.i, %ext4_update_i_disksize.exit.i.i.out.i.i_crit_edge
  %ret.5.i.i = phi i32 [ %call84.i.i, %if.then97.i.i ], [ %ret.4.lcssa.i.i, %ext4_update_i_disksize.exit.i.i.out.i.i_crit_edge ]
  %tobool.not.i169.i.i = icmp eq ptr %bh.0.lcssa.i.i, null
  br i1 %tobool.not.i169.i.i, label %out.i.i.ext4_xattr_inode_write.exit.i_crit_edge, label %out.i.i.if.then.i170.i.i_crit_edge

out.i.i.if.then.i170.i.i_crit_edge:               ; preds = %out.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i170.i.i

out.i.i.ext4_xattr_inode_write.exit.i_crit_edge:  ; preds = %out.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ext4_xattr_inode_write.exit.i

if.then.i170.i.i:                                 ; preds = %out.i.i.if.then.i170.i.i_crit_edge, %if.end72.i.i.if.then.i170.i.i_crit_edge
  %ret.5178.i.i = phi i32 [ %ret.5.i.i, %out.i.i.if.then.i170.i.i_crit_edge ], [ %call74.i.i, %if.end72.i.i.if.then.i170.i.i_crit_edge ]
  %bh.1177.i.i = phi ptr [ %bh.0.lcssa.i.i, %out.i.i.if.then.i170.i.i_crit_edge ], [ %call27.i.i, %if.end72.i.i.if.then.i170.i.i_crit_edge ]
  call void @__brelse(ptr noundef nonnull %bh.1177.i.i) #13
  br label %ext4_xattr_inode_write.exit.i

ext4_xattr_inode_write.exit.thread.i:             ; preds = %if.end64.i.i, %while.end.i70.i.ext4_xattr_inode_write.exit.thread.i_crit_edge, %land.lhs.true.i69.i.ext4_xattr_inode_write.exit.thread.i_crit_edge
  %retval.0.i74.ph.i = phi i32 [ %call.i65.i, %while.end.i70.i.ext4_xattr_inode_write.exit.thread.i_crit_edge ], [ -117, %if.end64.i.i ], [ -28, %land.lhs.true.i69.i.ext4_xattr_inode_write.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retries.i.i) #13
  br label %if.then14.i

ext4_xattr_inode_write.exit.i:                    ; preds = %if.then.i170.i.i, %out.i.i.ext4_xattr_inode_write.exit.i_crit_edge, %if.then29.i.i
  %retval.0.i74.i = phi i32 [ %191, %if.then29.i.i ], [ %ret.5.i.i, %out.i.i.ext4_xattr_inode_write.exit.i_crit_edge ], [ %ret.5178.i.i, %if.then.i170.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retries.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i74.i)
  %tobool13.not.i = icmp eq i32 %retval.0.i74.i, 0
  br i1 %tobool13.not.i, label %if.end16.i, label %ext4_xattr_inode_write.exit.i.if.then14.i_crit_edge

ext4_xattr_inode_write.exit.i.if.then14.i_crit_edge: ; preds = %ext4_xattr_inode_write.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then14.i

if.then14.i:                                      ; preds = %ext4_xattr_inode_write.exit.i.if.then14.i_crit_edge, %ext4_xattr_inode_write.exit.thread.i
  %retval.0.i7480.i = phi i32 [ %retval.0.i74.ph.i, %ext4_xattr_inode_write.exit.thread.i ], [ %retval.0.i74.i, %ext4_xattr_inode_write.exit.i.if.then14.i_crit_edge ]
  %call.i75.i = call fastcc i32 @ext4_xattr_inode_update_ref(ptr noundef %handle, ptr noundef %retval.0.i60.i, i32 noundef -1) #13
  call void @iput(ptr noundef %retval.0.i60.i) #13
  br label %if.then172

if.end16.i:                                       ; preds = %ext4_xattr_inode_write.exit.i
  %259 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %260, i32 0, i32 33
  %261 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %s_fs_info.i, align 16
  %s_ea_inode_cache.i = getelementptr inbounds %struct.ext4_sb_info, ptr %262, i32 0, i32 128
  %263 = ptrtoint ptr %s_ea_inode_cache.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %s_ea_inode_cache.i, align 4
  %tobool18.not.i = icmp eq ptr %264, null
  br i1 %tobool18.not.i, label %if.end16.i.if.end175_crit_edge, label %if.then19.i

if.end16.i.if.end175_crit_edge:                   ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end175

if.then19.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #15
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %retval.0.i60.i, i32 0, i32 11
  %265 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %i_ino.i, align 8
  %conv.i538 = zext i32 %266 to i64
  %call23.i = call i32 @mb_cache_entry_create(ptr noundef nonnull %264, i32 noundef 3136, i32 noundef %103, i64 noundef %conv.i538, i1 noundef zeroext true) #13
  br label %if.end175

ext4_xattr_inode_lookup_create.exit:              ; preds = %ext4_xattr_inode_create.exit.i
  %267 = ptrtoint ptr %retval.0.i60.i to i32
  %tobool171.not = icmp eq ptr %retval.0.i60.i, null
  br i1 %tobool171.not, label %ext4_xattr_inode_lookup_create.exit.if.end175_crit_edge, label %ext4_xattr_inode_lookup_create.exit.if.then172_crit_edge

ext4_xattr_inode_lookup_create.exit.if.then172_crit_edge: ; preds = %ext4_xattr_inode_lookup_create.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then172

ext4_xattr_inode_lookup_create.exit.if.end175_crit_edge: ; preds = %ext4_xattr_inode_lookup_create.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end175

if.then172:                                       ; preds = %ext4_xattr_inode_lookup_create.exit.if.then172_crit_edge, %if.then14.i, %if.then5.i
  %retval.0.i539599 = phi i32 [ %267, %ext4_xattr_inode_lookup_create.exit.if.then172_crit_edge ], [ %retval.0.i7480.i, %if.then14.i ], [ %call.i56.i, %if.then5.i ]
  %268 = ptrtoint ptr %value_len119 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %value_len119, align 4
  call fastcc void @ext4_xattr_inode_free_quota(ptr noundef %inode, ptr noundef null, i32 noundef %269)
  br label %cleanup344

if.end175:                                        ; preds = %ext4_xattr_inode_lookup_create.exit.if.end175_crit_edge, %if.then19.i, %if.end16.i.if.end175_crit_edge, %if.then.i.if.end175_crit_edge, %if.end113.if.end175_crit_edge
  %new_ea_inode.1 = phi ptr [ null, %if.end113.if.end175_crit_edge ], [ null, %ext4_xattr_inode_lookup_create.exit.if.end175_crit_edge ], [ %retval.0.i60.i, %if.end16.i.if.end175_crit_edge ], [ %retval.0.i60.i, %if.then19.i ], [ %call56.i.i, %if.then.i.if.end175_crit_edge ]
  %270 = ptrtoint ptr %old_ea_inode to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %old_ea_inode, align 4
  %tobool176.not = icmp eq ptr %271, null
  br i1 %tobool176.not, label %if.end175.if.end191_crit_edge, label %if.then177

if.end175.if.end191_crit_edge:                    ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end191

if.then177:                                       ; preds = %if.end175
  %call.i540 = call fastcc i32 @ext4_xattr_inode_update_ref(ptr noundef %handle, ptr noundef nonnull %271, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i540)
  %tobool179.not = icmp eq i32 %call.i540, 0
  br i1 %tobool179.not, label %if.end189, label %if.then180

if.then180:                                       ; preds = %if.then177
  %tobool181.not = icmp eq ptr %new_ea_inode.1, null
  br i1 %tobool181.not, label %if.then180.cleanup344_crit_edge, label %if.then182

if.then180.cleanup344_crit_edge:                  ; preds = %if.then180
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup344

if.then182:                                       ; preds = %if.then180
  %call.i541 = call fastcc i32 @ext4_xattr_inode_update_ref(ptr noundef %handle, ptr noundef nonnull %new_ea_inode.1, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i541)
  %tobool184.not = icmp eq i32 %call.i541, 0
  br i1 %tobool184.not, label %if.then182.if.end186_crit_edge, label %if.then185

if.then182.if.end186_crit_edge:                   ; preds = %if.then182
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end186

if.then185:                                       ; preds = %if.then182
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning_inode(ptr noundef nonnull %new_ea_inode.1, ptr noundef nonnull @__func__.ext4_xattr_set_entry, i32 noundef 1679, ptr noundef nonnull @.str.15, i32 noundef %call.i541) #13
  br label %if.end186

if.end186:                                        ; preds = %if.then185, %if.then182.if.end186_crit_edge
  %value_len187 = getelementptr inbounds %struct.ext4_xattr_info, ptr %i, i32 0, i32 2
  %272 = ptrtoint ptr %value_len187 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %value_len187, align 4
  call fastcc void @ext4_xattr_inode_free_quota(ptr noundef %inode, ptr noundef nonnull %new_ea_inode.1, i32 noundef %273)
  br label %cleanup344

if.end189:                                        ; preds = %if.then177
  call void @__sanitizer_cov_trace_pc() #15
  %e_value_size190 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %1, i32 0, i32 4
  %274 = ptrtoint ptr %e_value_size190 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %e_value_size190, align 4
  %276 = call i32 @llvm.bswap.i32(i32 %275)
  call fastcc void @ext4_xattr_inode_free_quota(ptr noundef %inode, ptr noundef nonnull %271, i32 noundef %276)
  br label %if.end191

if.end191:                                        ; preds = %if.end189, %if.end175.if.end191_crit_edge
  %277 = ptrtoint ptr %not_found to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %not_found, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %278)
  %tobool193.not = icmp eq i32 %278, 0
  br i1 %tobool193.not, label %land.lhs.true194, label %if.end191.if.end240_crit_edge

if.end191.if.end240_crit_edge:                    ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end240

land.lhs.true194:                                 ; preds = %if.end191
  %e_value_size195 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %1, i32 0, i32 4
  %279 = ptrtoint ptr %e_value_size195 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %e_value_size195, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %280)
  %tobool196.not = icmp eq i32 %280, 0
  br i1 %tobool196.not, label %land.lhs.true194.if.end240_crit_edge, label %land.lhs.true197

land.lhs.true194.if.end240_crit_edge:             ; preds = %land.lhs.true194
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end240

land.lhs.true197:                                 ; preds = %land.lhs.true194
  %e_value_inum198 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %1, i32 0, i32 3
  %281 = ptrtoint ptr %e_value_inum198 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %e_value_inum198, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %282)
  %tobool199.not = icmp eq i32 %282, 0
  br i1 %tobool199.not, label %if.then200, label %land.lhs.true197.if.end240_crit_edge

land.lhs.true197.if.end240_crit_edge:             ; preds = %land.lhs.true197
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end240

if.then200:                                       ; preds = %land.lhs.true197
  %283 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %base, align 4
  %add.ptr202 = getelementptr i8, ptr %284, i32 %min_offs.0.lcssa
  %e_value_offs204 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %1, i32 0, i32 2
  %285 = ptrtoint ptr %e_value_offs204 to i32
  call void @__asan_load2_noabort(i32 %285)
  %286 = load i16, ptr %e_value_offs204, align 2
  %287 = call i16 @llvm.bswap.i16(i16 %286)
  %conv205 = zext i16 %287 to i32
  %add.ptr208 = getelementptr i8, ptr %284, i32 %conv205
  %add.ptr209 = getelementptr i8, ptr %add.ptr202, i32 %cond
  %sub.ptr.lhs.cast210 = ptrtoint ptr %add.ptr208 to i32
  %sub.ptr.rhs.cast211 = ptrtoint ptr %add.ptr202 to i32
  %sub.ptr.sub212 = sub i32 %sub.ptr.lhs.cast210, %sub.ptr.rhs.cast211
  %288 = call ptr @memmove(ptr %add.ptr209, ptr %add.ptr202, i32 %sub.ptr.sub212)
  %289 = call ptr @memset(ptr %add.ptr202, i32 0, i32 %cond)
  %add213 = add i32 %min_offs.0.lcssa, %cond
  %290 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %s, align 4
  %292 = ptrtoint ptr %291 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %291, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %293)
  %cmp215.not627 = icmp eq i32 %293, 0
  br i1 %cmp215.not627, label %if.then200.if.end240_crit_edge, label %while.body.lr.ph

if.then200.if.end240_crit_edge:                   ; preds = %if.then200
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end240

while.body.lr.ph:                                 ; preds = %if.then200
  %294 = trunc i32 %cond to i16
  br label %while.body

while.body:                                       ; preds = %if.end233.while.body_crit_edge, %while.body.lr.ph
  %last.1628 = phi ptr [ %291, %while.body.lr.ph ], [ %add.ptr239, %if.end233.while.body_crit_edge ]
  %e_value_offs219 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %last.1628, i32 0, i32 2
  %295 = ptrtoint ptr %e_value_offs219 to i32
  call void @__asan_load2_noabort(i32 %295)
  %296 = load i16, ptr %e_value_offs219, align 2
  %297 = call i16 @llvm.bswap.i16(i16 %296)
  %e_value_inum221 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %last.1628, i32 0, i32 3
  %298 = ptrtoint ptr %e_value_inum221 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %e_value_inum221, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %299)
  %tobool222.not = icmp eq i32 %299, 0
  br i1 %tobool222.not, label %land.lhs.true223, label %while.body.if.end233_crit_edge

while.body.if.end233_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end233

land.lhs.true223:                                 ; preds = %while.body
  %e_value_size224 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %last.1628, i32 0, i32 4
  %300 = ptrtoint ptr %e_value_size224 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %e_value_size224, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %301)
  %tobool225.not = icmp ne i32 %301, 0
  call void @__sanitizer_cov_trace_cmp2(i16 %297, i16 %287)
  %cmp227 = icmp ult i16 %297, %287
  %or.cond528 = select i1 %tobool225.not, i1 %cmp227, i1 false
  br i1 %or.cond528, label %if.then229, label %land.lhs.true223.if.end233_crit_edge

land.lhs.true223.if.end233_crit_edge:             ; preds = %land.lhs.true223
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end233

if.then229:                                       ; preds = %land.lhs.true223
  call void @__sanitizer_cov_trace_pc() #15
  %conv231 = add i16 %297, %294
  %302 = call i16 @llvm.bswap.i16(i16 %conv231)
  %303 = ptrtoint ptr %e_value_offs219 to i32
  call void @__asan_store2_noabort(i32 %303)
  store i16 %302, ptr %e_value_offs219, align 2
  br label %if.end233

if.end233:                                        ; preds = %if.then229, %land.lhs.true223.if.end233_crit_edge, %while.body.if.end233_crit_edge
  %304 = ptrtoint ptr %last.1628 to i32
  call void @__asan_load1_noabort(i32 %304)
  %305 = load i8, ptr %last.1628, align 4
  %conv235 = zext i8 %305 to i32
  %add237 = add nuw nsw i32 %conv235, 19
  %and238 = and i32 %add237, 508
  %add.ptr239 = getelementptr i8, ptr %last.1628, i32 %and238
  %306 = ptrtoint ptr %add.ptr239 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %add.ptr239, align 4
  %cmp215.not = icmp eq i32 %307, 0
  br i1 %cmp215.not, label %if.end233.if.end240_crit_edge, label %if.end233.while.body_crit_edge

if.end233.while.body_crit_edge:                   ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

if.end233.if.end240_crit_edge:                    ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end240

if.end240:                                        ; preds = %if.end233.if.end240_crit_edge, %if.then200.if.end240_crit_edge, %land.lhs.true197.if.end240_crit_edge, %land.lhs.true194.if.end240_crit_edge, %if.end191.if.end240_crit_edge
  %min_offs.3 = phi i32 [ %min_offs.0.lcssa, %if.end191.if.end240_crit_edge ], [ %min_offs.0.lcssa, %land.lhs.true197.if.end240_crit_edge ], [ %min_offs.0.lcssa, %land.lhs.true194.if.end240_crit_edge ], [ %add213, %if.then200.if.end240_crit_edge ], [ %add213, %if.end233.if.end240_crit_edge ]
  %last.2 = phi ptr [ %last.0.lcssa, %if.end191.if.end240_crit_edge ], [ %last.0.lcssa, %land.lhs.true197.if.end240_crit_edge ], [ %last.0.lcssa, %land.lhs.true194.if.end240_crit_edge ], [ %291, %if.then200.if.end240_crit_edge ], [ %add.ptr239, %if.end233.if.end240_crit_edge ]
  %308 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %value, align 4
  %tobool242.not = icmp eq ptr %309, null
  br i1 %tobool242.not, label %if.then243, label %if.else253

if.then243:                                       ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #15
  %add245 = add i32 %call, 19
  %and246 = and i32 %add245, -4
  %idx.neg = sub i32 0, %and246
  %add.ptr247 = getelementptr i8, ptr %last.2, i32 %idx.neg
  %add.ptr248 = getelementptr i8, ptr %1, i32 %and246
  %sub.ptr.lhs.cast249 = ptrtoint ptr %add.ptr247 to i32
  %sub.ptr.rhs.cast250 = ptrtoint ptr %1 to i32
  %sub.ptr.sub251 = sub i32 4, %sub.ptr.rhs.cast250
  %add252 = add i32 %sub.ptr.sub251, %sub.ptr.lhs.cast249
  %310 = call ptr @memmove(ptr %1, ptr %add.ptr248, i32 %add252)
  %311 = call ptr @memset(ptr %add.ptr247, i32 0, i32 %and246)
  br label %if.end275

if.else253:                                       ; preds = %if.end240
  %312 = ptrtoint ptr %not_found to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %not_found, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %313)
  %tobool255.not = icmp eq i32 %313, 0
  br i1 %tobool255.not, label %if.else270, label %if.then256

if.then256:                                       ; preds = %if.else253
  call void @__sanitizer_cov_trace_pc() #15
  %add259 = add i32 %call, 19
  %and260 = and i32 %add259, -4
  %sub.ptr.lhs.cast261 = ptrtoint ptr %last.2 to i32
  %sub.ptr.rhs.cast262 = ptrtoint ptr %1 to i32
  %sub.ptr.sub263 = sub i32 4, %sub.ptr.rhs.cast262
  %add264 = add i32 %sub.ptr.sub263, %sub.ptr.lhs.cast261
  %add.ptr265 = getelementptr i8, ptr %1, i32 %and260
  %314 = call ptr @memmove(ptr %add.ptr265, ptr %1, i32 %add264)
  %315 = call ptr @memset(ptr %1, i32 0, i32 %and260)
  %name_index = getelementptr inbounds %struct.ext4_xattr_info, ptr %i, i32 0, i32 3
  %316 = ptrtoint ptr %name_index to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %name_index, align 4
  %conv266 = trunc i32 %317 to i8
  %e_name_index = getelementptr inbounds %struct.ext4_xattr_entry, ptr %1, i32 0, i32 1
  %318 = ptrtoint ptr %e_name_index to i32
  call void @__asan_store1_noabort(i32 %318)
  store i8 %conv266, ptr %e_name_index, align 1
  %conv267 = trunc i32 %call to i8
  %319 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %319)
  store i8 %conv267, ptr %1, align 4
  %e_name = getelementptr inbounds %struct.ext4_xattr_entry, ptr %1, i32 0, i32 6
  %320 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %i, align 4
  %322 = call ptr @memcpy(ptr %e_name, ptr %321, i32 %call)
  br label %if.end275

if.else270:                                       ; preds = %if.else253
  call void @__sanitizer_cov_trace_pc() #15
  %e_value_inum271 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %1, i32 0, i32 3
  %323 = ptrtoint ptr %e_value_inum271 to i32
  call void @__asan_store4_noabort(i32 %323)
  store i32 0, ptr %e_value_inum271, align 4
  %e_value_offs272 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %1, i32 0, i32 2
  %324 = ptrtoint ptr %e_value_offs272 to i32
  call void @__asan_store2_noabort(i32 %324)
  store i16 0, ptr %e_value_offs272, align 2
  %e_value_size273 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %1, i32 0, i32 4
  %325 = ptrtoint ptr %e_value_size273 to i32
  call void @__asan_store4_noabort(i32 %325)
  store i32 0, ptr %e_value_size273, align 4
  br label %if.end275

if.end275:                                        ; preds = %if.else270, %if.then256, %if.then243
  %326 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %value, align 4
  %tobool277.not = icmp eq ptr %327, null
  br i1 %tobool277.not, label %if.end275.if.end339_crit_edge, label %if.then278

if.end275.if.end339_crit_edge:                    ; preds = %if.end275
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end339

if.then278:                                       ; preds = %if.end275
  br i1 %tobool6.not, label %if.else282, label %if.then280

if.then280:                                       ; preds = %if.then278
  call void @__sanitizer_cov_trace_pc() #15
  %i_ino = getelementptr inbounds %struct.inode, ptr %new_ea_inode.1, i32 0, i32 11
  %328 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %i_ino, align 8
  %330 = call i32 @llvm.bswap.i32(i32 %329)
  %e_value_inum281 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %1, i32 0, i32 3
  %331 = ptrtoint ptr %e_value_inum281 to i32
  call void @__asan_store4_noabort(i32 %331)
  store i32 %330, ptr %e_value_inum281, align 4
  br label %if.end307

if.else282:                                       ; preds = %if.then278
  %value_len283 = getelementptr inbounds %struct.ext4_xattr_info, ptr %i, i32 0, i32 2
  %332 = ptrtoint ptr %value_len283 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %value_len283, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %333)
  %tobool284.not = icmp eq i32 %333, 0
  br i1 %tobool284.not, label %if.else282.if.end307_crit_edge, label %if.then285

if.else282.if.end307_crit_edge:                   ; preds = %if.else282
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end307

if.then285:                                       ; preds = %if.else282
  %334 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %base, align 4
  %add.ptr288 = getelementptr i8, ptr %335, i32 %min_offs.3
  %add.ptr290 = getelementptr i8, ptr %add.ptr288, i32 %idx.neg289
  %sub291 = sub i32 %min_offs.3, %cond12585
  %conv292 = trunc i32 %sub291 to i16
  %336 = call i16 @llvm.bswap.i16(i16 %conv292)
  %e_value_offs293 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %1, i32 0, i32 2
  %337 = ptrtoint ptr %e_value_offs293 to i32
  call void @__asan_store2_noabort(i32 %337)
  store i16 %336, ptr %e_value_offs293, align 2
  %338 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %value, align 4
  %cmp295 = icmp eq ptr %339, inttoptr (i32 -1 to ptr)
  br i1 %cmp295, label %if.then297, label %if.else298

if.then297:                                       ; preds = %if.then285
  call void @__sanitizer_cov_trace_pc() #15
  %340 = call ptr @memset(ptr %add.ptr290, i32 0, i32 %cond12585)
  br label %if.end307

if.else298:                                       ; preds = %if.then285
  call void @__sanitizer_cov_trace_pc() #15
  %341 = ptrtoint ptr %value_len283 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %value_len283, align 4
  %343 = call ptr @memcpy(ptr %add.ptr290, ptr %339, i32 %342)
  %344 = load i32, ptr %value_len283, align 4
  %add.ptr302 = getelementptr i8, ptr %add.ptr290, i32 %344
  %sub304 = sub i32 %cond12585, %344
  %345 = call ptr @memset(ptr %add.ptr302, i32 0, i32 %sub304)
  br label %if.end307

if.end307:                                        ; preds = %if.else298, %if.then297, %if.else282.if.end307_crit_edge, %if.then280
  %value_len308 = getelementptr inbounds %struct.ext4_xattr_info, ptr %i, i32 0, i32 2
  %346 = ptrtoint ptr %value_len308 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %value_len308, align 4
  %348 = call i32 @llvm.bswap.i32(i32 %347)
  %e_value_size309 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %1, i32 0, i32 4
  %349 = ptrtoint ptr %e_value_size309 to i32
  call void @__asan_store4_noabort(i32 %349)
  store i32 %348, ptr %e_value_size309, align 4
  br label %update_hash

update_hash:                                      ; preds = %if.end307, %if.else, %if.then21
  %cond12584.ph = phi i32 [ %cond12585, %if.end307 ], [ %cond, %if.else ], [ %cond, %if.then21 ]
  %new_ea_inode.2.ph = phi ptr [ %new_ea_inode.1, %if.end307 ], [ null, %if.else ], [ null, %if.then21 ]
  %350 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %350)
  %.pr = load ptr, ptr %value, align 4
  %tobool313.not = icmp eq ptr %.pr, null
  br i1 %tobool313.not, label %update_hash.if.end339_crit_edge, label %if.then314

update_hash.if.end339_crit_edge:                  ; preds = %update_hash
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end339

if.then314:                                       ; preds = %update_hash
  br i1 %tobool6.not, label %if.else323, label %if.then316

if.then316:                                       ; preds = %if.then314
  %i_atime.i = getelementptr inbounds %struct.inode, ptr %new_ea_inode.2.ph, i32 0, i32 15
  %351 = ptrtoint ptr %i_atime.i to i32
  call void @__asan_load8_noabort(i32 %351)
  %352 = load i64, ptr %i_atime.i, align 8
  %conv.i542 = trunc i64 %352 to i32
  %353 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %353)
  %354 = load i8, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %354)
  %tobool.not18.i = icmp eq i8 %354, 0
  br i1 %tobool.not18.i, label %if.then316.while.cond2.preheader.i_crit_edge, label %while.body.i.preheader

if.then316.while.cond2.preheader.i_crit_edge:     ; preds = %if.then316
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond2.preheader.i

while.body.i.preheader:                           ; preds = %if.then316
  %conv321 = zext i8 %354 to i32
  %e_name318 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %1, i32 0, i32 6
  br label %while.body.i

while.cond2.preheader.i:                          ; preds = %while.body.i.while.cond2.preheader.i_crit_edge, %if.then316.while.cond2.preheader.i_crit_edge
  %hash.0.lcssa.i = phi i32 [ 0, %if.then316.while.cond2.preheader.i_crit_edge ], [ %xor1.i, %while.body.i.while.cond2.preheader.i_crit_edge ]
  %xor816.i = call i32 @llvm.fshl.i32(i32 %hash.0.lcssa.i, i32 %hash.0.lcssa.i, i32 16) #13
  %xor10.i = xor i32 %xor816.i, %conv.i542
  %355 = call i32 @llvm.bswap.i32(i32 %xor10.i) #13
  br label %if.end337

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.i.preheader
  %hash.021.i = phi i32 [ %xor1.i, %while.body.i.while.body.i_crit_edge ], [ 0, %while.body.i.preheader ]
  %name_len.addr.020.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %conv321, %while.body.i.preheader ]
  %name.addr.019.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %e_name318, %while.body.i.preheader ]
  %dec.i = add nsw i32 %name_len.addr.020.i, -1
  %xor17.i = call i32 @llvm.fshl.i32(i32 %hash.021.i, i32 %hash.021.i, i32 5) #13
  %incdec.ptr.i = getelementptr i8, ptr %name.addr.019.i, i32 1
  %356 = ptrtoint ptr %name.addr.019.i to i32
  call void @__asan_load1_noabort(i32 %356)
  %357 = load i8, ptr %name.addr.019.i, align 1
  %conv.i543 = zext i8 %357 to i32
  %xor1.i = xor i32 %xor17.i, %conv.i543
  %tobool.not.i544 = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i544, label %while.body.i.while.cond2.preheader.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

while.body.i.while.cond2.preheader.i_crit_edge:   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond2.preheader.i

if.else323:                                       ; preds = %if.then314
  br i1 %is_block, label %if.then325, label %if.else323.if.end337_crit_edge

if.else323.if.end337_crit_edge:                   ; preds = %if.else323
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end337

if.then325:                                       ; preds = %if.else323
  %358 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %base, align 4
  %e_value_offs328 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %1, i32 0, i32 2
  %360 = ptrtoint ptr %e_value_offs328 to i32
  call void @__asan_load2_noabort(i32 %360)
  %361 = load i16, ptr %e_value_offs328, align 2
  %362 = call i16 @llvm.bswap.i16(i16 %361)
  %conv329 = zext i16 %362 to i32
  %add.ptr330 = getelementptr i8, ptr %359, i32 %conv329
  %363 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %363)
  %364 = load i8, ptr %1, align 4
  %shr = lshr exact i32 %cond12584.ph, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %364)
  %tobool.not18.i546 = icmp eq i8 %364, 0
  br i1 %tobool.not18.i546, label %if.then325.while.cond2.preheader.i548_crit_edge, label %while.body.i558.preheader

if.then325.while.cond2.preheader.i548_crit_edge:  ; preds = %if.then325
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond2.preheader.i548

while.body.i558.preheader:                        ; preds = %if.then325
  %conv334 = zext i8 %364 to i32
  %e_name331 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %1, i32 0, i32 6
  br label %while.body.i558

while.cond2.preheader.i548:                       ; preds = %while.body.i558.while.cond2.preheader.i548_crit_edge, %if.then325.while.cond2.preheader.i548_crit_edge
  %hash.0.lcssa.i547 = phi i32 [ 0, %if.then325.while.cond2.preheader.i548_crit_edge ], [ %xor1.i556, %while.body.i558.while.cond2.preheader.i548_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond12584.ph)
  %tobool4.not22.i = icmp eq i32 %cond12584.ph, 0
  br i1 %tobool4.not22.i, label %while.cond2.preheader.i548.ext4_xattr_hash_entry.exit568_crit_edge, label %while.cond2.preheader.i548.while.body5.i567_crit_edge

while.cond2.preheader.i548.while.body5.i567_crit_edge: ; preds = %while.cond2.preheader.i548
  br label %while.body5.i567

while.cond2.preheader.i548.ext4_xattr_hash_entry.exit568_crit_edge: ; preds = %while.cond2.preheader.i548
  call void @__sanitizer_cov_trace_pc() #15
  br label %ext4_xattr_hash_entry.exit568

while.body.i558:                                  ; preds = %while.body.i558.while.body.i558_crit_edge, %while.body.i558.preheader
  %hash.021.i549 = phi i32 [ %xor1.i556, %while.body.i558.while.body.i558_crit_edge ], [ 0, %while.body.i558.preheader ]
  %name_len.addr.020.i550 = phi i32 [ %dec.i552, %while.body.i558.while.body.i558_crit_edge ], [ %conv334, %while.body.i558.preheader ]
  %name.addr.019.i551 = phi ptr [ %incdec.ptr.i554, %while.body.i558.while.body.i558_crit_edge ], [ %e_name331, %while.body.i558.preheader ]
  %dec.i552 = add nsw i32 %name_len.addr.020.i550, -1
  %xor17.i553 = call i32 @llvm.fshl.i32(i32 %hash.021.i549, i32 %hash.021.i549, i32 5) #13
  %incdec.ptr.i554 = getelementptr i8, ptr %name.addr.019.i551, i32 1
  %365 = ptrtoint ptr %name.addr.019.i551 to i32
  call void @__asan_load1_noabort(i32 %365)
  %366 = load i8, ptr %name.addr.019.i551, align 1
  %conv.i555 = zext i8 %366 to i32
  %xor1.i556 = xor i32 %xor17.i553, %conv.i555
  %tobool.not.i557 = icmp eq i32 %dec.i552, 0
  br i1 %tobool.not.i557, label %while.body.i558.while.cond2.preheader.i548_crit_edge, label %while.body.i558.while.body.i558_crit_edge

while.body.i558.while.body.i558_crit_edge:        ; preds = %while.body.i558
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i558

while.body.i558.while.cond2.preheader.i548_crit_edge: ; preds = %while.body.i558
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond2.preheader.i548

while.body5.i567:                                 ; preds = %while.body5.i567.while.body5.i567_crit_edge, %while.cond2.preheader.i548.while.body5.i567_crit_edge
  %hash.125.i559 = phi i32 [ %xor10.i565, %while.body5.i567.while.body5.i567_crit_edge ], [ %hash.0.lcssa.i547, %while.cond2.preheader.i548.while.body5.i567_crit_edge ]
  %value_count.addr.024.i560 = phi i32 [ %dec3.i562, %while.body5.i567.while.body5.i567_crit_edge ], [ %shr, %while.cond2.preheader.i548.while.body5.i567_crit_edge ]
  %value.addr.023.i561 = phi ptr [ %incdec.ptr9.i564, %while.body5.i567.while.body5.i567_crit_edge ], [ %add.ptr330, %while.cond2.preheader.i548.while.body5.i567_crit_edge ]
  %dec3.i562 = add i32 %value_count.addr.024.i560, -1
  %xor816.i563 = call i32 @llvm.fshl.i32(i32 %hash.125.i559, i32 %hash.125.i559, i32 16) #13
  %incdec.ptr9.i564 = getelementptr i32, ptr %value.addr.023.i561, i32 1
  %367 = ptrtoint ptr %value.addr.023.i561 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %value.addr.023.i561, align 4
  %369 = call i32 @llvm.bswap.i32(i32 %368) #13
  %xor10.i565 = xor i32 %369, %xor816.i563
  %tobool4.not.i566 = icmp eq i32 %dec3.i562, 0
  br i1 %tobool4.not.i566, label %while.body5.i567.ext4_xattr_hash_entry.exit568_crit_edge, label %while.body5.i567.while.body5.i567_crit_edge

while.body5.i567.while.body5.i567_crit_edge:      ; preds = %while.body5.i567
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body5.i567

while.body5.i567.ext4_xattr_hash_entry.exit568_crit_edge: ; preds = %while.body5.i567
  call void @__sanitizer_cov_trace_pc() #15
  br label %ext4_xattr_hash_entry.exit568

ext4_xattr_hash_entry.exit568:                    ; preds = %while.body5.i567.ext4_xattr_hash_entry.exit568_crit_edge, %while.cond2.preheader.i548.ext4_xattr_hash_entry.exit568_crit_edge
  %hash.1.lcssa.i = phi i32 [ %hash.0.lcssa.i547, %while.cond2.preheader.i548.ext4_xattr_hash_entry.exit568_crit_edge ], [ %xor10.i565, %while.body5.i567.ext4_xattr_hash_entry.exit568_crit_edge ]
  %370 = call i32 @llvm.bswap.i32(i32 %hash.1.lcssa.i) #13
  br label %if.end337

if.end337:                                        ; preds = %ext4_xattr_hash_entry.exit568, %if.else323.if.end337_crit_edge, %while.cond2.preheader.i
  %hash.0 = phi i32 [ %355, %while.cond2.preheader.i ], [ %370, %ext4_xattr_hash_entry.exit568 ], [ 0, %if.else323.if.end337_crit_edge ]
  %e_hash338 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %1, i32 0, i32 5
  %371 = ptrtoint ptr %e_hash338 to i32
  call void @__asan_store4_noabort(i32 %371)
  store i32 %hash.0, ptr %e_hash338, align 4
  br label %if.end339

if.end339:                                        ; preds = %if.end337, %update_hash.if.end339_crit_edge, %if.end275.if.end339_crit_edge
  %new_ea_inode.2603 = phi ptr [ %new_ea_inode.2.ph, %if.end337 ], [ %new_ea_inode.2.ph, %update_hash.if.end339_crit_edge ], [ %new_ea_inode.1, %if.end275.if.end339_crit_edge ]
  br i1 %is_block, label %if.then341, label %if.end339.cleanup344_crit_edge

if.end339.cleanup344_crit_edge:                   ; preds = %if.end339
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup344

if.then341:                                       ; preds = %if.end339
  %372 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr %struct.ext4_xattr_header, ptr %373, i32 1
  %374 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %375)
  %cmp.not13.i = icmp eq i32 %375, 0
  br i1 %cmp.not13.i, label %if.then341.ext4_xattr_rehash.exit_crit_edge, label %if.then341.while.body.i570_crit_edge

if.then341.while.body.i570_crit_edge:             ; preds = %if.then341
  br label %while.body.i570

if.then341.ext4_xattr_rehash.exit_crit_edge:      ; preds = %if.then341
  call void @__sanitizer_cov_trace_pc() #15
  br label %ext4_xattr_rehash.exit

while.body.i570:                                  ; preds = %if.end.i573.while.body.i570_crit_edge, %if.then341.while.body.i570_crit_edge
  %hash.015.i = phi i32 [ %xor2.i, %if.end.i573.while.body.i570_crit_edge ], [ 0, %if.then341.while.body.i570_crit_edge ]
  %here.014.i = phi ptr [ %add.ptr4.i, %if.end.i573.while.body.i570_crit_edge ], [ %add.ptr.i, %if.then341.while.body.i570_crit_edge ]
  %e_hash.i = getelementptr inbounds %struct.ext4_xattr_entry, ptr %here.014.i, i32 0, i32 5
  %376 = ptrtoint ptr %e_hash.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %e_hash.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %377)
  %tobool.not.i569 = icmp eq i32 %377, 0
  br i1 %tobool.not.i569, label %while.body.i570.ext4_xattr_rehash.exit_crit_edge, label %if.end.i573

while.body.i570.ext4_xattr_rehash.exit_crit_edge: ; preds = %while.body.i570
  call void @__sanitizer_cov_trace_pc() #15
  br label %ext4_xattr_rehash.exit

if.end.i573:                                      ; preds = %while.body.i570
  %xor12.i = call i32 @llvm.fshl.i32(i32 %hash.015.i, i32 %hash.015.i, i32 16) #13
  %378 = call i32 @llvm.bswap.i32(i32 %377) #13
  %xor2.i = xor i32 %378, %xor12.i
  %379 = ptrtoint ptr %here.014.i to i32
  call void @__asan_load1_noabort(i32 %379)
  %380 = load i8, ptr %here.014.i, align 4
  %conv.i571 = zext i8 %380 to i32
  %add3.i = add nuw nsw i32 %conv.i571, 19
  %and.i572 = and i32 %add3.i, 508
  %add.ptr4.i = getelementptr i8, ptr %here.014.i, i32 %and.i572
  %381 = ptrtoint ptr %add.ptr4.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load i32, ptr %add.ptr4.i, align 4
  %cmp.not.i = icmp eq i32 %382, 0
  br i1 %cmp.not.i, label %if.end.i573.ext4_xattr_rehash.exit_crit_edge, label %if.end.i573.while.body.i570_crit_edge

if.end.i573.while.body.i570_crit_edge:            ; preds = %if.end.i573
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i570

if.end.i573.ext4_xattr_rehash.exit_crit_edge:     ; preds = %if.end.i573
  call void @__sanitizer_cov_trace_pc() #15
  br label %ext4_xattr_rehash.exit

ext4_xattr_rehash.exit:                           ; preds = %if.end.i573.ext4_xattr_rehash.exit_crit_edge, %while.body.i570.ext4_xattr_rehash.exit_crit_edge, %if.then341.ext4_xattr_rehash.exit_crit_edge
  %hash.1.i = phi i32 [ 0, %if.then341.ext4_xattr_rehash.exit_crit_edge ], [ %xor2.i, %if.end.i573.ext4_xattr_rehash.exit_crit_edge ], [ 0, %while.body.i570.ext4_xattr_rehash.exit_crit_edge ]
  %383 = call i32 @llvm.bswap.i32(i32 %hash.1.i) #13
  %h_hash.i = getelementptr inbounds %struct.ext4_xattr_header, ptr %373, i32 0, i32 3
  %384 = ptrtoint ptr %h_hash.i to i32
  call void @__asan_store4_noabort(i32 %384)
  store i32 %383, ptr %h_hash.i, align 4
  br label %cleanup344

cleanup344:                                       ; preds = %ext4_xattr_rehash.exit, %if.end339.cleanup344_crit_edge, %if.end186, %if.then180.cleanup344_crit_edge, %if.then172, %if.then4.i, %if.end155.cleanup344_crit_edge, %if.then111, %land.lhs.true87.cleanup344_crit_edge, %if.then56.cleanup344_crit_edge, %if.then38
  %new_ea_inode.3 = phi ptr [ %new_ea_inode.2603, %ext4_xattr_rehash.exit ], [ %new_ea_inode.2603, %if.end339.cleanup344_crit_edge ], [ null, %if.then180.cleanup344_crit_edge ], [ %new_ea_inode.1, %if.end186 ], [ null, %if.then172 ], [ null, %if.then111 ], [ null, %if.then38 ], [ null, %if.then56.cleanup344_crit_edge ], [ null, %land.lhs.true87.cleanup344_crit_edge ], [ null, %if.end155.cleanup344_crit_edge ], [ null, %if.then4.i ]
  %ret.1 = phi i32 [ 0, %ext4_xattr_rehash.exit ], [ 0, %if.end339.cleanup344_crit_edge ], [ %call.i540, %if.then180.cleanup344_crit_edge ], [ %call.i540, %if.end186 ], [ %retval.0.i539599, %if.then172 ], [ %call109, %if.then111 ], [ -117, %if.then38 ], [ -28, %if.then56.cleanup344_crit_edge ], [ -28, %land.lhs.true87.cleanup344_crit_edge ], [ %call.i, %if.end155.cleanup344_crit_edge ], [ %call.i.i, %if.then4.i ]
  %385 = ptrtoint ptr %old_ea_inode to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %old_ea_inode, align 4
  call void @iput(ptr noundef %386) #13
  call void @iput(ptr noundef %new_ea_inode.3) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old_ea_inode) #13
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_xattr_set_handle(ptr noundef %handle, ptr noundef %inode, i32 noundef %name_index, ptr noundef %name, ptr noundef %value, i32 noundef %value_len, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %i = alloca %struct.ext4_xattr_info, align 4
  %is = alloca %struct.ext4_xattr_ibody_find, align 4
  %bs = alloca %struct.ext4_xattr_block_find, align 4
  %tmp209 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %i) #13
  %0 = getelementptr inbounds %struct.ext4_xattr_info, ptr %i, i32 0, i32 1
  %1 = getelementptr inbounds %struct.ext4_xattr_info, ptr %i, i32 0, i32 2
  %2 = getelementptr inbounds %struct.ext4_xattr_info, ptr %i, i32 0, i32 3
  %3 = getelementptr inbounds %struct.ext4_xattr_info, ptr %i, i32 0, i32 4
  %4 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %name, ptr %i, align 4
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %value, ptr %0, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %value_len, ptr %1, align 4
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %name_index, ptr %2, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %is) #13
  %9 = call ptr @memcpy(ptr %is, ptr @__const.ext4_xattr_set_handle.is, i32 32)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %bs) #13
  %10 = call ptr @memcpy(ptr %bs, ptr @__const.ext4_xattr_set_handle.bs, i32 24)
  %tobool.not = icmp eq ptr %name, null
  br i1 %tobool.not, label %entry.cleanup230_crit_edge, label %if.end

entry.cleanup230_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup230

if.end:                                           ; preds = %entry
  %call = tail call i32 @strlen(ptr noundef nonnull %name) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call)
  %cmp = icmp ugt i32 %call, 255
  br i1 %cmp, label %if.end.cleanup230_crit_edge, label %if.end6

if.end.cleanup230_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup230

if.end6:                                          ; preds = %if.end
  %xattr_sem.i = getelementptr i8, ptr %inode, i32 -376
  tail call void @down_write(ptr noundef %xattr_sem.i) #13
  %i_state_flags.i.i = getelementptr i8, ptr %inode, i32 -384
  %11 = ptrtoint ptr %i_state_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %i_state_flags.i.i, align 4
  %shr.i.i.i = lshr i32 %12, 3
  %and1.i.i.i = and i32 %shr.i.i.i, 1
  tail call void @_set_bit(i32 noundef 3, ptr noundef %i_state_flags.i.i) #13
  %cmp.i.not = icmp ult ptr %handle, inttoptr (i32 4096 to ptr)
  br i1 %cmp.i.not, label %if.end6.if.end64_crit_edge, label %if.then9

if.end6.if.end64_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end64

if.then9:                                         ; preds = %if.end6
  %i_file_acl.i = getelementptr i8, ptr %inode, i32 -400
  %13 = ptrtoint ptr %i_file_acl.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %i_file_acl.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %14)
  %tobool.not.i = icmp eq i64 %14, 0
  br i1 %tobool.not.i, label %if.then9.if.end14_crit_edge, label %if.end.i

if.then9.if.end14_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.end.i:                                         ; preds = %if.then9
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %15 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i_sb.i, align 4
  %call3.i = tail call ptr @ext4_sb_bread(ptr noundef %16, i64 noundef %14, i32 noundef 8192) #13
  %cmp.i.i = icmp ugt ptr %call3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.i.ext4_xattr_get_block.exit_crit_edge, label %if.end6.i

if.end.i.ext4_xattr_get_block.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ext4_xattr_get_block.exit

if.end6.i:                                        ; preds = %if.end.i
  %call7.i = tail call fastcc i32 @__ext4_xattr_check_block(ptr noundef %inode, ptr noundef %call3.i, ptr noundef nonnull @__func__.ext4_xattr_get_block, i32 noundef 2248) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end6.i.ext4_xattr_get_block.exit_crit_edge, label %if.then9.i

if.end6.i.ext4_xattr_get_block.exit_crit_edge:    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ext4_xattr_get_block.exit

if.then9.i:                                       ; preds = %if.end6.i
  %tobool.not.i.i = icmp eq ptr %call3.i, null
  br i1 %tobool.not.i.i, label %if.then9.i.brelse.exit.i_crit_edge, label %if.then.i.i

if.then9.i.brelse.exit.i_crit_edge:               ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %brelse.exit.i

if.then.i.i:                                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__brelse(ptr noundef nonnull %call3.i) #13
  br label %brelse.exit.i

brelse.exit.i:                                    ; preds = %if.then.i.i, %if.then9.i.brelse.exit.i_crit_edge
  %17 = inttoptr i32 %call7.i to ptr
  br label %ext4_xattr_get_block.exit

ext4_xattr_get_block.exit:                        ; preds = %brelse.exit.i, %if.end6.i.ext4_xattr_get_block.exit_crit_edge, %if.end.i.ext4_xattr_get_block.exit_crit_edge
  %retval.0.i = phi ptr [ %17, %brelse.exit.i ], [ %call3.i, %if.end.i.ext4_xattr_get_block.exit_crit_edge ], [ %call3.i, %if.end6.i.ext4_xattr_get_block.exit_crit_edge ]
  %cmp.i299 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i299, label %if.then12, label %ext4_xattr_get_block.exit.if.end14_crit_edge

ext4_xattr_get_block.exit.if.end14_crit_edge:     ; preds = %ext4_xattr_get_block.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.then12:                                        ; preds = %ext4_xattr_get_block.exit
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %retval.0.i to i32
  br label %cleanup226

if.end14:                                         ; preds = %ext4_xattr_get_block.exit.if.end14_crit_edge, %if.then9.if.end14_crit_edge
  %retval.0.i336 = phi ptr [ %retval.0.i, %ext4_xattr_get_block.exit.if.end14_crit_edge ], [ null, %if.then9.if.end14_crit_edge ]
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %19 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i_sb, align 4
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15 = icmp ne i32 %and, 0
  %call16 = tail call i32 @__ext4_xattr_set_credits(ptr noundef %20, ptr noundef %inode, ptr noundef %retval.0.i336, i32 noundef %value_len, i1 noundef zeroext %tobool15)
  %tobool.not.i300 = icmp eq ptr %retval.0.i336, null
  br i1 %tobool.not.i300, label %if.end14.brelse.exit_crit_edge, label %if.then.i

if.end14.brelse.exit_crit_edge:                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %brelse.exit

if.then.i:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__brelse(ptr noundef nonnull %retval.0.i336) #13
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.end14.brelse.exit_crit_edge
  %h_reserved.i = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 7
  %21 = ptrtoint ptr %h_reserved.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %bf.load.i = load i32, ptr %h_reserved.i, align 4
  %22 = and i32 %bf.load.i, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i302 = icmp eq i32 %22, 0
  br i1 %tobool.not.i302, label %if.then.i303, label %brelse.exit.jbd2_handle_buffer_credits.exit_crit_edge

brelse.exit.jbd2_handle_buffer_credits.exit_crit_edge: ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %jbd2_handle_buffer_credits.exit

if.then.i303:                                     ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #15
  %23 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %handle, align 4
  br label %jbd2_handle_buffer_credits.exit

jbd2_handle_buffer_credits.exit:                  ; preds = %if.then.i303, %brelse.exit.jbd2_handle_buffer_credits.exit_crit_edge
  %journal.0.in.i = phi ptr [ %24, %if.then.i303 ], [ %handle, %brelse.exit.jbd2_handle_buffer_credits.exit_crit_edge ]
  %25 = ptrtoint ptr %journal.0.in.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %journal.0.i = load ptr, ptr %journal.0.in.i, align 4
  %h_total_credits.i = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 2
  %26 = ptrtoint ptr %h_total_credits.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %h_total_credits.i, align 4
  %h_revoke_credits_requested.i = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 4
  %28 = ptrtoint ptr %h_revoke_credits_requested.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %h_revoke_credits_requested.i, align 4
  %j_revoke_records_per_block.i = getelementptr inbounds %struct.journal_s, ptr %journal.0.i, i32 0, i32 48
  %30 = ptrtoint ptr %j_revoke_records_per_block.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %j_revoke_records_per_block.i, align 4
  %add.i = add i32 %29, -1
  %sub.i = add i32 %add.i, %31
  %div.i = sdiv i32 %sub.i, %31
  %sub2.i = sub i32 %27, %div.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub2.i, i32 %call16)
  %cmp18 = icmp slt i32 %sub2.i, %call16
  br i1 %cmp18, label %jbd2_handle_buffer_credits.exit.cleanup226_crit_edge, label %if.end20

jbd2_handle_buffer_credits.exit.cleanup226_crit_edge: ; preds = %jbd2_handle_buffer_credits.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup226

if.end20:                                         ; preds = %jbd2_handle_buffer_credits.exit
  %32 = tail call i32 @llvm.read_register.i32(metadata !147) #13
  %and.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %task, align 8
  %flags22 = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %flags22 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags22, align 4
  %and23 = and i32 %37, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %land.rhs, label %if.end20.if.end64_crit_edge

if.end20.if.end64_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end64

land.rhs:                                         ; preds = %if.end20
  %.b297 = load i1, ptr @ext4_xattr_set_handle.__already_done, align 1
  br i1 %.b297, label %land.rhs.if.end64_crit_edge, label %if.then33, !prof !159

land.rhs.if.end64_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end64

if.then33:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @ext4_xattr_set_handle.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 2316, i32 noundef 9, ptr noundef null) #13
  br label %if.end64

if.end64:                                         ; preds = %if.then33, %land.rhs.if.end64_crit_edge, %if.end20.if.end64_crit_edge, %if.end6.if.end64_crit_edge
  %iloc = getelementptr inbounds %struct.ext4_xattr_ibody_find, ptr %is, i32 0, i32 1
  %call65 = call i32 @ext4_reserve_inode_write(ptr noundef %handle, ptr noundef %inode, ptr noundef %iloc) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end68, label %if.end64.cleanup226_crit_edge

if.end64.cleanup226_crit_edge:                    ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup226

if.end68:                                         ; preds = %if.end64
  %38 = ptrtoint ptr %i_state_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %i_state_flags.i.i, align 4
  %40 = and i32 %39, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool70.not = icmp eq i32 %40, 0
  br i1 %tobool70.not, label %if.end68.if.end76_crit_edge, label %if.then71

if.end68.if.end76_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end76

if.then71:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #15
  %41 = ptrtoint ptr %iloc to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %iloc, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %42, i32 0, i32 5
  %43 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %b_data.i, align 4
  %offset.i = getelementptr inbounds %struct.ext4_xattr_ibody_find, ptr %is, i32 0, i32 1, i32 1
  %45 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %44, i32 %46
  %i_sb74 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %47 = ptrtoint ptr %i_sb74 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %i_sb74, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %48, i32 0, i32 33
  %49 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %s_fs_info.i, align 16
  %s_inode_size = getelementptr inbounds %struct.ext4_sb_info, ptr %50, i32 0, i32 29
  %51 = ptrtoint ptr %s_inode_size to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %s_inode_size, align 4
  %53 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 %52)
  call void @_clear_bit(i32 noundef 1, ptr noundef %i_state_flags.i.i) #13
  br label %if.end76

if.end76:                                         ; preds = %if.then71, %if.end68.if.end76_crit_edge
  %call77 = call i32 @ext4_xattr_ibody_find(ptr noundef %inode, ptr noundef nonnull %i, ptr noundef nonnull %is)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end80, label %if.end76.cleanup226_crit_edge

if.end76.cleanup226_crit_edge:                    ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup226

if.end80:                                         ; preds = %if.end76
  %not_found = getelementptr inbounds %struct.ext4_xattr_search, ptr %is, i32 0, i32 4
  %54 = ptrtoint ptr %not_found to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %not_found, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool81.not = icmp eq i32 %55, 0
  br i1 %tobool81.not, label %if.end80.if.else_crit_edge, label %if.end84

if.end80.if.else_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.end84:                                         ; preds = %if.end80
  %call83 = call fastcc i32 @ext4_xattr_block_find(ptr noundef %inode, ptr noundef nonnull %i, ptr noundef nonnull %bs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool85.not = icmp eq i32 %call83, 0
  br i1 %tobool85.not, label %if.end87, label %if.end84.cleanup226_crit_edge

if.end84.cleanup226_crit_edge:                    ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup226

if.end87:                                         ; preds = %if.end84
  %56 = ptrtoint ptr %not_found to i32
  call void @__asan_load4_noabort(i32 %56)
  %.pr = load i32, ptr %not_found, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool90.not = icmp eq i32 %.pr, 0
  br i1 %tobool90.not, label %if.end87.if.else_crit_edge, label %land.lhs.true

if.end87.if.else_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true:                                    ; preds = %if.end87
  %not_found92 = getelementptr inbounds %struct.ext4_xattr_search, ptr %bs, i32 0, i32 4
  %57 = ptrtoint ptr %not_found92 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %not_found92, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool93.not = icmp eq i32 %58, 0
  br i1 %tobool93.not, label %land.lhs.true.if.else_crit_edge, label %if.then94

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then94:                                        ; preds = %land.lhs.true
  %and95 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool96.not = icmp eq i32 %and95, 0
  br i1 %tobool96.not, label %if.end98, label %if.then94.cleanup226_crit_edge

if.then94.cleanup226_crit_edge:                   ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup226

if.end98:                                         ; preds = %if.then94
  %tobool99.not = icmp eq ptr %value, null
  br i1 %tobool99.not, label %if.end98.cleanup226_crit_edge, label %if.end98.if.end131_crit_edge

if.end98.if.end131_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end131

if.end98.cleanup226_crit_edge:                    ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup226

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end87.if.else_crit_edge, %if.end80.if.else_crit_edge
  %tobool90.not344 = phi i1 [ false, %land.lhs.true.if.else_crit_edge ], [ true, %if.end87.if.else_crit_edge ], [ true, %if.end80.if.else_crit_edge ]
  %and102 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102)
  %tobool103.not = icmp eq i32 %and102, 0
  br i1 %tobool103.not, label %if.end106, label %if.else.cleanup226_crit_edge

if.else.cleanup226_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup226

if.end106:                                        ; preds = %if.else
  %tobool107.not = icmp eq ptr %value, null
  br i1 %tobool107.not, label %if.then108, label %if.else122

if.then108:                                       ; preds = %if.end106
  br i1 %tobool90.not344, label %if.then112, label %if.else114

if.then112:                                       ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #15
  %call113 = call i32 @ext4_xattr_ibody_set(ptr noundef %handle, ptr noundef %inode, ptr noundef nonnull %i, ptr noundef nonnull %is)
  br label %if.end205

if.else114:                                       ; preds = %if.then108
  %not_found116 = getelementptr inbounds %struct.ext4_xattr_search, ptr %bs, i32 0, i32 4
  %59 = ptrtoint ptr %not_found116 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %not_found116, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool117.not = icmp eq i32 %60, 0
  br i1 %tobool117.not, label %if.then118, label %if.else114.if.end224_crit_edge

if.else114.if.end224_crit_edge:                   ; preds = %if.else114
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end224

if.then118:                                       ; preds = %if.else114
  call void @__sanitizer_cov_trace_pc() #15
  %call119 = call fastcc i32 @ext4_xattr_block_set(ptr noundef %handle, ptr noundef %inode, ptr noundef nonnull %i, ptr noundef nonnull %bs)
  br label %if.end205

if.else122:                                       ; preds = %if.end106
  br i1 %tobool90.not344, label %land.lhs.true126, label %if.else122.if.end131_crit_edge

if.else122.if.end131_crit_edge:                   ; preds = %if.else122
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end131

land.lhs.true126:                                 ; preds = %if.else122
  %call128 = call fastcc i32 @ext4_xattr_value_same(ptr noundef nonnull %is, ptr noundef nonnull %i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %land.lhs.true126.if.end131_crit_edge, label %land.lhs.true126.cleanup226_crit_edge

land.lhs.true126.cleanup226_crit_edge:            ; preds = %land.lhs.true126
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup226

land.lhs.true126.if.end131_crit_edge:             ; preds = %land.lhs.true126
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end131

if.end131:                                        ; preds = %land.lhs.true126.if.end131_crit_edge, %if.else122.if.end131_crit_edge, %if.end98.if.end131_crit_edge
  %not_found133 = getelementptr inbounds %struct.ext4_xattr_search, ptr %bs, i32 0, i32 4
  %61 = ptrtoint ptr %not_found133 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %not_found133, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool134.not = icmp eq i32 %62, 0
  br i1 %tobool134.not, label %land.lhs.true135, label %if.end131.if.end140_crit_edge

if.end131.if.end140_crit_edge:                    ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end140

land.lhs.true135:                                 ; preds = %if.end131
  %call137 = call fastcc i32 @ext4_xattr_value_same(ptr noundef nonnull %bs, ptr noundef nonnull %i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137)
  %tobool138.not = icmp eq i32 %call137, 0
  br i1 %tobool138.not, label %land.lhs.true135.if.end140_crit_edge, label %land.lhs.true135.cleanup226_crit_edge

land.lhs.true135.cleanup226_crit_edge:            ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup226

land.lhs.true135.if.end140_crit_edge:             ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end140

if.end140:                                        ; preds = %land.lhs.true135.if.end140_crit_edge, %if.end131.if.end140_crit_edge
  %i_sb141 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %63 = ptrtoint ptr %i_sb141 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %i_sb141, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %64, i32 0, i32 33
  %65 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_es.i = getelementptr inbounds %struct.ext4_sb_info, ptr %66, i32 0, i32 15
  %67 = ptrtoint ptr %s_es.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %s_es.i, align 4
  %s_feature_incompat.i = getelementptr inbounds %struct.ext4_super_block, ptr %68, i32 0, i32 29
  %69 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %s_feature_incompat.i, align 8
  %and.i306 = and i32 %70, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i306)
  %cmp.i307.not = icmp eq i32 %and.i306, 0
  br i1 %cmp.i307.not, label %if.end140.if.end152_crit_edge, label %land.lhs.true143

if.end140.if.end152_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end152

land.lhs.true143:                                 ; preds = %if.end140
  %add = add i32 %value_len, 3
  %and145 = and i32 %add, -4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %64, i32 0, i32 3
  %71 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %s_blocksize, align 16
  %sub148 = add i32 %72, -56
  call void @__sanitizer_cov_trace_cmp4(i32 %and145, i32 %sub148)
  %cmp149 = icmp ugt i32 %and145, %sub148
  br i1 %cmp149, label %if.then150, label %land.lhs.true143.if.end152_crit_edge

land.lhs.true143.if.end152_crit_edge:             ; preds = %land.lhs.true143
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end152

if.then150:                                       ; preds = %land.lhs.true143
  call void @__sanitizer_cov_trace_pc() #15
  %73 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 1, ptr %3, align 4
  br label %if.end152

if.end152:                                        ; preds = %if.then150, %land.lhs.true143.if.end152_crit_edge, %if.end140.if.end152_crit_edge
  %i_file_acl = getelementptr i8, ptr %inode, i32 -400
  %base = getelementptr inbounds %struct.ext4_xattr_search, ptr %bs, i32 0, i32 1
  %bh171 = getelementptr inbounds %struct.ext4_xattr_block_find, ptr %bs, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value_len)
  %tobool194.not = icmp eq i32 %value_len, 0
  br label %retry_inode

retry_inode:                                      ; preds = %if.then198, %if.end152
  %call153 = call i32 @ext4_xattr_ibody_set(ptr noundef %handle, ptr noundef %inode, ptr noundef nonnull %i, ptr noundef nonnull %is)
  %74 = zext i32 %call153 to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call153, label %retry_inode.if.end205_crit_edge [
    i32 0, label %land.lhs.true155
    i32 -28, label %if.then164
  ]

retry_inode.if.end205_crit_edge:                  ; preds = %retry_inode
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end205

land.lhs.true155:                                 ; preds = %retry_inode
  %75 = ptrtoint ptr %not_found133 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %not_found133, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool158.not = icmp eq i32 %76, 0
  br i1 %tobool158.not, label %if.then159, label %land.lhs.true155.if.then207_crit_edge

land.lhs.true155.if.then207_crit_edge:            ; preds = %land.lhs.true155
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then207

if.then159:                                       ; preds = %land.lhs.true155
  call void @__sanitizer_cov_trace_pc() #15
  %77 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr null, ptr %0, align 4
  %call161 = call fastcc i32 @ext4_xattr_block_set(ptr noundef %handle, ptr noundef %inode, ptr noundef nonnull %i, ptr noundef nonnull %bs)
  br label %if.end205

if.then164:                                       ; preds = %retry_inode
  %78 = ptrtoint ptr %i_file_acl to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %i_file_acl, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %79)
  %tobool166.not = icmp eq i64 %79, 0
  br i1 %tobool166.not, label %if.then164.if.end177_crit_edge, label %land.lhs.true167

if.then164.if.end177_crit_edge:                   ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end177

land.lhs.true167:                                 ; preds = %if.then164
  %80 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %base, align 4
  %tobool169.not = icmp eq ptr %81, null
  br i1 %tobool169.not, label %if.then170, label %land.lhs.true167.if.end177_crit_edge

land.lhs.true167.if.end177_crit_edge:             ; preds = %land.lhs.true167
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end177

if.then170:                                       ; preds = %land.lhs.true167
  %82 = ptrtoint ptr %bh171 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %bh171, align 4
  %tobool.not.i309 = icmp eq ptr %83, null
  br i1 %tobool.not.i309, label %if.then170.brelse.exit312_crit_edge, label %if.then.i310

if.then170.brelse.exit312_crit_edge:              ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #15
  br label %brelse.exit312

if.then.i310:                                     ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #15
  call void @__brelse(ptr noundef nonnull %83) #13
  br label %brelse.exit312

brelse.exit312:                                   ; preds = %if.then.i310, %if.then170.brelse.exit312_crit_edge
  %84 = ptrtoint ptr %bh171 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr null, ptr %bh171, align 4
  %call173 = call fastcc i32 @ext4_xattr_block_find(ptr noundef %inode, ptr noundef nonnull %i, ptr noundef nonnull %bs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call173)
  %tobool174.not = icmp eq i32 %call173, 0
  br i1 %tobool174.not, label %brelse.exit312.if.end177_crit_edge, label %brelse.exit312.cleanup226_crit_edge

brelse.exit312.cleanup226_crit_edge:              ; preds = %brelse.exit312
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup226

brelse.exit312.if.end177_crit_edge:               ; preds = %brelse.exit312
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end177

if.end177:                                        ; preds = %brelse.exit312.if.end177_crit_edge, %land.lhs.true167.if.end177_crit_edge, %if.then164.if.end177_crit_edge
  %call178 = call fastcc i32 @ext4_xattr_block_set(ptr noundef %handle, ptr noundef %inode, ptr noundef nonnull %i, ptr noundef nonnull %bs)
  %85 = zext i32 %call178 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %call178, label %if.end177.if.end205_crit_edge [
    i32 0, label %land.lhs.true180
    i32 -28, label %if.then189
  ]

if.end177.if.end205_crit_edge:                    ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end205

land.lhs.true180:                                 ; preds = %if.end177
  %86 = ptrtoint ptr %not_found to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %not_found, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool183.not = icmp eq i32 %87, 0
  br i1 %tobool183.not, label %if.then184, label %land.lhs.true180.if.then207_crit_edge

land.lhs.true180.if.then207_crit_edge:            ; preds = %land.lhs.true180
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then207

if.then184:                                       ; preds = %land.lhs.true180
  call void @__sanitizer_cov_trace_pc() #15
  %88 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr null, ptr %0, align 4
  %call186 = call i32 @ext4_xattr_ibody_set(ptr noundef %handle, ptr noundef %inode, ptr noundef nonnull %i, ptr noundef nonnull %is)
  br label %if.end205

if.then189:                                       ; preds = %if.end177
  %89 = ptrtoint ptr %i_sb141 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %i_sb141, align 4
  %s_fs_info.i.i313 = getelementptr inbounds %struct.super_block, ptr %90, i32 0, i32 33
  %91 = ptrtoint ptr %s_fs_info.i.i313 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %s_fs_info.i.i313, align 16
  %s_es.i314 = getelementptr inbounds %struct.ext4_sb_info, ptr %92, i32 0, i32 15
  %93 = ptrtoint ptr %s_es.i314 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %s_es.i314, align 4
  %s_feature_incompat.i315 = getelementptr inbounds %struct.ext4_super_block, ptr %94, i32 0, i32 29
  %95 = ptrtoint ptr %s_feature_incompat.i315 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %s_feature_incompat.i315, align 8
  %and.i316 = and i32 %96, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i316)
  %cmp.i317 = icmp eq i32 %and.i316, 0
  %or.cond = or i1 %tobool194.not, %cmp.i317
  br i1 %or.cond, label %if.then189.if.end224_crit_edge, label %land.lhs.true195

if.then189.if.end224_crit_edge:                   ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end224

land.lhs.true195:                                 ; preds = %if.then189
  %97 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %3, align 4
  %tobool197.not = icmp eq i32 %98, 0
  br i1 %tobool197.not, label %if.then198, label %land.lhs.true195.if.end224_crit_edge

land.lhs.true195.if.end224_crit_edge:             ; preds = %land.lhs.true195
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end224

if.then198:                                       ; preds = %land.lhs.true195
  call void @__sanitizer_cov_trace_pc() #15
  %99 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 1, ptr %3, align 4
  br label %retry_inode

if.end205:                                        ; preds = %if.then184, %if.end177.if.end205_crit_edge, %if.then159, %retry_inode.if.end205_crit_edge, %if.then118, %if.then112
  %tobool107.not349 = phi i1 [ false, %if.then184 ], [ false, %if.then159 ], [ true, %if.then118 ], [ true, %if.then112 ], [ false, %retry_inode.if.end205_crit_edge ], [ false, %if.end177.if.end205_crit_edge ]
  %error.3 = phi i32 [ %call186, %if.then184 ], [ %call161, %if.then159 ], [ %call119, %if.then118 ], [ %call113, %if.then112 ], [ %call178, %if.end177.if.end205_crit_edge ], [ %call153, %retry_inode.if.end205_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.3)
  %tobool206.not = icmp eq i32 %error.3, 0
  br i1 %tobool206.not, label %if.end205.if.then207_crit_edge, label %if.end205.if.end224_crit_edge

if.end205.if.end224_crit_edge:                    ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end224

if.end205.if.then207_crit_edge:                   ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then207

if.then207:                                       ; preds = %if.end205.if.then207_crit_edge, %land.lhs.true180.if.then207_crit_edge, %land.lhs.true155.if.then207_crit_edge
  %tobool107.not349363 = phi i1 [ %tobool107.not349, %if.end205.if.then207_crit_edge ], [ false, %land.lhs.true155.if.then207_crit_edge ], [ false, %land.lhs.true180.if.then207_crit_edge ]
  %i_sb208 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %100 = ptrtoint ptr %i_sb208 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %i_sb208, align 4
  call fastcc void @ext4_xattr_update_super_block(ptr noundef %handle, ptr noundef %101)
  %i_ctime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp209) #13
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp209, ptr noundef %inode) #13
  %102 = call ptr @memcpy(ptr %i_ctime, ptr %tmp209, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp209) #13
  %spec.select = select i1 %tobool107.not349363, i32 0, i32 %and1.i.i.i
  %call214 = call i32 @ext4_mark_iloc_dirty(ptr noundef %handle, ptr noundef %inode, ptr noundef %iloc) #13
  %103 = ptrtoint ptr %iloc to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr null, ptr %iloc, align 4
  %104 = ptrtoint ptr %i_sb208 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %i_sb208, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %105, i32 0, i32 10
  %106 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %s_flags, align 4
  %and218 = and i32 %107, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and218)
  %tobool219.not = icmp eq i32 %and218, 0
  br i1 %tobool219.not, label %lor.lhs.false, label %if.then222

lor.lhs.false:                                    ; preds = %if.then207
  %i_flags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %108 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %i_flags, align 4
  %and220 = and i32 %109, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and220)
  %tobool221.not = icmp eq i32 %and220, 0
  %or.cond364 = or i1 %cmp.i.not, %tobool221.not
  br i1 %or.cond364, label %lor.lhs.false.if.end224_crit_edge, label %lor.lhs.false.if.then.i319_crit_edge

lor.lhs.false.if.then.i319_crit_edge:             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i319

lor.lhs.false.if.end224_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end224

if.then222:                                       ; preds = %if.then207
  br i1 %cmp.i.not, label %if.then222.if.end224_crit_edge, label %if.then222.if.then.i319_crit_edge

if.then222.if.then.i319_crit_edge:                ; preds = %if.then222
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i319

if.then222.if.end224_crit_edge:                   ; preds = %if.then222
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end224

if.then.i319:                                     ; preds = %if.then222.if.then.i319_crit_edge, %lor.lhs.false.if.then.i319_crit_edge
  %h_sync.i = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 7
  %110 = ptrtoint ptr %h_sync.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %bf.load.i318 = load i32, ptr %h_sync.i, align 4
  %bf.set.i = or i32 %bf.load.i318, -2147483648
  store i32 %bf.set.i, ptr %h_sync.i, align 4
  br label %if.end224

if.end224:                                        ; preds = %if.then.i319, %if.then222.if.end224_crit_edge, %lor.lhs.false.if.end224_crit_edge, %if.end205.if.end224_crit_edge, %land.lhs.true195.if.end224_crit_edge, %if.then189.if.end224_crit_edge, %if.else114.if.end224_crit_edge
  %no_expand.1 = phi i32 [ %spec.select, %lor.lhs.false.if.end224_crit_edge ], [ %and1.i.i.i, %if.end205.if.end224_crit_edge ], [ %spec.select, %if.then222.if.end224_crit_edge ], [ %spec.select, %if.then.i319 ], [ %and1.i.i.i, %if.else114.if.end224_crit_edge ], [ %and1.i.i.i, %land.lhs.true195.if.end224_crit_edge ], [ %and1.i.i.i, %if.then189.if.end224_crit_edge ]
  %error.4 = phi i32 [ %call214, %lor.lhs.false.if.end224_crit_edge ], [ %error.3, %if.end205.if.end224_crit_edge ], [ %call214, %if.then222.if.end224_crit_edge ], [ %call214, %if.then.i319 ], [ -17, %if.else114.if.end224_crit_edge ], [ -28, %land.lhs.true195.if.end224_crit_edge ], [ -28, %if.then189.if.end224_crit_edge ]
  %i_sb225 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %111 = ptrtoint ptr %i_sb225 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %i_sb225, align 4
  call void @ext4_fc_mark_ineligible(ptr noundef %112, i32 noundef 0, ptr noundef %handle) #13
  br label %cleanup226

cleanup226:                                       ; preds = %if.end224, %brelse.exit312.cleanup226_crit_edge, %land.lhs.true135.cleanup226_crit_edge, %land.lhs.true126.cleanup226_crit_edge, %if.else.cleanup226_crit_edge, %if.end98.cleanup226_crit_edge, %if.then94.cleanup226_crit_edge, %if.end84.cleanup226_crit_edge, %if.end76.cleanup226_crit_edge, %if.end64.cleanup226_crit_edge, %jbd2_handle_buffer_credits.exit.cleanup226_crit_edge, %if.then12
  %no_expand.2 = phi i32 [ %no_expand.1, %if.end224 ], [ %and1.i.i.i, %land.lhs.true135.cleanup226_crit_edge ], [ %and1.i.i.i, %land.lhs.true126.cleanup226_crit_edge ], [ %and1.i.i.i, %if.else.cleanup226_crit_edge ], [ %and1.i.i.i, %if.end98.cleanup226_crit_edge ], [ %and1.i.i.i, %if.then94.cleanup226_crit_edge ], [ %and1.i.i.i, %if.end84.cleanup226_crit_edge ], [ %and1.i.i.i, %if.end76.cleanup226_crit_edge ], [ %and1.i.i.i, %if.end64.cleanup226_crit_edge ], [ %and1.i.i.i, %jbd2_handle_buffer_credits.exit.cleanup226_crit_edge ], [ %and1.i.i.i, %if.then12 ], [ %and1.i.i.i, %brelse.exit312.cleanup226_crit_edge ]
  %error.5 = phi i32 [ %error.4, %if.end224 ], [ 0, %land.lhs.true135.cleanup226_crit_edge ], [ 0, %land.lhs.true126.cleanup226_crit_edge ], [ -17, %if.else.cleanup226_crit_edge ], [ 0, %if.end98.cleanup226_crit_edge ], [ -61, %if.then94.cleanup226_crit_edge ], [ %call83, %if.end84.cleanup226_crit_edge ], [ %call77, %if.end76.cleanup226_crit_edge ], [ %call65, %if.end64.cleanup226_crit_edge ], [ -28, %jbd2_handle_buffer_credits.exit.cleanup226_crit_edge ], [ %18, %if.then12 ], [ %call173, %brelse.exit312.cleanup226_crit_edge ]
  %iloc227 = getelementptr inbounds %struct.ext4_xattr_ibody_find, ptr %is, i32 0, i32 1
  %113 = ptrtoint ptr %iloc227 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %iloc227, align 4
  %tobool.not.i321 = icmp eq ptr %114, null
  br i1 %tobool.not.i321, label %cleanup226.brelse.exit324_crit_edge, label %if.then.i322

cleanup226.brelse.exit324_crit_edge:              ; preds = %cleanup226
  call void @__sanitizer_cov_trace_pc() #15
  br label %brelse.exit324

if.then.i322:                                     ; preds = %cleanup226
  call void @__sanitizer_cov_trace_pc() #15
  call void @__brelse(ptr noundef nonnull %114) #13
  br label %brelse.exit324

brelse.exit324:                                   ; preds = %if.then.i322, %cleanup226.brelse.exit324_crit_edge
  %bh229 = getelementptr inbounds %struct.ext4_xattr_block_find, ptr %bs, i32 0, i32 1
  %115 = ptrtoint ptr %bh229 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %bh229, align 4
  %tobool.not.i325 = icmp eq ptr %116, null
  br i1 %tobool.not.i325, label %brelse.exit324.brelse.exit328_crit_edge, label %if.then.i326

brelse.exit324.brelse.exit328_crit_edge:          ; preds = %brelse.exit324
  call void @__sanitizer_cov_trace_pc() #15
  br label %brelse.exit328

if.then.i326:                                     ; preds = %brelse.exit324
  call void @__sanitizer_cov_trace_pc() #15
  call void @__brelse(ptr noundef nonnull %116) #13
  br label %brelse.exit328

brelse.exit328:                                   ; preds = %if.then.i326, %brelse.exit324.brelse.exit328_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %no_expand.2)
  %cmp.i329 = icmp eq i32 %no_expand.2, 0
  br i1 %cmp.i329, label %if.then.i331, label %brelse.exit328.ext4_write_unlock_xattr.exit_crit_edge

brelse.exit328.ext4_write_unlock_xattr.exit_crit_edge: ; preds = %brelse.exit328
  call void @__sanitizer_cov_trace_pc() #15
  br label %ext4_write_unlock_xattr.exit

if.then.i331:                                     ; preds = %brelse.exit328
  call void @__sanitizer_cov_trace_pc() #15
  call void @_clear_bit(i32 noundef 3, ptr noundef %i_state_flags.i.i) #13
  br label %ext4_write_unlock_xattr.exit

ext4_write_unlock_xattr.exit:                     ; preds = %if.then.i331, %brelse.exit328.ext4_write_unlock_xattr.exit_crit_edge
  call void @up_write(ptr noundef %xattr_sem.i) #13
  br label %cleanup230

cleanup230:                                       ; preds = %ext4_write_unlock_xattr.exit, %if.end.cleanup230_crit_edge, %entry.cleanup230_crit_edge
  %retval.0 = phi i32 [ %error.5, %ext4_write_unlock_xattr.exit ], [ -22, %entry.cleanup230_crit_edge ], [ -34, %if.end.cleanup230_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %bs) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %is) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %i) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_reserve_inode_write(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ext4_xattr_block_find(ptr noundef %inode, ptr nocapture noundef readonly %i, ptr nocapture noundef %bs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_file_acl = getelementptr i8, ptr %inode, i32 -400
  %0 = ptrtoint ptr %i_file_acl to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %i_file_acl, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then:                                          ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %call3 = tail call ptr @ext4_sb_bread(ptr noundef %3, i64 noundef %1, i32 noundef 8192) #13
  %bh = getelementptr inbounds %struct.ext4_xattr_block_find, ptr %bs, i32 0, i32 1
  %4 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call3, ptr %bh, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %call3 to i32
  %6 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %bh, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then
  %call12 = tail call fastcc i32 @__ext4_xattr_check_block(ptr noundef %inode, ptr noundef %call3, ptr noundef nonnull @__func__.ext4_xattr_block_find, i32 noundef 1824)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %7 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bh, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %b_data, align 4
  %base = getelementptr inbounds %struct.ext4_xattr_search, ptr %bs, i32 0, i32 1
  %11 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %base, align 4
  %12 = load ptr, ptr %b_data, align 4
  %add.ptr = getelementptr %struct.ext4_xattr_header, ptr %12, i32 1
  %13 = ptrtoint ptr %bs to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr, ptr %bs, align 4
  %14 = load ptr, ptr %b_data, align 4
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %8, i32 0, i32 4
  %15 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %b_size, align 8
  %add.ptr23 = getelementptr i8, ptr %14, i32 %16
  %end = getelementptr inbounds %struct.ext4_xattr_search, ptr %bs, i32 0, i32 2
  %17 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr23, ptr %end, align 4
  %here = getelementptr inbounds %struct.ext4_xattr_search, ptr %bs, i32 0, i32 3
  %18 = ptrtoint ptr %here to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr, ptr %here, align 4
  %name_index = getelementptr inbounds %struct.ext4_xattr_info, ptr %i, i32 0, i32 3
  %19 = ptrtoint ptr %name_index to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %name_index, align 4
  %21 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i, align 4
  %cmp2.i = icmp eq ptr %22, null
  br i1 %cmp2.i, label %if.end15.cleanup_crit_edge, label %if.end.i

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %if.end15
  %call.i = tail call i32 @strlen(ptr noundef nonnull %22) #16
  %23 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp3.not54.i = icmp eq i32 %24, 0
  br i1 %cmp3.not54.i, label %if.end.i.for.end.thread47.i_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.for.end.thread47.i_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.thread47.i

for.end.thread47.i:                               ; preds = %for.inc.i.for.end.thread47.i_crit_edge, %if.end.i.for.end.thread47.i_crit_edge
  %entry1.0.lcssa.i = phi ptr [ %add.ptr, %if.end.i.for.end.thread47.i_crit_edge ], [ %add.ptr.i67, %for.inc.i.for.end.thread47.i_crit_edge ]
  %25 = ptrtoint ptr %here to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %entry1.0.lcssa.i, ptr %here, align 4
  br label %if.end35

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %entry1.055.i = phi ptr [ %add.ptr.i67, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr, %if.end.i.for.body.i_crit_edge ]
  %26 = ptrtoint ptr %entry1.055.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %entry1.055.i, align 4
  %conv.i = zext i8 %27 to i32
  %add4.i = add nuw nsw i32 %conv.i, 19
  %and.i = and i32 %add4.i, 508
  %add.ptr.i67 = getelementptr i8, ptr %entry1.055.i, i32 %and.i
  %cmp5.not.i = icmp ult ptr %add.ptr.i67, %add.ptr23
  br i1 %cmp5.not.i, label %if.end8.i, label %if.then7.i

if.then7.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %inode, ptr noundef nonnull @__func__.xattr_find_entry, i32 noundef 296, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.9) #13
  br label %cleanup

if.end8.i:                                        ; preds = %for.body.i
  %e_name_index.i = getelementptr inbounds %struct.ext4_xattr_entry, ptr %entry1.055.i, i32 0, i32 1
  %28 = ptrtoint ptr %e_name_index.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %e_name_index.i, align 1
  %conv9.i = zext i8 %29 to i32
  %sub.i = sub i32 %20, %conv9.i
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %conv9.i)
  %tobool.not.i = icmp eq i32 %20, %conv9.i
  %sub13.i = sub i32 %call.i, %conv.i
  %spec.select.i = select i1 %tobool.not.i, i32 %sub13.i, i32 %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %tobool15.not.i = icmp eq i32 %spec.select.i, 0
  br i1 %tobool15.not.i, label %if.then16.i, label %if.end8.i.if.end18.i_crit_edge

if.end8.i.if.end18.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18.i

if.then16.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  %e_name.i = getelementptr inbounds %struct.ext4_xattr_entry, ptr %entry1.055.i, i32 0, i32 6
  %call17.i = tail call i32 @memcmp(ptr noundef nonnull %22, ptr noundef %e_name.i, i32 noundef %call.i) #16
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then16.i, %if.end8.i.if.end18.i_crit_edge
  %cmp.2.i = phi i32 [ %spec.select.i, %if.end8.i.if.end18.i_crit_edge ], [ %call17.i, %if.then16.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cmp.2.i)
  %cmp19.i = icmp slt i32 %cmp.2.i, 1
  br i1 %cmp19.i, label %land.lhs.true.i, label %for.inc.i

land.lhs.true.i:                                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #15
  %30 = ptrtoint ptr %here to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %entry1.055.i, ptr %here, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmp.2.i)
  %tobool26.not.i = icmp eq i32 %cmp.2.i, 0
  %spec.select = select i1 %tobool26.not.i, i32 0, i32 -61
  br label %if.end35

for.inc.i:                                        ; preds = %if.end18.i
  %31 = ptrtoint ptr %add.ptr.i67 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr.i67, align 4
  %cmp3.not.i = icmp eq i32 %32, 0
  br i1 %cmp3.not.i, label %for.inc.i.for.end.thread47.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.for.end.thread47.i_crit_edge:           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.thread47.i

if.end35:                                         ; preds = %land.lhs.true.i, %for.end.thread47.i
  %retval.0.i.ph = phi i32 [ -61, %for.end.thread47.i ], [ %spec.select, %land.lhs.true.i ]
  %not_found = getelementptr inbounds %struct.ext4_xattr_search, ptr %bs, i32 0, i32 4
  %33 = ptrtoint ptr %not_found to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %retval.0.i.ph, ptr %not_found, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.then7.i, %if.end15.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then6 ], [ %call12, %if.end.cleanup_crit_edge ], [ 0, %if.end35 ], [ 0, %entry.cleanup_crit_edge ], [ -117, %if.then7.i ], [ -22, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ext4_xattr_block_set(ptr noundef %handle, ptr noundef %inode, ptr nocapture noundef readonly %i, ptr nocapture noundef readonly %bs) unnamed_addr #0 align 64 {
entry:
  %s_copy = alloca %struct.ext4_xattr_search, align 4
  %error = alloca i32, align 4
  %ea_inode = alloca ptr, align 4
  %tmp_inode = alloca ptr, align 4
  %ea_inode_array = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %s_copy) #13
  %2 = getelementptr inbounds %struct.ext4_xattr_search, ptr %s_copy, i32 0, i32 1
  %3 = getelementptr inbounds %struct.ext4_xattr_search, ptr %s_copy, i32 0, i32 2
  %4 = getelementptr inbounds %struct.ext4_xattr_search, ptr %s_copy, i32 0, i32 3
  %5 = getelementptr inbounds %struct.ext4_xattr_search, ptr %s_copy, i32 0, i32 4
  %6 = call ptr @memcpy(ptr %s_copy, ptr %bs, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %error) #13
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %7 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_fs_info, align 16
  %s_ea_block_cache = getelementptr inbounds %struct.ext4_sb_info, ptr %8, i32 0, i32 127
  %9 = ptrtoint ptr %s_ea_block_cache to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_ea_block_cache, align 128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ea_inode) #13
  %11 = ptrtoint ptr %ea_inode to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %ea_inode, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp_inode) #13
  %12 = ptrtoint ptr %tmp_inode to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 -1 to ptr), ptr %tmp_inode, align 4, !annotation !157
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %2, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %if.else76, label %do.end

do.end:                                           ; preds = %entry
  %bh = getelementptr inbounds %struct.ext4_xattr_block_find, ptr %bs, i32 0, i32 1
  %15 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bh, align 4
  %call = tail call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_xattr_block_set, i32 noundef 1863, ptr noundef %handle, ptr noundef %1, ptr noundef %16, i32 noundef 1) #13
  %17 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end, label %do.end.cleanup379_crit_edge

do.end.cleanup379_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup379

if.end:                                           ; preds = %do.end
  %18 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bh, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.14, i32 noundef 366) #13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %19, i32 noundef 4) #13
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %19, align 4
  %and.i.i.i.i = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_buffer.exit.i, label %if.end.if.then.i611_crit_edge

if.end.if.then.i611_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i611

trylock_buffer.exit.i:                            ; preds = %if.end
  tail call void @llvm.prefetch.p0(ptr %19, i32 1, i32 3, i32 1) #13
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %19, ptr %19, i32 4, ptr elementtype(i32) %19) #13, !srcloc !162
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %22, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !163
  %23 = and i32 %asmresult.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.not.i = icmp eq i32 %23, 0
  br i1 %tobool.not.not.i, label %trylock_buffer.exit.i.lock_buffer.exit_crit_edge, label %trylock_buffer.exit.i.if.then.i611_crit_edge

trylock_buffer.exit.i.if.then.i611_crit_edge:     ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i611

trylock_buffer.exit.i.lock_buffer.exit_crit_edge: ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lock_buffer.exit

if.then.i611:                                     ; preds = %trylock_buffer.exit.i.if.then.i611_crit_edge, %if.end.if.then.i611_crit_edge
  tail call void @__lock_buffer(ptr noundef %19) #13
  br label %lock_buffer.exit

lock_buffer.exit:                                 ; preds = %if.then.i611, %trylock_buffer.exit.i.lock_buffer.exit_crit_edge
  %h_refcount = getelementptr inbounds %struct.ext4_xattr_header, ptr %14, i32 0, i32 1
  %24 = ptrtoint ptr %h_refcount to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %h_refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %25)
  %cmp = icmp eq i32 %25, 16777216
  br i1 %cmp, label %if.then7, label %if.else

if.then7:                                         ; preds = %lock_buffer.exit
  %tobool9.not = icmp eq ptr %10, null
  br i1 %tobool9.not, label %if.then7.if.end12_crit_edge, label %if.then10

if.then7.if.end12_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.then10:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  %26 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bh, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %b_data, align 4
  %h_hash = getelementptr inbounds %struct.ext4_xattr_header, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %h_hash to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %h_hash, align 4
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %27, i32 0, i32 3
  %33 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %b_blocknr, align 8
  tail call void @mb_cache_entry_delete(ptr noundef nonnull %10, i32 noundef %32, i64 noundef %34) #13
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.then7.if.end12_crit_edge
  %call13 = call fastcc i32 @ext4_xattr_set_entry(ptr noundef %i, ptr noundef nonnull %s_copy, ptr noundef %handle, ptr noundef %inode, i1 noundef zeroext true)
  %35 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call13, ptr %error, align 4
  %36 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bh, align 4
  %38 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %39, i32 0, i32 33
  %40 = ptrtoint ptr %s_fs_info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %s_fs_info.i.i.i.i, align 16
  %s_es.i.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %41, i32 0, i32 15
  %42 = ptrtoint ptr %s_es.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %s_es.i.i.i, align 4
  %s_feature_ro_compat.i.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %43, i32 0, i32 30
  %44 = ptrtoint ptr %s_feature_ro_compat.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %s_feature_ro_compat.i.i.i, align 4
  %and.i.i.i = and i32 %45, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.not.i.i, label %if.end12.if.end32.i.i_crit_edge, label %land.rhs.i.i

if.end12.if.end32.i.i_crit_edge:                  ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32.i.i

land.rhs.i.i:                                     ; preds = %if.end12
  %s_chksum_driver.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %41, i32 0, i32 121
  %46 = ptrtoint ptr %s_chksum_driver.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %s_chksum_driver.i.i, align 4
  %tobool.not.i.i613 = icmp eq ptr %47, null
  br i1 %tobool.not.i.i613, label %land.rhs5.i.i, label %land.rhs.i.i.if.end32.i.i_crit_edge

land.rhs.i.i.if.end32.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32.i.i

land.rhs5.i.i:                                    ; preds = %land.rhs.i.i
  %.b50.i.i = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  br i1 %.b50.i.i, label %land.rhs5.i.i.if.end32.i.i_crit_edge, label %if.then.i.i, !prof !159

land.rhs5.i.i.if.end32.i.i_crit_edge:             ; preds = %land.rhs5.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32.i.i

if.then.i.i:                                      ; preds = %land.rhs5.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 3289, i32 noundef 9, ptr noundef null) #13
  br label %if.end32.i.i

if.end32.i.i:                                     ; preds = %if.then.i.i, %land.rhs5.i.i.if.end32.i.i_crit_edge, %land.rhs.i.i.if.end32.i.i_crit_edge, %if.end12.if.end32.i.i_crit_edge
  %48 = ptrtoint ptr %s_fs_info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %s_fs_info.i.i.i.i, align 16
  %s_es.i53.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %49, i32 0, i32 15
  %50 = ptrtoint ptr %s_es.i53.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %s_es.i53.i.i, align 4
  %s_feature_ro_compat.i54.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %51, i32 0, i32 30
  %52 = ptrtoint ptr %s_feature_ro_compat.i54.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %s_feature_ro_compat.i54.i.i, align 4
  %and.i55.i.i = and i32 %53, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i55.i.i)
  %cmp.i56.not.i.i = icmp eq i32 %and.i55.i.i, 0
  br i1 %cmp.i56.not.i.i, label %if.end32.i.i.ext4_xattr_block_csum_set.exit_crit_edge, label %ext4_has_metadata_csum.exit.i

if.end32.i.i.ext4_xattr_block_csum_set.exit_crit_edge: ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ext4_xattr_block_csum_set.exit

ext4_has_metadata_csum.exit.i:                    ; preds = %if.end32.i.i
  %s_chksum_driver43.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %49, i32 0, i32 121
  %54 = ptrtoint ptr %s_chksum_driver43.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %s_chksum_driver43.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %55, null
  br i1 %cmp.i.not.i, label %ext4_has_metadata_csum.exit.i.ext4_xattr_block_csum_set.exit_crit_edge, label %if.then.i614

ext4_has_metadata_csum.exit.i.ext4_xattr_block_csum_set.exit_crit_edge: ; preds = %ext4_has_metadata_csum.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ext4_xattr_block_csum_set.exit

if.then.i614:                                     ; preds = %ext4_has_metadata_csum.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %37, i32 0, i32 3
  %56 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %b_blocknr.i, align 8
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %37, i32 0, i32 5
  %58 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %b_data.i, align 4
  %call1.i = tail call fastcc i32 @ext4_xattr_block_csum(ptr noundef %inode, i64 noundef %57, ptr noundef %59) #13
  %60 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %b_data.i, align 4
  %h_checksum.i = getelementptr inbounds %struct.ext4_xattr_header, ptr %61, i32 0, i32 4
  %62 = ptrtoint ptr %h_checksum.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %call1.i, ptr %h_checksum.i, align 4
  br label %ext4_xattr_block_csum_set.exit

ext4_xattr_block_csum_set.exit:                   ; preds = %if.then.i614, %ext4_has_metadata_csum.exit.i.ext4_xattr_block_csum_set.exit_crit_edge, %if.end32.i.i.ext4_xattr_block_csum_set.exit_crit_edge
  %63 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bh, align 4
  tail call void @unlock_buffer(ptr noundef %64) #13
  %65 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %error, align 4
  %67 = zext i32 %66 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %66, label %ext4_xattr_block_csum_set.exit.cleanup379_crit_edge [
    i32 -117, label %ext4_xattr_block_csum_set.exit.bad_block_crit_edge
    i32 0, label %if.end23
  ]

ext4_xattr_block_csum_set.exit.bad_block_crit_edge: ; preds = %ext4_xattr_block_csum_set.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %bad_block

ext4_xattr_block_csum_set.exit.cleanup379_crit_edge: ; preds = %ext4_xattr_block_csum_set.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup379

if.end23:                                         ; preds = %ext4_xattr_block_csum_set.exit
  %68 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %bh, align 4
  %call22 = tail call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_xattr_block_set, i32 noundef 1889, ptr noundef %handle, ptr noundef %inode, ptr noundef %69) #13
  %70 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %call22, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool24.not = icmp eq i32 %call22, 0
  br i1 %tobool24.not, label %if.end23.inserted.preheader_crit_edge, label %if.end23.cleanup379_crit_edge

if.end23.cleanup379_crit_edge:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup379

if.end23.inserted.preheader_crit_edge:            ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %inserted.preheader

if.else:                                          ; preds = %lock_buffer.exit
  %71 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %4, align 4
  %73 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %bh, align 4
  %b_data28 = getelementptr inbounds %struct.buffer_head, ptr %74, i32 0, i32 5
  %75 = ptrtoint ptr %b_data28 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %b_data28, align 4
  tail call void @unlock_buffer(ptr noundef %74) #13
  %77 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %bh, align 4
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %78, i32 0, i32 4
  %79 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %b_size, align 8
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %80, i32 noundef 3136) #18
  %81 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call9.i, ptr %2, align 4
  %82 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 -12, ptr %error, align 4
  %cmp35 = icmp eq ptr %call9.i, null
  br i1 %cmp35, label %if.else.cleanup379_crit_edge, label %if.end37

if.else.cleanup379_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup379

if.end37:                                         ; preds = %if.else
  %sub.ptr.lhs.cast = ptrtoint ptr %72 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %76 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %83 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %bh, align 4
  %b_data40 = getelementptr inbounds %struct.buffer_head, ptr %84, i32 0, i32 5
  %85 = ptrtoint ptr %b_data40 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %b_data40, align 4
  %b_size42 = getelementptr inbounds %struct.buffer_head, ptr %84, i32 0, i32 4
  %87 = ptrtoint ptr %b_size42 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %b_size42, align 8
  %89 = call ptr @memcpy(ptr %call9.i, ptr %86, i32 %88)
  %add.ptr = getelementptr %struct.ext4_xattr_header, ptr %call9.i, i32 1
  %90 = ptrtoint ptr %s_copy to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %add.ptr, ptr %s_copy, align 4
  %h_refcount45 = getelementptr inbounds %struct.ext4_xattr_header, ptr %call9.i, i32 0, i32 1
  %91 = ptrtoint ptr %h_refcount45 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 16777216, ptr %h_refcount45, align 4
  %add.ptr47 = getelementptr i8, ptr %call9.i, i32 %sub.ptr.sub
  %92 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %add.ptr47, ptr %4, align 4
  %93 = load ptr, ptr %bh, align 4
  %b_size51 = getelementptr inbounds %struct.buffer_head, ptr %93, i32 0, i32 4
  %94 = ptrtoint ptr %b_size51 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %b_size51, align 8
  %add.ptr52 = getelementptr i8, ptr %call9.i, i32 %95
  %96 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %add.ptr52, ptr %3, align 4
  %97 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool53.not = icmp eq i32 %98, 0
  br i1 %tobool53.not, label %land.lhs.true, label %if.end37.if.end97_crit_edge

if.end37.if.end97_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end97

land.lhs.true:                                    ; preds = %if.end37
  %e_value_inum = getelementptr inbounds %struct.ext4_xattr_entry, ptr %add.ptr47, i32 0, i32 3
  %99 = ptrtoint ptr %e_value_inum to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %e_value_inum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool55.not = icmp eq i32 %100, 0
  br i1 %tobool55.not, label %land.lhs.true.if.end97_crit_edge, label %if.then56

land.lhs.true.if.end97_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end97

if.then56:                                        ; preds = %land.lhs.true
  %101 = tail call i32 @llvm.bswap.i32(i32 %100)
  %e_hash = getelementptr inbounds %struct.ext4_xattr_entry, ptr %add.ptr47, i32 0, i32 5
  %102 = ptrtoint ptr %e_hash to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %e_hash, align 4
  %104 = tail call i32 @llvm.bswap.i32(i32 %103)
  %call60 = call fastcc i32 @ext4_xattr_inode_iget(ptr noundef %inode, i32 noundef %101, i32 noundef %104, ptr noundef nonnull %tmp_inode)
  %105 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %call60, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end63, label %if.then56.cleanup379_crit_edge

if.then56.cleanup379_crit_edge:                   ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup379

if.end63:                                         ; preds = %if.then56
  %106 = ptrtoint ptr %tmp_inode to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %tmp_inode, align 4
  %i_state_flags.i = getelementptr i8, ptr %107, i32 -384
  %108 = ptrtoint ptr %i_state_flags.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load volatile i32, ptr %i_state_flags.i, align 4
  %110 = and i32 %109, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool65.not = icmp eq i32 %110, 0
  br i1 %tobool65.not, label %if.then66, label %if.end63.if.end68_crit_edge

if.end63.if.end68_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end68

if.then66:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #15
  %e_value_size = getelementptr inbounds %struct.ext4_xattr_entry, ptr %add.ptr47, i32 0, i32 4
  %111 = ptrtoint ptr %e_value_size to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %e_value_size, align 4
  %113 = tail call i32 @llvm.bswap.i32(i32 %112)
  br label %if.end68

if.end68:                                         ; preds = %if.then66, %if.end63.if.end68_crit_edge
  %old_ea_inode_quota.0 = phi i32 [ 0, %if.end63.if.end68_crit_edge ], [ %113, %if.then66 ]
  tail call void @iput(ptr noundef %107) #13
  %114 = ptrtoint ptr %e_value_inum to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 0, ptr %e_value_inum, align 4
  %e_value_size72 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %add.ptr47, i32 0, i32 4
  %115 = ptrtoint ptr %e_value_size72 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 0, ptr %e_value_size72, align 4
  br label %if.end97

if.else76:                                        ; preds = %entry
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %116 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %s_blocksize, align 16
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %117, i32 noundef 3392) #18
  %118 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %call9.i.i, ptr %2, align 4
  %119 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 -12, ptr %error, align 4
  %cmp80 = icmp eq ptr %call9.i.i, null
  br i1 %cmp80, label %if.else76.cleanup379_crit_edge, label %if.end82

if.else76.cleanup379_crit_edge:                   ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup379

if.end82:                                         ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #15
  %120 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 746, ptr %call9.i.i, align 128
  %h_blocks = getelementptr inbounds %struct.ext4_xattr_header, ptr %call9.i.i, i32 0, i32 2
  %121 = ptrtoint ptr %h_blocks to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 16777216, ptr %h_blocks, align 8
  %h_refcount86 = getelementptr inbounds %struct.ext4_xattr_header, ptr %call9.i.i, i32 0, i32 1
  %122 = ptrtoint ptr %h_refcount86 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 16777216, ptr %h_refcount86, align 4
  %add.ptr88 = getelementptr %struct.ext4_xattr_header, ptr %call9.i.i, i32 1
  %123 = ptrtoint ptr %s_copy to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %add.ptr88, ptr %s_copy, align 4
  %124 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %add.ptr88, ptr %4, align 4
  %125 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %s_blocksize, align 16
  %add.ptr95 = getelementptr i8, ptr %call9.i.i, i32 %126
  %127 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %add.ptr95, ptr %3, align 4
  br label %if.end97

if.end97:                                         ; preds = %if.end82, %if.end68, %land.lhs.true.if.end97_crit_edge, %if.end37.if.end97_crit_edge
  %old_ea_inode_quota.3 = phi i32 [ 0, %if.end82 ], [ 0, %land.lhs.true.if.end97_crit_edge ], [ %old_ea_inode_quota.0, %if.end68 ], [ 0, %if.end37.if.end97_crit_edge ]
  %call98 = call fastcc i32 @ext4_xattr_set_entry(ptr noundef %i, ptr noundef nonnull %s_copy, ptr noundef %handle, ptr noundef %inode, i1 noundef zeroext true)
  %128 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %call98, ptr %error, align 4
  %129 = zext i32 %call98 to i64
  call void @__sanitizer_cov_trace_switch(i64 %129, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %call98, label %if.end97.cleanup379_crit_edge [
    i32 -117, label %if.end97.bad_block_crit_edge
    i32 0, label %if.end104
  ]

if.end97.bad_block_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #15
  br label %bad_block

if.end97.cleanup379_crit_edge:                    ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup379

if.end104:                                        ; preds = %if.end97
  %value = getelementptr inbounds %struct.ext4_xattr_info, ptr %i, i32 0, i32 1
  %130 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %value, align 4
  %tobool105.not = icmp eq ptr %131, null
  br i1 %tobool105.not, label %if.end104.inserted.preheader_crit_edge, label %land.lhs.true106

if.end104.inserted.preheader_crit_edge:           ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #15
  br label %inserted.preheader

land.lhs.true106:                                 ; preds = %if.end104
  %132 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %4, align 4
  %e_value_inum108 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %133, i32 0, i32 3
  %134 = ptrtoint ptr %e_value_inum108 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %e_value_inum108, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %tobool109.not = icmp eq i32 %135, 0
  br i1 %tobool109.not, label %land.lhs.true106.inserted.preheader_crit_edge, label %if.then110

land.lhs.true106.inserted.preheader_crit_edge:    ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #15
  br label %inserted.preheader

if.then110:                                       ; preds = %land.lhs.true106
  %136 = tail call i32 @llvm.bswap.i32(i32 %135)
  %e_hash114 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %133, i32 0, i32 5
  %137 = ptrtoint ptr %e_hash114 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %e_hash114, align 4
  %139 = tail call i32 @llvm.bswap.i32(i32 %138)
  %call115 = call fastcc i32 @ext4_xattr_inode_iget(ptr noundef %inode, i32 noundef %136, i32 noundef %139, ptr noundef nonnull %ea_inode)
  %140 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %call115, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %if.then110.inserted.preheader_crit_edge, label %if.then110.brelse.exit700_crit_edge

if.then110.brelse.exit700_crit_edge:              ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #15
  br label %brelse.exit700

if.then110.inserted.preheader_crit_edge:          ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #15
  br label %inserted.preheader

inserted.preheader:                               ; preds = %if.then110.inserted.preheader_crit_edge, %land.lhs.true106.inserted.preheader_crit_edge, %if.end104.inserted.preheader_crit_edge, %if.end23.inserted.preheader_crit_edge
  %old_ea_inode_quota.4.ph = phi i32 [ 0, %if.end23.inserted.preheader_crit_edge ], [ %old_ea_inode_quota.3, %if.then110.inserted.preheader_crit_edge ], [ %old_ea_inode_quota.3, %land.lhs.true106.inserted.preheader_crit_edge ], [ %old_ea_inode_quota.3, %if.end104.inserted.preheader_crit_edge ]
  %141 = ptrtoint ptr %s_copy to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %s_copy, align 4
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %142, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %cmp122779 = icmp eq i32 %144, 0
  br i1 %cmp122779, label %inserted.preheader.if.end363_crit_edge, label %if.then123.lr.ph

inserted.preheader.if.end363_crit_edge:           ; preds = %inserted.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end363

if.then123.lr.ph:                                 ; preds = %inserted.preheader
  %145 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %2, align 4
  %h_hash.i = getelementptr inbounds %struct.ext4_xattr_header, ptr %146, i32 0, i32 3
  %add.ptr.i.i = getelementptr %struct.ext4_xattr_header, ptr %146, i32 1
  %bh128 = getelementptr inbounds %struct.ext4_xattr_block_find, ptr %bs, i32 0, i32 1
  %i_blkbits.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  br label %if.then123

if.then123:                                       ; preds = %cleanup213.if.then123_crit_edge, %if.then123.lr.ph
  %147 = ptrtoint ptr %h_hash.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %h_hash.i, align 4
  %149 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %150, i32 0, i32 33
  %151 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %s_fs_info.i, align 16
  %s_ea_block_cache.i = getelementptr inbounds %struct.ext4_sb_info, ptr %152, i32 0, i32 127
  %153 = ptrtoint ptr %s_ea_block_cache.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %s_ea_block_cache.i, align 128
  %tobool.not.i622 = icmp eq ptr %154, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %tobool2.not.i = icmp eq i32 %148, 0
  %or.cond.i = select i1 %tobool.not.i622, i1 true, i1 %tobool2.not.i
  br i1 %or.cond.i, label %if.then123.if.else218_crit_edge, label %if.end4.i623

if.then123.if.else218_crit_edge:                  ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else218

if.end4.i623:                                     ; preds = %if.then123
  %155 = tail call i32 @llvm.bswap.i32(i32 %148) #13
  %call.i = tail call ptr @mb_cache_entry_find_first(ptr noundef nonnull %154, i32 noundef %155) #13
  %tobool5.not48.i = icmp eq ptr %call.i, null
  br i1 %tobool5.not48.i, label %if.end4.i623.if.else218_crit_edge, label %if.end4.i623.while.body.i_crit_edge

if.end4.i623.while.body.i_crit_edge:              ; preds = %if.end4.i623
  br label %while.body.i

if.end4.i623.if.else218_crit_edge:                ; preds = %if.end4.i623
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else218

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %if.end4.i623.while.body.i_crit_edge
  %ce.049.i = phi ptr [ %call20.i, %cleanup.i.while.body.i_crit_edge ], [ %call.i, %if.end4.i623.while.body.i_crit_edge ]
  %156 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %i_sb, align 4
  %e_value.i = getelementptr inbounds %struct.mb_cache_entry, ptr %ce.049.i, i32 0, i32 5
  %158 = ptrtoint ptr %e_value.i to i32
  call void @__asan_load8_noabort(i32 %158)
  %159 = load i64, ptr %e_value.i, align 8
  %call7.i624 = tail call ptr @ext4_sb_bread(ptr noundef %157, i64 noundef %159, i32 noundef 8192) #13
  %cmp.i.i625 = icmp ugt ptr %call7.i624, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i625, label %if.then9.i, label %if.else.i

if.then9.i:                                       ; preds = %while.body.i
  %cmp.i626 = icmp eq ptr %call7.i624, inttoptr (i32 -12 to ptr)
  br i1 %cmp.i626, label %if.then9.i.if.else218_crit_edge, label %if.end19.thread.i

if.then9.i.if.else218_crit_edge:                  ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else218

if.end19.thread.i:                                ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #15
  %160 = ptrtoint ptr %e_value.i to i32
  call void @__asan_load8_noabort(i32 %160)
  %161 = load i64, ptr %e_value.i, align 8
  %conv.i = trunc i64 %161 to i32
  tail call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %inode, ptr noundef nonnull @__func__.ext4_xattr_block_cache_find, i32 noundef 3045, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.27, i32 noundef %conv.i) #13
  br label %cleanup.i

if.else.i:                                        ; preds = %while.body.i
  %b_data.i627 = getelementptr inbounds %struct.buffer_head, ptr %call7.i624, i32 0, i32 5
  %162 = ptrtoint ptr %b_data.i627 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %b_data.i627, align 4
  %add.ptr1.i.i = getelementptr %struct.ext4_xattr_header, ptr %163, i32 1
  %164 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %165)
  %cmp.not84.i.i = icmp eq i32 %165, 0
  br i1 %cmp.not84.i.i, label %if.else.i.ext4_xattr_cmp.exit.i_crit_edge, label %if.else.i.while.body.i.i_crit_edge

if.else.i.while.body.i.i_crit_edge:               ; preds = %if.else.i
  br label %while.body.i.i

if.else.i.ext4_xattr_cmp.exit.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ext4_xattr_cmp.exit.i

while.body.i.i:                                   ; preds = %if.end41.i.i.while.body.i.i_crit_edge, %if.else.i.while.body.i.i_crit_edge
  %entry2.087.i.i = phi ptr [ %add.ptr51.i.i, %if.end41.i.i.while.body.i.i_crit_edge ], [ %add.ptr1.i.i, %if.else.i.while.body.i.i_crit_edge ]
  %entry1.085.i.i = phi ptr [ %add.ptr45.i.i, %if.end41.i.i.while.body.i.i_crit_edge ], [ %add.ptr.i.i, %if.else.i.while.body.i.i_crit_edge ]
  %166 = ptrtoint ptr %entry2.087.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %entry2.087.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %167)
  %cmp2.i.i = icmp eq i32 %167, 0
  br i1 %cmp2.i.i, label %while.body.i.i.if.end19.i_crit_edge, label %if.end.i.i628

while.body.i.i.if.end19.i_crit_edge:              ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19.i

if.end.i.i628:                                    ; preds = %while.body.i.i
  %e_hash.i.i = getelementptr inbounds %struct.ext4_xattr_entry, ptr %entry1.085.i.i, i32 0, i32 5
  %168 = ptrtoint ptr %e_hash.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %e_hash.i.i, align 4
  %e_hash3.i.i = getelementptr inbounds %struct.ext4_xattr_entry, ptr %entry2.087.i.i, i32 0, i32 5
  %170 = ptrtoint ptr %e_hash3.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %e_hash3.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %169, i32 %171)
  %cmp4.not.i.i = icmp eq i32 %169, %171
  br i1 %cmp4.not.i.i, label %lor.lhs.false.i.i, label %if.end.i.i628.if.end19.i_crit_edge

if.end.i.i628.if.end19.i_crit_edge:               ; preds = %if.end.i.i628
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19.i

lor.lhs.false.i.i:                                ; preds = %if.end.i.i628
  %e_name_index.i.i = getelementptr inbounds %struct.ext4_xattr_entry, ptr %entry1.085.i.i, i32 0, i32 1
  %172 = ptrtoint ptr %e_name_index.i.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %e_name_index.i.i, align 1
  %e_name_index5.i.i = getelementptr inbounds %struct.ext4_xattr_entry, ptr %entry2.087.i.i, i32 0, i32 1
  %174 = ptrtoint ptr %e_name_index5.i.i to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %e_name_index5.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %173, i8 %175)
  %cmp7.not.i.i = icmp eq i8 %173, %175
  br i1 %cmp7.not.i.i, label %lor.lhs.false9.i.i, label %lor.lhs.false.i.i.if.end19.i_crit_edge

lor.lhs.false.i.i.if.end19.i_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19.i

lor.lhs.false9.i.i:                               ; preds = %lor.lhs.false.i.i
  %176 = ptrtoint ptr %entry1.085.i.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %entry1.085.i.i, align 4
  %conv10.i.i = zext i8 %177 to i32
  %178 = ptrtoint ptr %entry2.087.i.i to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %entry2.087.i.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %177, i8 %179)
  %cmp13.not.i.i = icmp eq i8 %177, %179
  br i1 %cmp13.not.i.i, label %lor.lhs.false15.i.i, label %lor.lhs.false9.i.i.if.end19.i_crit_edge

lor.lhs.false9.i.i.if.end19.i_crit_edge:          ; preds = %lor.lhs.false9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19.i

lor.lhs.false15.i.i:                              ; preds = %lor.lhs.false9.i.i
  %e_value_size.i.i = getelementptr inbounds %struct.ext4_xattr_entry, ptr %entry1.085.i.i, i32 0, i32 4
  %180 = ptrtoint ptr %e_value_size.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %e_value_size.i.i, align 4
  %e_value_size16.i.i = getelementptr inbounds %struct.ext4_xattr_entry, ptr %entry2.087.i.i, i32 0, i32 4
  %182 = ptrtoint ptr %e_value_size16.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %e_value_size16.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %181, i32 %183)
  %cmp17.not.i.i = icmp eq i32 %181, %183
  br i1 %cmp17.not.i.i, label %lor.lhs.false19.i.i, label %lor.lhs.false15.i.i.if.end19.i_crit_edge

lor.lhs.false15.i.i.if.end19.i_crit_edge:         ; preds = %lor.lhs.false15.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19.i

lor.lhs.false19.i.i:                              ; preds = %lor.lhs.false15.i.i
  %e_value_inum.i.i = getelementptr inbounds %struct.ext4_xattr_entry, ptr %entry1.085.i.i, i32 0, i32 3
  %184 = ptrtoint ptr %e_value_inum.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %e_value_inum.i.i, align 4
  %e_value_inum20.i.i = getelementptr inbounds %struct.ext4_xattr_entry, ptr %entry2.087.i.i, i32 0, i32 3
  %186 = ptrtoint ptr %e_value_inum20.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %e_value_inum20.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %185, i32 %187)
  %cmp21.not.i.i = icmp eq i32 %185, %187
  br i1 %cmp21.not.i.i, label %lor.lhs.false23.i.i, label %lor.lhs.false19.i.i.if.end19.i_crit_edge

lor.lhs.false19.i.i.if.end19.i_crit_edge:         ; preds = %lor.lhs.false19.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19.i

lor.lhs.false23.i.i:                              ; preds = %lor.lhs.false19.i.i
  %e_name.i.i = getelementptr inbounds %struct.ext4_xattr_entry, ptr %entry1.085.i.i, i32 0, i32 6
  %e_name24.i.i = getelementptr inbounds %struct.ext4_xattr_entry, ptr %entry2.087.i.i, i32 0, i32 6
  %bcmp.i.i = tail call i32 @bcmp(ptr %e_name.i.i, ptr %e_name24.i.i, i32 %conv10.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool.not.i.i629 = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool.not.i.i629, label %if.end29.i.i630, label %lor.lhs.false23.i.i.if.end19.i_crit_edge

lor.lhs.false23.i.i.if.end19.i_crit_edge:         ; preds = %lor.lhs.false23.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19.i

if.end29.i.i630:                                  ; preds = %lor.lhs.false23.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %185)
  %tobool31.not.i.i = icmp eq i32 %185, 0
  br i1 %tobool31.not.i.i, label %land.lhs.true.i.i, label %if.end29.i.i630.if.end41.i.i_crit_edge

if.end29.i.i630.if.end41.i.i_crit_edge:           ; preds = %if.end29.i.i630
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41.i.i

land.lhs.true.i.i:                                ; preds = %if.end29.i.i630
  %e_value_offs.i.i = getelementptr inbounds %struct.ext4_xattr_entry, ptr %entry1.085.i.i, i32 0, i32 2
  %188 = ptrtoint ptr %e_value_offs.i.i to i32
  call void @__asan_load2_noabort(i32 %188)
  %189 = load i16, ptr %e_value_offs.i.i, align 2
  %190 = tail call i16 @llvm.bswap.i16(i16 %189) #13
  %conv32.i.i = zext i16 %190 to i32
  %add.ptr33.i.i = getelementptr i8, ptr %146, i32 %conv32.i.i
  %e_value_offs34.i.i = getelementptr inbounds %struct.ext4_xattr_entry, ptr %entry2.087.i.i, i32 0, i32 2
  %191 = ptrtoint ptr %e_value_offs34.i.i to i32
  call void @__asan_load2_noabort(i32 %191)
  %192 = load i16, ptr %e_value_offs34.i.i, align 2
  %193 = tail call i16 @llvm.bswap.i16(i16 %192) #13
  %conv35.i.i = zext i16 %193 to i32
  %add.ptr36.i.i = getelementptr i8, ptr %163, i32 %conv35.i.i
  %194 = tail call i32 @llvm.bswap.i32(i32 %181) #13
  %bcmp82.i.i = tail call i32 @bcmp(ptr %add.ptr33.i.i, ptr %add.ptr36.i.i, i32 %194) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp82.i.i)
  %tobool39.not.i.i = icmp eq i32 %bcmp82.i.i, 0
  br i1 %tobool39.not.i.i, label %land.lhs.true.i.i.if.end41.i.i_crit_edge, label %land.lhs.true.i.i.if.end19.i_crit_edge

land.lhs.true.i.i.if.end19.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19.i

land.lhs.true.i.i.if.end41.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41.i.i

if.end41.i.i:                                     ; preds = %land.lhs.true.i.i.if.end41.i.i_crit_edge, %if.end29.i.i630.if.end41.i.i_crit_edge
  %add44.i.i = add nuw nsw i32 %conv10.i.i, 19
  %and.i.i = and i32 %add44.i.i, 508
  %add.ptr45.i.i = getelementptr i8, ptr %entry1.085.i.i, i32 %and.i.i
  %add.ptr51.i.i = getelementptr i8, ptr %entry2.087.i.i, i32 %and.i.i
  %195 = ptrtoint ptr %add.ptr45.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %add.ptr45.i.i, align 4
  %cmp.not.i.i = icmp eq i32 %196, 0
  br i1 %cmp.not.i.i, label %if.end41.i.i.ext4_xattr_cmp.exit.i_crit_edge, label %if.end41.i.i.while.body.i.i_crit_edge

if.end41.i.i.while.body.i.i_crit_edge:            ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i.i

if.end41.i.i.ext4_xattr_cmp.exit.i_crit_edge:     ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ext4_xattr_cmp.exit.i

ext4_xattr_cmp.exit.i:                            ; preds = %if.end41.i.i.ext4_xattr_cmp.exit.i_crit_edge, %if.else.i.ext4_xattr_cmp.exit.i_crit_edge
  %entry2.0.lcssa.i.i = phi ptr [ %add.ptr1.i.i, %if.else.i.ext4_xattr_cmp.exit.i_crit_edge ], [ %add.ptr51.i.i, %if.end41.i.i.ext4_xattr_cmp.exit.i_crit_edge ]
  %197 = ptrtoint ptr %entry2.0.lcssa.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %entry2.0.lcssa.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %198)
  %cmp52.i.not.i = icmp eq i32 %198, 0
  br i1 %cmp52.i.not.i, label %ext4_xattr_block_cache_find.exit, label %ext4_xattr_cmp.exit.i.if.end19.i_crit_edge

ext4_xattr_cmp.exit.i.if.end19.i_crit_edge:       ; preds = %ext4_xattr_cmp.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19.i

if.end19.i:                                       ; preds = %ext4_xattr_cmp.exit.i.if.end19.i_crit_edge, %land.lhs.true.i.i.if.end19.i_crit_edge, %lor.lhs.false23.i.i.if.end19.i_crit_edge, %lor.lhs.false19.i.i.if.end19.i_crit_edge, %lor.lhs.false15.i.i.if.end19.i_crit_edge, %lor.lhs.false9.i.i.if.end19.i_crit_edge, %lor.lhs.false.i.i.if.end19.i_crit_edge, %if.end.i.i628.if.end19.i_crit_edge, %while.body.i.i.if.end19.i_crit_edge
  %tobool.not.i38.i = icmp eq ptr %call7.i624, null
  br i1 %tobool.not.i38.i, label %if.end19.i.cleanup.i_crit_edge, label %if.then.i.i631

if.end19.i.cleanup.i_crit_edge:                   ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i

if.then.i.i631:                                   ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__brelse(ptr noundef nonnull %call7.i624) #13
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then.i.i631, %if.end19.i.cleanup.i_crit_edge, %if.end19.thread.i
  %call20.i = tail call ptr @mb_cache_entry_find_next(ptr noundef nonnull %154, ptr noundef nonnull %ce.049.i) #13
  %tobool5.not.i = icmp eq ptr %call20.i, null
  br i1 %tobool5.not.i, label %cleanup.i.if.else218_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

cleanup.i.if.else218_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else218

ext4_xattr_block_cache_find.exit:                 ; preds = %ext4_xattr_cmp.exit.i
  %tobool126.not = icmp eq ptr %call7.i624, null
  br i1 %tobool126.not, label %ext4_xattr_block_cache_find.exit.if.else218_crit_edge, label %if.then127

ext4_xattr_block_cache_find.exit.if.else218_crit_edge: ; preds = %ext4_xattr_block_cache_find.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else218

if.then127:                                       ; preds = %ext4_xattr_block_cache_find.exit
  %199 = ptrtoint ptr %bh128 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %bh128, align 4
  %cmp129 = icmp eq ptr %call7.i624, %200
  br i1 %cmp129, label %if.then127.if.end216_crit_edge, label %if.else132

if.then127.if.end216_crit_edge:                   ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end216

if.else132:                                       ; preds = %if.then127
  %call133 = tail call zeroext i1 @dquot_initialize_needed(ptr noundef %inode) #13
  br i1 %call133, label %land.rhs, label %if.else132.if.end167_crit_edge

if.else132.if.end167_crit_edge:                   ; preds = %if.else132
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end167

land.rhs:                                         ; preds = %if.else132
  %.b602 = load i1, ptr @ext4_xattr_block_set.__already_done, align 1
  br i1 %.b602, label %land.rhs.if.end167_crit_edge, label %if.then141, !prof !159

land.rhs.if.end167_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end167

if.then141:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @ext4_xattr_block_set.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1986, i32 noundef 9, ptr noundef null) #13
  br label %if.end167

if.end167:                                        ; preds = %if.then141, %land.rhs.if.end167_crit_edge, %if.else132.if.end167_crit_edge
  %201 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %s_fs_info, align 16
  %s_cluster_bits = getelementptr inbounds %struct.ext4_sb_info, ptr %202, i32 0, i32 12
  %203 = ptrtoint ptr %s_cluster_bits to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %s_cluster_bits, align 16
  %shl = shl nuw i32 1, %204
  %conv = sext i32 %shl to i64
  %205 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %i_blkbits.i, align 2
  %sh_prom.i = zext i8 %206 to i64
  %shl.i = shl i64 %conv, %sh_prom.i
  %call.i.i.i = tail call i32 @__dquot_alloc_space(ptr noundef %inode, i64 noundef %shl.i, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i633 = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i633, label %do.end182, label %cleanup213.thread736

cleanup213.thread736:                             ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #15
  %207 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %call.i.i.i, ptr %error, align 4
  br label %cleanup379

do.end182:                                        ; preds = %if.end167
  tail call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #13
  %call183 = tail call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_xattr_block_set, i32 noundef 1997, ptr noundef %handle, ptr noundef %1, ptr noundef nonnull %call7.i624, i32 noundef 1) #13
  %208 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %call183, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call183)
  %tobool184.not = icmp eq i32 %call183, 0
  br i1 %tobool184.not, label %if.end186, label %do.end182.cleanup_dquot_crit_edge

do.end182.cleanup_dquot_crit_edge:                ; preds = %do.end182
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup_dquot

if.end186:                                        ; preds = %do.end182
  tail call void @__might_sleep(ptr noundef nonnull @.str.14, i32 noundef 366) #13
  %call.i.i.i.i635 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i624, i32 noundef 4) #13
  %209 = ptrtoint ptr %call7.i624 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load volatile i32, ptr %call7.i624, align 4
  %and.i.i.i.i636 = and i32 %210, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i636)
  %tobool.not.i.i.i.i637 = icmp eq i32 %and.i.i.i.i636, 0
  br i1 %tobool.not.i.i.i.i637, label %trylock_buffer.exit.i640, label %if.end186.if.then.i641_crit_edge

if.end186.if.then.i641_crit_edge:                 ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i641

trylock_buffer.exit.i640:                         ; preds = %if.end186
  tail call void @llvm.prefetch.p0(ptr nonnull %call7.i624, i32 1, i32 3, i32 1) #13
  %211 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call7.i624, ptr nonnull %call7.i624, i32 4, ptr nonnull elementtype(i32) %call7.i624) #13, !srcloc !162
  %asmresult.i.i.i.i.i.i.i638 = extractvalue { i32, i32, i32 } %211, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !163
  %212 = and i32 %asmresult.i.i.i.i.i.i.i638, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %212)
  %tobool.not.not.i639 = icmp eq i32 %212, 0
  br i1 %tobool.not.not.i639, label %trylock_buffer.exit.i640.lock_buffer.exit643_crit_edge, label %trylock_buffer.exit.i640.if.then.i641_crit_edge

trylock_buffer.exit.i640.if.then.i641_crit_edge:  ; preds = %trylock_buffer.exit.i640
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i641

trylock_buffer.exit.i640.lock_buffer.exit643_crit_edge: ; preds = %trylock_buffer.exit.i640
  call void @__sanitizer_cov_trace_pc() #15
  br label %lock_buffer.exit643

if.then.i641:                                     ; preds = %trylock_buffer.exit.i640.if.then.i641_crit_edge, %if.end186.if.then.i641_crit_edge
  tail call void @__lock_buffer(ptr noundef nonnull %call7.i624) #13
  br label %lock_buffer.exit643

lock_buffer.exit643:                              ; preds = %if.then.i641, %trylock_buffer.exit.i640.lock_buffer.exit643_crit_edge
  %pprev.i = getelementptr inbounds %struct.mb_cache_entry, ptr %ce.049.i, i32 0, i32 1, i32 1
  %213 = ptrtoint ptr %pprev.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %pprev.i, align 4
  %tobool.not.i644 = icmp eq ptr %214, null
  br i1 %tobool.not.i644, label %lock_buffer.exit643.brelse.exit_crit_edge, label %lor.lhs.false

lock_buffer.exit643.brelse.exit_crit_edge:        ; preds = %lock_buffer.exit643
  call void @__sanitizer_cov_trace_pc() #15
  br label %brelse.exit

lor.lhs.false:                                    ; preds = %lock_buffer.exit643
  %e_reusable = getelementptr inbounds %struct.mb_cache_entry, ptr %ce.049.i, i32 0, i32 4
  %215 = ptrtoint ptr %e_reusable to i32
  call void @__asan_load1_noabort(i32 %215)
  %bf.load = load i8, ptr %e_reusable, align 8
  %216 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %216)
  %tobool189.not = icmp eq i8 %216, 0
  br i1 %tobool189.not, label %lor.lhs.false.brelse.exit_crit_edge, label %if.end196

lor.lhs.false.brelse.exit_crit_edge:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %brelse.exit

brelse.exit:                                      ; preds = %lor.lhs.false.brelse.exit_crit_edge, %lock_buffer.exit643.brelse.exit_crit_edge
  tail call void @unlock_buffer(ptr noundef nonnull %call7.i624) #13
  %217 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %s_fs_info, align 16
  %s_cluster_bits192 = getelementptr inbounds %struct.ext4_sb_info, ptr %218, i32 0, i32 12
  %219 = ptrtoint ptr %s_cluster_bits192 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %s_cluster_bits192, align 16
  %shl193 = shl nuw i32 1, %220
  %conv194 = sext i32 %shl193 to i64
  %221 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %i_blkbits.i, align 2
  %sh_prom.i647 = zext i8 %222 to i64
  %shl.i648 = shl i64 %conv194, %sh_prom.i647
  tail call void @__dquot_free_space(ptr noundef %inode, i64 noundef %shl.i648, i32 noundef 0) #13
  tail call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 1) #13
  tail call void @__brelse(ptr noundef nonnull %call7.i624) #13
  %e_refcnt.i = getelementptr inbounds %struct.mb_cache_entry, ptr %ce.049.i, i32 0, i32 2
  %call.i.i.i652 = tail call zeroext i1 @__kasan_check_write(ptr noundef %e_refcnt.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !164
  tail call void @llvm.prefetch.p0(ptr %e_refcnt.i, i32 1, i32 3, i32 1) #13
  %223 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %e_refcnt.i, ptr %e_refcnt.i, i32 1, ptr elementtype(i32) %e_refcnt.i) #13, !srcloc !165
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %223, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !166
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i653 = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i653, label %if.end.i654, label %brelse.exit.cleanup213_crit_edge

brelse.exit.cleanup213_crit_edge:                 ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup213

if.end.i654:                                      ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__mb_cache_entry_free(ptr noundef %ce.049.i) #13
  br label %cleanup213

if.end196:                                        ; preds = %lor.lhs.false
  %b_data.i627.le.le = getelementptr inbounds %struct.buffer_head, ptr %call7.i624, i32 0, i32 5
  %224 = ptrtoint ptr %b_data.i627.le.le to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %b_data.i627.le.le, align 4
  %h_refcount198 = getelementptr inbounds %struct.ext4_xattr_header, ptr %225, i32 0, i32 1
  %226 = ptrtoint ptr %h_refcount198 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %h_refcount198, align 4
  %228 = tail call i32 @llvm.bswap.i32(i32 %227)
  %add = add i32 %228, 1
  %229 = tail call i32 @llvm.bswap.i32(i32 %add)
  %230 = ptrtoint ptr %h_refcount198 to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 %229, ptr %h_refcount198, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %add)
  %cmp201 = icmp ugt i32 %add, 1023
  br i1 %cmp201, label %if.then203, label %if.end196.if.end207_crit_edge

if.end196.if.end207_crit_edge:                    ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end207

if.then203:                                       ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #15
  %e_reusable.le = getelementptr inbounds %struct.mb_cache_entry, ptr %ce.049.i, i32 0, i32 4
  %231 = ptrtoint ptr %e_reusable.le to i32
  call void @__asan_load1_noabort(i32 %231)
  %bf.load205 = load i8, ptr %e_reusable.le, align 8
  %bf.clear206 = and i8 %bf.load205, -65
  store i8 %bf.clear206, ptr %e_reusable.le, align 8
  br label %if.end207

if.end207:                                        ; preds = %if.then203, %if.end196.if.end207_crit_edge
  tail call fastcc void @ext4_xattr_block_csum_set(ptr noundef %inode, ptr noundef nonnull %call7.i624)
  tail call void @unlock_buffer(ptr noundef nonnull %call7.i624) #13
  %call209 = tail call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_xattr_block_set, i32 noundef 2039, ptr noundef %handle, ptr noundef %inode, ptr noundef nonnull %call7.i624) #13
  %232 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 %call209, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call209)
  %tobool210.not = icmp eq i32 %call209, 0
  br i1 %tobool210.not, label %if.end207.if.end216_crit_edge, label %if.end207.cleanup_dquot_crit_edge

if.end207.cleanup_dquot_crit_edge:                ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup_dquot

if.end207.if.end216_crit_edge:                    ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end216

cleanup213:                                       ; preds = %if.end.i654, %brelse.exit.cleanup213_crit_edge
  %233 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %142, align 4
  %cmp122 = icmp eq i32 %234, 0
  br i1 %cmp122, label %cleanup213.if.end363_crit_edge, label %cleanup213.if.then123_crit_edge

cleanup213.if.then123_crit_edge:                  ; preds = %cleanup213
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then123

cleanup213.if.end363_crit_edge:                   ; preds = %cleanup213
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end363

if.end216:                                        ; preds = %if.end207.if.end216_crit_edge, %if.then127.if.end216_crit_edge
  tail call void @mb_cache_entry_touch(ptr noundef %10, ptr noundef %ce.049.i) #13
  %e_refcnt.i655 = getelementptr inbounds %struct.mb_cache_entry, ptr %ce.049.i, i32 0, i32 2
  %call.i.i.i656 = tail call zeroext i1 @__kasan_check_write(ptr noundef %e_refcnt.i655, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !164
  tail call void @llvm.prefetch.p0(ptr %e_refcnt.i655, i32 1, i32 3, i32 1) #13
  %235 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %e_refcnt.i655, ptr %e_refcnt.i655, i32 1, ptr elementtype(i32) %e_refcnt.i655) #13, !srcloc !165
  %asmresult.i.i.i.i.i.i657 = extractvalue { i32, i32 } %235, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !166
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i657)
  %cmp.i.i.i658 = icmp eq i32 %asmresult.i.i.i.i.i.i657, 0
  br i1 %cmp.i.i.i658, label %if.end.i659, label %if.end216.if.end363_crit_edge

if.end216.if.end363_crit_edge:                    ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end363

if.end.i659:                                      ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__mb_cache_entry_free(ptr noundef %ce.049.i) #13
  br label %if.end363

if.else218:                                       ; preds = %ext4_xattr_block_cache_find.exit.if.else218_crit_edge, %cleanup.i.if.else218_crit_edge, %if.then9.i.if.else218_crit_edge, %if.end4.i623.if.else218_crit_edge, %if.then123.if.else218_crit_edge
  %ce.1724 = phi ptr [ null, %if.then9.i.if.else218_crit_edge ], [ null, %cleanup.i.if.else218_crit_edge ], [ null, %if.end4.i623.if.else218_crit_edge ], [ null, %if.then123.if.else218_crit_edge ], [ %ce.049.i, %ext4_xattr_block_cache_find.exit.if.else218_crit_edge ]
  %236 = ptrtoint ptr %bh128 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %bh128, align 4
  %tobool220.not = icmp eq ptr %237, null
  br i1 %tobool220.not, label %if.else218.if.else231_crit_edge, label %land.lhs.true221

if.else218.if.else231_crit_edge:                  ; preds = %if.else218
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else231

land.lhs.true221:                                 ; preds = %if.else218
  %b_data224 = getelementptr inbounds %struct.buffer_head, ptr %237, i32 0, i32 5
  %238 = ptrtoint ptr %b_data224 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %b_data224, align 4
  %cmp225 = icmp eq ptr %146, %239
  br i1 %cmp225, label %if.then227, label %land.lhs.true221.if.else231_crit_edge

land.lhs.true221.if.else231_crit_edge:            ; preds = %land.lhs.true221
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else231

if.then227:                                       ; preds = %land.lhs.true221
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @ext4_xattr_block_cache_insert(ptr noundef %10, ptr noundef nonnull %237)
  %240 = ptrtoint ptr %bh128 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %bh128, align 4
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %241, i32 0, i32 11
  %call.i.i.i661 = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #13
  %242 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #13, !srcloc !175
  br label %if.end363

if.else231:                                       ; preds = %land.lhs.true221.if.else231_crit_edge, %if.else218.if.else231_crit_edge
  %call233 = tail call zeroext i1 @dquot_initialize_needed(ptr noundef %inode) #13
  br i1 %call233, label %land.rhs241, label %if.else231.if.end279_crit_edge

if.else231.if.end279_crit_edge:                   ; preds = %if.else231
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end279

land.rhs241:                                      ; preds = %if.else231
  %.b600601 = load i1, ptr @ext4_xattr_block_set.__already_done.24, align 1
  br i1 %.b600601, label %land.rhs241.if.end279_crit_edge, label %if.then252, !prof !159

land.rhs241.if.end279_crit_edge:                  ; preds = %land.rhs241
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end279

if.then252:                                       ; preds = %land.rhs241
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @ext4_xattr_block_set.__already_done.24, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 2056, i32 noundef 9, ptr noundef null) #13
  br label %if.end279

if.end279:                                        ; preds = %if.then252, %land.rhs241.if.end279_crit_edge, %if.else231.if.end279_crit_edge
  %i_block_group = getelementptr i8, ptr %inode, i32 -392
  %243 = ptrtoint ptr %i_block_group to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %i_block_group, align 8
  %conv.i662 = zext i32 %244 to i64
  %245 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %s_fs_info, align 16
  %s_blocks_per_group.i = getelementptr inbounds %struct.ext4_sb_info, ptr %246, i32 0, i32 2
  %247 = ptrtoint ptr %s_blocks_per_group.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %s_blocks_per_group.i, align 8
  %conv1.i = zext i32 %248 to i64
  %mul.i = mul nuw i64 %conv1.i, %conv.i662
  %s_es.i = getelementptr inbounds %struct.ext4_sb_info, ptr %246, i32 0, i32 15
  %249 = ptrtoint ptr %s_es.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %s_es.i, align 4
  %s_first_data_block.i = getelementptr inbounds %struct.ext4_super_block, ptr %250, i32 0, i32 5
  %251 = ptrtoint ptr %s_first_data_block.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %s_first_data_block.i, align 4
  %253 = tail call i32 @llvm.bswap.i32(i32 %252) #13
  %conv3.i = zext i32 %253 to i64
  %add.i = add nuw i64 %mul.i, %conv3.i
  %i_flags.i = getelementptr i8, ptr %inode, i32 -380
  %254 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load volatile i32, ptr %i_flags.i, align 4
  %256 = and i32 %255, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %256)
  %tobool290.not = icmp eq i32 %256, 0
  %and = and i64 %add.i, 4294967295
  %spec.select = select i1 %tobool290.not, i64 %and, i64 %add.i
  %call293 = call i64 @ext4_new_meta_blocks(ptr noundef %handle, ptr noundef %inode, i64 noundef %spec.select, i32 noundef 0, ptr noundef null, ptr noundef nonnull %error) #13
  %257 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %258)
  %tobool294.not = icmp eq i32 %258, 0
  br i1 %tobool294.not, label %if.end296, label %if.end279.cleanup379_crit_edge

if.end279.cleanup379_crit_edge:                   ; preds = %if.end279
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup379

if.end296:                                        ; preds = %if.end279
  %259 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load volatile i32, ptr %i_flags.i, align 4
  %261 = and i32 %260, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %261)
  %tobool298.not = icmp eq i32 %261, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %call293)
  %cmp301 = icmp ugt i64 %call293, 4294967295
  %or.cond = select i1 %tobool298.not, i1 %cmp301, i1 false
  br i1 %or.cond, label %do.body310, label %if.end319, !prof !176

do.body310:                                       ; preds = %if.end296
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/xattr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2071, 0\0A.popsection", ""() #13, !srcloc !177
  unreachable

if.end319:                                        ; preds = %if.end296
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %262 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %s_bdev.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %264 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %s_blocksize.i, align 16
  %call.i668 = call ptr @__getblk_gfp(ptr noundef %263, i64 noundef %call293, i32 noundef %265, i32 noundef 8) #13
  %tobool322.not = icmp eq ptr %call.i668, null
  br i1 %tobool322.not, label %if.then331, label %if.end332, !prof !158

if.then331:                                       ; preds = %if.end319
  call void @__sanitizer_cov_trace_pc() #15
  %266 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 -12, ptr %error, align 4
  br label %getblk_failed

getblk_failed:                                    ; preds = %if.then348, %if.end332.getblk_failed_crit_edge, %if.then331
  call void @ext4_free_blocks(ptr noundef %handle, ptr noundef %inode, ptr noundef null, i64 noundef %call293, i32 noundef 1, i32 noundef 1) #13
  br label %cleanup379

if.end332:                                        ; preds = %if.end319
  %call335 = call fastcc i32 @ext4_xattr_inode_inc_ref_all(ptr noundef %handle, ptr noundef %inode, ptr noundef %add.ptr.i.i)
  %267 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %267)
  store i32 %call335, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call335)
  %tobool336.not = icmp eq i32 %call335, 0
  br i1 %tobool336.not, label %if.end338, label %if.end332.getblk_failed_crit_edge

if.end332.getblk_failed_crit_edge:                ; preds = %if.end332
  call void @__sanitizer_cov_trace_pc() #15
  br label %getblk_failed

if.end338:                                        ; preds = %if.end332
  %268 = ptrtoint ptr %ea_inode to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %ea_inode, align 4
  %tobool339.not = icmp eq ptr %269, null
  br i1 %tobool339.not, label %if.end338.if.end345_crit_edge, label %if.then340

if.end338.if.end345_crit_edge:                    ; preds = %if.end338
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end345

if.then340:                                       ; preds = %if.end338
  %call.i669 = call fastcc i32 @ext4_xattr_inode_update_ref(ptr noundef %handle, ptr noundef nonnull %269, i32 noundef -1) #13
  %270 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 %call.i669, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i669)
  %tobool342.not = icmp eq i32 %call.i669, 0
  br i1 %tobool342.not, label %if.then340.if.end344_crit_edge, label %if.then343

if.then340.if.end344_crit_edge:                   ; preds = %if.then340
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end344

if.then343:                                       ; preds = %if.then340
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning_inode(ptr noundef nonnull %269, ptr noundef nonnull @__func__.ext4_xattr_block_set, i32 noundef 2095, ptr noundef nonnull @.str.25, i32 noundef %call.i669) #13
  br label %if.end344

if.end344:                                        ; preds = %if.then343, %if.then340.if.end344_crit_edge
  call void @iput(ptr noundef nonnull %269) #13
  %271 = ptrtoint ptr %ea_inode to i32
  call void @__asan_store4_noabort(i32 %271)
  store ptr null, ptr %ea_inode, align 4
  br label %if.end345

if.end345:                                        ; preds = %if.end344, %if.end338.if.end345_crit_edge
  call fastcc void @lock_buffer(ptr noundef nonnull %call.i668)
  %call346 = call i32 @__ext4_journal_get_create_access(ptr noundef nonnull @__func__.ext4_xattr_block_set, i32 noundef 2102, ptr noundef %handle, ptr noundef %1, ptr noundef nonnull %call.i668, i32 noundef 1) #13
  %272 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %272)
  store i32 %call346, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call346)
  %tobool347.not = icmp eq i32 %call346, 0
  br i1 %tobool347.not, label %if.end349, label %if.then348

if.then348:                                       ; preds = %if.end345
  call void @__sanitizer_cov_trace_pc() #15
  call void @unlock_buffer(ptr noundef nonnull %call.i668) #13
  %273 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %273)
  store i32 -5, ptr %error, align 4
  br label %getblk_failed

if.end349:                                        ; preds = %if.end345
  %b_data350 = getelementptr inbounds %struct.buffer_head, ptr %call.i668, i32 0, i32 5
  %274 = ptrtoint ptr %b_data350 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %b_data350, align 4
  %b_size352 = getelementptr inbounds %struct.buffer_head, ptr %call.i668, i32 0, i32 4
  %276 = ptrtoint ptr %b_size352 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %b_size352, align 8
  %278 = call ptr @memcpy(ptr %275, ptr %146, i32 %277)
  call fastcc void @ext4_xattr_block_csum_set(ptr noundef %inode, ptr noundef nonnull %call.i668)
  %279 = ptrtoint ptr %call.i668 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load volatile i32, ptr %call.i668, align 4
  %and1.i.i = and i32 %280, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.then.i609, label %if.end349.set_buffer_uptodate.exit_crit_edge

if.end349.set_buffer_uptodate.exit_crit_edge:     ; preds = %if.end349
  call void @__sanitizer_cov_trace_pc() #15
  br label %set_buffer_uptodate.exit

if.then.i609:                                     ; preds = %if.end349
  call void @__sanitizer_cov_trace_pc() #15
  call void @_set_bit(i32 noundef 0, ptr noundef nonnull %call.i668) #13
  br label %set_buffer_uptodate.exit

set_buffer_uptodate.exit:                         ; preds = %if.then.i609, %if.end349.set_buffer_uptodate.exit_crit_edge
  call void @unlock_buffer(ptr noundef nonnull %call.i668) #13
  call fastcc void @ext4_xattr_block_cache_insert(ptr noundef %10, ptr noundef nonnull %call.i668)
  %call353 = call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_xattr_block_set, i32 noundef 2114, ptr noundef %handle, ptr noundef %inode, ptr noundef nonnull %call.i668) #13
  %281 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %281)
  store i32 %call353, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call353)
  %tobool354.not = icmp eq i32 %call353, 0
  br i1 %tobool354.not, label %set_buffer_uptodate.exit.if.end363_crit_edge, label %set_buffer_uptodate.exit.cleanup379_crit_edge

set_buffer_uptodate.exit.cleanup379_crit_edge:    ; preds = %set_buffer_uptodate.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup379

set_buffer_uptodate.exit.if.end363_crit_edge:     ; preds = %set_buffer_uptodate.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end363

if.end363:                                        ; preds = %set_buffer_uptodate.exit.if.end363_crit_edge, %if.then227, %if.end.i659, %if.end216.if.end363_crit_edge, %cleanup213.if.end363_crit_edge, %inserted.preheader.if.end363_crit_edge
  %ce.4 = phi ptr [ %ce.1724, %if.then227 ], [ null, %if.end216.if.end363_crit_edge ], [ null, %if.end.i659 ], [ %ce.1724, %set_buffer_uptodate.exit.if.end363_crit_edge ], [ null, %inserted.preheader.if.end363_crit_edge ], [ null, %cleanup213.if.end363_crit_edge ]
  %new_bh.4 = phi ptr [ %241, %if.then227 ], [ %call7.i624, %if.end216.if.end363_crit_edge ], [ %call7.i624, %if.end.i659 ], [ %call.i668, %set_buffer_uptodate.exit.if.end363_crit_edge ], [ null, %inserted.preheader.if.end363_crit_edge ], [ null, %cleanup213.if.end363_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %old_ea_inode_quota.4.ph)
  %tobool364.not = icmp eq i32 %old_ea_inode_quota.4.ph, 0
  br i1 %tobool364.not, label %if.end363.if.end366_crit_edge, label %if.then365

if.end363.if.end366_crit_edge:                    ; preds = %if.end363
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end366

if.then365:                                       ; preds = %if.end363
  call void @__sanitizer_cov_trace_pc() #15
  %282 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %283, i32 0, i32 33
  %284 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_cluster_bits.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %285, i32 0, i32 12
  %286 = ptrtoint ptr %s_cluster_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %s_cluster_bits.i.i, align 16
  %i_blkbits.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %288 = ptrtoint ptr %i_blkbits.i.i to i32
  call void @__asan_load1_noabort(i32 %288)
  %289 = load i8, ptr %i_blkbits.i.i, align 2
  %conv.i.i = zext i8 %289 to i32
  %add.i.i = add i32 %287, %conv.i.i
  %shl.i.i = shl nuw i32 1, %add.i.i
  %neg.i.i = sub i32 0, %shl.i.i
  %add1.i.i = add i32 %old_ea_inode_quota.4.ph, -1
  %sub2.i.i = add i32 %add1.i.i, %shl.i.i
  %and.i.i670 = and i32 %sub2.i.i, %neg.i.i
  %conv.i671 = zext i32 %and.i.i670 to i64
  call void @__dquot_free_space(ptr noundef %inode, i64 noundef %conv.i671, i32 noundef 0) #13
  call void @dquot_free_inode(ptr noundef %inode) #13
  br label %if.end366

if.end366:                                        ; preds = %if.then365, %if.end363.if.end366_crit_edge
  %tobool367.not = icmp eq ptr %new_bh.4, null
  br i1 %tobool367.not, label %if.end366.cond.end_crit_edge, label %cond.true

if.end366.cond.end_crit_edge:                     ; preds = %if.end366
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.true:                                        ; preds = %if.end366
  call void @__sanitizer_cov_trace_pc() #15
  %b_blocknr368 = getelementptr inbounds %struct.buffer_head, ptr %new_bh.4, i32 0, i32 3
  %290 = ptrtoint ptr %b_blocknr368 to i32
  call void @__asan_load8_noabort(i32 %290)
  %291 = load i64, ptr %b_blocknr368, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end366.cond.end_crit_edge
  %cond = phi i64 [ %291, %cond.true ], [ 0, %if.end366.cond.end_crit_edge ]
  %i_file_acl = getelementptr i8, ptr %inode, i32 -400
  %292 = ptrtoint ptr %i_file_acl to i32
  call void @__asan_store8_noabort(i32 %292)
  store i64 %cond, ptr %i_file_acl, align 8
  %bh370 = getelementptr inbounds %struct.ext4_xattr_block_find, ptr %bs, i32 0, i32 1
  %293 = ptrtoint ptr %bh370 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %bh370, align 4
  %tobool371.not = icmp eq ptr %294, null
  %cmp374.not = icmp eq ptr %294, %new_bh.4
  %or.cond608 = select i1 %tobool371.not, i1 true, i1 %cmp374.not
  br i1 %or.cond608, label %cond.end.if.end378_crit_edge, label %if.then376

cond.end.if.end378_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end378

if.then376:                                       ; preds = %cond.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ea_inode_array) #13
  %295 = ptrtoint ptr %ea_inode_array to i32
  call void @__asan_store4_noabort(i32 %295)
  store ptr null, ptr %ea_inode_array, align 4
  call fastcc void @ext4_xattr_release_block(ptr noundef %handle, ptr noundef %inode, ptr noundef nonnull %294, ptr noundef nonnull %ea_inode_array, i32 noundef 0)
  %296 = ptrtoint ptr %ea_inode_array to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %ea_inode_array, align 4
  %cmp.i674 = icmp eq ptr %297, null
  br i1 %cmp.i674, label %if.then376.ext4_xattr_inode_array_free.exit_crit_edge, label %for.cond.preheader.i

if.then376.ext4_xattr_inode_array_free.exit_crit_edge: ; preds = %if.then376
  call void @__sanitizer_cov_trace_pc() #15
  br label %ext4_xattr_inode_array_free.exit

for.cond.preheader.i:                             ; preds = %if.then376
  %298 = ptrtoint ptr %297 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %297, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %299)
  %cmp17.not.i = icmp eq i32 %299, 0
  br i1 %cmp17.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %idx.08.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ext4_xattr_inode_array, ptr %297, i32 0, i32 1, i32 %idx.08.i
  %300 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %arrayidx.i, align 4
  call void @iput(ptr noundef %301) #13
  %inc.i = add nuw i32 %idx.08.i, 1
  %302 = ptrtoint ptr %297 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %297, align 4
  %cmp1.i = icmp ult i32 %inc.i, %303
  br i1 %cmp1.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  call void @kfree(ptr noundef nonnull %297) #13
  br label %ext4_xattr_inode_array_free.exit

ext4_xattr_inode_array_free.exit:                 ; preds = %for.end.i, %if.then376.ext4_xattr_inode_array_free.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ea_inode_array) #13
  br label %if.end378

if.end378:                                        ; preds = %ext4_xattr_inode_array_free.exit, %cond.end.if.end378_crit_edge
  %304 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %304)
  store i32 0, ptr %error, align 4
  br label %cleanup379

cleanup379:                                       ; preds = %bad_block, %cleanup_dquot, %if.end378, %set_buffer_uptodate.exit.cleanup379_crit_edge, %getblk_failed, %if.end279.cleanup379_crit_edge, %cleanup213.thread736, %if.end97.cleanup379_crit_edge, %if.else76.cleanup379_crit_edge, %if.then56.cleanup379_crit_edge, %if.else.cleanup379_crit_edge, %if.end23.cleanup379_crit_edge, %ext4_xattr_block_csum_set.exit.cleanup379_crit_edge, %do.end.cleanup379_crit_edge
  %ce.5.ph = phi ptr [ %ce.049.i, %cleanup213.thread736 ], [ null, %if.else.cleanup379_crit_edge ], [ null, %if.then56.cleanup379_crit_edge ], [ null, %do.end.cleanup379_crit_edge ], [ null, %bad_block ], [ %ce.049.i, %cleanup_dquot ], [ %ce.4, %if.end378 ], [ null, %if.end97.cleanup379_crit_edge ], [ null, %if.else76.cleanup379_crit_edge ], [ null, %if.end23.cleanup379_crit_edge ], [ %ce.1724, %getblk_failed ], [ %ce.1724, %if.end279.cleanup379_crit_edge ], [ %ce.1724, %set_buffer_uptodate.exit.cleanup379_crit_edge ], [ null, %ext4_xattr_block_csum_set.exit.cleanup379_crit_edge ]
  %new_bh.5.ph = phi ptr [ %call7.i624, %cleanup213.thread736 ], [ null, %if.else.cleanup379_crit_edge ], [ null, %if.then56.cleanup379_crit_edge ], [ null, %do.end.cleanup379_crit_edge ], [ null, %bad_block ], [ %call7.i624, %cleanup_dquot ], [ %new_bh.4, %if.end378 ], [ null, %if.end97.cleanup379_crit_edge ], [ null, %if.else76.cleanup379_crit_edge ], [ null, %if.end23.cleanup379_crit_edge ], [ %call.i668, %getblk_failed ], [ null, %if.end279.cleanup379_crit_edge ], [ %call.i668, %set_buffer_uptodate.exit.cleanup379_crit_edge ], [ null, %ext4_xattr_block_csum_set.exit.cleanup379_crit_edge ]
  %305 = ptrtoint ptr %ea_inode to i32
  call void @__asan_load4_noabort(i32 %305)
  %.pr = load ptr, ptr %ea_inode, align 4
  %tobool380.not = icmp eq ptr %.pr, null
  br i1 %tobool380.not, label %cleanup379.if.end391_crit_edge, label %if.then381

cleanup379.if.end391_crit_edge:                   ; preds = %cleanup379
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end391

if.then381:                                       ; preds = %cleanup379
  %call.i676 = call fastcc i32 @ext4_xattr_inode_update_ref(ptr noundef %handle, ptr noundef nonnull %.pr, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i676)
  %tobool383.not = icmp eq i32 %call.i676, 0
  br i1 %tobool383.not, label %if.then381.if.end385_crit_edge, label %if.then384

if.then381.if.end385_crit_edge:                   ; preds = %if.then381
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end385

if.then384:                                       ; preds = %if.then381
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning_inode(ptr noundef nonnull %.pr, ptr noundef nonnull @__func__.ext4_xattr_block_set, i32 noundef 2144, ptr noundef nonnull @.str.25, i32 noundef %call.i676) #13
  br label %if.end385

if.end385:                                        ; preds = %if.then384, %if.then381.if.end385_crit_edge
  %306 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %307)
  %tobool386.not = icmp eq i32 %307, 0
  br i1 %tobool386.not, label %if.end385.if.end390_crit_edge, label %land.lhs.true.i

if.end385.if.end390_crit_edge:                    ; preds = %if.end385
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end390

land.lhs.true.i:                                  ; preds = %if.end385
  %call388 = call fastcc i64 @i_size_read(ptr noundef nonnull %.pr)
  %i_state_flags.i.i = getelementptr i8, ptr %.pr, i32 -384
  %308 = ptrtoint ptr %i_state_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load volatile i32, ptr %i_state_flags.i.i, align 4
  %310 = and i32 %309, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %310)
  %tobool1.not.i = icmp eq i32 %310, 0
  br i1 %tobool1.not.i, label %if.end.i690, label %land.lhs.true.i.if.end390_crit_edge

land.lhs.true.i.if.end390_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end390

if.end.i690:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv389 = trunc i64 %call388 to i32
  %311 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i.i679 = getelementptr inbounds %struct.super_block, ptr %312, i32 0, i32 33
  %313 = ptrtoint ptr %s_fs_info.i.i.i679 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %s_fs_info.i.i.i679, align 16
  %s_cluster_bits.i.i680 = getelementptr inbounds %struct.ext4_sb_info, ptr %314, i32 0, i32 12
  %315 = ptrtoint ptr %s_cluster_bits.i.i680 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %s_cluster_bits.i.i680, align 16
  %i_blkbits.i.i681 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %317 = ptrtoint ptr %i_blkbits.i.i681 to i32
  call void @__asan_load1_noabort(i32 %317)
  %318 = load i8, ptr %i_blkbits.i.i681, align 2
  %conv.i.i682 = zext i8 %318 to i32
  %add.i.i683 = add i32 %316, %conv.i.i682
  %shl.i.i684 = shl nuw i32 1, %add.i.i683
  %neg.i.i685 = sub i32 0, %shl.i.i684
  %add1.i.i686 = add i32 %conv389, -1
  %sub2.i.i687 = add i32 %add1.i.i686, %shl.i.i684
  %and.i.i688 = and i32 %sub2.i.i687, %neg.i.i685
  %conv.i689 = zext i32 %and.i.i688 to i64
  call void @__dquot_free_space(ptr noundef %inode, i64 noundef %conv.i689, i32 noundef 0) #13
  call void @dquot_free_inode(ptr noundef %inode) #13
  br label %if.end390

if.end390:                                        ; preds = %if.end.i690, %land.lhs.true.i.if.end390_crit_edge, %if.end385.if.end390_crit_edge
  call void @iput(ptr noundef nonnull %.pr) #13
  br label %if.end391

if.end391:                                        ; preds = %if.end390, %cleanup379.if.end391_crit_edge
  %tobool392.not = icmp eq ptr %ce.5.ph, null
  br i1 %tobool392.not, label %if.end391.if.end395_crit_edge, label %if.then393

if.end391.if.end395_crit_edge:                    ; preds = %if.end391
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end395

if.then393:                                       ; preds = %if.end391
  %e_refcnt.i691 = getelementptr inbounds %struct.mb_cache_entry, ptr %ce.5.ph, i32 0, i32 2
  %call.i.i.i692 = call zeroext i1 @__kasan_check_write(ptr noundef %e_refcnt.i691, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !164
  call void @llvm.prefetch.p0(ptr %e_refcnt.i691, i32 1, i32 3, i32 1) #13
  %319 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %e_refcnt.i691, ptr %e_refcnt.i691, i32 1, ptr elementtype(i32) %e_refcnt.i691) #13, !srcloc !165
  %asmresult.i.i.i.i.i.i693 = extractvalue { i32, i32 } %319, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !166
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i693)
  %cmp.i.i.i694 = icmp eq i32 %asmresult.i.i.i.i.i.i693, 0
  br i1 %cmp.i.i.i694, label %if.end.i695, label %if.then393.if.end395_crit_edge

if.then393.if.end395_crit_edge:                   ; preds = %if.then393
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end395

if.end.i695:                                      ; preds = %if.then393
  call void @__sanitizer_cov_trace_pc() #15
  call void @__mb_cache_entry_free(ptr noundef nonnull %ce.5.ph) #13
  br label %if.end395

if.end395:                                        ; preds = %if.end.i695, %if.then393.if.end395_crit_edge, %if.end391.if.end395_crit_edge
  %tobool.not.i697 = icmp eq ptr %new_bh.5.ph, null
  br i1 %tobool.not.i697, label %if.end395.brelse.exit700_crit_edge, label %if.then.i698

if.end395.brelse.exit700_crit_edge:               ; preds = %if.end395
  call void @__sanitizer_cov_trace_pc() #15
  br label %brelse.exit700

if.then.i698:                                     ; preds = %if.end395
  call void @__sanitizer_cov_trace_pc() #15
  call void @__brelse(ptr noundef nonnull %new_bh.5.ph) #13
  br label %brelse.exit700

brelse.exit700:                                   ; preds = %if.then.i698, %if.end395.brelse.exit700_crit_edge, %if.then110.brelse.exit700_crit_edge
  %bh396 = getelementptr inbounds %struct.ext4_xattr_block_find, ptr %bs, i32 0, i32 1
  %320 = ptrtoint ptr %bh396 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %bh396, align 4
  %tobool397.not = icmp eq ptr %321, null
  br i1 %tobool397.not, label %brelse.exit700.if.then404_crit_edge, label %land.lhs.true398

brelse.exit700.if.then404_crit_edge:              ; preds = %brelse.exit700
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then404

land.lhs.true398:                                 ; preds = %brelse.exit700
  %322 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %2, align 4
  %b_data401 = getelementptr inbounds %struct.buffer_head, ptr %321, i32 0, i32 5
  %324 = ptrtoint ptr %b_data401 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %b_data401, align 4
  %cmp402 = icmp eq ptr %323, %325
  br i1 %cmp402, label %land.lhs.true398.cleanup413_crit_edge, label %land.lhs.true398.if.then404_crit_edge

land.lhs.true398.if.then404_crit_edge:            ; preds = %land.lhs.true398
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then404

land.lhs.true398.cleanup413_crit_edge:            ; preds = %land.lhs.true398
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup413

if.then404:                                       ; preds = %land.lhs.true398.if.then404_crit_edge, %brelse.exit700.if.then404_crit_edge
  %326 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %2, align 4
  call void @kfree(ptr noundef %327) #13
  br label %cleanup413

cleanup_dquot:                                    ; preds = %if.end207.cleanup_dquot_crit_edge, %do.end182.cleanup_dquot_crit_edge
  %328 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %s_fs_info, align 16
  %s_cluster_bits408 = getelementptr inbounds %struct.ext4_sb_info, ptr %329, i32 0, i32 12
  %330 = ptrtoint ptr %s_cluster_bits408 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %s_cluster_bits408, align 16
  %shl409 = shl nuw i32 1, %331
  %conv410 = sext i32 %shl409 to i64
  tail call fastcc void @dquot_free_block(ptr noundef %inode, i64 noundef %conv410)
  br label %cleanup379

bad_block:                                        ; preds = %if.end97.bad_block_crit_edge, %ext4_xattr_block_csum_set.exit.bad_block_crit_edge
  %i_file_acl412 = getelementptr i8, ptr %inode, i32 -400
  %332 = ptrtoint ptr %i_file_acl412 to i32
  call void @__asan_load8_noabort(i32 %332)
  %333 = load i64, ptr %i_file_acl412, align 8
  tail call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %inode, ptr noundef nonnull @__func__.ext4_xattr_block_set, i32 noundef 2166, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.26, i64 noundef %333) #13
  br label %cleanup379

cleanup413:                                       ; preds = %if.then404, %land.lhs.true398.cleanup413_crit_edge
  %334 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %error, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp_inode) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ea_inode) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %s_copy) #13
  ret i32 %335
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @ext4_xattr_value_same(ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %i) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %here = getelementptr inbounds %struct.ext4_xattr_search, ptr %s, i32 0, i32 3
  %0 = ptrtoint ptr %here to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %here, align 4
  %e_value_inum = getelementptr inbounds %struct.ext4_xattr_entry, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %e_value_inum to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %e_value_inum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %e_value_size = getelementptr inbounds %struct.ext4_xattr_entry, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %e_value_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %e_value_size, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %value_len = getelementptr inbounds %struct.ext4_xattr_info, ptr %i, i32 0, i32 2
  %7 = ptrtoint ptr %value_len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %value_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp.not = icmp eq i32 %6, %8
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %base = getelementptr inbounds %struct.ext4_xattr_search, ptr %s, i32 0, i32 1
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base, align 4
  %e_value_offs = getelementptr inbounds %struct.ext4_xattr_entry, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %e_value_offs to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %e_value_offs, align 2
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  %conv = zext i16 %13 to i32
  %add.ptr = getelementptr i8, ptr %10, i32 %conv
  %value5 = getelementptr inbounds %struct.ext4_xattr_info, ptr %i, i32 0, i32 1
  %14 = ptrtoint ptr %value5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %value5, align 4
  %bcmp = tail call i32 @bcmp(ptr %add.ptr, ptr %15, i32 %6) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool7.not = icmp eq i32 %bcmp, 0
  %lnot.ext = zext i1 %tobool7.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %lnot.ext, %if.end3 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ext4_xattr_update_super_block(ptr noundef %handle, ptr noundef %sb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_es.i = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %s_es.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_es.i, align 4
  %s_feature_compat.i = getelementptr inbounds %struct.ext4_super_block, ptr %3, i32 0, i32 28
  %4 = ptrtoint ptr %s_feature_compat.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_feature_compat.i, align 4
  %and.i = and i32 %5, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 0
  br i1 %cmp.i.not, label %do.end, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

do.end:                                           ; preds = %entry
  %s_sbh = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 14
  %6 = ptrtoint ptr %s_sbh to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_sbh, align 64
  %call2 = tail call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_xattr_update_super_block, i32 noundef 795, ptr noundef %handle, ptr noundef %sb, ptr noundef %7, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %if.then3, label %do.end.if.end11_crit_edge

do.end.if.end11_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.then3:                                         ; preds = %do.end
  %8 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_sbh5 = getelementptr inbounds %struct.ext4_sb_info, ptr %9, i32 0, i32 14
  %10 = ptrtoint ptr %s_sbh5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_sbh5, align 64
  tail call void @__might_sleep(ptr noundef nonnull @.str.14, i32 noundef 366) #13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %11, i32 noundef 4) #13
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  %and.i.i.i.i = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_buffer.exit.i, label %if.then3.if.then.i_crit_edge

if.then3.if.then.i_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

trylock_buffer.exit.i:                            ; preds = %if.then3
  tail call void @llvm.prefetch.p0(ptr %11, i32 1, i32 3, i32 1) #13
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %11, ptr %11, i32 4, ptr elementtype(i32) %11) #13, !srcloc !162
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !163
  %15 = and i32 %asmresult.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.not.i, label %trylock_buffer.exit.i.lock_buffer.exit_crit_edge, label %trylock_buffer.exit.i.if.then.i_crit_edge

trylock_buffer.exit.i.if.then.i_crit_edge:        ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

trylock_buffer.exit.i.lock_buffer.exit_crit_edge: ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lock_buffer.exit

if.then.i:                                        ; preds = %trylock_buffer.exit.i.if.then.i_crit_edge, %if.then3.if.then.i_crit_edge
  tail call void @__lock_buffer(ptr noundef %11) #13
  br label %lock_buffer.exit

lock_buffer.exit:                                 ; preds = %if.then.i, %trylock_buffer.exit.i.lock_buffer.exit_crit_edge
  tail call void @ext4_update_dynamic_rev(ptr noundef %sb) #13
  %16 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_es.i22 = getelementptr inbounds %struct.ext4_sb_info, ptr %17, i32 0, i32 15
  %18 = ptrtoint ptr %s_es.i22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %s_es.i22, align 4
  %s_feature_compat.i23 = getelementptr inbounds %struct.ext4_super_block, ptr %19, i32 0, i32 28
  %20 = ptrtoint ptr %s_feature_compat.i23 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %s_feature_compat.i23, align 4
  %or.i = or i32 %21, 134217728
  store i32 %or.i, ptr %s_feature_compat.i23, align 4
  tail call void @ext4_superblock_csum_set(ptr noundef %sb) #13
  %22 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_sbh7 = getelementptr inbounds %struct.ext4_sb_info, ptr %23, i32 0, i32 14
  %24 = ptrtoint ptr %s_sbh7 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %s_sbh7, align 64
  tail call void @unlock_buffer(ptr noundef %25) #13
  %26 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_sbh9 = getelementptr inbounds %struct.ext4_sb_info, ptr %27, i32 0, i32 14
  %28 = ptrtoint ptr %s_sbh9 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %s_sbh9, align 64
  %call10 = tail call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_xattr_update_super_block, i32 noundef 800, ptr noundef %handle, ptr noundef null, ptr noundef %29) #13
  br label %if.end11

if.end11:                                         ; preds = %lock_buffer.exit, %do.end.if.end11_crit_edge, %entry.if.end11_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_mark_iloc_dirty(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_fc_mark_ineligible(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_xattr_set_credits(ptr noundef %inode, i32 noundef %value_len, i1 noundef zeroext %is_create, ptr nocapture noundef writeonly %credits) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %credits to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %credits, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %1 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 33
  %3 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal = getelementptr inbounds %struct.ext4_sb_info, ptr %4, i32 0, i32 47
  %5 = ptrtoint ptr %s_journal to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_journal, align 8
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %xattr_sem = getelementptr i8, ptr %inode, i32 -376
  tail call void @down_read(ptr noundef %xattr_sem) #13
  %i_file_acl.i = getelementptr i8, ptr %inode, i32 -400
  %7 = ptrtoint ptr %i_file_acl.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %i_file_acl.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %tobool.not.i = icmp eq i64 %8, 0
  br i1 %tobool.not.i, label %if.end.if.else_crit_edge, label %if.end.i

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.end.i:                                         ; preds = %if.end
  %9 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_sb, align 4
  %call3.i = tail call ptr @ext4_sb_bread(ptr noundef %10, i64 noundef %8, i32 noundef 8192) #13
  %cmp.i.i = icmp ugt ptr %call3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.i.ext4_xattr_get_block.exit_crit_edge, label %if.end6.i

if.end.i.ext4_xattr_get_block.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ext4_xattr_get_block.exit

if.end6.i:                                        ; preds = %if.end.i
  %call7.i = tail call fastcc i32 @__ext4_xattr_check_block(ptr noundef %inode, ptr noundef %call3.i, ptr noundef nonnull @__func__.ext4_xattr_get_block, i32 noundef 2248) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end6.i.ext4_xattr_get_block.exit_crit_edge, label %if.then9.i

if.end6.i.ext4_xattr_get_block.exit_crit_edge:    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ext4_xattr_get_block.exit

if.then9.i:                                       ; preds = %if.end6.i
  %tobool.not.i.i = icmp eq ptr %call3.i, null
  br i1 %tobool.not.i.i, label %if.then9.i.brelse.exit.i_crit_edge, label %if.then.i.i

if.then9.i.brelse.exit.i_crit_edge:               ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %brelse.exit.i

if.then.i.i:                                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__brelse(ptr noundef nonnull %call3.i) #13
  br label %brelse.exit.i

brelse.exit.i:                                    ; preds = %if.then.i.i, %if.then9.i.brelse.exit.i_crit_edge
  %11 = inttoptr i32 %call7.i to ptr
  br label %ext4_xattr_get_block.exit

ext4_xattr_get_block.exit:                        ; preds = %brelse.exit.i, %if.end6.i.ext4_xattr_get_block.exit_crit_edge, %if.end.i.ext4_xattr_get_block.exit_crit_edge
  %retval.0.i = phi ptr [ %11, %brelse.exit.i ], [ %call3.i, %if.end.i.ext4_xattr_get_block.exit_crit_edge ], [ %call3.i, %if.end6.i.ext4_xattr_get_block.exit_crit_edge ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %ext4_xattr_get_block.exit.if.else_crit_edge

ext4_xattr_get_block.exit.if.else_crit_edge:      ; preds = %ext4_xattr_get_block.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then4:                                         ; preds = %ext4_xattr_get_block.exit
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %retval.0.i to i32
  br label %if.end9

if.else:                                          ; preds = %ext4_xattr_get_block.exit.if.else_crit_edge, %if.end.if.else_crit_edge
  %retval.0.i27 = phi ptr [ %retval.0.i, %ext4_xattr_get_block.exit.if.else_crit_edge ], [ null, %if.end.if.else_crit_edge ]
  %13 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_sb, align 4
  %call8 = tail call i32 @__ext4_xattr_set_credits(ptr noundef %14, ptr noundef %inode, ptr noundef %retval.0.i27, i32 noundef %value_len, i1 noundef zeroext %is_create)
  %15 = ptrtoint ptr %credits to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call8, ptr %credits, align 4
  %tobool.not.i22 = icmp eq ptr %retval.0.i27, null
  br i1 %tobool.not.i22, label %if.else.if.end9_crit_edge, label %if.then.i

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__brelse(ptr noundef nonnull %retval.0.i27) #13
  br label %if.end9

if.end9:                                          ; preds = %if.then.i, %if.else.if.end9_crit_edge, %if.then4
  %err.0 = phi i32 [ %12, %if.then4 ], [ 0, %if.else.if.end9_crit_edge ], [ 0, %if.then.i ]
  tail call void @up_read(ptr noundef %xattr_sem) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %if.end9 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_xattr_set(ptr noundef %inode, i32 noundef %name_index, ptr noundef %name, ptr noundef %value, i32 noundef %value_len, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %retries = alloca i32, align 4
  %credits = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retries) #13
  %2 = ptrtoint ptr %retries to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %retries, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %credits) #13
  %3 = ptrtoint ptr %credits to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %credits, align 4, !annotation !157
  %call = tail call i32 @dquot_initialize(ptr noundef %inode) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %retry.preheader, label %entry.cleanup23_crit_edge

entry.cleanup23_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup23

retry.preheader:                                  ; preds = %entry
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1 = icmp ne i32 %and, 0
  br label %retry

retry:                                            ; preds = %land.lhs.true.retry_crit_edge, %retry.preheader
  %call2 = call i32 @ext4_xattr_set_credits(ptr noundef %inode, i32 noundef %value_len, i1 noundef zeroext %tobool1, ptr noundef nonnull %credits)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %retry.cleanup23_crit_edge

retry.cleanup23_crit_edge:                        ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup23

if.end5:                                          ; preds = %retry
  %4 = ptrtoint ptr %credits to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %credits, align 4
  %6 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_cluster_ratio.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %s_cluster_ratio.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_cluster_ratio.i.i, align 4
  %mul.i.i = shl i32 %11, 3
  %call.i = call ptr @__ext4_journal_start_sb(ptr noundef %7, i32 noundef 2474, i32 noundef 10, i32 noundef %5, i32 noundef 0, i32 noundef %mul.i.i) #13
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %call.i to i32
  br label %if.end21

if.else:                                          ; preds = %if.end5
  %call12 = call i32 @ext4_xattr_set_handle(ptr noundef %call.i, ptr noundef %inode, i32 noundef %name_index, ptr noundef %name, ptr noundef %value, i32 noundef %value_len, i32 noundef %flags)
  %call13 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_xattr_set, i32 noundef 2482, ptr noundef %call.i) #13
  %13 = zext i32 %call12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %call12, label %if.else.if.end21.loopexit_crit_edge [
    i32 -28, label %land.lhs.true
    i32 0, label %if.else.if.end21_crit_edge
  ]

if.else.if.end21_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.else.if.end21.loopexit_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21.loopexit

land.lhs.true:                                    ; preds = %if.else
  %call14 = call i32 @ext4_should_retry_alloc(ptr noundef %1, ptr noundef nonnull %retries) #13
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %land.lhs.true.if.end21.loopexit_crit_edge, label %land.lhs.true.retry_crit_edge

land.lhs.true.retry_crit_edge:                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %retry

land.lhs.true.if.end21.loopexit_crit_edge:        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21.loopexit

if.end21.loopexit:                                ; preds = %land.lhs.true.if.end21.loopexit_crit_edge, %if.else.if.end21.loopexit_crit_edge
  %error.2.ph = phi i32 [ -28, %land.lhs.true.if.end21.loopexit_crit_edge ], [ %call12, %if.else.if.end21.loopexit_crit_edge ]
  br label %if.end21

if.end21:                                         ; preds = %if.end21.loopexit, %if.else.if.end21_crit_edge, %if.then10
  %error.2 = phi i32 [ %12, %if.then10 ], [ %error.2.ph, %if.end21.loopexit ], [ %call13, %if.else.if.end21_crit_edge ]
  %14 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_sb, align 4
  call void @ext4_fc_mark_ineligible(ptr noundef %15, i32 noundef 0, ptr noundef null) #13
  br label %cleanup23

cleanup23:                                        ; preds = %if.end21, %retry.cleanup23_crit_edge, %entry.cleanup23_crit_edge
  %retval.0 = phi i32 [ %error.2, %if.end21 ], [ %call, %entry.cleanup23_crit_edge ], [ %call2, %retry.cleanup23_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %credits) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retries) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dquot_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_journal_stop(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_should_retry_alloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_expand_extra_isize_ea(ptr noundef %inode, i32 noundef %new_extra_isize, ptr noundef %raw_inode, ptr noundef %handle) local_unnamed_addr #0 align 64 {
entry:
  %i.i.i = alloca %struct.ext4_xattr_info, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %s_es = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %s_es to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_es, align 4
  %s_min_extra_isize1 = getelementptr inbounds %struct.ext4_super_block, ptr %5, i32 0, i32 53
  %6 = ptrtoint ptr %s_min_extra_isize1 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %s_min_extra_isize1, align 4
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %conv = zext i16 %8 to i32
  %i_extra_isize = getelementptr i8, ptr %inode, i32 988
  %9 = ptrtoint ptr %i_extra_isize to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %i_extra_isize, align 4
  %conv3298 = zext i16 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3298, i32 %new_extra_isize)
  %cmp.not300 = icmp slt i32 %conv3298, %new_extra_isize
  br i1 %cmp.not300, label %if.end.lr.ph, label %entry.cleanup93_crit_edge

entry.cleanup93_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup93

if.end.lr.ph:                                     ; preds = %entry
  %sub299 = sub i32 %new_extra_isize, %conv3298
  %add.ptr = getelementptr i8, ptr %raw_inode, i32 128
  %i_file_acl = getelementptr i8, ptr %inode, i32 -400
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool51.not = icmp eq i16 %7, 0
  %11 = getelementptr inbounds %struct.ext4_xattr_info, ptr %i.i.i, i32 0, i32 1
  %12 = getelementptr inbounds %struct.ext4_xattr_info, ptr %i.i.i, i32 0, i32 2
  %13 = getelementptr inbounds %struct.ext4_xattr_info, ptr %i.i.i, i32 0, i32 3
  %14 = getelementptr inbounds %struct.ext4_xattr_info, ptr %i.i.i, i32 0, i32 4
  %i_state_flags.i.i.i.i = getelementptr i8, ptr %inode, i32 -384
  br label %if.end

if.end:                                           ; preds = %retry.backedge.if.end_crit_edge, %if.end.lr.ph
  %sub305 = phi i32 [ %sub299, %if.end.lr.ph ], [ %sub, %retry.backedge.if.end_crit_edge ]
  %conv3304 = phi i32 [ %conv3298, %if.end.lr.ph ], [ %conv3, %retry.backedge.if.end_crit_edge ]
  %tobool63.not302 = phi i1 [ false, %if.end.lr.ph ], [ true, %retry.backedge.if.end_crit_edge ]
  %new_extra_isize.addr.0301 = phi i32 [ %new_extra_isize, %if.end.lr.ph ], [ %conv, %retry.backedge.if.end_crit_edge ]
  %add.ptr11 = getelementptr i8, ptr %add.ptr, i32 %conv3304
  %add.ptr12 = getelementptr %struct.ext4_xattr_ibody_header, ptr %add.ptr11, i32 1
  %15 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i165 = getelementptr inbounds %struct.super_block, ptr %16, i32 0, i32 33
  %17 = ptrtoint ptr %s_fs_info.i165 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_fs_info.i165, align 16
  %s_inode_size = getelementptr inbounds %struct.ext4_sb_info, ptr %18, i32 0, i32 29
  %19 = ptrtoint ptr %s_inode_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %s_inode_size, align 4
  %add.ptr15 = getelementptr i8, ptr %raw_inode, i32 %20
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr12 to i32
  %call16 = tail call fastcc i32 @__xattr_check_inode(ptr noundef %inode, ptr noundef %add.ptr11, ptr noundef %add.ptr15, ptr noundef nonnull @__func__.ext4_expand_extra_isize_ea, i32 noundef 2705)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool.not = icmp eq i32 %call16, 0
  br i1 %tobool.not, label %if.end18, label %if.end.land.lhs.true82_crit_edge

if.end.land.lhs.true82_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true82

if.end18:                                         ; preds = %if.end
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr15 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %21 = ptrtoint ptr %add.ptr12 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.not29.i = icmp eq i32 %22, 0
  br i1 %cmp.not29.i, label %if.end18.ext4_xattr_free_space.exit_crit_edge, label %if.end18.for.body.i_crit_edge

if.end18.for.body.i_crit_edge:                    ; preds = %if.end18
  br label %for.body.i

if.end18.ext4_xattr_free_space.exit_crit_edge:    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %ext4_xattr_free_space.exit

for.body.i:                                       ; preds = %if.end5.i.for.body.i_crit_edge, %if.end18.for.body.i_crit_edge
  %min_offs.0 = phi i32 [ %min_offs.1, %if.end5.i.for.body.i_crit_edge ], [ %sub.ptr.sub, %if.end18.for.body.i_crit_edge ]
  %total_ino.0 = phi i32 [ %add10.i, %if.end5.i.for.body.i_crit_edge ], [ 8, %if.end18.for.body.i_crit_edge ]
  %last.addr.030.i = phi ptr [ %add.ptr.i166, %if.end5.i.for.body.i_crit_edge ], [ %add.ptr12, %if.end18.for.body.i_crit_edge ]
  %e_value_inum.i = getelementptr inbounds %struct.ext4_xattr_entry, ptr %last.addr.030.i, i32 0, i32 3
  %23 = ptrtoint ptr %e_value_inum.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %e_value_inum.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %for.body.i.if.end5.i_crit_edge

for.body.i.if.end5.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %e_value_size.i = getelementptr inbounds %struct.ext4_xattr_entry, ptr %last.addr.030.i, i32 0, i32 4
  %25 = ptrtoint ptr %e_value_size.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %e_value_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool1.not.i = icmp eq i32 %26, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end5.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end5.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %e_value_offs.i = getelementptr inbounds %struct.ext4_xattr_entry, ptr %last.addr.030.i, i32 0, i32 2
  %27 = ptrtoint ptr %e_value_offs.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %e_value_offs.i, align 2
  %29 = tail call i16 @llvm.bswap.i16(i16 %28) #13
  %conv.i = zext i16 %29 to i32
  %30 = tail call i32 @llvm.umin.i32(i32 %min_offs.0, i32 %conv.i)
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then.i, %land.lhs.true.i.if.end5.i_crit_edge, %for.body.i.if.end5.i_crit_edge
  %min_offs.1 = phi i32 [ %min_offs.0, %land.lhs.true.i.if.end5.i_crit_edge ], [ %min_offs.0, %for.body.i.if.end5.i_crit_edge ], [ %30, %if.then.i ]
  %31 = ptrtoint ptr %last.addr.030.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %last.addr.030.i, align 4
  %conv8.i = zext i8 %32 to i32
  %add9.i = add nuw nsw i32 %conv8.i, 19
  %and.i = and i32 %add9.i, 508
  %add10.i = add i32 %and.i, %total_ino.0
  %add.ptr.i166 = getelementptr i8, ptr %last.addr.030.i, i32 %and.i
  %33 = ptrtoint ptr %add.ptr.i166 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr.i166, align 4
  %cmp.not.i = icmp eq i32 %34, 0
  br i1 %cmp.not.i, label %ext4_xattr_free_space.exit.loopexit, label %if.end5.i.for.body.i_crit_edge

if.end5.i.for.body.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

ext4_xattr_free_space.exit.loopexit:              ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  %.pre = ptrtoint ptr %add.ptr.i166 to i32
  br label %ext4_xattr_free_space.exit

ext4_xattr_free_space.exit:                       ; preds = %ext4_xattr_free_space.exit.loopexit, %if.end18.ext4_xattr_free_space.exit_crit_edge
  %sub.ptr.lhs.cast.i.pre-phi = phi i32 [ %.pre, %ext4_xattr_free_space.exit.loopexit ], [ %sub.ptr.rhs.cast, %if.end18.ext4_xattr_free_space.exit_crit_edge ]
  %min_offs.2 = phi i32 [ %min_offs.1, %ext4_xattr_free_space.exit.loopexit ], [ %sub.ptr.sub, %if.end18.ext4_xattr_free_space.exit_crit_edge ]
  %total_ino.1 = phi i32 [ %add10.i, %ext4_xattr_free_space.exit.loopexit ], [ 8, %if.end18.ext4_xattr_free_space.exit_crit_edge ]
  %sub.ptr.sub.neg.i = add i32 %sub.ptr.rhs.cast, -4
  %sub.i = add i32 %sub.ptr.sub.neg.i, %min_offs.2
  %sub17.i = sub i32 %sub.i, %sub.ptr.lhs.cast.i.pre-phi
  call void @__sanitizer_cov_trace_cmp4(i32 %sub17.i, i32 %sub305)
  %cmp20.not = icmp ult i32 %sub17.i, %sub305
  br i1 %cmp20.not, label %if.end23, label %ext4_xattr_free_space.exit.shift_crit_edge

ext4_xattr_free_space.exit.shift_crit_edge:       ; preds = %ext4_xattr_free_space.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %shift

if.end23:                                         ; preds = %ext4_xattr_free_space.exit
  %35 = ptrtoint ptr %i_file_acl to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %i_file_acl, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %36)
  %tobool25.not = icmp eq i64 %36, 0
  %37 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %i_sb, align 4
  br i1 %tobool25.not, label %if.else, label %if.then26

if.then26:                                        ; preds = %if.end23
  %call30 = tail call ptr @ext4_sb_bread(ptr noundef %38, i64 noundef %36, i32 noundef 8192) #13
  %cmp.i = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cleanup80, label %if.end34

if.end34:                                         ; preds = %if.then26
  %call35 = tail call fastcc i32 @__ext4_xattr_check_block(ptr noundef %inode, ptr noundef %call30, ptr noundef nonnull @__func__.ext4_expand_extra_isize_ea, i32 noundef 2725)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.then37

if.then37:                                        ; preds = %if.end34
  %tobool.not.i169 = icmp eq ptr %call30, null
  br i1 %tobool.not.i169, label %if.then37.land.lhs.true82_crit_edge, label %if.then.i170

if.then37.land.lhs.true82_crit_edge:              ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true82

if.then.i170:                                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__brelse(ptr noundef nonnull %call30) #13
  br label %land.lhs.true82

if.end38:                                         ; preds = %if.end34
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call30, i32 0, i32 5
  %39 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %b_data, align 4
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %call30, i32 0, i32 4
  %41 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %b_size, align 8
  %add.ptr45 = getelementptr %struct.ext4_xattr_header, ptr %40, i32 1
  %43 = ptrtoint ptr %add.ptr45 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %add.ptr45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp.not29.i171 = icmp eq i32 %44, 0
  br i1 %cmp.not29.i171, label %if.end38.ext4_xattr_free_space.exit197_crit_edge, label %if.end38.for.body.i176_crit_edge

if.end38.for.body.i176_crit_edge:                 ; preds = %if.end38
  br label %for.body.i176

if.end38.ext4_xattr_free_space.exit197_crit_edge: ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  br label %ext4_xattr_free_space.exit197

for.body.i176:                                    ; preds = %if.end5.i185.for.body.i176_crit_edge, %if.end38.for.body.i176_crit_edge
  %min_offs.3 = phi i32 [ %min_offs.4, %if.end5.i185.for.body.i176_crit_edge ], [ %42, %if.end38.for.body.i176_crit_edge ]
  %last.addr.030.i173 = phi ptr [ %add.ptr.i189, %if.end5.i185.for.body.i176_crit_edge ], [ %add.ptr45, %if.end38.for.body.i176_crit_edge ]
  %e_value_inum.i174 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %last.addr.030.i173, i32 0, i32 3
  %45 = ptrtoint ptr %e_value_inum.i174 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %e_value_inum.i174, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i175 = icmp eq i32 %46, 0
  br i1 %tobool.not.i175, label %land.lhs.true.i179, label %for.body.i176.if.end5.i185_crit_edge

for.body.i176.if.end5.i185_crit_edge:             ; preds = %for.body.i176
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5.i185

land.lhs.true.i179:                               ; preds = %for.body.i176
  %e_value_size.i177 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %last.addr.030.i173, i32 0, i32 4
  %47 = ptrtoint ptr %e_value_size.i177 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %e_value_size.i177, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool1.not.i178 = icmp eq i32 %48, 0
  br i1 %tobool1.not.i178, label %land.lhs.true.i179.if.end5.i185_crit_edge, label %if.then.i183

land.lhs.true.i179.if.end5.i185_crit_edge:        ; preds = %land.lhs.true.i179
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5.i185

if.then.i183:                                     ; preds = %land.lhs.true.i179
  call void @__sanitizer_cov_trace_pc() #15
  %e_value_offs.i180 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %last.addr.030.i173, i32 0, i32 2
  %49 = ptrtoint ptr %e_value_offs.i180 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %e_value_offs.i180, align 2
  %51 = tail call i16 @llvm.bswap.i16(i16 %50) #13
  %conv.i181 = zext i16 %51 to i32
  %52 = tail call i32 @llvm.umin.i32(i32 %min_offs.3, i32 %conv.i181)
  br label %if.end5.i185

if.end5.i185:                                     ; preds = %if.then.i183, %land.lhs.true.i179.if.end5.i185_crit_edge, %for.body.i176.if.end5.i185_crit_edge
  %min_offs.4 = phi i32 [ %min_offs.3, %land.lhs.true.i179.if.end5.i185_crit_edge ], [ %min_offs.3, %for.body.i176.if.end5.i185_crit_edge ], [ %52, %if.then.i183 ]
  %53 = ptrtoint ptr %last.addr.030.i173 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %last.addr.030.i173, align 4
  %conv13.i186 = zext i8 %54 to i32
  %add15.i187 = add nuw nsw i32 %conv13.i186, 19
  %and16.i188 = and i32 %add15.i187, 508
  %add.ptr.i189 = getelementptr i8, ptr %last.addr.030.i173, i32 %and16.i188
  %55 = ptrtoint ptr %add.ptr.i189 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %add.ptr.i189, align 4
  %cmp.not.i190 = icmp eq i32 %56, 0
  br i1 %cmp.not.i190, label %if.end5.i185.ext4_xattr_free_space.exit197_crit_edge, label %if.end5.i185.for.body.i176_crit_edge

if.end5.i185.for.body.i176_crit_edge:             ; preds = %if.end5.i185
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i176

if.end5.i185.ext4_xattr_free_space.exit197_crit_edge: ; preds = %if.end5.i185
  call void @__sanitizer_cov_trace_pc() #15
  br label %ext4_xattr_free_space.exit197

ext4_xattr_free_space.exit197:                    ; preds = %if.end5.i185.ext4_xattr_free_space.exit197_crit_edge, %if.end38.ext4_xattr_free_space.exit197_crit_edge
  %min_offs.5 = phi i32 [ %42, %if.end38.ext4_xattr_free_space.exit197_crit_edge ], [ %min_offs.4, %if.end5.i185.ext4_xattr_free_space.exit197_crit_edge ]
  %last.addr.0.lcssa.i191 = phi ptr [ %add.ptr45, %if.end38.ext4_xattr_free_space.exit197_crit_edge ], [ %add.ptr.i189, %if.end5.i185.ext4_xattr_free_space.exit197_crit_edge ]
  %sub.ptr.lhs.cast.i192 = ptrtoint ptr %last.addr.0.lcssa.i191 to i32
  %sub.ptr.rhs.cast.i193 = ptrtoint ptr %40 to i32
  %sub.ptr.sub.neg.i194 = add i32 %sub.ptr.rhs.cast.i193, -4
  %sub.i195 = add i32 %sub.ptr.sub.neg.i194, %min_offs.5
  %sub17.i196 = sub i32 %sub.i195, %sub.ptr.lhs.cast.i192
  %tobool.not.i198 = icmp eq ptr %call30, null
  br i1 %tobool.not.i198, label %ext4_xattr_free_space.exit197.brelse.exit200_crit_edge, label %if.then.i199

ext4_xattr_free_space.exit197.brelse.exit200_crit_edge: ; preds = %ext4_xattr_free_space.exit197
  call void @__sanitizer_cov_trace_pc() #15
  br label %brelse.exit200

if.then.i199:                                     ; preds = %ext4_xattr_free_space.exit197
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__brelse(ptr noundef nonnull %call30) #13
  br label %brelse.exit200

brelse.exit200:                                   ; preds = %if.then.i199, %ext4_xattr_free_space.exit197.brelse.exit200_crit_edge
  %add = add i32 %sub17.i196, %sub17.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub305)
  %cmp47 = icmp ult i32 %add, %sub305
  br i1 %cmp47, label %if.then49, label %brelse.exit200.while.body.lr.ph.i_crit_edge

brelse.exit200.while.body.lr.ph.i_crit_edge:      ; preds = %brelse.exit200
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.lr.ph.i

if.then49:                                        ; preds = %brelse.exit200
  %or.cond = select i1 %tobool63.not302, i1 true, i1 %tobool51.not
  br i1 %or.cond, label %if.then49.land.lhs.true82_crit_edge, label %if.then49.retry.backedge_crit_edge

if.then49.retry.backedge_crit_edge:               ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #15
  br label %retry.backedge

if.then49.land.lhs.true82_crit_edge:              ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true82

if.else:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %38, i32 0, i32 3
  %57 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %s_blocksize, align 16
  br label %while.body.lr.ph.i

while.body.lr.ph.i:                               ; preds = %if.else, %brelse.exit200.while.body.lr.ph.i_crit_edge
  %bfree.2 = phi i32 [ %58, %if.else ], [ %sub17.i196, %brelse.exit200.while.body.lr.ph.i_crit_edge ]
  %59 = ptrtoint ptr %i_extra_isize to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %i_extra_isize, align 4
  %conv.i202 = zext i16 %60 to i32
  %add.ptr1.i = getelementptr i8, ptr %add.ptr, i32 %conv.i202
  %add.ptr4.i = getelementptr %struct.ext4_xattr_ibody_header, ptr %add.ptr1.i, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %if.end66.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %total_ino.2 = phi i32 [ %total_ino.1, %while.body.lr.ph.i ], [ %sub.i209, %if.end66.i.while.body.i_crit_edge ]
  %bfree.addr.0120.i = phi i32 [ %bfree.2, %while.body.lr.ph.i ], [ %sub68.i, %if.end66.i.while.body.i_crit_edge ]
  %ifree.addr.0118.i = phi i32 [ %sub17.i, %while.body.lr.ph.i ], [ %add67.i, %if.end66.i.while.body.i_crit_edge ]
  %61 = ptrtoint ptr %add.ptr4.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %add.ptr4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp5.not107.i = icmp eq i32 %62, 0
  br i1 %cmp5.not107.i, label %while.body.i.land.lhs.true62_crit_edge, label %while.body.i.for.body.i203_crit_edge

while.body.i.for.body.i203_crit_edge:             ; preds = %while.body.i
  br label %for.body.i203

while.body.i.land.lhs.true62_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true62

for.body.i203:                                    ; preds = %for.inc.i.for.body.i203_crit_edge, %while.body.i.for.body.i203_crit_edge
  %min_total_size.0114.i = phi i32 [ %min_total_size.1.i, %for.inc.i.for.body.i203_crit_edge ], [ -1, %while.body.i.for.body.i203_crit_edge ]
  %last.0112.i = phi ptr [ %add.ptr41.i, %for.inc.i.for.body.i203_crit_edge ], [ %add.ptr4.i, %while.body.i.for.body.i203_crit_edge ]
  %entry2.0110.i = phi ptr [ %entry2.1.i, %for.inc.i.for.body.i203_crit_edge ], [ null, %while.body.i.for.body.i203_crit_edge ]
  %small_entry.0108.i = phi ptr [ %small_entry.1.i, %for.inc.i.for.body.i203_crit_edge ], [ null, %while.body.i.for.body.i203_crit_edge ]
  %63 = ptrtoint ptr %last.0112.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %last.0112.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %64)
  %cmp8.i = icmp eq i8 %64, 4
  br i1 %cmp8.i, label %land.lhs.true.i204, label %for.body.i203.if.end.i_crit_edge

for.body.i203.if.end.i_crit_edge:                 ; preds = %for.body.i203
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.lhs.true.i204:                               ; preds = %for.body.i203
  %e_name_index.i = getelementptr inbounds %struct.ext4_xattr_entry, ptr %last.0112.i, i32 0, i32 1
  %65 = ptrtoint ptr %e_name_index.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %e_name_index.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %66)
  %cmp11.i = icmp eq i8 %66, 7
  br i1 %cmp11.i, label %land.lhs.true13.i, label %land.lhs.true.i204.if.end.i_crit_edge

land.lhs.true.i204.if.end.i_crit_edge:            ; preds = %land.lhs.true.i204
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.lhs.true13.i:                                ; preds = %land.lhs.true.i204
  %e_name.i = getelementptr inbounds %struct.ext4_xattr_entry, ptr %last.0112.i, i32 0, i32 6
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(4) %e_name.i, ptr noundef nonnull dereferenceable(4) @.str.31, i32 4) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i205 = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i205, label %land.lhs.true13.i.for.inc.i_crit_edge, label %land.lhs.true13.i.if.end.i_crit_edge

land.lhs.true13.i.if.end.i_crit_edge:             ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.lhs.true13.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.end.i:                                         ; preds = %land.lhs.true13.i.if.end.i_crit_edge, %land.lhs.true.i204.if.end.i_crit_edge, %for.body.i203.if.end.i_crit_edge
  %conv16.i = zext i8 %64 to i32
  %add17.i = add nuw nsw i32 %conv16.i, 19
  %and.i206 = and i32 %add17.i, 508
  %e_value_inum.i207 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %last.0112.i, i32 0, i32 3
  %67 = ptrtoint ptr %e_value_inum.i207 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %e_value_inum.i207, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool18.not.i = icmp eq i32 %68, 0
  br i1 %tobool18.not.i, label %if.then19.i, label %if.end.i.if.end23.i_crit_edge

if.end.i.if.end23.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23.i

if.then19.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %e_value_size.i208 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %last.0112.i, i32 0, i32 4
  %69 = ptrtoint ptr %e_value_size.i208 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %e_value_size.i208, align 4
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #13
  %add20.i = add i32 %71, 3
  %and21.i = and i32 %add20.i, -4
  %add22.i = add i32 %and21.i, %and.i206
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then19.i, %if.end.i.if.end23.i_crit_edge
  %total_size.0.i = phi i32 [ %and.i206, %if.end.i.if.end23.i_crit_edge ], [ %add22.i, %if.then19.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %total_size.0.i, i32 %bfree.addr.0120.i)
  %cmp24.not.i = icmp ule i32 %total_size.0.i, %bfree.addr.0120.i
  call void @__sanitizer_cov_trace_cmp4(i32 %total_size.0.i, i32 %min_total_size.0114.i)
  %cmp27.i = icmp ult i32 %total_size.0.i, %min_total_size.0114.i
  %or.cond.i = select i1 %cmp24.not.i, i1 %cmp27.i, i1 false
  br i1 %or.cond.i, label %if.then29.i, label %if.end23.i.for.inc.i_crit_edge

if.end23.i.for.inc.i_crit_edge:                   ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then29.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #15
  %add30.i = add i32 %total_size.0.i, %ifree.addr.0118.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add30.i, i32 %sub305)
  %cmp31.i = icmp ult i32 %add30.i, %sub305
  %last.0.small_entry.0.i = select i1 %cmp31.i, ptr %last.0112.i, ptr %small_entry.0108.i
  %entry2.0.last.0.i = select i1 %cmp31.i, ptr %entry2.0110.i, ptr %last.0112.i
  %min_total_size.0.total_size.0.i = select i1 %cmp31.i, i32 %min_total_size.0114.i, i32 %total_size.0.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then29.i, %if.end23.i.for.inc.i_crit_edge, %land.lhs.true13.i.for.inc.i_crit_edge
  %and40.pre-phi.i = phi i32 [ %and.i206, %if.then29.i ], [ %and.i206, %if.end23.i.for.inc.i_crit_edge ], [ 20, %land.lhs.true13.i.for.inc.i_crit_edge ]
  %small_entry.1.i = phi ptr [ %last.0.small_entry.0.i, %if.then29.i ], [ %small_entry.0108.i, %if.end23.i.for.inc.i_crit_edge ], [ %small_entry.0108.i, %land.lhs.true13.i.for.inc.i_crit_edge ]
  %entry2.1.i = phi ptr [ %entry2.0.last.0.i, %if.then29.i ], [ %entry2.0110.i, %if.end23.i.for.inc.i_crit_edge ], [ %entry2.0110.i, %land.lhs.true13.i.for.inc.i_crit_edge ]
  %min_total_size.1.i = phi i32 [ %min_total_size.0.total_size.0.i, %if.then29.i ], [ %min_total_size.0114.i, %if.end23.i.for.inc.i_crit_edge ], [ %min_total_size.0114.i, %land.lhs.true13.i.for.inc.i_crit_edge ]
  %add.ptr41.i = getelementptr i8, ptr %last.0112.i, i32 %and40.pre-phi.i
  %72 = ptrtoint ptr %add.ptr41.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %add.ptr41.i, align 4
  %cmp5.not.i = icmp eq i32 %73, 0
  br i1 %cmp5.not.i, label %for.end.i, label %for.inc.i.for.body.i203_crit_edge

for.inc.i.for.body.i203_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i203

for.end.i:                                        ; preds = %for.inc.i
  %cmp42.i = icmp eq ptr %entry2.1.i, null
  br i1 %cmp42.i, label %if.then44.i, label %for.end.i.if.end49.i_crit_edge

for.end.i.if.end49.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49.i

if.then44.i:                                      ; preds = %for.end.i
  %cmp45.i = icmp eq ptr %small_entry.1.i, null
  br i1 %cmp45.i, label %if.then44.i.land.lhs.true62_crit_edge, label %if.then44.i.if.end49.i_crit_edge

if.then44.i.if.end49.i_crit_edge:                 ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49.i

if.then44.i.land.lhs.true62_crit_edge:            ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true62

if.end49.i:                                       ; preds = %if.then44.i.if.end49.i_crit_edge, %for.end.i.if.end49.i_crit_edge
  %entry2.2.i = phi ptr [ %entry2.1.i, %for.end.i.if.end49.i_crit_edge ], [ %small_entry.1.i, %if.then44.i.if.end49.i_crit_edge ]
  %74 = ptrtoint ptr %entry2.2.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %entry2.2.i, align 4
  %conv51.i = zext i8 %75 to i32
  %add53.i = add nuw nsw i32 %conv51.i, 19
  %and54.i = and i32 %add53.i, 508
  %e_value_inum55.i = getelementptr inbounds %struct.ext4_xattr_entry, ptr %entry2.2.i, i32 0, i32 3
  %76 = ptrtoint ptr %e_value_inum55.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %e_value_inum55.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool56.not.i = icmp eq i32 %77, 0
  br i1 %tobool56.not.i, label %if.then57.i, label %if.end49.i.if.end62.i_crit_edge

if.end49.i.if.end62.i_crit_edge:                  ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end62.i

if.then57.i:                                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #15
  %e_value_size58.i = getelementptr inbounds %struct.ext4_xattr_entry, ptr %entry2.2.i, i32 0, i32 4
  %78 = ptrtoint ptr %e_value_size58.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %e_value_size58.i, align 4
  %80 = tail call i32 @llvm.bswap.i32(i32 %79) #13
  %add59.i = add i32 %80, 3
  %and60.i = and i32 %add59.i, -4
  %add61.i = add i32 %and60.i, %and54.i
  br label %if.end62.i

if.end62.i:                                       ; preds = %if.then57.i, %if.end49.i.if.end62.i_crit_edge
  %total_size.1.i = phi i32 [ %and54.i, %if.end49.i.if.end62.i_crit_edge ], [ %add61.i, %if.then57.i ]
  %e_value_size.i.i = getelementptr inbounds %struct.ext4_xattr_entry, ptr %entry2.2.i, i32 0, i32 4
  %81 = ptrtoint ptr %e_value_size.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %e_value_size.i.i, align 4
  %83 = tail call i32 @llvm.bswap.i32(i32 %82) #13
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %i.i.i) #13
  %84 = ptrtoint ptr %i.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr null, ptr %i.i.i, align 4
  %85 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr null, ptr %11, align 4
  %86 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %12, align 4
  %e_name_index.i.i = getelementptr inbounds %struct.ext4_xattr_entry, ptr %entry2.2.i, i32 0, i32 1
  %87 = ptrtoint ptr %e_name_index.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %e_name_index.i.i, align 1
  %conv.i.i = zext i8 %88 to i32
  %89 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %conv.i.i, ptr %13, align 4
  %90 = ptrtoint ptr %e_value_inum55.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %e_value_inum55.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool.i.i = icmp ne i32 %91, 0
  %lnot.ext.i.i = zext i1 %tobool.i.i to i32
  %92 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %lnot.ext.i.i, ptr %14, align 4
  %93 = ptrtoint ptr %i_extra_isize to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %i_extra_isize, align 4
  %conv3.i.i = zext i16 %94 to i32
  %add.ptr4.i.i = getelementptr i8, ptr %add.ptr, i32 %conv3.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %95 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %95, i32 noundef 3392, i32 noundef 32) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %96 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i145.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %96, i32 noundef 3392, i32 noundef 24) #19
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %83, i32 noundef 3136) #18
  %97 = ptrtoint ptr %entry2.2.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %entry2.2.i, align 4
  %conv8.i.i = zext i8 %98 to i32
  %add.i.i = add nuw nsw i32 %conv8.i.i, 1
  %call9.i139.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i, i32 noundef 3136) #18
  %tobool10.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  %tobool11.not.i.i = icmp eq ptr %call7.i.i145.i.i, null
  %or.cond.i.i = select i1 %tobool10.not.i.i, i1 true, i1 %tobool11.not.i.i
  %tobool13.not.i.i = icmp eq ptr %call9.i.i.i, null
  %or.cond114.i.i = select i1 %or.cond.i.i, i1 true, i1 %tobool13.not.i.i
  %tobool15.not.i.i = icmp eq ptr %call9.i139.i.i, null
  %or.cond115.i.i = select i1 %or.cond114.i.i, i1 true, i1 %tobool15.not.i.i
  br i1 %or.cond115.i.i, label %if.end62.i.out.i.i_crit_edge, label %if.end.i.i

if.end62.i.out.i.i_crit_edge:                     ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.i.i

if.end.i.i:                                       ; preds = %if.end62.i
  %not_found.i.i = getelementptr inbounds %struct.ext4_xattr_search, ptr %call7.i.i.i.i, i32 0, i32 4
  %99 = ptrtoint ptr %not_found.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 -61, ptr %not_found.i.i, align 8
  %not_found17.i.i = getelementptr inbounds %struct.ext4_xattr_search, ptr %call7.i.i145.i.i, i32 0, i32 4
  %100 = ptrtoint ptr %not_found17.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 -61, ptr %not_found17.i.i, align 8
  %iloc.i.i = getelementptr inbounds %struct.ext4_xattr_ibody_find, ptr %call7.i.i.i.i, i32 0, i32 1
  %101 = ptrtoint ptr %iloc.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr null, ptr %iloc.i.i, align 4
  %bh18.i.i = getelementptr inbounds %struct.ext4_xattr_block_find, ptr %call7.i.i145.i.i, i32 0, i32 1
  %102 = ptrtoint ptr %bh18.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr null, ptr %bh18.i.i, align 4
  %103 = ptrtoint ptr %e_value_inum55.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %e_value_inum55.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool20.not.i.i = icmp eq i32 %104, 0
  br i1 %tobool20.not.i.i, label %if.else.i.i, label %if.then21.i.i

if.then21.i.i:                                    ; preds = %if.end.i.i
  %call22.i.i = tail call fastcc i32 @ext4_xattr_inode_get(ptr noundef %inode, ptr noundef nonnull %entry2.2.i, ptr noundef nonnull %call9.i.i.i, i32 noundef %83) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i)
  %tobool23.not.i.i = icmp eq i32 %call22.i.i, 0
  br i1 %tobool23.not.i.i, label %if.then21.i.i.if.end29.i.i_crit_edge, label %if.then21.i.i.out.i.i_crit_edge

if.then21.i.i.out.i.i_crit_edge:                  ; preds = %if.then21.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.i.i

if.then21.i.i.if.end29.i.i_crit_edge:             ; preds = %if.then21.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29.i.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %e_value_offs.i.i = getelementptr inbounds %struct.ext4_xattr_entry, ptr %entry2.2.i, i32 0, i32 2
  %105 = ptrtoint ptr %e_value_offs.i.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %e_value_offs.i.i, align 2
  %107 = tail call i16 @llvm.bswap.i16(i16 %106) #13
  %conv26.i.i = zext i16 %107 to i32
  %add.ptr27.i.i = getelementptr %struct.ext4_xattr_ibody_header, ptr %add.ptr4.i.i, i32 1
  %add.ptr28.i.i = getelementptr i8, ptr %add.ptr27.i.i, i32 %conv26.i.i
  %108 = call ptr @memcpy(ptr %call9.i.i.i, ptr %add.ptr28.i.i, i32 %83)
  br label %if.end29.i.i

if.end29.i.i:                                     ; preds = %if.else.i.i, %if.then21.i.i.if.end29.i.i_crit_edge
  %e_name.i.i = getelementptr inbounds %struct.ext4_xattr_entry, ptr %entry2.2.i, i32 0, i32 6
  %109 = ptrtoint ptr %entry2.2.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %entry2.2.i, align 4
  %conv31.i.i = zext i8 %110 to i32
  %111 = call ptr @memcpy(ptr %call9.i139.i.i, ptr %e_name.i.i, i32 %conv31.i.i)
  %arrayidx.i.i = getelementptr i8, ptr %call9.i139.i.i, i32 %conv31.i.i
  %112 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 0, ptr %arrayidx.i.i, align 1
  %113 = ptrtoint ptr %i.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %call9.i139.i.i, ptr %i.i.i, align 4
  %call35.i.i = tail call i32 @ext4_get_inode_loc(ptr noundef %inode, ptr noundef %iloc.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i.i)
  %tobool36.not.i.i = icmp eq i32 %call35.i.i, 0
  br i1 %tobool36.not.i.i, label %if.end38.i.i, label %if.end29.i.i.out.i.i_crit_edge

if.end29.i.i.out.i.i_crit_edge:                   ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.i.i

if.end38.i.i:                                     ; preds = %if.end29.i.i
  %call39.i.i = call i32 @ext4_xattr_ibody_find(ptr noundef %inode, ptr noundef nonnull %i.i.i, ptr noundef nonnull %call7.i.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i.i)
  %tobool40.not.i.i = icmp eq i32 %call39.i.i, 0
  br i1 %tobool40.not.i.i, label %if.end42.i.i, label %if.end38.i.i.out.i.i_crit_edge

if.end38.i.i.out.i.i_crit_edge:                   ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.i.i

if.end42.i.i:                                     ; preds = %if.end38.i.i
  %114 = ptrtoint ptr %i_extra_isize to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %i_extra_isize, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %115)
  %cmp.i146.i.i = icmp eq i16 %115, 0
  br i1 %cmp.i146.i.i, label %if.end42.i.i.out.i.i_crit_edge, label %if.end.i147.i.i

if.end42.i.i.out.i.i_crit_edge:                   ; preds = %if.end42.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.i.i

if.end.i147.i.i:                                  ; preds = %if.end42.i.i
  %call3.i.i.i = call fastcc i32 @ext4_xattr_set_entry(ptr noundef nonnull %i.i.i, ptr noundef nonnull %call7.i.i.i.i, ptr noundef %handle, ptr noundef %inode, i1 noundef zeroext false) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call3.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end5.i.i.i, label %if.end.i147.i.i.out.i.i_crit_edge

if.end.i147.i.i.out.i.i_crit_edge:                ; preds = %if.end.i147.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.i.i

if.end5.i.i.i:                                    ; preds = %if.end.i147.i.i
  %116 = ptrtoint ptr %iloc.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %iloc.i.i, align 4
  %b_data.i.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %117, i32 0, i32 5
  %118 = ptrtoint ptr %b_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %b_data.i.i.i.i, align 4
  %offset.i.i.i.i = getelementptr inbounds %struct.ext4_xattr_ibody_find, ptr %call7.i.i.i.i, i32 0, i32 1, i32 1
  %120 = ptrtoint ptr %offset.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %offset.i.i.i.i, align 8
  %add.ptr.i26.i.i.i = getelementptr i8, ptr %119, i32 128
  %add.ptr.i148.i.i = getelementptr i8, ptr %add.ptr.i26.i.i.i, i32 %121
  %122 = ptrtoint ptr %i_extra_isize to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %i_extra_isize, align 4
  %conv9.i.i.i = zext i16 %123 to i32
  %add.ptr10.i.i.i = getelementptr i8, ptr %add.ptr.i148.i.i, i32 %conv9.i.i.i
  %124 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %call7.i.i.i.i, align 8
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %125, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %cmp11.i.i.i = icmp eq i32 %127, 0
  br i1 %cmp11.i.i.i, label %if.else.i.i.i, label %if.then13.i.i.i

if.then13.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %128 = ptrtoint ptr %add.ptr10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 746, ptr %add.ptr10.i.i.i, align 4
  tail call void @_set_bit(i32 noundef 2, ptr noundef %i_state_flags.i.i.i.i) #13
  br label %if.end46.i.i

if.else.i.i.i:                                    ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %129 = ptrtoint ptr %add.ptr10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 0, ptr %add.ptr10.i.i.i, align 4
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %i_state_flags.i.i.i.i) #13
  br label %if.end46.i.i

if.end46.i.i:                                     ; preds = %if.else.i.i.i, %if.then13.i.i.i
  %130 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %call9.i.i.i, ptr %11, align 4
  %131 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %83, ptr %12, align 4
  %call49.i.i = call fastcc i32 @ext4_xattr_block_find(ptr noundef %inode, ptr noundef nonnull %i.i.i, ptr noundef nonnull %call7.i.i145.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.i.i)
  %tobool50.not.i.i = icmp eq i32 %call49.i.i, 0
  br i1 %tobool50.not.i.i, label %if.end52.i.i, label %if.end46.i.i.out.i.i_crit_edge

if.end46.i.i.out.i.i_crit_edge:                   ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.i.i

if.end52.i.i:                                     ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call53.i.i = call fastcc i32 @ext4_xattr_block_set(ptr noundef %handle, ptr noundef %inode, ptr noundef nonnull %i.i.i, ptr noundef nonnull %call7.i.i145.i.i) #13
  br label %out.i.i

out.i.i:                                          ; preds = %if.end52.i.i, %if.end46.i.i.out.i.i_crit_edge, %if.end.i147.i.i.out.i.i_crit_edge, %if.end42.i.i.out.i.i_crit_edge, %if.end38.i.i.out.i.i_crit_edge, %if.end29.i.i.out.i.i_crit_edge, %if.then21.i.i.out.i.i_crit_edge, %if.end62.i.out.i.i_crit_edge
  %error.0.i.i = phi i32 [ %call22.i.i, %if.then21.i.i.out.i.i_crit_edge ], [ %call35.i.i, %if.end29.i.i.out.i.i_crit_edge ], [ %call39.i.i, %if.end38.i.i.out.i.i_crit_edge ], [ %call49.i.i, %if.end46.i.i.out.i.i_crit_edge ], [ %call53.i.i, %if.end52.i.i ], [ -12, %if.end62.i.out.i.i_crit_edge ], [ -28, %if.end42.i.i.out.i.i_crit_edge ], [ %call3.i.i.i, %if.end.i147.i.i.out.i.i_crit_edge ]
  tail call void @kfree(ptr noundef %call9.i139.i.i) #13
  tail call void @kfree(ptr noundef %call9.i.i.i) #13
  br i1 %tobool10.not.i.i, label %out.i.i.if.end61.i.i_crit_edge, label %if.then58.i.i

out.i.i.if.end61.i.i_crit_edge:                   ; preds = %out.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end61.i.i

if.then58.i.i:                                    ; preds = %out.i.i
  %iloc59.i.i = getelementptr inbounds %struct.ext4_xattr_ibody_find, ptr %call7.i.i.i.i, i32 0, i32 1
  %132 = ptrtoint ptr %iloc59.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %iloc59.i.i, align 4
  %tobool.not.i149.i.i = icmp eq ptr %133, null
  br i1 %tobool.not.i149.i.i, label %if.then58.i.i.if.end61.i.i_crit_edge, label %if.then.i150.i.i

if.then58.i.i.if.end61.i.i_crit_edge:             ; preds = %if.then58.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end61.i.i

if.then.i150.i.i:                                 ; preds = %if.then58.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__brelse(ptr noundef nonnull %133) #13
  br label %if.end61.i.i

if.end61.i.i:                                     ; preds = %if.then.i150.i.i, %if.then58.i.i.if.end61.i.i_crit_edge, %out.i.i.if.end61.i.i_crit_edge
  br i1 %tobool11.not.i.i, label %if.end61.i.i.ext4_xattr_move_to_block.exit.i_crit_edge, label %if.then63.i.i

if.end61.i.i.ext4_xattr_move_to_block.exit.i_crit_edge: ; preds = %if.end61.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ext4_xattr_move_to_block.exit.i

if.then63.i.i:                                    ; preds = %if.end61.i.i
  %bh64.i.i = getelementptr inbounds %struct.ext4_xattr_block_find, ptr %call7.i.i145.i.i, i32 0, i32 1
  %134 = ptrtoint ptr %bh64.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %bh64.i.i, align 4
  %tobool.not.i152.i.i = icmp eq ptr %135, null
  br i1 %tobool.not.i152.i.i, label %if.then63.i.i.ext4_xattr_move_to_block.exit.i_crit_edge, label %if.then.i153.i.i

if.then63.i.i.ext4_xattr_move_to_block.exit.i_crit_edge: ; preds = %if.then63.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ext4_xattr_move_to_block.exit.i

if.then.i153.i.i:                                 ; preds = %if.then63.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__brelse(ptr noundef nonnull %135) #13
  br label %ext4_xattr_move_to_block.exit.i

ext4_xattr_move_to_block.exit.i:                  ; preds = %if.then.i153.i.i, %if.then63.i.i.ext4_xattr_move_to_block.exit.i_crit_edge, %if.end61.i.i.ext4_xattr_move_to_block.exit.i_crit_edge
  tail call void @kfree(ptr noundef %call7.i.i.i.i) #13
  tail call void @kfree(ptr noundef %call7.i.i145.i.i) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %i.i.i) #13
  %136 = zext i32 %error.0.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %136, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %error.0.i.i, label %ext4_xattr_move_to_block.exit.i.land.lhs.true82_crit_edge [
    i32 0, label %if.end66.i
    i32 -28, label %ext4_xattr_move_to_block.exit.i.land.lhs.true62_crit_edge
  ]

ext4_xattr_move_to_block.exit.i.land.lhs.true62_crit_edge: ; preds = %ext4_xattr_move_to_block.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true62

ext4_xattr_move_to_block.exit.i.land.lhs.true82_crit_edge: ; preds = %ext4_xattr_move_to_block.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true82

if.end66.i:                                       ; preds = %ext4_xattr_move_to_block.exit.i
  %sub.i209 = sub i32 %total_ino.2, %and54.i
  %add67.i = add i32 %total_size.1.i, %ifree.addr.0118.i
  %sub68.i = sub i32 %bfree.addr.0120.i, %total_size.1.i
  %cmp.i210 = icmp ult i32 %add67.i, %sub305
  br i1 %cmp.i210, label %if.end66.i.while.body.i_crit_edge, label %if.end66.i.shift_crit_edge

if.end66.i.shift_crit_edge:                       ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %shift

if.end66.i.while.body.i_crit_edge:                ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

land.lhs.true62:                                  ; preds = %ext4_xattr_move_to_block.exit.i.land.lhs.true62_crit_edge, %if.then44.i.land.lhs.true62_crit_edge, %while.body.i.land.lhs.true62_crit_edge
  %or.cond162 = select i1 %tobool63.not302, i1 true, i1 %tobool51.not
  br i1 %or.cond162, label %land.lhs.true62.land.lhs.true82_crit_edge, label %land.lhs.true62.retry.backedge_crit_edge

land.lhs.true62.retry.backedge_crit_edge:         ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %retry.backedge

land.lhs.true62.land.lhs.true82_crit_edge:        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true82

retry.backedge:                                   ; preds = %land.lhs.true62.retry.backedge_crit_edge, %if.then49.retry.backedge_crit_edge
  %137 = ptrtoint ptr %i_extra_isize to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %i_extra_isize, align 4
  %conv3 = zext i16 %138 to i32
  %sub = sub nsw i32 %conv, %conv3
  %cmp.not = icmp ugt i16 %8, %138
  br i1 %cmp.not, label %retry.backedge.if.end_crit_edge, label %retry.backedge.cleanup93_crit_edge

retry.backedge.cleanup93_crit_edge:               ; preds = %retry.backedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup93

retry.backedge.if.end_crit_edge:                  ; preds = %retry.backedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

shift:                                            ; preds = %if.end66.i.shift_crit_edge, %ext4_xattr_free_space.exit.shift_crit_edge
  %total_ino.4 = phi i32 [ %sub.i209, %if.end66.i.shift_crit_edge ], [ %total_ino.1, %ext4_xattr_free_space.exit.shift_crit_edge ]
  %139 = ptrtoint ptr %i_extra_isize to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %i_extra_isize, align 4
  %conv73 = zext i16 %140 to i32
  %sub74 = sub i32 %conv73, %new_extra_isize.addr.0301
  %add.ptr76 = getelementptr i8, ptr %add.ptr, i32 %new_extra_isize.addr.0301
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub74)
  %cmp.i212 = icmp sgt i32 %sub74, 0
  br i1 %cmp.i212, label %do.body3.i, label %for.cond.preheader.i, !prof !158

for.cond.preheader.i:                             ; preds = %shift
  %141 = ptrtoint ptr %add.ptr12 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %add.ptr12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %cmp9.not28.i = icmp eq i32 %142, 0
  br i1 %cmp9.not28.i, label %for.cond.preheader.i.cleanup80.thread249_crit_edge, label %for.body.lr.ph.i213

for.cond.preheader.i.cleanup80.thread249_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup80.thread249

for.body.lr.ph.i213:                              ; preds = %for.cond.preheader.i
  %143 = trunc i32 %sub74 to i16
  br label %for.body.i215

do.body3.i:                                       ; preds = %shift
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/xattr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2506, 0\0A.popsection", ""() #13, !srcloc !178
  unreachable

for.body.i215:                                    ; preds = %for.inc.i222.for.body.i215_crit_edge, %for.body.lr.ph.i213
  %last.029.i = phi ptr [ %add.ptr12, %for.body.lr.ph.i213 ], [ %add.ptr.i221, %for.inc.i222.for.body.i215_crit_edge ]
  %e_value_inum.i214 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %last.029.i, i32 0, i32 3
  %144 = ptrtoint ptr %e_value_inum.i214 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %e_value_inum.i214, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %tobool12.not.i = icmp eq i32 %145, 0
  br i1 %tobool12.not.i, label %land.lhs.true.i217, label %for.body.i215.for.inc.i222_crit_edge

for.body.i215.for.inc.i222_crit_edge:             ; preds = %for.body.i215
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i222

land.lhs.true.i217:                               ; preds = %for.body.i215
  %e_value_size.i216 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %last.029.i, i32 0, i32 4
  %146 = ptrtoint ptr %e_value_size.i216 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %e_value_size.i216, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %tobool13.not.i = icmp eq i32 %147, 0
  br i1 %tobool13.not.i, label %land.lhs.true.i217.for.inc.i222_crit_edge, label %if.then14.i

land.lhs.true.i217.for.inc.i222_crit_edge:        ; preds = %land.lhs.true.i217
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i222

if.then14.i:                                      ; preds = %land.lhs.true.i217
  call void @__sanitizer_cov_trace_pc() #15
  %e_value_offs.i218 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %last.029.i, i32 0, i32 2
  %148 = ptrtoint ptr %e_value_offs.i218 to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %e_value_offs.i218, align 2
  %150 = tail call i16 @llvm.bswap.i16(i16 %149) #13
  %conv15.i = add i16 %150, %143
  %151 = tail call i16 @llvm.bswap.i16(i16 %conv15.i) #13
  %152 = ptrtoint ptr %e_value_offs.i218 to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 %151, ptr %e_value_offs.i218, align 2
  br label %for.inc.i222

for.inc.i222:                                     ; preds = %if.then14.i, %land.lhs.true.i217.for.inc.i222_crit_edge, %for.body.i215.for.inc.i222_crit_edge
  %153 = ptrtoint ptr %last.029.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %last.029.i, align 4
  %conv18.i = zext i8 %154 to i32
  %add20.i219 = add nuw nsw i32 %conv18.i, 19
  %and.i220 = and i32 %add20.i219, 508
  %add.ptr.i221 = getelementptr i8, ptr %last.029.i, i32 %and.i220
  %155 = ptrtoint ptr %add.ptr.i221 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %add.ptr.i221, align 4
  %cmp9.not.i = icmp eq i32 %156, 0
  br i1 %cmp9.not.i, label %for.inc.i222.cleanup80.thread249_crit_edge, label %for.inc.i222.for.body.i215_crit_edge

for.inc.i222.for.body.i215_crit_edge:             ; preds = %for.inc.i222
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i215

for.inc.i222.cleanup80.thread249_crit_edge:       ; preds = %for.inc.i222
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup80.thread249

cleanup80.thread249:                              ; preds = %for.inc.i222.cleanup80.thread249_crit_edge, %for.cond.preheader.i.cleanup80.thread249_crit_edge
  %157 = call ptr @memmove(ptr %add.ptr76, ptr %add.ptr11, i32 %total_ino.4)
  %conv77 = trunc i32 %new_extra_isize.addr.0301 to i16
  %158 = ptrtoint ptr %i_extra_isize to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 %conv77, ptr %i_extra_isize, align 4
  br label %cleanup93

cleanup80:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #15
  %159 = ptrtoint ptr %call30 to i32
  br label %land.lhs.true82

land.lhs.true82:                                  ; preds = %cleanup80, %land.lhs.true62.land.lhs.true82_crit_edge, %ext4_xattr_move_to_block.exit.i.land.lhs.true82_crit_edge, %if.then49.land.lhs.true82_crit_edge, %if.then.i170, %if.then37.land.lhs.true82_crit_edge, %if.end.land.lhs.true82_crit_edge
  %error.2248 = phi i32 [ %159, %cleanup80 ], [ %call35, %if.then37.land.lhs.true82_crit_edge ], [ %call35, %if.then.i170 ], [ %error.0.i.i, %ext4_xattr_move_to_block.exit.i.land.lhs.true82_crit_edge ], [ -28, %if.then49.land.lhs.true82_crit_edge ], [ %call16, %if.end.land.lhs.true82_crit_edge ], [ -28, %land.lhs.true62.land.lhs.true82_crit_edge ]
  %160 = load i32, ptr @ext4_expand_extra_isize_ea.mnt_count, align 4
  %161 = ptrtoint ptr %s_es to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %s_es, align 4
  %s_mnt_count = getelementptr inbounds %struct.ext4_super_block, ptr %162, i32 0, i32 13
  %163 = ptrtoint ptr %s_mnt_count to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %s_mnt_count, align 4
  %165 = tail call i16 @llvm.bswap.i16(i16 %164)
  %conv84 = zext i16 %165 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %160, i32 %conv84)
  %cmp85.not = icmp eq i32 %160, %conv84
  br i1 %cmp85.not, label %land.lhs.true82.cleanup93_crit_edge, label %if.then87

land.lhs.true82.cleanup93_crit_edge:              ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup93

if.then87:                                        ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #15
  %166 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %i_sb, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %168 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %i_ino, align 8
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %167, ptr noundef nonnull @__func__.ext4_expand_extra_isize_ea, i32 noundef 2772, ptr noundef nonnull @.str.2, i32 noundef %169) #13
  %170 = ptrtoint ptr %s_es to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %s_es, align 4
  %s_mnt_count90 = getelementptr inbounds %struct.ext4_super_block, ptr %171, i32 0, i32 13
  %172 = ptrtoint ptr %s_mnt_count90 to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %s_mnt_count90, align 4
  %174 = tail call i16 @llvm.bswap.i16(i16 %173)
  %conv91 = zext i16 %174 to i32
  store i32 %conv91, ptr @ext4_expand_extra_isize_ea.mnt_count, align 4
  br label %cleanup93

cleanup93:                                        ; preds = %if.then87, %land.lhs.true82.cleanup93_crit_edge, %cleanup80.thread249, %retry.backedge.cleanup93_crit_edge, %entry.cleanup93_crit_edge
  %retval.0 = phi i32 [ %error.2248, %if.then87 ], [ %error.2248, %land.lhs.true82.cleanup93_crit_edge ], [ 0, %cleanup80.thread249 ], [ 0, %entry.cleanup93_crit_edge ], [ 0, %retry.backedge.cleanup93_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_warning(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_xattr_delete_inode(ptr noundef %handle, ptr noundef %inode, ptr nocapture noundef %ea_inode_array, i32 noundef %extra_credits) local_unnamed_addr #0 align 64 {
entry:
  %iloc = alloca %struct.ext4_iloc, align 4
  %ea_inode = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %iloc) #13
  %0 = call ptr @memset(ptr %iloc, i32 0, i32 12)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ea_inode) #13
  %1 = ptrtoint ptr %ea_inode to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %ea_inode, align 4, !annotation !157
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_cluster_ratio.i = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %s_cluster_ratio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_cluster_ratio.i, align 4
  %call.i = tail call i32 @__ext4_journal_ensure_credits(ptr noundef %handle, i32 noundef %extra_credits, i32 noundef %extra_credits, i32 noundef %7) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 1
  br i1 %cmp.i, label %entry.ext4_journal_ensure_credits.exit_crit_edge, label %if.end3.i

entry.ext4_journal_ensure_credits.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %ext4_journal_ensure_credits.exit

if.end3.i:                                        ; preds = %entry
  %cmp.i.not.i.i = icmp ult ptr %handle, inttoptr (i32 4096 to ptr)
  br i1 %cmp.i.not.i.i, label %if.end3.i.if.end_crit_edge, label %ext4_journal_restart.exit.i

if.end3.i.if.end_crit_edge:                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

ext4_journal_restart.exit.i:                      ; preds = %if.end3.i
  %call1.i.i = tail call i32 @jbd2__journal_restart(ptr noundef %handle, i32 noundef %extra_credits, i32 noundef %7, i32 noundef 3136) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp5.i = icmp eq i32 %call1.i.i, 0
  br i1 %cmp5.i, label %ext4_journal_restart.exit.i.if.end_crit_edge, label %ext4_journal_restart.exit.i.ext4_journal_ensure_credits.exit_crit_edge

ext4_journal_restart.exit.i.ext4_journal_ensure_credits.exit_crit_edge: ; preds = %ext4_journal_restart.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ext4_journal_ensure_credits.exit

ext4_journal_restart.exit.i.if.end_crit_edge:     ; preds = %ext4_journal_restart.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

ext4_journal_ensure_credits.exit:                 ; preds = %ext4_journal_restart.exit.i.ext4_journal_ensure_credits.exit_crit_edge, %entry.ext4_journal_ensure_credits.exit_crit_edge
  %err.0.i = phi i32 [ %call.i, %entry.ext4_journal_ensure_credits.exit_crit_edge ], [ %call1.i.i, %ext4_journal_restart.exit.i.ext4_journal_ensure_credits.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %cmp = icmp slt i32 %err.0.i, 0
  br i1 %cmp, label %if.then, label %ext4_journal_ensure_credits.exit.if.end_crit_edge

ext4_journal_ensure_credits.exit.if.end_crit_edge: ; preds = %ext4_journal_ensure_credits.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %ext4_journal_ensure_credits.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %inode, ptr noundef nonnull @__func__.ext4_xattr_delete_inode, i32 noundef 2845, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef %err.0.i) #13
  br label %cleanup

if.end:                                           ; preds = %ext4_journal_ensure_credits.exit.if.end_crit_edge, %ext4_journal_restart.exit.i.if.end_crit_edge, %if.end3.i.if.end_crit_edge
  %8 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i135 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 33
  %10 = ptrtoint ptr %s_fs_info.i.i135 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_fs_info.i.i135, align 16
  %s_es.i = getelementptr inbounds %struct.ext4_sb_info, ptr %11, i32 0, i32 15
  %12 = ptrtoint ptr %s_es.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_es.i, align 4
  %s_feature_incompat.i = getelementptr inbounds %struct.ext4_super_block, ptr %13, i32 0, i32 29
  %14 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %s_feature_incompat.i, align 8
  %and.i = and i32 %15, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i136.not = icmp eq i32 %and.i, 0
  br i1 %cmp.i136.not, label %if.end.if.end26_crit_edge, label %land.lhs.true

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

land.lhs.true:                                    ; preds = %if.end
  %i_state_flags.i = getelementptr i8, ptr %inode, i32 -384
  %16 = ptrtoint ptr %i_state_flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %i_state_flags.i, align 4
  %18 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not = icmp eq i32 %18, 0
  br i1 %tobool.not, label %land.lhs.true.if.end26_crit_edge, label %if.then6

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

if.then6:                                         ; preds = %land.lhs.true
  %call7 = call i32 @ext4_get_inode_loc(ptr noundef %inode, ptr noundef nonnull %iloc) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %inode, ptr noundef nonnull @__func__.ext4_xattr_delete_inode, i32 noundef 2854, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.4, i32 noundef %call7) #13
  br label %cleanup

if.end10:                                         ; preds = %if.then6
  %19 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i_sb, align 4
  %21 = ptrtoint ptr %iloc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %iloc, align 4
  %call13 = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_xattr_delete_inode, i32 noundef 2859, ptr noundef %handle, ptr noundef %20, ptr noundef %22, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %inode, ptr noundef nonnull @__func__.ext4_xattr_delete_inode, i32 noundef 2862, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.5, i32 noundef %call13) #13
  br label %cleanup

if.end16:                                         ; preds = %if.end10
  %23 = ptrtoint ptr %iloc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %iloc, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %b_data.i, align 4
  %offset.i = getelementptr inbounds %struct.ext4_iloc, ptr %iloc, i32 0, i32 1
  %27 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %26, i32 %28
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 128
  %i_extra_isize = getelementptr i8, ptr %inode, i32 988
  %29 = ptrtoint ptr %i_extra_isize to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %i_extra_isize, align 4
  %conv = zext i16 %30 to i32
  %add.ptr19 = getelementptr i8, ptr %add.ptr, i32 %conv
  %31 = ptrtoint ptr %add.ptr19 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 746, i32 %32)
  %cmp20 = icmp eq i32 %32, 746
  br i1 %cmp20, label %if.then22, label %if.end16.if.end26_crit_edge

if.end16.if.end26_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

if.then22:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr24 = getelementptr %struct.ext4_xattr_ibody_header, ptr %add.ptr19, i32 1
  call fastcc void @ext4_xattr_inode_dec_ref_all(ptr noundef %handle, ptr noundef %inode, ptr noundef %24, ptr noundef %add.ptr24, i1 noundef zeroext false, ptr noundef %ea_inode_array, i32 noundef %extra_credits, i1 noundef zeroext false)
  br label %if.end26

if.end26:                                         ; preds = %if.then22, %if.end16.if.end26_crit_edge, %land.lhs.true.if.end26_crit_edge, %if.end.if.end26_crit_edge
  %i_file_acl = getelementptr i8, ptr %inode, i32 -400
  %33 = ptrtoint ptr %i_file_acl to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %i_file_acl, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %34)
  %tobool28.not = icmp eq i64 %34, 0
  br i1 %tobool28.not, label %if.end26.cleanup_crit_edge, label %if.then29

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then29:                                        ; preds = %if.end26
  %35 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i_sb, align 4
  %call33 = call ptr @ext4_sb_bread(ptr noundef %36, i64 noundef %34, i32 noundef 8192) #13
  %cmp.i140 = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i140, label %if.then35, label %if.end43

if.then35:                                        ; preds = %if.then29
  %37 = ptrtoint ptr %call33 to i32
  %cmp37 = icmp eq ptr %call33, inttoptr (i32 -5 to ptr)
  br i1 %cmp37, label %if.then39, label %if.then35.cleanup_crit_edge

if.then35.cleanup_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then39:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #15
  %38 = ptrtoint ptr %i_file_acl to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %i_file_acl, align 8
  call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %inode, ptr noundef nonnull @__func__.ext4_xattr_delete_inode, i32 noundef 2883, i64 noundef 0, i32 noundef 5, ptr noundef nonnull @.str.6, i64 noundef %39) #13
  br label %cleanup

if.end43:                                         ; preds = %if.then29
  %call44 = call fastcc i32 @__ext4_xattr_check_block(ptr noundef %inode, ptr noundef %call33, ptr noundef nonnull @__func__.ext4_xattr_delete_inode, i32 noundef 2888)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.end43.cleanup_crit_edge

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end47:                                         ; preds = %if.end43
  %40 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i142 = getelementptr inbounds %struct.super_block, ptr %41, i32 0, i32 33
  %42 = ptrtoint ptr %s_fs_info.i.i142 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %s_fs_info.i.i142, align 16
  %s_es.i143 = getelementptr inbounds %struct.ext4_sb_info, ptr %43, i32 0, i32 15
  %44 = ptrtoint ptr %s_es.i143 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %s_es.i143, align 4
  %s_feature_incompat.i144 = getelementptr inbounds %struct.ext4_super_block, ptr %45, i32 0, i32 29
  %46 = ptrtoint ptr %s_feature_incompat.i144 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %s_feature_incompat.i144, align 8
  %and.i145 = and i32 %47, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i145)
  %cmp.i146.not = icmp eq i32 %and.i145, 0
  br i1 %cmp.i146.not, label %if.end47.if.end65_crit_edge, label %if.then50

if.end47.if.end65_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end65

if.then50:                                        ; preds = %if.end47
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call33, i32 0, i32 5
  %48 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %b_data, align 4
  %add.ptr51 = getelementptr %struct.ext4_xattr_header, ptr %49, i32 1
  %50 = ptrtoint ptr %add.ptr51 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %add.ptr51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp52.not156 = icmp eq i32 %51, 0
  br i1 %cmp52.not156, label %if.then50.if.end65_crit_edge, label %for.body.lr.ph

if.then50.if.end65_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end65

for.body.lr.ph:                                   ; preds = %if.then50
  %i_blkbits.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %entry1.0157 = phi ptr [ %add.ptr51, %for.body.lr.ph ], [ %add.ptr64, %for.inc.for.body_crit_edge ]
  %e_value_inum = getelementptr inbounds %struct.ext4_xattr_entry, ptr %entry1.0157, i32 0, i32 3
  %52 = ptrtoint ptr %e_value_inum to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %e_value_inum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool54.not = icmp eq i32 %53, 0
  br i1 %tobool54.not, label %for.body.for.inc_crit_edge, label %if.end56

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end56:                                         ; preds = %for.body
  %54 = call i32 @llvm.bswap.i32(i32 %53)
  %e_hash = getelementptr inbounds %struct.ext4_xattr_entry, ptr %entry1.0157, i32 0, i32 5
  %55 = ptrtoint ptr %e_hash to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %e_hash, align 4
  %57 = call i32 @llvm.bswap.i32(i32 %56)
  %call58 = call fastcc i32 @ext4_xattr_inode_iget(ptr noundef %inode, i32 noundef %54, i32 noundef %57, ptr noundef nonnull %ea_inode)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end61, label %if.end56.for.inc_crit_edge

if.end56.for.inc_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end61:                                         ; preds = %if.end56
  %58 = ptrtoint ptr %ea_inode to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ea_inode, align 4
  %e_value_size = getelementptr inbounds %struct.ext4_xattr_entry, ptr %entry1.0157, i32 0, i32 4
  %60 = ptrtoint ptr %e_value_size to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %e_value_size, align 4
  %62 = call i32 @llvm.bswap.i32(i32 %61)
  %tobool.not.i = icmp eq ptr %59, null
  br i1 %tobool.not.i, label %if.end61.if.end.i_crit_edge, label %land.lhs.true.i

if.end61.if.end.i_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end61
  %i_state_flags.i.i = getelementptr i8, ptr %59, i32 -384
  %63 = ptrtoint ptr %i_state_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %i_state_flags.i.i, align 4
  %65 = and i32 %64, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool1.not.i = icmp eq i32 %65, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.ext4_xattr_inode_free_quota.exit_crit_edge

land.lhs.true.i.ext4_xattr_inode_free_quota.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ext4_xattr_inode_free_quota.exit

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.end61.if.end.i_crit_edge
  %66 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %67, i32 0, i32 33
  %68 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_cluster_bits.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %69, i32 0, i32 12
  %70 = ptrtoint ptr %s_cluster_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %s_cluster_bits.i.i, align 16
  %72 = ptrtoint ptr %i_blkbits.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %i_blkbits.i.i, align 2
  %conv.i.i = zext i8 %73 to i32
  %add.i.i = add i32 %71, %conv.i.i
  %shl.i.i = shl nuw i32 1, %add.i.i
  %neg.i.i = sub i32 0, %shl.i.i
  %add1.i.i = add i32 %62, -1
  %sub2.i.i = add i32 %add1.i.i, %shl.i.i
  %and.i.i = and i32 %sub2.i.i, %neg.i.i
  %conv.i = zext i32 %and.i.i to i64
  call void @__dquot_free_space(ptr noundef %inode, i64 noundef %conv.i, i32 noundef 0) #13
  call void @dquot_free_inode(ptr noundef %inode) #13
  br label %ext4_xattr_inode_free_quota.exit

ext4_xattr_inode_free_quota.exit:                 ; preds = %if.end.i, %land.lhs.true.i.ext4_xattr_inode_free_quota.exit_crit_edge
  call void @iput(ptr noundef %59) #13
  br label %for.inc

for.inc:                                          ; preds = %ext4_xattr_inode_free_quota.exit, %if.end56.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %74 = ptrtoint ptr %entry1.0157 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %entry1.0157, align 4
  %conv62 = zext i8 %75 to i32
  %add63 = add nuw nsw i32 %conv62, 19
  %and = and i32 %add63, 508
  %add.ptr64 = getelementptr i8, ptr %entry1.0157, i32 %and
  %76 = ptrtoint ptr %add.ptr64 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %add.ptr64, align 4
  %cmp52.not = icmp eq i32 %77, 0
  br i1 %cmp52.not, label %for.inc.if.end65_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.if.end65_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end65

if.end65:                                         ; preds = %for.inc.if.end65_crit_edge, %if.then50.if.end65_crit_edge, %if.end47.if.end65_crit_edge
  call fastcc void @ext4_xattr_release_block(ptr noundef %handle, ptr noundef %inode, ptr noundef %call33, ptr noundef %ea_inode_array, i32 noundef %extra_credits)
  %78 = ptrtoint ptr %i_file_acl to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 0, ptr %i_file_acl, align 8
  %call68 = call i32 @__ext4_mark_inode_dirty(ptr noundef %handle, ptr noundef %inode, ptr noundef nonnull @__func__.ext4_xattr_delete_inode, i32 noundef 2917) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end71, label %if.then70

if.then70:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %inode, ptr noundef nonnull @__func__.ext4_xattr_delete_inode, i32 noundef 2920, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.7, i32 noundef %call68) #13
  br label %cleanup

if.end71:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #15
  %79 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %i_sb, align 4
  call void @ext4_fc_mark_ineligible(ptr noundef %80, i32 noundef 0, ptr noundef %handle) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end71, %if.then70, %if.end43.cleanup_crit_edge, %if.then39, %if.then35.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.then15, %if.then9, %if.then
  %bh.1 = phi ptr [ null, %if.then ], [ null, %if.then9 ], [ null, %if.then15 ], [ %call33, %if.end43.cleanup_crit_edge ], [ %call33, %if.then70 ], [ null, %if.then39 ], [ null, %if.then35.cleanup_crit_edge ], [ %call33, %if.end71 ], [ null, %if.end26.cleanup_crit_edge ]
  %error.0 = phi i32 [ %err.0.i, %if.then ], [ %call7, %if.then9 ], [ %call13, %if.then15 ], [ %call44, %if.end43.cleanup_crit_edge ], [ %call68, %if.then70 ], [ -5, %if.then39 ], [ %37, %if.then35.cleanup_crit_edge ], [ 0, %if.end71 ], [ 0, %if.end26.cleanup_crit_edge ]
  %81 = ptrtoint ptr %iloc to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %iloc, align 4
  %tobool.not.i148 = icmp eq ptr %82, null
  br i1 %tobool.not.i148, label %cleanup.brelse.exit_crit_edge, label %if.then.i

cleanup.brelse.exit_crit_edge:                    ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %brelse.exit

if.then.i:                                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  call void @__brelse(ptr noundef nonnull %82) #13
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %cleanup.brelse.exit_crit_edge
  %tobool.not.i150 = icmp eq ptr %bh.1, null
  br i1 %tobool.not.i150, label %brelse.exit.brelse.exit153_crit_edge, label %if.then.i151

brelse.exit.brelse.exit153_crit_edge:             ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %brelse.exit153

if.then.i151:                                     ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void @__brelse(ptr noundef nonnull %bh.1) #13
  br label %brelse.exit153

brelse.exit153:                                   ; preds = %if.then.i151, %brelse.exit.brelse.exit153_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ea_inode) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %iloc) #13
  ret i32 %error.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_error_inode(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_journal_get_write_access(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ext4_xattr_inode_dec_ref_all(ptr noundef %handle, ptr noundef %parent, ptr noundef %bh, ptr nocapture noundef %first, i1 noundef zeroext %block_csum, ptr nocapture noundef %ea_inode_array, i32 noundef %extra_credits, i1 noundef zeroext %skip_quota) unnamed_addr #0 align 64 {
entry:
  %ea_inode = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ea_inode) #13
  %0 = ptrtoint ptr %ea_inode to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %ea_inode, align 4, !annotation !157
  %add = add i32 %extra_credits, 2
  %1 = ptrtoint ptr %first to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %first, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not130 = icmp eq i32 %2, 0
  br i1 %cmp.not130, label %entry.if.end57_crit_edge, label %for.body.lr.ph

entry.if.end57_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end57

for.body.lr.ph:                                   ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, ptr %parent, i32 0, i32 8
  %tobool.not.i = icmp ne ptr %bh, null
  %b_blocknr.i.i = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 3
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 5
  %cmp.i.not.i = icmp ult ptr %handle, inttoptr (i32 4096 to ptr)
  %i_blkbits.i.i = getelementptr inbounds %struct.inode, ptr %parent, i32 0, i32 20
  br label %for.body.outer

for.body.outer:                                   ; preds = %for.inc.thread.for.body.outer_crit_edge, %for.body.lr.ph
  %entry2.0137.ph = phi ptr [ %add.ptr142, %for.inc.thread.for.body.outer_crit_edge ], [ %first, %for.body.lr.ph ]
  %dirty.0.off0131.ph = phi i1 [ true, %for.inc.thread.for.body.outer_crit_edge ], [ false, %for.body.lr.ph ]
  %3 = and i1 %tobool.not.i, %dirty.0.off0131.ph
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.outer
  %entry2.0137 = phi ptr [ %add.ptr, %for.inc.for.body_crit_edge ], [ %entry2.0137.ph, %for.body.outer ]
  %e_value_inum = getelementptr inbounds %struct.ext4_xattr_entry, ptr %entry2.0137, i32 0, i32 3
  %4 = ptrtoint ptr %e_value_inum to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %e_value_inum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end:                                           ; preds = %for.body
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %e_hash = getelementptr inbounds %struct.ext4_xattr_entry, ptr %entry2.0137, i32 0, i32 5
  %7 = ptrtoint ptr %e_hash to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %e_hash, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %call = call fastcc i32 @ext4_xattr_inode_iget(ptr noundef %parent, i32 noundef %6, i32 noundef %9, ptr noundef nonnull %ea_inode)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end6:                                          ; preds = %if.end
  %10 = ptrtoint ptr %ea_inode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ea_inode, align 4
  %12 = ptrtoint ptr %ea_inode_array to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ea_inode_array, align 4
  %cmp.i = icmp eq ptr %13, null
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3136, i32 noundef 64) #19
  %15 = ptrtoint ptr %ea_inode_array to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i.i, ptr %ea_inode_array, align 4
  %cmp1.i = icmp eq ptr %call7.i.i, null
  br i1 %cmp1.i, label %if.then.i.if.then9_crit_edge, label %if.end.i

if.then.i.if.then9_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %call7.i.i, align 8
  br label %if.end10

if.else.i:                                        ; preds = %if.end6
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %13, align 4
  %and.i = and i32 %18, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and.i)
  %cmp4.i = icmp eq i32 %and.i, 15
  br i1 %cmp4.i, label %if.then5.i, label %if.else.i.if.end10_crit_edge

if.else.i.if.end10_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then5.i:                                       ; preds = %if.else.i
  %add.i = shl i32 %18, 2
  %19 = add i32 %add.i, 68
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %19, i32 noundef 3136) #18
  %cmp9.i = icmp eq ptr %call9.i.i, null
  br i1 %cmp9.i, label %if.then5.i.if.then9_crit_edge, label %cleanup.thread.i

if.then5.i.if.then9_crit_edge:                    ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9

cleanup.thread.i:                                 ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #15
  %20 = ptrtoint ptr %ea_inode_array to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ea_inode_array, align 4
  %22 = add i32 %add.i, 4
  %23 = call ptr @memcpy(ptr %call9.i.i, ptr %21, i32 %22)
  tail call void @kfree(ptr noundef %21) #13
  %24 = ptrtoint ptr %ea_inode_array to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call9.i.i, ptr %ea_inode_array, align 4
  br label %if.end10

if.then9:                                         ; preds = %if.then5.i.if.then9_crit_edge, %if.then.i.if.then9_crit_edge
  %25 = ptrtoint ptr %ea_inode to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ea_inode, align 4
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning_inode(ptr noundef %26, ptr noundef nonnull @__func__.ext4_xattr_inode_dec_ref_all, i32 noundef 1158, ptr noundef nonnull @.str.32, i32 noundef -12) #13
  tail call void @iput(ptr noundef %26) #13
  br label %for.inc

if.end10:                                         ; preds = %cleanup.thread.i, %if.else.i.if.end10_crit_edge, %if.end.i
  %27 = ptrtoint ptr %ea_inode_array to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ea_inode_array, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  %inc.i = add i32 %30, 1
  store i32 %inc.i, ptr %28, align 4
  %arrayidx.i = getelementptr %struct.ext4_xattr_inode_array, ptr %28, i32 0, i32 1, i32 %30
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %11, ptr %arrayidx.i, align 4
  %32 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %33, i32 0, i32 33
  %34 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_cluster_ratio.i = getelementptr inbounds %struct.ext4_sb_info, ptr %35, i32 0, i32 11
  %36 = ptrtoint ptr %s_cluster_ratio.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %s_cluster_ratio.i, align 4
  %call13 = tail call i32 @__ext4_journal_ensure_credits(ptr noundef %handle, i32 noundef %add, i32 noundef %add, i32 noundef %37) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 1
  br i1 %cmp14, label %if.end10.__ensure_end_crit_edge, label %if.end16

if.end10.__ensure_end_crit_edge:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %__ensure_end

if.end16:                                         ; preds = %if.end10
  br i1 %3, label %if.then.i102, label %if.end16.if.end22_crit_edge

if.end16.if.end22_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

if.then.i102:                                     ; preds = %if.end16
  br i1 %block_csum, label %if.then4.i, label %if.then.i102.if.end.i105_crit_edge

if.then.i102.if.end.i105_crit_edge:               ; preds = %if.then.i102
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i105

if.then4.i:                                       ; preds = %if.then.i102
  %38 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %39, i32 0, i32 33
  %40 = ptrtoint ptr %s_fs_info.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %s_fs_info.i.i.i.i.i, align 16
  %s_es.i.i.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %41, i32 0, i32 15
  %42 = ptrtoint ptr %s_es.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %s_es.i.i.i.i, align 4
  %s_feature_ro_compat.i.i.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %43, i32 0, i32 30
  %44 = ptrtoint ptr %s_feature_ro_compat.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %s_feature_ro_compat.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %45, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %cmp.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %cmp.i.not.i.i.i, label %if.then4.i.if.end32.i.i.i_crit_edge, label %land.rhs.i.i.i

if.then4.i.if.end32.i.i.i_crit_edge:              ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.then4.i
  %s_chksum_driver.i.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %41, i32 0, i32 121
  %46 = ptrtoint ptr %s_chksum_driver.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %s_chksum_driver.i.i.i, align 4
  %tobool.not.i.i.i103 = icmp eq ptr %47, null
  br i1 %tobool.not.i.i.i103, label %land.rhs5.i.i.i, label %land.rhs.i.i.i.if.end32.i.i.i_crit_edge

land.rhs.i.i.i.if.end32.i.i.i_crit_edge:          ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32.i.i.i

land.rhs5.i.i.i:                                  ; preds = %land.rhs.i.i.i
  %.b50.i.i.i = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  br i1 %.b50.i.i.i, label %land.rhs5.i.i.i.if.end32.i.i.i_crit_edge, label %if.then.i.i.i, !prof !159

land.rhs5.i.i.i.if.end32.i.i.i_crit_edge:         ; preds = %land.rhs5.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32.i.i.i

if.then.i.i.i:                                    ; preds = %land.rhs5.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 3289, i32 noundef 9, ptr noundef null) #13
  br label %if.end32.i.i.i

if.end32.i.i.i:                                   ; preds = %if.then.i.i.i, %land.rhs5.i.i.i.if.end32.i.i.i_crit_edge, %land.rhs.i.i.i.if.end32.i.i.i_crit_edge, %if.then4.i.if.end32.i.i.i_crit_edge
  %48 = ptrtoint ptr %s_fs_info.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %s_fs_info.i.i.i.i.i, align 16
  %s_es.i53.i.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %49, i32 0, i32 15
  %50 = ptrtoint ptr %s_es.i53.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %s_es.i53.i.i.i, align 4
  %s_feature_ro_compat.i54.i.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %51, i32 0, i32 30
  %52 = ptrtoint ptr %s_feature_ro_compat.i54.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %s_feature_ro_compat.i54.i.i.i, align 4
  %and.i55.i.i.i = and i32 %53, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i55.i.i.i)
  %cmp.i56.not.i.i.i = icmp eq i32 %and.i55.i.i.i, 0
  br i1 %cmp.i56.not.i.i.i, label %if.end32.i.i.i.if.end.i105_crit_edge, label %ext4_has_metadata_csum.exit.i.i

if.end32.i.i.i.if.end.i105_crit_edge:             ; preds = %if.end32.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i105

ext4_has_metadata_csum.exit.i.i:                  ; preds = %if.end32.i.i.i
  %s_chksum_driver43.i.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %49, i32 0, i32 121
  %54 = ptrtoint ptr %s_chksum_driver43.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %s_chksum_driver43.i.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %55, null
  br i1 %cmp.i.not.i.i, label %ext4_has_metadata_csum.exit.i.i.if.end.i105_crit_edge, label %if.then.i.i104

ext4_has_metadata_csum.exit.i.i.if.end.i105_crit_edge: ; preds = %ext4_has_metadata_csum.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i105

if.then.i.i104:                                   ; preds = %ext4_has_metadata_csum.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %56 = ptrtoint ptr %b_blocknr.i.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %b_blocknr.i.i, align 8
  %58 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %b_data.i.i, align 4
  %call1.i.i = tail call fastcc i32 @ext4_xattr_block_csum(ptr noundef %parent, i64 noundef %57, ptr noundef %59) #13
  %60 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %b_data.i.i, align 4
  %h_checksum.i.i = getelementptr inbounds %struct.ext4_xattr_header, ptr %61, i32 0, i32 4
  %62 = ptrtoint ptr %h_checksum.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %call1.i.i, ptr %h_checksum.i.i, align 4
  br label %if.end.i105

if.end.i105:                                      ; preds = %if.then.i.i104, %ext4_has_metadata_csum.exit.i.i.if.end.i105_crit_edge, %if.end32.i.i.i.if.end.i105_crit_edge, %if.then.i102.if.end.i105_crit_edge
  %call.i = tail call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_xattr_restart_fn, i32 noundef 1117, ptr noundef %handle, ptr noundef null, ptr noundef nonnull %bh) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool5.not.i, label %if.end.i105.if.end22_crit_edge, label %ext4_xattr_restart_fn.exit

if.end.i105.if.end22_crit_edge:                   ; preds = %if.end.i105
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

ext4_xattr_restart_fn.exit:                       ; preds = %if.end.i105
  %63 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %64, ptr noundef nonnull @__func__.ext4_xattr_restart_fn, i32 noundef 1120, ptr noundef nonnull @.str.37, i32 noundef %call.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp20 = icmp slt i32 %call.i, 0
  br i1 %cmp20, label %ext4_xattr_restart_fn.exit.if.then30_crit_edge, label %ext4_xattr_restart_fn.exit.if.end22_crit_edge

ext4_xattr_restart_fn.exit.if.end22_crit_edge:    ; preds = %ext4_xattr_restart_fn.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

ext4_xattr_restart_fn.exit.if.then30_crit_edge:   ; preds = %ext4_xattr_restart_fn.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then30

if.end22:                                         ; preds = %ext4_xattr_restart_fn.exit.if.end22_crit_edge, %if.end.i105.if.end22_crit_edge, %if.end16.if.end22_crit_edge
  br i1 %cmp.i.not.i, label %if.end22.if.then33_crit_edge, label %ext4_journal_restart.exit

if.end22.if.then33_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then33

ext4_journal_restart.exit:                        ; preds = %if.end22
  %65 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i106 = getelementptr inbounds %struct.super_block, ptr %66, i32 0, i32 33
  %67 = ptrtoint ptr %s_fs_info.i.i106 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %s_fs_info.i.i106, align 16
  %s_cluster_ratio.i107 = getelementptr inbounds %struct.ext4_sb_info, ptr %68, i32 0, i32 11
  %69 = ptrtoint ptr %s_cluster_ratio.i107 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %s_cluster_ratio.i107, align 4
  %call1.i = tail call i32 @jbd2__journal_restart(ptr noundef %handle, i32 noundef %add, i32 noundef %70, i32 noundef 3136) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp26 = icmp eq i32 %call1.i, 0
  br i1 %cmp26, label %ext4_journal_restart.exit.if.then33_crit_edge, label %ext4_journal_restart.exit.__ensure_end_crit_edge

ext4_journal_restart.exit.__ensure_end_crit_edge: ; preds = %ext4_journal_restart.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %__ensure_end

ext4_journal_restart.exit.if.then33_crit_edge:    ; preds = %ext4_journal_restart.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then33

__ensure_end:                                     ; preds = %ext4_journal_restart.exit.__ensure_end_crit_edge, %if.end10.__ensure_end_crit_edge
  %err11.0 = phi i32 [ %call13, %if.end10.__ensure_end_crit_edge ], [ %call1.i, %ext4_journal_restart.exit.__ensure_end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err11.0)
  %cmp29 = icmp slt i32 %err11.0, 0
  br i1 %cmp29, label %__ensure_end.if.then30_crit_edge, label %if.end31

__ensure_end.if.then30_crit_edge:                 ; preds = %__ensure_end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then30

if.then30:                                        ; preds = %__ensure_end.if.then30_crit_edge, %ext4_xattr_restart_fn.exit.if.then30_crit_edge
  %err11.0123 = phi i32 [ %err11.0, %__ensure_end.if.then30_crit_edge ], [ %call.i, %ext4_xattr_restart_fn.exit.if.then30_crit_edge ]
  %71 = ptrtoint ptr %ea_inode to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ea_inode, align 4
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning_inode(ptr noundef %72, ptr noundef nonnull @__func__.ext4_xattr_inode_dec_ref_all, i32 noundef 1169, ptr noundef nonnull @.str.33, i32 noundef %err11.0123) #13
  br label %for.inc

if.end31:                                         ; preds = %__ensure_end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err11.0)
  %cmp32.not = icmp eq i32 %err11.0, 0
  br i1 %cmp32.not, label %if.end31.if.end39_crit_edge, label %if.end31.if.then33_crit_edge

if.end31.if.then33_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then33

if.end31.if.end39_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39

if.then33:                                        ; preds = %if.end31.if.then33_crit_edge, %ext4_journal_restart.exit.if.then33_crit_edge, %if.end22.if.then33_crit_edge
  %73 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %i_sb, align 4
  %call35 = tail call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_xattr_inode_dec_ref_all, i32 noundef 1174, ptr noundef %handle, ptr noundef %74, ptr noundef %bh, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.then33.if.end39_crit_edge, label %if.then37

if.then33.if.end39_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39

if.then37:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #15
  %75 = ptrtoint ptr %ea_inode to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ea_inode, align 4
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning_inode(ptr noundef %76, ptr noundef nonnull @__func__.ext4_xattr_inode_dec_ref_all, i32 noundef 1178, ptr noundef nonnull @.str.34, i32 noundef %call35) #13
  br label %for.inc

if.end39:                                         ; preds = %if.then33.if.end39_crit_edge, %if.end31.if.end39_crit_edge
  %77 = ptrtoint ptr %ea_inode to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ea_inode, align 4
  %call.i110 = tail call fastcc i32 @ext4_xattr_inode_update_ref(ptr noundef %handle, ptr noundef %78, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i110)
  %tobool41.not = icmp eq i32 %call.i110, 0
  br i1 %tobool41.not, label %if.end43, label %if.then42

if.then42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning_inode(ptr noundef %78, ptr noundef nonnull @__func__.ext4_xattr_inode_dec_ref_all, i32 noundef 1186, ptr noundef nonnull @.str.35, i32 noundef %call.i110) #13
  br label %for.inc

if.end43:                                         ; preds = %if.end39
  %e_value_inum.le = getelementptr inbounds %struct.ext4_xattr_entry, ptr %entry2.0137, i32 0, i32 3
  br i1 %skip_quota, label %if.end43.for.inc.thread_crit_edge, label %if.then45

if.end43.for.inc.thread_crit_edge:                ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.thread

if.then45:                                        ; preds = %if.end43
  %e_value_size = getelementptr inbounds %struct.ext4_xattr_entry, ptr %entry2.0137, i32 0, i32 4
  %79 = ptrtoint ptr %e_value_size to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %e_value_size, align 4
  %81 = tail call i32 @llvm.bswap.i32(i32 %80)
  %tobool.not.i111 = icmp eq ptr %78, null
  br i1 %tobool.not.i111, label %if.then45.if.end.i113_crit_edge, label %land.lhs.true.i

if.then45.if.end.i113_crit_edge:                  ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i113

land.lhs.true.i:                                  ; preds = %if.then45
  %i_state_flags.i.i = getelementptr i8, ptr %78, i32 -384
  %82 = ptrtoint ptr %i_state_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %i_state_flags.i.i, align 4
  %84 = and i32 %83, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool1.not.i = icmp eq i32 %84, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end.i113_crit_edge, label %land.lhs.true.i.for.inc.thread_crit_edge

land.lhs.true.i.for.inc.thread_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.thread

land.lhs.true.i.if.end.i113_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i113

if.end.i113:                                      ; preds = %land.lhs.true.i.if.end.i113_crit_edge, %if.then45.if.end.i113_crit_edge
  %85 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %86, i32 0, i32 33
  %87 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_cluster_bits.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %88, i32 0, i32 12
  %89 = ptrtoint ptr %s_cluster_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %s_cluster_bits.i.i, align 16
  %91 = ptrtoint ptr %i_blkbits.i.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %i_blkbits.i.i, align 2
  %conv.i.i = zext i8 %92 to i32
  %add.i.i = add i32 %90, %conv.i.i
  %shl.i.i = shl nuw i32 1, %add.i.i
  %neg.i.i = sub i32 0, %shl.i.i
  %add1.i.i = add i32 %81, -1
  %sub2.i.i = add i32 %add1.i.i, %shl.i.i
  %and.i.i = and i32 %sub2.i.i, %neg.i.i
  %conv.i = zext i32 %and.i.i to i64
  tail call void @__dquot_free_space(ptr noundef %parent, i64 noundef %conv.i, i32 noundef 0) #13
  tail call void @dquot_free_inode(ptr noundef %parent) #13
  br label %for.inc.thread

for.inc:                                          ; preds = %if.then42, %if.then37, %if.then30, %if.then9, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %93 = ptrtoint ptr %entry2.0137 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %entry2.0137, align 4
  %conv = zext i8 %94 to i32
  %add50 = add nuw nsw i32 %conv, 19
  %and = and i32 %add50, 508
  %add.ptr = getelementptr i8, ptr %entry2.0137, i32 %and
  %95 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %add.ptr, align 4
  %cmp.not = icmp eq i32 %96, 0
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.thread:                                   ; preds = %if.end.i113, %land.lhs.true.i.for.inc.thread_crit_edge, %if.end43.for.inc.thread_crit_edge
  %97 = ptrtoint ptr %e_value_inum.le to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %e_value_inum.le, align 4
  %e_value_size48 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %entry2.0137, i32 0, i32 4
  %98 = ptrtoint ptr %e_value_size48 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %e_value_size48, align 4
  %99 = ptrtoint ptr %entry2.0137 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %entry2.0137, align 4
  %conv139 = zext i8 %100 to i32
  %add50140 = add nuw nsw i32 %conv139, 19
  %and141 = and i32 %add50140, 508
  %add.ptr142 = getelementptr i8, ptr %entry2.0137, i32 %and141
  %101 = ptrtoint ptr %add.ptr142 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %add.ptr142, align 4
  %cmp.not143 = icmp eq i32 %102, 0
  br i1 %cmp.not143, label %for.inc.thread.if.then52_crit_edge, label %for.inc.thread.for.body.outer_crit_edge

for.inc.thread.for.body.outer_crit_edge:          ; preds = %for.inc.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.outer

for.inc.thread.if.then52_crit_edge:               ; preds = %for.inc.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then52

for.end:                                          ; preds = %for.inc
  br i1 %dirty.0.off0131.ph, label %for.end.if.then52_crit_edge, label %for.end.if.end57_crit_edge

for.end.if.end57_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end57

for.end.if.then52_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then52

if.then52:                                        ; preds = %for.end.if.then52_crit_edge, %for.inc.thread.if.then52_crit_edge
  %call53 = tail call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_xattr_inode_dec_ref_all, i32 noundef 1213, ptr noundef %handle, ptr noundef null, ptr noundef %bh) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.then52.if.end57_crit_edge, label %if.then55

if.then52.if.end57_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end57

if.then55:                                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning_inode(ptr noundef %parent, ptr noundef nonnull @__func__.ext4_xattr_inode_dec_ref_all, i32 noundef 1216, ptr noundef nonnull @.str.36, i32 noundef %call53) #13
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %if.then52.if.end57_crit_edge, %for.end.if.end57_crit_edge, %entry.if.end57_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ea_inode) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ext4_xattr_inode_iget(ptr nocapture noundef readonly %parent, i32 noundef %ea_ino, i32 noundef %ea_inode_hash, ptr nocapture noundef writeonly %ea_inode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %parent, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %call = tail call ptr @__ext4_iget(ptr noundef %1, i32 noundef %ea_ino, i32 noundef 0, ptr noundef nonnull @__func__.ext4_xattr_inode_iget, i32 noundef 389) #13
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %call to i32
  %3 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %4, ptr noundef nonnull @__func__.ext4_xattr_inode_iget, i32 noundef 394, i1 noundef zeroext false, i32 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.38, i32 noundef %ea_ino, i32 noundef %2) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call zeroext i1 @is_bad_inode(ptr noundef %call) #13
  br i1 %call4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %6, ptr noundef nonnull @__func__.ext4_xattr_inode_iget, i32 noundef 401, i1 noundef zeroext false, i32 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.39, i32 noundef %ea_ino) #13
  br label %error

if.end7:                                          ; preds = %if.end
  %i_flags = getelementptr i8, ptr %call, i32 -380
  %7 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %i_flags, align 4
  %and = and i32 %8, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %10, ptr noundef nonnull @__func__.ext4_xattr_inode_iget, i32 noundef 409, i1 noundef zeroext false, i32 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.40, i32 noundef %ea_ino) #13
  br label %error

if.end11:                                         ; preds = %if.end7
  %dep_map.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 25, i32 6
  %11 = ptrtoint ptr %dep_map.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dep_map.i, align 4
  %wait_type_inner.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 25, i32 6, i32 4
  %13 = ptrtoint ptr %wait_type_inner.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %wait_type_inner.i, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull @.str, ptr noundef %12, i32 noundef 1, i8 noundef zeroext %14, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %i_atime.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 15
  %15 = ptrtoint ptr %i_atime.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %i_atime.i, align 8
  %conv.i = trunc i64 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %ea_inode_hash)
  %cmp.not = icmp eq i32 %conv.i, %ea_inode_hash
  br i1 %cmp.not, label %if.end11.if.else_crit_edge, label %land.lhs.true

if.end11.if.else_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true:                                    ; preds = %if.end11
  %i_mtime = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 16
  %17 = ptrtoint ptr %i_mtime to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %i_mtime, align 8
  %conv = trunc i64 %18 to i32
  %i_ino = getelementptr inbounds %struct.inode, ptr %parent, i32 0, i32 11
  %19 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %i_ino, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %conv)
  %cmp13 = icmp eq i32 %20, %conv
  br i1 %cmp13, label %land.lhs.true15, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true15:                                  ; preds = %land.lhs.true
  %i_generation = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 49
  %21 = ptrtoint ptr %i_generation to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %i_generation, align 8
  %i_generation16 = getelementptr inbounds %struct.inode, ptr %parent, i32 0, i32 49
  %23 = ptrtoint ptr %i_generation16 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %i_generation16, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp17 = icmp eq i32 %22, %24
  br i1 %cmp17, label %if.then19, label %land.lhs.true15.if.else_crit_edge

land.lhs.true15.if.else_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then19:                                        ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #15
  %i_state_flags.i = getelementptr i8, ptr %call, i32 -384
  tail call void @_set_bit(i32 noundef 9, ptr noundef %i_state_flags.i) #13
  tail call fastcc void @ext4_xattr_inode_set_ref(ptr noundef %call, i64 noundef 1)
  br label %if.end21

if.else:                                          ; preds = %land.lhs.true15.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %if.end11.if.else_crit_edge
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #13
  %i_flags20 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 4
  %25 = ptrtoint ptr %i_flags20 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %i_flags20, align 4
  %or = or i32 %26, 32
  store i32 %or, ptr %i_flags20, align 4
  tail call void @up_write(ptr noundef %i_rwsem.i) #13
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then19
  %27 = ptrtoint ptr %ea_inode to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call, ptr %ea_inode, align 4
  br label %cleanup

error:                                            ; preds = %if.then9, %if.then5
  %err.0 = phi i32 [ -5, %if.then5 ], [ -22, %if.then9 ]
  tail call void @iput(ptr noundef %call) #13
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end21, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %err.0, %error ], [ 0, %if.end21 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ext4_xattr_inode_free_quota(ptr noundef %parent, ptr noundef %ea_inode, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ea_inode, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %i_state_flags.i = getelementptr i8, ptr %ea_inode, i32 -384
  %0 = ptrtoint ptr %i_state_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %i_state_flags.i, align 4
  %2 = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool1.not = icmp eq i32 %2, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %parent, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_cluster_bits.i = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 12
  %7 = ptrtoint ptr %s_cluster_bits.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_cluster_bits.i, align 16
  %i_blkbits.i = getelementptr inbounds %struct.inode, ptr %parent, i32 0, i32 20
  %9 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %i_blkbits.i, align 2
  %conv.i = zext i8 %10 to i32
  %add.i = add i32 %8, %conv.i
  %shl.i = shl nuw i32 1, %add.i
  %neg.i = sub i32 0, %shl.i
  %add1.i = add i32 %len, -1
  %sub2.i = add i32 %add1.i, %shl.i
  %and.i = and i32 %sub2.i, %neg.i
  %conv = zext i32 %and.i to i64
  tail call void @__dquot_free_space(ptr noundef %parent, i64 noundef %conv, i32 noundef 0) #13
  tail call void @dquot_free_inode(ptr noundef %parent) #13
  br label %return

return:                                           ; preds = %if.end, %land.lhs.true.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ext4_xattr_release_block(ptr noundef %handle, ptr noundef %inode, ptr noundef %bh, ptr nocapture noundef %ea_inode_array, i32 noundef %extra_credits) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %s_ea_block_cache = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 127
  %4 = ptrtoint ptr %s_ea_block_cache to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_ea_block_cache, align 128
  %call = tail call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_xattr_release_block, i32 noundef 1236, ptr noundef %handle, ptr noundef %1, ptr noundef %bh, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.if.then48_crit_edge

entry.if.then48_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then48

if.end:                                           ; preds = %entry
  tail call void @__might_sleep(ptr noundef nonnull @.str.14, i32 noundef 366) #13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bh, i32 noundef 4) #13
  %6 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %bh, align 4
  %and.i.i.i.i = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_buffer.exit.i, label %if.end.if.then.i_crit_edge

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

trylock_buffer.exit.i:                            ; preds = %if.end
  tail call void @llvm.prefetch.p0(ptr %bh, i32 1, i32 3, i32 1) #13
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bh, ptr %bh, i32 4, ptr elementtype(i32) %bh) #13, !srcloc !162
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !163
  %9 = and i32 %asmresult.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.not.i, label %trylock_buffer.exit.i.lock_buffer.exit_crit_edge, label %trylock_buffer.exit.i.if.then.i_crit_edge

trylock_buffer.exit.i.if.then.i_crit_edge:        ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

trylock_buffer.exit.i.lock_buffer.exit_crit_edge: ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lock_buffer.exit

if.then.i:                                        ; preds = %trylock_buffer.exit.i.if.then.i_crit_edge, %if.end.if.then.i_crit_edge
  tail call void @__lock_buffer(ptr noundef %bh) #13
  br label %lock_buffer.exit

lock_buffer.exit:                                 ; preds = %if.then.i, %trylock_buffer.exit.i.lock_buffer.exit_crit_edge
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 5
  %10 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %b_data, align 4
  %h_hash = getelementptr inbounds %struct.ext4_xattr_header, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %h_hash to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %h_hash, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %h_refcount = getelementptr inbounds %struct.ext4_xattr_header, ptr %11, i32 0, i32 1
  %15 = ptrtoint ptr %h_refcount to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %h_refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %16)
  %cmp = icmp eq i32 %16, 16777216
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %lock_buffer.exit
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %if.then3.if.end6_crit_edge, label %if.then5

if.then3.if.end6_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.then5:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 3
  %17 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %b_blocknr, align 8
  tail call void @mb_cache_entry_delete(ptr noundef nonnull %5, i32 noundef %14, i64 noundef %18) #13
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.then3.if.end6_crit_edge
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #13
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #13, !srcloc !175
  tail call void @unlock_buffer(ptr noundef %bh) #13
  %20 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %21, i32 0, i32 33
  %22 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_es.i = getelementptr inbounds %struct.ext4_sb_info, ptr %23, i32 0, i32 15
  %24 = ptrtoint ptr %s_es.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %s_es.i, align 4
  %s_feature_incompat.i = getelementptr inbounds %struct.ext4_super_block, ptr %25, i32 0, i32 29
  %26 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %s_feature_incompat.i, align 8
  %and.i = and i32 %27, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 0
  br i1 %cmp.i.not, label %if.end6.do.body46.thread_crit_edge, label %if.then9

if.end6.do.body46.thread_crit_edge:               ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body46.thread

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  %28 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %b_data, align 4
  %add.ptr = getelementptr %struct.ext4_xattr_header, ptr %29, i32 1
  tail call fastcc void @ext4_xattr_inode_dec_ref_all(ptr noundef %handle, ptr noundef %inode, ptr noundef %bh, ptr noundef %add.ptr, i1 noundef zeroext true, ptr noundef %ea_inode_array, i32 noundef %extra_credits, i1 noundef zeroext true)
  br label %do.body46.thread

do.body46.thread:                                 ; preds = %if.then9, %if.end6.do.body46.thread_crit_edge
  tail call void @ext4_free_blocks(ptr noundef %handle, ptr noundef %inode, ptr noundef %bh, i64 noundef 0, i32 noundef 1, i32 noundef 3) #13
  br label %do.end52

if.else:                                          ; preds = %lock_buffer.exit
  %30 = tail call i32 @llvm.bswap.i32(i32 %16)
  %dec = add i32 %30, -1
  %31 = tail call i32 @llvm.bswap.i32(i32 %dec)
  %32 = ptrtoint ptr %h_refcount to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %h_refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %dec)
  %cmp14 = icmp ne i32 %dec, 1023
  %tobool16.not = icmp eq ptr %5, null
  %or.cond = select i1 %cmp14, i1 true, i1 %tobool16.not
  br i1 %or.cond, label %if.else.if.end25_crit_edge, label %if.then17

if.else.if.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

if.then17:                                        ; preds = %if.else
  %b_blocknr18 = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 3
  %33 = ptrtoint ptr %b_blocknr18 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %b_blocknr18, align 8
  %call19 = tail call ptr @mb_cache_entry_get(ptr noundef nonnull %5, i32 noundef %14, i64 noundef %34) #13
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %if.then17.if.end25_crit_edge, label %if.then21

if.then17.if.end25_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

if.then21:                                        ; preds = %if.then17
  %e_reusable = getelementptr inbounds %struct.mb_cache_entry, ptr %call19, i32 0, i32 4
  %35 = ptrtoint ptr %e_reusable to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load = load i8, ptr %e_reusable, align 8
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %e_reusable, align 8
  %e_refcnt.i = getelementptr inbounds %struct.mb_cache_entry, ptr %call19, i32 0, i32 2
  %call.i.i.i100 = tail call zeroext i1 @__kasan_check_write(ptr noundef %e_refcnt.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !164
  tail call void @llvm.prefetch.p0(ptr %e_refcnt.i, i32 1, i32 3, i32 1) #13
  %36 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %e_refcnt.i, ptr %e_refcnt.i, i32 1, ptr elementtype(i32) %e_refcnt.i) #13, !srcloc !165
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %36, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !166
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end.i, label %if.then21.if.end25_crit_edge

if.then21.if.end25_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

if.end.i:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__mb_cache_entry_free(ptr noundef nonnull %call19) #13
  br label %if.end25

if.end25:                                         ; preds = %if.end.i, %if.then21.if.end25_crit_edge, %if.then17.if.end25_crit_edge, %if.else.if.end25_crit_edge
  %37 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %38, i32 0, i32 33
  %39 = ptrtoint ptr %s_fs_info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %s_fs_info.i.i.i.i, align 16
  %s_es.i.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %40, i32 0, i32 15
  %41 = ptrtoint ptr %s_es.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %s_es.i.i.i, align 4
  %s_feature_ro_compat.i.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %42, i32 0, i32 30
  %43 = ptrtoint ptr %s_feature_ro_compat.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %s_feature_ro_compat.i.i.i, align 4
  %and.i.i.i = and i32 %44, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.not.i.i, label %if.end25.if.end32.i.i_crit_edge, label %land.rhs.i.i

if.end25.if.end32.i.i_crit_edge:                  ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32.i.i

land.rhs.i.i:                                     ; preds = %if.end25
  %s_chksum_driver.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %40, i32 0, i32 121
  %45 = ptrtoint ptr %s_chksum_driver.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %s_chksum_driver.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %46, null
  br i1 %tobool.not.i.i, label %land.rhs5.i.i, label %land.rhs.i.i.if.end32.i.i_crit_edge

land.rhs.i.i.if.end32.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32.i.i

land.rhs5.i.i:                                    ; preds = %land.rhs.i.i
  %.b50.i.i = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  br i1 %.b50.i.i, label %land.rhs5.i.i.if.end32.i.i_crit_edge, label %if.then.i.i, !prof !159

land.rhs5.i.i.if.end32.i.i_crit_edge:             ; preds = %land.rhs5.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32.i.i

if.then.i.i:                                      ; preds = %land.rhs5.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 3289, i32 noundef 9, ptr noundef null) #13
  br label %if.end32.i.i

if.end32.i.i:                                     ; preds = %if.then.i.i, %land.rhs5.i.i.if.end32.i.i_crit_edge, %land.rhs.i.i.if.end32.i.i_crit_edge, %if.end25.if.end32.i.i_crit_edge
  %47 = ptrtoint ptr %s_fs_info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %s_fs_info.i.i.i.i, align 16
  %s_es.i53.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %48, i32 0, i32 15
  %49 = ptrtoint ptr %s_es.i53.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %s_es.i53.i.i, align 4
  %s_feature_ro_compat.i54.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %50, i32 0, i32 30
  %51 = ptrtoint ptr %s_feature_ro_compat.i54.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %s_feature_ro_compat.i54.i.i, align 4
  %and.i55.i.i = and i32 %52, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i55.i.i)
  %cmp.i56.not.i.i = icmp eq i32 %and.i55.i.i, 0
  br i1 %cmp.i56.not.i.i, label %if.end32.i.i.ext4_xattr_block_csum_set.exit_crit_edge, label %ext4_has_metadata_csum.exit.i

if.end32.i.i.ext4_xattr_block_csum_set.exit_crit_edge: ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ext4_xattr_block_csum_set.exit

ext4_has_metadata_csum.exit.i:                    ; preds = %if.end32.i.i
  %s_chksum_driver43.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %48, i32 0, i32 121
  %53 = ptrtoint ptr %s_chksum_driver43.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %s_chksum_driver43.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %54, null
  br i1 %cmp.i.not.i, label %ext4_has_metadata_csum.exit.i.ext4_xattr_block_csum_set.exit_crit_edge, label %if.then.i101

ext4_has_metadata_csum.exit.i.ext4_xattr_block_csum_set.exit_crit_edge: ; preds = %ext4_has_metadata_csum.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ext4_xattr_block_csum_set.exit

if.then.i101:                                     ; preds = %ext4_has_metadata_csum.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 3
  %55 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %b_blocknr.i, align 8
  %57 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %b_data, align 4
  %call1.i = tail call fastcc i32 @ext4_xattr_block_csum(ptr noundef %inode, i64 noundef %56, ptr noundef %58) #13
  %59 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %b_data, align 4
  %h_checksum.i = getelementptr inbounds %struct.ext4_xattr_header, ptr %60, i32 0, i32 4
  %61 = ptrtoint ptr %h_checksum.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %call1.i, ptr %h_checksum.i, align 4
  br label %ext4_xattr_block_csum_set.exit

ext4_xattr_block_csum_set.exit:                   ; preds = %if.then.i101, %ext4_has_metadata_csum.exit.i.ext4_xattr_block_csum_set.exit_crit_edge, %if.end32.i.i.ext4_xattr_block_csum_set.exit_crit_edge
  %cmp.i103.not = icmp ult ptr %handle, inttoptr (i32 4096 to ptr)
  br i1 %cmp.i103.not, label %if.end35, label %if.end35.thread

if.end35:                                         ; preds = %ext4_xattr_block_csum_set.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @unlock_buffer(ptr noundef %bh) #13
  %call34 = tail call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_xattr_release_block, i32 noundef 1296, ptr noundef %handle, ptr noundef %inode, ptr noundef %bh) #13
  br label %do.body46

if.end35.thread:                                  ; preds = %ext4_xattr_block_csum_set.exit
  %call29 = tail call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_xattr_release_block, i32 noundef 1293, ptr noundef %handle, ptr noundef %inode, ptr noundef %bh) #13
  tail call void @unlock_buffer(ptr noundef %bh) #13
  %62 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %i_sb, align 4
  %s_flags118 = getelementptr inbounds %struct.super_block, ptr %63, i32 0, i32 10
  %64 = ptrtoint ptr %s_flags118 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %s_flags118, align 4
  %and119 = and i32 %65, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and119)
  %tobool37.not120 = icmp eq i32 %and119, 0
  br i1 %tobool37.not120, label %lor.lhs.false, label %if.end35.thread.if.then.i107_crit_edge

if.end35.thread.if.then.i107_crit_edge:           ; preds = %if.end35.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i107

lor.lhs.false:                                    ; preds = %if.end35.thread
  %i_flags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %66 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %i_flags, align 4
  %and38 = and i32 %67, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  %or.cond116 = or i1 %cmp.i103.not, %tobool39.not
  br i1 %or.cond116, label %lor.lhs.false.do.body46_crit_edge, label %lor.lhs.false.if.then.i107_crit_edge

lor.lhs.false.if.then.i107_crit_edge:             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i107

lor.lhs.false.do.body46_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body46

if.then.i107:                                     ; preds = %lor.lhs.false.if.then.i107_crit_edge, %if.end35.thread.if.then.i107_crit_edge
  %h_sync.i = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 7
  %68 = ptrtoint ptr %h_sync.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %bf.load.i = load i32, ptr %h_sync.i, align 4
  %bf.set.i = or i32 %bf.load.i, -2147483648
  store i32 %bf.set.i, ptr %h_sync.i, align 4
  br label %do.body46

do.body46:                                        ; preds = %if.then.i107, %lor.lhs.false.do.body46_crit_edge, %if.end35
  %error.1122 = phi i32 [ %call29, %lor.lhs.false.do.body46_crit_edge ], [ %call29, %if.then.i107 ], [ %call34, %if.end35 ]
  %69 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %70, i32 0, i32 33
  %71 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %s_fs_info.i, align 16
  %s_cluster_bits = getelementptr inbounds %struct.ext4_sb_info, ptr %72, i32 0, i32 12
  %73 = ptrtoint ptr %s_cluster_bits to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %s_cluster_bits, align 16
  %shl = shl nuw i32 1, %74
  %conv = sext i32 %shl to i64
  %i_blkbits.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %75 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %i_blkbits.i, align 2
  %sh_prom.i = zext i8 %76 to i64
  %shl.i = shl i64 %conv, %sh_prom.i
  tail call void @__dquot_free_space(ptr noundef %inode, i64 noundef %shl.i, i32 noundef 0) #13
  tail call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.1122)
  %tobool47.not = icmp eq i32 %error.1122, 0
  br i1 %tobool47.not, label %do.body46.do.end52_crit_edge, label %do.body46.if.then48_crit_edge

do.body46.if.then48_crit_edge:                    ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then48

do.body46.do.end52_crit_edge:                     ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end52

if.then48:                                        ; preds = %do.body46.if.then48_crit_edge, %entry.if.then48_crit_edge
  %error.2115 = phi i32 [ %error.1122, %do.body46.if.then48_crit_edge ], [ %call, %entry.if.then48_crit_edge ]
  %77 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %i_sb, align 4
  tail call void @__ext4_std_error(ptr noundef %78, ptr noundef nonnull @__func__.ext4_xattr_release_block, i32 noundef 1304, i32 noundef %error.2115) #13
  br label %do.end52

do.end52:                                         ; preds = %if.then48, %do.body46.do.end52_crit_edge, %do.body46.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_mark_inode_dirty(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ext4_xattr_inode_array_free(ptr noundef %ea_inode_array) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %ea_inode_array, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %0 = ptrtoint ptr %ea_inode_array to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ea_inode_array, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp17.not = icmp eq i32 %1, 0
  br i1 %cmp17.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %idx.08 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ext4_xattr_inode_array, ptr %ea_inode_array, i32 0, i32 1, i32 %idx.08
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  tail call void @iput(ptr noundef %3) #13
  %inc = add nuw i32 %idx.08, 1
  %4 = ptrtoint ptr %ea_inode_array to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ea_inode_array, align 4
  %cmp1 = icmp ult i32 %inc, %5
  br i1 %cmp1, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %ea_inode_array) #13
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ext4_xattr_create_cache() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mb_cache_create(i32 noundef 10) #13
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mb_cache_create(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ext4_xattr_destroy_cache(ptr noundef %cache) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %cache, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mb_cache_destroy(ptr noundef nonnull %cache) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mb_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !179
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @trace_hardirqs_off() #13
  %1 = tail call ptr @llvm.returnaddress(i32 0) #13
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #13
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %2) #13
  tail call void @trace_hardirqs_on() #13
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %3 = tail call ptr @llvm.returnaddress(i32 0) #13
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #13
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %4) #13
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !180
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !158

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #13, !srcloc !181
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %seqcount_lockdep_reader_access.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !182
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !183
  %8 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount, align 4
  %and = and i32 %9, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %9, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !184
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !185
  %12 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount, align 4
  %cmp.i.i.not = icmp eq i32 %13, %.lcssa
  br i1 %cmp.i.i.not, label %do.end24, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

do.end24:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  ret i64 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_warning_inode(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ext4_xattr_inode_read(ptr noundef %ea_inode, ptr nocapture noundef writeonly %buf, i32 noundef %size) unnamed_addr #0 align 64 {
entry:
  %bhs_inline = alloca [8 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_blkbits = getelementptr inbounds %struct.inode, ptr %ea_inode, i32 0, i32 20
  %0 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %i_blkbits, align 2
  %conv = zext i8 %1 to i32
  %shl = shl nuw i32 1, %conv
  %add = add i32 %shl, -1
  %sub = add i32 %add, %size
  %shr = lshr i32 %sub, %conv
  %rem = and i32 %add, %size
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %bhs_inline) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %shr)
  %cmp = icmp ugt i32 %shr, 8
  %2 = call ptr @memset(ptr %bhs_inline, i32 255, i32 32)
  br i1 %cmp, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.then:                                          ; preds = %entry
  %3 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %shr, i32 4) #13
  %4 = extractvalue { i32, i1 } %3, 1
  br i1 %4, label %if.then.cleanup_crit_edge, label %if.end7.i, !prof !158

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7.i:                                        ; preds = %if.then
  %5 = extractvalue { i32, i1 } %3, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3136) #18
  %tobool4.not = icmp eq ptr %call8.i, null
  br i1 %tobool4.not, label %if.end7.i.cleanup_crit_edge, label %if.end7.i.if.end6_crit_edge

if.end7.i.if.end6_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %if.end7.i.if.end6_crit_edge, %entry.if.end6_crit_edge
  %bhs.0 = phi ptr [ %call8.i, %if.end7.i.if.end6_crit_edge ], [ %bhs_inline, %entry.if.end6_crit_edge ]
  %call7 = call i32 @ext4_bread_batch(ptr noundef %ea_inode, i32 noundef 0, i32 noundef %shr, i1 noundef zeroext true, ptr noundef nonnull %bhs.0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %for.cond.preheader, label %if.end6.free_bhs_crit_edge

if.end6.free_bhs_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_bhs

for.cond.preheader:                               ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %cmp1176.not = icmp eq i32 %shr, 0
  br i1 %cmp1176.not, label %for.cond.preheader.free_bhs_crit_edge, label %for.body.lr.ph

for.cond.preheader.free_bhs_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_bhs

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %sub17 = add nsw i32 %shr, -1
  br label %for.body

for.body:                                         ; preds = %if.end15.for.body_crit_edge, %for.body.lr.ph
  %i.077 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end15.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %bhs.0, i32 %i.077
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool13.not = icmp eq ptr %7, null
  br i1 %tobool13.not, label %for.body.put_bhs_crit_edge, label %if.end15

for.body.put_bhs_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %put_bhs

if.end15:                                         ; preds = %for.body
  %mul = shl i32 %i.077, %conv
  %add.ptr = getelementptr i8, ptr %buf, i32 %mul
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %b_data, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.077, i32 %sub17)
  %cmp18 = icmp slt i32 %i.077, %sub17
  %10 = select i1 %cmp18, i1 true, i1 %tobool.not
  %shl.spec.select = select i1 %10, i32 %shl, i32 %rem
  %11 = call ptr @memcpy(ptr %add.ptr, ptr %9, i32 %shl.spec.select)
  %inc = add nuw nsw i32 %i.077, 1
  %exitcond.not = icmp eq i32 %inc, %shr
  br i1 %exitcond.not, label %if.end15.put_bhs_crit_edge, label %if.end15.for.body_crit_edge

if.end15.for.body_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

if.end15.put_bhs_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %put_bhs

put_bhs:                                          ; preds = %if.end15.put_bhs_crit_edge, %for.body.put_bhs_crit_edge
  %ret.0 = phi i32 [ -117, %for.body.put_bhs_crit_edge ], [ 0, %if.end15.put_bhs_crit_edge ]
  br i1 %cmp1176.not, label %put_bhs.free_bhs_crit_edge, label %put_bhs.for.body27_crit_edge

put_bhs.for.body27_crit_edge:                     ; preds = %put_bhs
  br label %for.body27

put_bhs.free_bhs_crit_edge:                       ; preds = %put_bhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_bhs

for.body27:                                       ; preds = %brelse.exit.for.body27_crit_edge, %put_bhs.for.body27_crit_edge
  %i.180 = phi i32 [ %inc30, %brelse.exit.for.body27_crit_edge ], [ 0, %put_bhs.for.body27_crit_edge ]
  %arrayidx28 = getelementptr ptr, ptr %bhs.0, i32 %i.180
  %12 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx28, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %for.body27.brelse.exit_crit_edge, label %if.then.i

for.body27.brelse.exit_crit_edge:                 ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #15
  br label %brelse.exit

if.then.i:                                        ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #15
  call void @__brelse(ptr noundef nonnull %13) #13
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %for.body27.brelse.exit_crit_edge
  %inc30 = add nuw nsw i32 %i.180, 1
  %exitcond81.not = icmp eq i32 %inc30, %shr
  br i1 %exitcond81.not, label %brelse.exit.free_bhs_crit_edge, label %brelse.exit.for.body27_crit_edge

brelse.exit.for.body27_crit_edge:                 ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body27

brelse.exit.free_bhs_crit_edge:                   ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_bhs

free_bhs:                                         ; preds = %brelse.exit.free_bhs_crit_edge, %put_bhs.free_bhs_crit_edge, %for.cond.preheader.free_bhs_crit_edge, %if.end6.free_bhs_crit_edge
  %ret.1 = phi i32 [ %call7, %if.end6.free_bhs_crit_edge ], [ %ret.0, %put_bhs.free_bhs_crit_edge ], [ 0, %for.cond.preheader.free_bhs_crit_edge ], [ %ret.0, %brelse.exit.free_bhs_crit_edge ]
  %cmp33.not = icmp eq ptr %bhs.0, %bhs_inline
  br i1 %cmp33.not, label %free_bhs.cleanup_crit_edge, label %if.then35

free_bhs.cleanup_crit_edge:                       ; preds = %free_bhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then35:                                        ; preds = %free_bhs
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree(ptr noundef %bhs.0) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %free_bhs.cleanup_crit_edge, %if.end7.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end7.i.cleanup_crit_edge ], [ %ret.1, %if.then35 ], [ %ret.1, %free_bhs.cleanup_crit_edge ], [ -12, %if.then.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %bhs_inline) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mb_cache_entry_create(ptr noundef, i32 noundef, i32 noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_bread_batch(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ext4_xattr_block_cache_insert(ptr noundef %ea_block_cache, ptr nocapture noundef readonly %bh) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ea_block_cache, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 5
  %0 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_data, align 4
  %h_refcount = getelementptr inbounds %struct.ext4_xattr_header, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %h_refcount to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %h_refcount, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %4)
  %cmp = icmp ult i32 %4, 1024
  %h_hash = getelementptr inbounds %struct.ext4_xattr_header, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %h_hash to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %h_hash, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 3
  %8 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %b_blocknr, align 8
  %call = tail call i32 @mb_cache_entry_create(ptr noundef nonnull %ea_block_cache, i32 noundef 3136, i32 noundef %7, i64 noundef %9, i1 noundef zeroext %cmp) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lock_buffer(ptr noundef %bh) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__might_sleep(ptr noundef nonnull @.str.14, i32 noundef 366) #13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bh, i32 noundef 4) #13
  %0 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bh, align 4
  %and.i.i.i = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %trylock_buffer.exit, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

trylock_buffer.exit:                              ; preds = %entry
  tail call void @llvm.prefetch.p0(ptr %bh, i32 1, i32 3, i32 1) #13
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bh, ptr %bh, i32 4, ptr elementtype(i32) %bh) #13, !srcloc !162
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !163
  %3 = and i32 %asmresult.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.not = icmp eq i32 %3, 0
  br i1 %tobool.not.not, label %trylock_buffer.exit.if.end_crit_edge, label %trylock_buffer.exit.if.then_crit_edge

trylock_buffer.exit.if.then_crit_edge:            ; preds = %trylock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

trylock_buffer.exit.if.end_crit_edge:             ; preds = %trylock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %trylock_buffer.exit.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @__lock_buffer(ptr noundef %bh) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %trylock_buffer.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ext4_xattr_block_csum(ptr nocapture noundef readonly %inode, i64 noundef %block_nr, ptr noundef %hdr) unnamed_addr #0 align 64 {
entry:
  %desc.i36 = alloca %struct.anon.94, align 8
  %desc.i27 = alloca %struct.anon.94, align 8
  %desc.i18 = alloca %struct.anon.94, align 8
  %desc.i = alloca %struct.anon.94, align 8
  %dsk_block_nr = alloca i64, align 8
  %dummy_csum = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dsk_block_nr) #13
  %4 = tail call i64 @llvm.bswap.i64(i64 %block_nr)
  %5 = ptrtoint ptr %dsk_block_nr to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %dsk_block_nr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy_csum) #13
  %6 = ptrtoint ptr %dummy_csum to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %dummy_csum, align 4
  %s_csum_seed = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 122
  %7 = ptrtoint ptr %s_csum_seed to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_csum_seed, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %desc.i) #13
  %9 = getelementptr inbounds %struct.anon.94, ptr %desc.i, i32 0, i32 1
  %s_chksum_driver.i = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 121
  %10 = call ptr @memset(ptr %desc.i, i32 255, i32 16)
  %11 = ptrtoint ptr %s_chksum_driver.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_chksum_driver.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %14)
  %cmp.not.i = icmp eq i32 %14, 4
  br i1 %cmp.not.i, label %do.end7.i, label %do.body2.i, !prof !159

do.body2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #13, !srcloc !160
  unreachable

do.end7.i:                                        ; preds = %entry
  %15 = ptrtoint ptr %desc.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %desc.i, align 8
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %8, ptr %9, align 8
  %call11.i = call i32 @crypto_shash_update(ptr noundef nonnull %desc.i, ptr noundef nonnull %dsk_block_nr, i32 noundef 8) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %ext4_chksum.exit, label %do.body20.i, !prof !159

do.body20.i:                                      ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #13, !srcloc !161
  unreachable

ext4_chksum.exit:                                 ; preds = %do.end7.i
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %9, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %desc.i) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %desc.i18) #13
  %19 = getelementptr inbounds %struct.anon.94, ptr %desc.i18, i32 0, i32 1
  %20 = call ptr @memset(ptr %desc.i18, i32 255, i32 16)
  %21 = ptrtoint ptr %s_chksum_driver.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %s_chksum_driver.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %24)
  %cmp.not.i20 = icmp eq i32 %24, 4
  br i1 %cmp.not.i20, label %do.end7.i24, label %do.body2.i21, !prof !159

do.body2.i21:                                     ; preds = %ext4_chksum.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #13, !srcloc !160
  unreachable

do.end7.i24:                                      ; preds = %ext4_chksum.exit
  %25 = ptrtoint ptr %desc.i18 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %desc.i18, align 8
  %26 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %18, ptr %19, align 8
  %call11.i22 = call i32 @crypto_shash_update(ptr noundef nonnull %desc.i18, ptr noundef %hdr, i32 noundef 16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i22)
  %tobool12.not.i23 = icmp eq i32 %call11.i22, 0
  br i1 %tobool12.not.i23, label %ext4_chksum.exit26, label %do.body20.i25, !prof !159

do.body20.i25:                                    ; preds = %do.end7.i24
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #13, !srcloc !161
  unreachable

ext4_chksum.exit26:                               ; preds = %do.end7.i24
  %27 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %19, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %desc.i18) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %desc.i27) #13
  %29 = getelementptr inbounds %struct.anon.94, ptr %desc.i27, i32 0, i32 1
  %30 = call ptr @memset(ptr %desc.i27, i32 255, i32 16)
  %31 = ptrtoint ptr %s_chksum_driver.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %s_chksum_driver.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %34)
  %cmp.not.i29 = icmp eq i32 %34, 4
  br i1 %cmp.not.i29, label %do.end7.i33, label %do.body2.i30, !prof !159

do.body2.i30:                                     ; preds = %ext4_chksum.exit26
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #13, !srcloc !160
  unreachable

do.end7.i33:                                      ; preds = %ext4_chksum.exit26
  %35 = ptrtoint ptr %desc.i27 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %desc.i27, align 8
  %36 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %28, ptr %29, align 8
  %call11.i31 = call i32 @crypto_shash_update(ptr noundef nonnull %desc.i27, ptr noundef nonnull %dummy_csum, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i31)
  %tobool12.not.i32 = icmp eq i32 %call11.i31, 0
  br i1 %tobool12.not.i32, label %ext4_chksum.exit35, label %do.body20.i34, !prof !159

do.body20.i34:                                    ; preds = %do.end7.i33
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #13, !srcloc !161
  unreachable

ext4_chksum.exit35:                               ; preds = %do.end7.i33
  %37 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %29, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %desc.i27) #13
  %39 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %i_sb, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %s_blocksize, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %desc.i36) #13
  %43 = getelementptr inbounds %struct.anon.94, ptr %desc.i36, i32 0, i32 1
  %44 = call ptr @memset(ptr %desc.i36, i32 255, i32 16)
  %45 = ptrtoint ptr %s_chksum_driver.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %s_chksum_driver.i, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %46, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %48)
  %cmp.not.i38 = icmp eq i32 %48, 4
  br i1 %cmp.not.i38, label %do.end7.i42, label %do.body2.i39, !prof !159

do.body2.i39:                                     ; preds = %ext4_chksum.exit35
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #13, !srcloc !160
  unreachable

do.end7.i42:                                      ; preds = %ext4_chksum.exit35
  %sub = add i32 %42, -20
  %add.ptr = getelementptr i8, ptr %hdr, i32 20
  %49 = ptrtoint ptr %desc.i36 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %desc.i36, align 8
  %50 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %38, ptr %43, align 8
  %call11.i40 = call i32 @crypto_shash_update(ptr noundef nonnull %desc.i36, ptr noundef %add.ptr, i32 noundef %sub) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i40)
  %tobool12.not.i41 = icmp eq i32 %call11.i40, 0
  br i1 %tobool12.not.i41, label %ext4_chksum.exit44, label %do.body20.i43, !prof !159

do.body20.i43:                                    ; preds = %do.end7.i42
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #13, !srcloc !161
  unreachable

ext4_chksum.exit44:                               ; preds = %do.end7.i42
  call void @__sanitizer_cov_trace_pc() #15
  %51 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %43, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %desc.i36) #13
  %53 = call i32 @llvm.bswap.i32(i32 %52)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy_csum) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dsk_block_nr) #13
  ret i32 %53
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dquot_alloc_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dquot_free_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__dquot_alloc_space(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mb_cache_entry_find_first(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mb_cache_entry_put(ptr noundef %entry1) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %e_refcnt = getelementptr inbounds %struct.mb_cache_entry, ptr %entry1, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %e_refcnt, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !164
  tail call void @llvm.prefetch.p0(ptr %e_refcnt, i32 1, i32 3, i32 1) #13
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %e_refcnt, ptr %e_refcnt, i32 1, ptr elementtype(i32) %e_refcnt) #13, !srcloc !165
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !166
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__mb_cache_entry_free(ptr noundef %entry1) #13
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ext4_iget(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_bad_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mb_cache_entry_touch(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mb_cache_entry_find_next(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mb_cache_entry_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ext4_xattr_inode_update_ref(ptr noundef %handle, ptr noundef %ea_inode, i32 noundef %ref_change) unnamed_addr #0 align 64 {
entry:
  %iloc = alloca %struct.ext4_iloc, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %ea_inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %s_ea_inode_cache = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 128
  %4 = ptrtoint ptr %s_ea_inode_cache to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_ea_inode_cache, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %iloc) #13
  %6 = ptrtoint ptr %iloc to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %iloc, align 4, !annotation !157
  %7 = getelementptr inbounds %struct.ext4_iloc, ptr %iloc, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4, !annotation !157
  %9 = getelementptr inbounds %struct.ext4_iloc, ptr %iloc, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %9, align 4, !annotation !157
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %ea_inode, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #13
  %call = call i32 @ext4_reserve_inode_write(ptr noundef %handle, ptr noundef %ea_inode, ptr noundef nonnull %iloc) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end:                                           ; preds = %entry
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %ea_inode, i32 0, i32 17
  %11 = ptrtoint ptr %i_ctime.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %i_ctime.i, align 8
  %shl.i = shl i64 %12, 32
  %i_version.i.i = getelementptr inbounds %struct.inode, ptr %ea_inode, i32 0, i32 38
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i.i, i32 noundef 8) #13
  %call.i.i.i = call i64 @generic_atomic64_read(ptr noundef %i_version.i.i) #13
  %conv1.i = and i64 %call.i.i.i, 4294967295
  %conv = sext i32 %ref_change to i64
  %or.i = add i64 %shl.i, %conv
  %add = add i64 %or.i, %conv1.i
  %shr.i = lshr i64 %add, 32
  %13 = ptrtoint ptr %i_ctime.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %shr.i, ptr %i_ctime.i, align 8
  %and.i = and i64 %add, 4294967295
  %call.i.i.i.i300 = call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i.i, i32 noundef 8) #13
  call void @generic_atomic64_set(ptr noundef %i_version.i.i, i64 noundef %and.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ref_change)
  %cmp = icmp sgt i32 %ref_change, 0
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %add)
  %cmp4 = icmp slt i64 %add, 1
  br i1 %cmp4, label %land.rhs, label %if.end36

land.rhs:                                         ; preds = %if.then3
  %.b297 = load i1, ptr @ext4_xattr_inode_update_ref.__already_done, align 1
  br i1 %.b297, label %land.rhs.if.end237_crit_edge, label %if.then14, !prof !159

land.rhs.if.end237_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end237

if.then14:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @ext4_xattr_inode_update_ref.__already_done, align 1
  %i_ino = getelementptr inbounds %struct.inode, ptr %ea_inode, i32 0, i32 11
  %14 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %i_ino, align 8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 997, i32 noundef 9, ptr noundef nonnull @.str.16, i32 noundef %15, i64 noundef %add) #13
  br label %if.end237

if.end36:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %add)
  %cmp44 = icmp eq i64 %add, 1
  br i1 %cmp44, label %if.then46, label %if.end36.if.end237_crit_edge

if.end36.if.end237_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end237

if.then46:                                        ; preds = %if.end36
  %16 = getelementptr inbounds %struct.inode, ptr %ea_inode, i32 0, i32 12
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool48.not = icmp eq i32 %18, 0
  br i1 %tobool48.not, label %if.then46.if.end95_crit_edge, label %land.rhs56

if.then46.if.end95_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end95

land.rhs56:                                       ; preds = %if.then46
  %.b291296 = load i1, ptr @ext4_xattr_inode_update_ref.__already_done.17, align 1
  br i1 %.b291296, label %land.rhs56.if.end95_crit_edge, label %if.then67, !prof !159

land.rhs56.if.end95_crit_edge:                    ; preds = %land.rhs56
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end95

if.then67:                                        ; preds = %land.rhs56
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @ext4_xattr_inode_update_ref.__already_done.17, align 1
  %i_ino81 = getelementptr inbounds %struct.inode, ptr %ea_inode, i32 0, i32 11
  %19 = ptrtoint ptr %i_ino81 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %i_ino81, align 8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1001, i32 noundef 9, ptr noundef nonnull @.str.18, i32 noundef %20, i32 noundef %18) #13
  br label %if.end95

if.end95:                                         ; preds = %if.then67, %land.rhs56.if.end95_crit_edge, %if.then46.if.end95_crit_edge
  call void @set_nlink(ptr noundef %ea_inode, i32 noundef 1) #13
  %call103 = call i32 @ext4_orphan_del(ptr noundef %handle, ptr noundef %ea_inode) #13
  %tobool104.not = icmp eq ptr %5, null
  br i1 %tobool104.not, label %if.end95.if.end237_crit_edge, label %if.then105

if.end95.if.end237_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end237

if.then105:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #15
  %i_atime.i = getelementptr inbounds %struct.inode, ptr %ea_inode, i32 0, i32 15
  %21 = ptrtoint ptr %i_atime.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %i_atime.i, align 8
  %conv.i = trunc i64 %22 to i32
  %i_ino107 = getelementptr inbounds %struct.inode, ptr %ea_inode, i32 0, i32 11
  %23 = ptrtoint ptr %i_ino107 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %i_ino107, align 8
  %conv108 = zext i32 %24 to i64
  %call109 = call i32 @mb_cache_entry_create(ptr noundef nonnull %5, i32 noundef 3136, i32 noundef %conv.i, i64 noundef %conv108, i1 noundef zeroext true) #13
  br label %if.end237

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add)
  %cmp113 = icmp slt i64 %add, 0
  br i1 %cmp113, label %land.rhs122, label %if.end161

land.rhs122:                                      ; preds = %if.else
  %.b292295 = load i1, ptr @ext4_xattr_inode_update_ref.__already_done.19, align 1
  br i1 %.b292295, label %land.rhs122.if.end237_crit_edge, label %if.then133, !prof !159

land.rhs122.if.end237_crit_edge:                  ; preds = %land.rhs122
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end237

if.then133:                                       ; preds = %land.rhs122
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @ext4_xattr_inode_update_ref.__already_done.19, align 1
  %i_ino147 = getelementptr inbounds %struct.inode, ptr %ea_inode, i32 0, i32 11
  %25 = ptrtoint ptr %i_ino147 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %i_ino147, align 8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1016, i32 noundef 9, ptr noundef nonnull @.str.16, i32 noundef %26, i64 noundef %add) #13
  br label %if.end237

if.end161:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add)
  %cmp169 = icmp eq i64 %add, 0
  br i1 %cmp169, label %if.then171, label %if.end161.if.end237_crit_edge

if.end161.if.end237_crit_edge:                    ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end237

if.then171:                                       ; preds = %if.end161
  %27 = getelementptr inbounds %struct.inode, ptr %ea_inode, i32 0, i32 12
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp173.not = icmp eq i32 %29, 1
  br i1 %cmp173.not, label %if.then171.if.end221_crit_edge, label %land.rhs182

if.then171.if.end221_crit_edge:                   ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end221

land.rhs182:                                      ; preds = %if.then171
  %.b293294 = load i1, ptr @ext4_xattr_inode_update_ref.__already_done.20, align 1
  br i1 %.b293294, label %land.rhs182.if.end221_crit_edge, label %if.then193, !prof !159

land.rhs182.if.end221_crit_edge:                  ; preds = %land.rhs182
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end221

if.then193:                                       ; preds = %land.rhs182
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @ext4_xattr_inode_update_ref.__already_done.20, align 1
  %i_ino207 = getelementptr inbounds %struct.inode, ptr %ea_inode, i32 0, i32 11
  %30 = ptrtoint ptr %i_ino207 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %i_ino207, align 8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1021, i32 noundef 9, ptr noundef nonnull @.str.18, i32 noundef %31, i32 noundef %29) #13
  br label %if.end221

if.end221:                                        ; preds = %if.then193, %land.rhs182.if.end221_crit_edge, %if.then171.if.end221_crit_edge
  call void @clear_nlink(ptr noundef %ea_inode) #13
  %call229 = call i32 @ext4_orphan_add(ptr noundef %handle, ptr noundef %ea_inode) #13
  %tobool230.not = icmp eq ptr %5, null
  br i1 %tobool230.not, label %if.end221.if.end237_crit_edge, label %if.then231

if.end221.if.end237_crit_edge:                    ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end237

if.then231:                                       ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #15
  %i_atime.i301 = getelementptr inbounds %struct.inode, ptr %ea_inode, i32 0, i32 15
  %32 = ptrtoint ptr %i_atime.i301 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %i_atime.i301, align 8
  %conv.i302 = trunc i64 %33 to i32
  %i_ino233 = getelementptr inbounds %struct.inode, ptr %ea_inode, i32 0, i32 11
  %34 = ptrtoint ptr %i_ino233 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %i_ino233, align 8
  %conv234 = zext i32 %35 to i64
  call void @mb_cache_entry_delete(ptr noundef nonnull %5, i32 noundef %conv.i302, i64 noundef %conv234) #13
  br label %if.end237

if.end237:                                        ; preds = %if.then231, %if.end221.if.end237_crit_edge, %if.end161.if.end237_crit_edge, %if.then133, %land.rhs122.if.end237_crit_edge, %if.then105, %if.end95.if.end237_crit_edge, %if.end36.if.end237_crit_edge, %if.then14, %land.rhs.if.end237_crit_edge
  %call238 = call i32 @ext4_mark_iloc_dirty(ptr noundef %handle, ptr noundef %ea_inode, ptr noundef nonnull %iloc) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call238)
  %tobool239.not = icmp eq i32 %call238, 0
  br i1 %tobool239.not, label %if.end237.out_crit_edge, label %if.then240

if.end237.out_crit_edge:                          ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then240:                                       ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning_inode(ptr noundef %ea_inode, ptr noundef nonnull @__func__.ext4_xattr_inode_update_ref, i32 noundef 1037, ptr noundef nonnull @.str.21, i32 noundef %call238) #13
  br label %out

out:                                              ; preds = %if.then240, %if.end237.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call238, %if.then240 ], [ 0, %if.end237.out_crit_edge ]
  call void @up_write(ptr noundef %i_rwsem.i) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %iloc) #13
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ext4_xattr_inode_set_ref(ptr noundef %ea_inode, i64 noundef %ref_count) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i64 %ref_count, 32
  %i_ctime = getelementptr inbounds %struct.inode, ptr %ea_inode, i32 0, i32 17
  %0 = ptrtoint ptr %i_ctime to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %shr, ptr %i_ctime, align 8
  %and = and i64 %ref_count, 4294967295
  %i_version.i = getelementptr inbounds %struct.inode, ptr %ea_inode, i32 0, i32 38
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i, i32 noundef 8) #13
  tail call void @generic_atomic64_set(ptr noundef %i_version.i, i64 noundef %and) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_orphan_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_nlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_orphan_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mb_cache_entry_delete(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ext4_new_inode(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_set_aops(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_inode_attach_jinode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dquot_drop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_map_blocks(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ext4_getblk(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_handle_dirty_metadata(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ext4_xattr_block_csum_set(ptr nocapture noundef readonly %inode, ptr nocapture noundef readonly %bh) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_es.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %s_es.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_es.i.i, align 4
  %s_feature_ro_compat.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %5, i32 0, i32 30
  %6 = ptrtoint ptr %s_feature_ro_compat.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_feature_ro_compat.i.i, align 4
  %and.i.i = and i32 %7, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.not.i, label %entry.if.end32.i_crit_edge, label %land.rhs.i

entry.if.end32.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32.i

land.rhs.i:                                       ; preds = %entry
  %s_chksum_driver.i = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 121
  %8 = ptrtoint ptr %s_chksum_driver.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_chksum_driver.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %land.rhs5.i, label %land.rhs.i.if.end32.i_crit_edge

land.rhs.i.if.end32.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32.i

land.rhs5.i:                                      ; preds = %land.rhs.i
  %.b50.i = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  br i1 %.b50.i, label %land.rhs5.i.if.end32.i_crit_edge, label %if.then.i, !prof !159

land.rhs5.i.if.end32.i_crit_edge:                 ; preds = %land.rhs5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32.i

if.then.i:                                        ; preds = %land.rhs5.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 3289, i32 noundef 9, ptr noundef null) #13
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then.i, %land.rhs5.i.if.end32.i_crit_edge, %land.rhs.i.if.end32.i_crit_edge, %entry.if.end32.i_crit_edge
  %10 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_es.i53.i = getelementptr inbounds %struct.ext4_sb_info, ptr %11, i32 0, i32 15
  %12 = ptrtoint ptr %s_es.i53.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_es.i53.i, align 4
  %s_feature_ro_compat.i54.i = getelementptr inbounds %struct.ext4_super_block, ptr %13, i32 0, i32 30
  %14 = ptrtoint ptr %s_feature_ro_compat.i54.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %s_feature_ro_compat.i54.i, align 4
  %and.i55.i = and i32 %15, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i55.i)
  %cmp.i56.not.i = icmp eq i32 %and.i55.i, 0
  br i1 %cmp.i56.not.i, label %if.end32.i.if.end_crit_edge, label %ext4_has_metadata_csum.exit

if.end32.i.if.end_crit_edge:                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

ext4_has_metadata_csum.exit:                      ; preds = %if.end32.i
  %s_chksum_driver43.i = getelementptr inbounds %struct.ext4_sb_info, ptr %11, i32 0, i32 121
  %16 = ptrtoint ptr %s_chksum_driver43.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_chksum_driver43.i, align 4
  %cmp.i.not = icmp eq ptr %17, null
  br i1 %cmp.i.not, label %ext4_has_metadata_csum.exit.if.end_crit_edge, label %if.then

ext4_has_metadata_csum.exit.if.end_crit_edge:     ; preds = %ext4_has_metadata_csum.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %ext4_has_metadata_csum.exit
  call void @__sanitizer_cov_trace_pc() #15
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 3
  %18 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %b_blocknr, align 8
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 5
  %20 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %b_data, align 4
  %call1 = tail call fastcc i32 @ext4_xattr_block_csum(ptr noundef %inode, i64 noundef %19, ptr noundef %21)
  %22 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %b_data, align 4
  %h_checksum = getelementptr inbounds %struct.ext4_xattr_header, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %h_checksum to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call1, ptr %h_checksum, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %ext4_has_metadata_csum.exit.if.end_crit_edge, %if.end32.i.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dquot_initialize_needed(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dquot_free_block(ptr noundef %inode, i64 noundef %nr) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %i_blkbits = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %0 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %i_blkbits, align 2
  %sh_prom = zext i8 %1 to i64
  %shl = shl i64 %nr, %sh_prom
  tail call void @__dquot_free_space(ptr noundef %inode, i64 noundef %shl, i32 noundef 0) #13
  tail call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 1) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ext4_new_meta_blocks(ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_free_blocks(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ext4_xattr_inode_inc_ref_all(ptr noundef %handle, ptr nocapture noundef readonly %parent, ptr noundef readonly %first) unnamed_addr #0 align 64 {
entry:
  %ea_inode = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ea_inode) #13
  %0 = ptrtoint ptr %ea_inode to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %ea_inode, align 4, !annotation !157
  %1 = ptrtoint ptr %first to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %first, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not75 = icmp eq i32 %2, 0
  br i1 %cmp.not75, label %entry.cleanup37_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup37_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup37

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %entry1.076 = phi ptr [ %add.ptr, %for.inc.for.body_crit_edge ], [ %first, %entry.for.body_crit_edge ]
  %e_value_inum = getelementptr inbounds %struct.ext4_xattr_entry, ptr %entry1.076, i32 0, i32 3
  %3 = ptrtoint ptr %e_value_inum to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %e_value_inum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end:                                           ; preds = %for.body
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %e_hash = getelementptr inbounds %struct.ext4_xattr_entry, ptr %entry1.076, i32 0, i32 5
  %6 = ptrtoint ptr %e_hash to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %e_hash, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %call = call fastcc i32 @ext4_xattr_inode_iget(ptr noundef %parent, i32 noundef %5, i32 noundef %8, ptr noundef nonnull %ea_inode)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %9 = ptrtoint ptr %ea_inode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ea_inode, align 4
  %call.i = tail call fastcc i32 @ext4_xattr_inode_update_ref(ptr noundef %handle, ptr noundef %10, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not = icmp eq i32 %call.i, 0
  br i1 %tobool7.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning_inode(ptr noundef %10, ptr noundef nonnull @__func__.ext4_xattr_inode_inc_ref_all, i32 noundef 1074, ptr noundef nonnull @.str.28, i32 noundef %call.i) #13
  tail call void @iput(ptr noundef %10) #13
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @iput(ptr noundef %10) #13
  br label %for.inc

for.inc:                                          ; preds = %if.end9, %for.body.for.inc_crit_edge
  %11 = ptrtoint ptr %entry1.076 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %entry1.076, align 4
  %conv = zext i8 %12 to i32
  %add10 = add nuw nsw i32 %conv, 19
  %and = and i32 %add10, 508
  %add.ptr = getelementptr i8, ptr %entry1.076, i32 %and
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr, align 4
  %cmp.not = icmp eq i32 %14, 0
  br i1 %cmp.not, label %for.inc.cleanup37_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.cleanup37_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup37

cleanup:                                          ; preds = %if.then8, %if.end.cleanup_crit_edge
  %err.0 = phi i32 [ %call.i, %if.then8 ], [ %call, %if.end.cleanup_crit_edge ]
  %cmp12.not78 = icmp eq ptr %entry1.076, %first
  br i1 %cmp12.not78, label %cleanup.cleanup37_crit_edge, label %for.body14.lr.ph

cleanup.cleanup37_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup37

for.body14.lr.ph:                                 ; preds = %cleanup
  %i_sb = getelementptr inbounds %struct.inode, ptr %parent, i32 0, i32 8
  br label %for.body14

for.body14:                                       ; preds = %for.inc29.for.body14_crit_edge, %for.body14.lr.ph
  %entry1.179 = phi ptr [ %first, %for.body14.lr.ph ], [ %add.ptr35, %for.inc29.for.body14_crit_edge ]
  %e_value_inum15 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %entry1.179, i32 0, i32 3
  %15 = ptrtoint ptr %e_value_inum15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %e_value_inum15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool16.not = icmp eq i32 %16, 0
  br i1 %tobool16.not, label %for.body14.for.inc29_crit_edge, label %if.end18

for.body14.for.inc29_crit_edge:                   ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc29

if.end18:                                         ; preds = %for.body14
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %e_hash20 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %entry1.179, i32 0, i32 5
  %18 = ptrtoint ptr %e_hash20 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %e_hash20, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %call21 = call fastcc i32 @ext4_xattr_inode_iget(ptr noundef %parent, i32 noundef %17, i32 noundef %20, ptr noundef nonnull %ea_inode)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.then23

if.then23:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  %21 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %22, ptr noundef nonnull @__func__.ext4_xattr_inode_inc_ref_all, i32 noundef 1097, ptr noundef nonnull @.str.29, i32 noundef %17, i32 noundef %call21) #13
  br label %for.inc29

if.end24:                                         ; preds = %if.end18
  %23 = ptrtoint ptr %ea_inode to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ea_inode, align 4
  %call.i69 = tail call fastcc i32 @ext4_xattr_inode_update_ref(ptr noundef %handle, ptr noundef %24, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69)
  %tobool26.not = icmp eq i32 %call.i69, 0
  br i1 %tobool26.not, label %if.end24.if.end28_crit_edge, label %if.then27

if.end24.if.end28_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning_inode(ptr noundef %24, ptr noundef nonnull @__func__.ext4_xattr_inode_inc_ref_all, i32 noundef 1103, ptr noundef nonnull @.str.30, i32 noundef %call.i69) #13
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end24.if.end28_crit_edge
  tail call void @iput(ptr noundef %24) #13
  br label %for.inc29

for.inc29:                                        ; preds = %if.end28, %if.then23, %for.body14.for.inc29_crit_edge
  %25 = ptrtoint ptr %entry1.179 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %entry1.179, align 4
  %conv31 = zext i8 %26 to i32
  %add33 = add nuw nsw i32 %conv31, 19
  %and34 = and i32 %add33, 508
  %add.ptr35 = getelementptr i8, ptr %entry1.179, i32 %and34
  %cmp12.not = icmp eq ptr %add.ptr35, %entry1.076
  br i1 %cmp12.not, label %for.inc29.cleanup37_crit_edge, label %for.inc29.for.body14_crit_edge

for.inc29.for.body14_crit_edge:                   ; preds = %for.inc29
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body14

for.inc29.cleanup37_crit_edge:                    ; preds = %for.inc29
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup37

cleanup37:                                        ; preds = %for.inc29.cleanup37_crit_edge, %cleanup.cleanup37_crit_edge, %for.inc.cleanup37_crit_edge, %entry.cleanup37_crit_edge
  %retval.0 = phi i32 [ %err.0, %cleanup.cleanup37_crit_edge ], [ 0, %entry.cleanup37_crit_edge ], [ %err.0, %for.inc29.cleanup37_crit_edge ], [ 0, %for.inc.cleanup37_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ea_inode) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_journal_get_create_access(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dquot_free_space(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__getblk_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_superblock_csum_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_update_dynamic_rev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ext4_journal_start_sb(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_journal_ensure_credits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2__journal_restart(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_error(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mb_cache_entry_get(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_std_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nounwind readonly }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nobuiltin nounwind }
attributes #17 = { nobuiltin }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !25, !27, !29, !31, !33, !35, !37, !38, !40, !41, !43, !45, !47, !49, !51, !53, !55, !56, !58, !60, !62, !64, !66, !68, !70, !71, !73, !74, !76, !78, !80, !81, !83, !85, !87, !89, !91, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !111, !113, !114, !116, !118, !120, !122, !124, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145}
!llvm.named.register.sp = !{!147}
!llvm.module.flags = !{!148, !149, !150, !151, !152, !153, !154, !155}
!llvm.ident = !{!156}

!0 = !{ptr @ext4_xattr_handlers, !1, !"ext4_xattr_handlers", i1 false, i1 false}
!1 = !{!"../fs/ext4/xattr.c", i32 99, i32 29}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/ext4/xattr.c", i32 126, i32 2}
!4 = !{ptr @__func__.ext4_xattr_ibody_get, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/ext4/xattr.c", i32 593, i32 10}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/ext4/xattr.c", i32 815, i32 2}
!8 = !{ptr @__func__.ext4_get_inode_usage, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/ext4/xattr.c", i32 824, i32 9}
!10 = !{ptr @__func__.ext4_xattr_ibody_find, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/ext4/xattr.c", i32 2187, i32 11}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../fs/ext4/xattr.c", i32 2316, i32 3}
!14 = !{ptr @__func__.ext4_xattr_set, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/ext4/xattr.c", i32 2482, i32 12}
!16 = !{ptr @ext4_expand_extra_isize_ea.mnt_count, !17, !"mnt_count", i1 false, i1 false}
!17 = !{!"../fs/ext4/xattr.c", i32 2679, i32 22}
!18 = !{ptr @__func__.ext4_expand_extra_isize_ea, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/ext4/xattr.c", i32 2705, i32 10}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/ext4/xattr.c", i32 2771, i32 3}
!22 = !{ptr @__func__.ext4_xattr_delete_inode, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/ext4/xattr.c", i32 2845, i32 3}
!24 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/ext4/xattr.c", i32 2854, i32 4}
!27 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/ext4/xattr.c", i32 2861, i32 4}
!29 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/ext4/xattr.c", i32 2881, i32 5}
!31 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/ext4/xattr.c", i32 2919, i32 4}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/ext4/xattr.c", i32 275, i32 8}
!35 = !{ptr @__func__.xattr_find_entry, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/ext4/xattr.c", i32 296, i32 4}
!37 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @__func__.ext4_xattr_inode_get, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/ext4/xattr.c", i32 483, i32 3}
!40 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/ext4/xattr.c", i32 498, i32 4}
!43 = !{ptr @__func__.ext4_xattr_block_get, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/ext4/xattr.c", i32 536, i32 10}
!45 = !{ptr @__func__.ext4_xattr_ibody_list, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/ext4/xattr.c", i32 738, i32 10}
!47 = !{ptr @ext4_xattr_handler_map, !48, !"ext4_xattr_handler_map", i1 false, i1 false}
!48 = !{!"../fs/ext4/xattr.c", i32 86, i32 43}
!49 = !{ptr @__func__.ext4_xattr_block_list, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/ext4/xattr.c", i32 709, i32 10}
!51 = !{ptr @.str.12, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/ext4/xattr.c", i32 251, i32 8}
!53 = distinct !{null, !54, !"__already_done", i1 false, i1 false}
!54 = !{!"../fs/ext4/ext4.h", i32 3288, i32 2}
!55 = !{ptr @.str.13, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.14, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../include/linux/buffer_head.h", i32 366, i32 2}
!58 = !{ptr @__func__.ext4_xattr_set_entry, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/ext4/xattr.c", i32 1596, i32 4}
!60 = distinct !{null, !61, !"__already_done", i1 false, i1 false}
!61 = !{!"../fs/ext4/xattr.c", i32 1650, i32 3}
!62 = !{ptr @.str.15, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/ext4/xattr.c", i32 1677, i32 6}
!64 = distinct !{null, !65, !"__already_done", i1 false, i1 false}
!65 = !{!"../fs/ext4/xattr.c", i32 1469, i32 2}
!66 = !{ptr @__func__.ext4_xattr_inode_cache_find, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/ext4/xattr.c", i32 1479, i32 14}
!68 = distinct !{null, !69, !"__already_done", i1 false, i1 false}
!69 = !{!"../fs/ext4/xattr.c", i32 996, i32 3}
!70 = !{ptr @.str.16, !69, !"<string literal>", i1 false, i1 false}
!71 = distinct !{null, !72, !"__already_done", i1 false, i1 false}
!72 = !{!"../fs/ext4/xattr.c", i32 1000, i32 4}
!73 = !{ptr @.str.18, !72, !"<string literal>", i1 false, i1 false}
!74 = distinct !{null, !75, !"__already_done", i1 false, i1 false}
!75 = !{!"../fs/ext4/xattr.c", i32 1015, i32 3}
!76 = distinct !{null, !77, !"__already_done", i1 false, i1 false}
!77 = !{!"../fs/ext4/xattr.c", i32 1019, i32 4}
!78 = !{ptr @__func__.ext4_xattr_inode_update_ref, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../fs/ext4/xattr.c", i32 1036, i32 3}
!80 = !{ptr @.str.21, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @__func__.ext4_xattr_inode_create, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/ext4/xattr.c", i32 1431, i32 9}
!83 = !{ptr @__func__.ext4_xattr_inode_write, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../fs/ext4/xattr.c", i32 1350, i32 4}
!85 = distinct !{null, !86, !"__already_done", i1 false, i1 false}
!86 = !{!"../fs/ext4/xattr.c", i32 1372, i32 4}
!87 = !{ptr @.str.22, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../fs/ext4/xattr.c", i32 1373, i32 4}
!89 = distinct !{null, !90, !"__already_done", i1 false, i1 false}
!90 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!91 = !{ptr @.str.23, !90, !"<string literal>", i1 false, i1 false}
!92 = distinct !{null, !93, !"__already_done", i1 false, i1 false}
!93 = !{!"../fs/ext4/ext4.h", i32 3414, i32 2}
!94 = !{ptr @__func__.ext4_xattr_get_block, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../fs/ext4/xattr.c", i32 2248, i32 10}
!96 = !{ptr @__func__.ext4_xattr_block_find, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../fs/ext4/xattr.c", i32 1824, i32 11}
!98 = !{ptr @__func__.ext4_xattr_block_set, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../fs/ext4/xattr.c", i32 1862, i32 11}
!100 = distinct !{null, !101, !"__already_done", i1 false, i1 false}
!101 = !{!"../fs/ext4/xattr.c", i32 1986, i32 5}
!102 = distinct !{null, !103, !"__already_done", i1 false, i1 false}
!103 = !{!"../fs/ext4/xattr.c", i32 2056, i32 4}
!104 = !{ptr @.str.25, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../fs/ext4/xattr.c", i32 2093, i32 6}
!106 = !{ptr @.str.26, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../fs/ext4/xattr.c", i32 2165, i32 2}
!108 = !{ptr @__func__.ext4_xattr_block_cache_find, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../fs/ext4/xattr.c", i32 3044, i32 4}
!110 = !{ptr @.str.27, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @__func__.ext4_xattr_inode_inc_ref_all, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../fs/ext4/xattr.c", i32 1074, i32 4}
!113 = !{ptr @.str.28, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.29, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../fs/ext4/xattr.c", i32 1095, i32 4}
!116 = !{ptr @.str.30, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../fs/ext4/xattr.c", i32 1102, i32 4}
!118 = !{ptr @__func__.ext4_xattr_update_super_block, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../fs/ext4/xattr.c", i32 794, i32 6}
!120 = !{ptr @.str.31, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../fs/ext4/xattr.c", i32 2629, i32 30}
!122 = !{ptr @__func__.ext4_xattr_inode_dec_ref_all, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../fs/ext4/xattr.c", i32 1157, i32 4}
!124 = !{ptr @.str.32, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @.str.33, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../fs/ext4/xattr.c", i32 1168, i32 4}
!127 = !{ptr @.str.34, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../fs/ext4/xattr.c", i32 1176, i32 5}
!129 = !{ptr @.str.35, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../fs/ext4/xattr.c", i32 1185, i32 4}
!131 = !{ptr @.str.36, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../fs/ext4/xattr.c", i32 1215, i32 4}
!133 = !{ptr @__func__.ext4_xattr_restart_fn, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../fs/ext4/xattr.c", i32 1117, i32 11}
!135 = !{ptr @.str.37, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../fs/ext4/xattr.c", i32 1119, i32 4}
!137 = !{ptr @__func__.ext4_xattr_inode_iget, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../fs/ext4/xattr.c", i32 389, i32 10}
!139 = !{ptr @.str.38, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../fs/ext4/xattr.c", i32 392, i32 3}
!141 = !{ptr @.str.39, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../fs/ext4/xattr.c", i32 399, i32 3}
!143 = !{ptr @.str.40, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../fs/ext4/xattr.c", i32 407, i32 3}
!145 = !{ptr @__func__.ext4_xattr_release_block, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../fs/ext4/xattr.c", i32 1235, i32 10}
!147 = !{!"sp"}
!148 = !{i32 1, !"wchar_size", i32 2}
!149 = !{i32 1, !"min_enum_size", i32 4}
!150 = !{i32 8, !"branch-target-enforcement", i32 0}
!151 = !{i32 8, !"sign-return-address", i32 0}
!152 = !{i32 8, !"sign-return-address-all", i32 0}
!153 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!154 = !{i32 7, !"uwtable", i32 1}
!155 = !{i32 7, !"frame-pointer", i32 2}
!156 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!157 = !{!"auto-init"}
!158 = !{!"branch_weights", i32 1, i32 2000}
!159 = !{!"branch_weights", i32 2000, i32 1}
!160 = !{i64 2155143585, i64 2155144065, i64 2155143622, i64 2155143678, i64 2155143712, i64 2155143736, i64 2155143777, i64 2155143798, i64 2155143826, i64 2155143860}
!161 = !{i64 2155145227, i64 2155145707, i64 2155145264, i64 2155145320, i64 2155145354, i64 2155145378, i64 2155145419, i64 2155145440, i64 2155145468, i64 2155145502}
!162 = !{i64 2148742799, i64 2148742831, i64 2148742860, i64 2148742894, i64 2148742925, i64 2148742948}
!163 = !{i64 2148831904}
!164 = !{i64 2148822417}
!165 = !{i64 2148737126, i64 2148737158, i64 2148737187, i64 2148737221, i64 2148737252, i64 2148737275}
!166 = !{i64 2148822646}
!167 = !{i64 2152578703}
!168 = !{i64 2150055008}
!169 = !{i64 2150059942}
!170 = !{i64 2150081660}
!171 = !{i64 2150086554}
!172 = !{i64 2150163081}
!173 = !{i64 2150163406}
!174 = !{i64 2152590565}
!175 = !{i64 2148733941, i64 2148733967, i64 2148733996, i64 2148734030, i64 2148734061, i64 2148734084}
!176 = !{!"branch_weights", i32 1, i32 4001}
!177 = !{i64 2155296764, i64 2155297245, i64 2155296801, i64 2155296857, i64 2155296891, i64 2155296915, i64 2155296956, i64 2155296977, i64 2155297005, i64 2155297039}
!178 = !{i64 2155304019, i64 2155304500, i64 2155304056, i64 2155304112, i64 2155304146, i64 2155304170, i64 2155304211, i64 2155304232, i64 2155304260, i64 2155304294}
!179 = !{i64 1138621, i64 1138682}
!180 = !{i64 1141353}
!181 = !{i64 1141638}
!182 = !{i64 2152576772}
!183 = !{i64 2152576614}
!184 = !{i64 2152576942}
!185 = !{i64 2150162756}
