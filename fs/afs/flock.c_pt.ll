; ModuleID = '/llk/IR_all_yes/fs/afs/flock.c_pt.bc'
source_filename = "../fs/afs/flock.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.124 }
%union.anon.124 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.afs_operation_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_lock_operations = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.116, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.38 }
%struct.llist_node = type { ptr }
%union.anon.38 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.40 }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.116 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.afs_vnode = type { %struct.inode, ptr, %struct.afs_fid, %struct.afs_file_status, i64, ptr, ptr, %struct.mutex, %struct.rw_semaphore, %struct.rw_semaphore, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.delayed_work, ptr, i64, i16, %struct.work_struct, %struct.list_head, ptr, %struct.atomic_t, i32, i32, i32, i32, %struct.seqlock_t, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.128, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.129, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.130, ptr, %struct.address_space, %struct.list_head, %union.anon.131, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.128 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.129 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.130 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.131 = type { ptr }
%struct.afs_fid = type { i64, i64, i32, i32 }
%struct.afs_file_status = type { i64, i64, %struct.timespec64, %struct.timespec64, i64, i64, i64, i32, i32, i16, i32, i32, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.file = type { %union.anon.19, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.19 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.file_lock = type { ptr, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, ptr, i32, i8, i32, i32, %struct.wait_queue_head, ptr, i64, i64, ptr, i32, i32, ptr, ptr, %union.anon.23 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%union.anon.23 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, ptr, %struct.list_head }
%struct.afs_call = type { ptr, ptr, %struct.wait_queue_head, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.iov_iter, ptr, ptr, %union.anon.138, ptr, %union.anon.139, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, %union.anon.152, i64 }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.20, %union.anon.21 }
%union.anon.20 = type { ptr }
%union.anon.21 = type { i64 }
%union.anon.138 = type { [1 x %struct.bio_vec] }
%struct.bio_vec = type { ptr, i32, i32 }
%union.anon.139 = type { i32 }
%union.anon.152 = type { i64 }
%struct.afs_operation = type { ptr, ptr, ptr, ptr, ptr, [2 x %struct.afs_vnode_param], ptr, %struct.afs_volsync, ptr, ptr, %struct.timespec64, %struct.timespec64, i16, i16, i32, i32, i32, %union.anon.140, %struct.afs_addr_cursor, ptr, ptr, ptr, i32, i16, i16, i32 }
%struct.afs_vnode_param = type { ptr, %struct.afs_fid, %struct.afs_status_cb, i64, i32, i8, i8 }
%struct.afs_status_cb = type { %struct.afs_file_status, %struct.afs_callback, i8, i8, i8 }
%struct.afs_callback = type { i64 }
%struct.afs_volsync = type { i64 }
%union.anon.140 = type { %struct.anon.151 }
%struct.anon.151 = type { %struct.afs_volume_status, ptr }
%struct.afs_volume_status = type { i64, i64, i8, i8, i8, i8, i32, i64, i64, i64, i64, i64, i64, i64 }
%struct.afs_addr_cursor = type { ptr, i32, i8, i8, i16, i16, i32 }
%struct.afs_volume = type { %union.anon.132, %struct.atomic_t, i64, ptr, %struct.rb_node, %struct.hlist_node, ptr, i32, ptr, ptr, %struct.rwlock_t, i32, i32, %struct.rwlock_t, i8, i8, i8, [65 x i8] }
%union.anon.132 = type { i64 }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.25, ptr, %struct.rw_semaphore, ptr, ptr, %union.anon.26, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i32, %union.anon.27, %union.anon.31, ptr }
%union.anon.25 = type { %struct.rb_node }
%union.anon.26 = type { i64 }
%union.anon.27 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i32, %union.anon.28, ptr, ptr, ptr }
%union.anon.28 = type { i32 }
%union.anon.31 = type { %union.key_payload }
%union.key_payload = type { [4 x ptr] }
%struct.anon.24 = type { %struct.list_head, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.afs_super_info = type { ptr, ptr, ptr, i8, i8 }

@afs_debug = external dso_local local_unnamed_addr global i32, align 4
@afs_lock_may_be_available._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 38, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[%-6.6s] ==> %s({%llx:%llu})\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"afs_lock_may_be_available\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/afs/flock.c\00", [17 x i8] zeroinitializer }, align 32
@afs_lock_may_be_available._entry_ptr = internal global ptr @afs_lock_may_be_available._entry, section ".printk_index", align 4
@afs_lock_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.3, ptr @.str.2, i32 289, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"afs_lock_work\00", [18 x i8] zeroinitializer }, align 32
@afs_lock_work._entry_ptr = internal global ptr @afs_lock_work._entry, section ".printk_index", align 4
@afs_lock_work._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.3, ptr @.str.2, i32 294, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"[%-6.6s]     wstate %u for %p\0A\00", [33 x i8] zeroinitializer }, align 32
@afs_lock_work._entry_ptr.6 = internal global ptr @afs_lock_work._entry.4, section ".printk_index", align 4
@afs_lock_work._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.2, i32 309, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014AFS: Failed to release lock on {%llx:%llx} error %d\0A\00", [41 x i8] zeroinitializer }, align 32
@afs_lock_work._entry_ptr.9 = internal global ptr @afs_lock_work._entry.7, section ".printk_index", align 4
@afs_lock_work._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.2, i32 324, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"[%-6.6s]     extend\0A\00", [43 x i8] zeroinitializer }, align 32
@afs_lock_work._entry_ptr.12 = internal global ptr @afs_lock_work._entry.10, section ".printk_index", align 4
@afs_lock_work._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.2, i32 326, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\013\0A\00", [28 x i8] zeroinitializer }, align 32
@afs_lock_work._entry_ptr.15 = internal global ptr @afs_lock_work._entry.13, section ".printk_index", align 4
@afs_lock_work._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.2, i32 326, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013AFS: Assertion failed\0A\00", [39 x i8] zeroinitializer }, align 32
@afs_lock_work._entry_ptr.18 = internal global ptr @afs_lock_work._entry.16, section ".printk_index", align 4
@afs_lock_work._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.3, ptr @.str.2, i32 340, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014AFS: Failed to extend lock on {%llx:%llx} error %d\0A\00", [42 x i8] zeroinitializer }, align 32
@afs_lock_work._entry_ptr.21 = internal global ptr @afs_lock_work._entry.19, section ".printk_index", align 4
@afs_lock_manager = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@afs_lock_work._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.3, ptr @.str.2, i32 359, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"[%-6.6s] <== %s() [ext]\0A\00", [39 x i8] zeroinitializer }, align 32
@afs_lock_work._entry_ptr.24 = internal global ptr @afs_lock_work._entry.22, section ".printk_index", align 4
@afs_lock_work._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.3, ptr @.str.2, i32 369, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"[%-6.6s]     retry\0A\00", [44 x i8] zeroinitializer }, align 32
@afs_lock_work._entry_ptr.27 = internal global ptr @afs_lock_work._entry.25, section ".printk_index", align 4
@afs_lock_work._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.3, ptr @.str.2, i32 382, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[%-6.6s] <== %s() [no]\0A\00", [40 x i8] zeroinitializer }, align 32
@afs_lock_work._entry_ptr.30 = internal global ptr @afs_lock_work._entry.28, section ".printk_index", align 4
@afs_lock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 773, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"[%-6.6s] ==> %s({%llx:%llu},%d,{t=%x,fl=%x,r=%Ld:%Ld})\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"afs_lock\00", [23 x i8] zeroinitializer }, align 32
@afs_lock._entry_ptr = internal global ptr @afs_lock._entry, section ".printk_index", align 4
@afs_file_lock_debug_id = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@afs_flock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 807, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"[%-6.6s] ==> %s({%llx:%llu},%d,{t=%x,fl=%x})\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"afs_flock\00", [22 x i8] zeroinitializer }, align 32
@afs_flock._entry_ptr = internal global ptr @afs_flock._entry, section ".printk_index", align 4
@__tracepoint_afs_flock_ev = external dso_local global %struct.tracepoint, align 4
@.str.35 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/trace/events/afs.h\00", [37 x i8] zeroinitializer }, align 32
@trace_afs_flock_ev.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.36 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@afs_next_locker._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 117, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[%-6.6s] ==> %s()\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"afs_next_locker\00", [16 x i8] zeroinitializer }, align 32
@afs_next_locker._entry_ptr = internal global ptr @afs_next_locker._entry, section ".printk_index", align 4
@afs_next_locker._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.2, i32 151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[%-6.6s] <== %s()\0A\00", [45 x i8] zeroinitializer }, align 32
@afs_next_locker._entry_ptr.42 = internal global ptr @afs_next_locker._entry.40, section ".printk_index", align 4
@afs_set_lock_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 27, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[%-6.6s]     STATE %u -> %u\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"afs_set_lock_state\00", [45 x i8] zeroinitializer }, align 32
@afs_set_lock_state._entry_ptr = internal global ptr @afs_set_lock_state._entry, section ".printk_index", align 4
@afs_release_lock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 264, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"[%-6.6s] ==> %s(%s{%llx:%llu.%u},%x)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"afs_release_lock\00", [47 x i8] zeroinitializer }, align 32
@afs_release_lock._entry_ptr = internal global ptr @afs_release_lock._entry, section ".printk_index", align 4
@afs_release_lock_operation = internal constant { %struct.afs_operation_ops, [36 x i8] } { %struct.afs_operation_ops { ptr @afs_fs_release_lock, ptr @yfs_fs_release_lock, ptr @afs_lock_success, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@afs_lock_success._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"[%-6.6s] ==> %s(op=%08x)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"afs_lock_success\00", [47 x i8] zeroinitializer }, align 32
@afs_lock_success._entry_ptr = internal global ptr @afs_lock_success._entry, section ".printk_index", align 4
@afs_extend_lock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.49, ptr @.str.2, i32 233, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"afs_extend_lock\00", [16 x i8] zeroinitializer }, align 32
@afs_extend_lock._entry_ptr = internal global ptr @afs_extend_lock._entry, section ".printk_index", align 4
@afs_extend_lock_operation = internal constant { %struct.afs_operation_ops, [36 x i8] } { %struct.afs_operation_ops { ptr @afs_fs_extend_lock, ptr @yfs_fs_extend_lock, ptr @afs_lock_success, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@afs_do_getlk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.50, ptr @.str.2, i32 728, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"afs_do_getlk\00", [19 x i8] zeroinitializer }, align 32
@afs_do_getlk._entry_ptr = internal global ptr @afs_do_getlk._entry, section ".printk_index", align 4
@afs_do_getlk._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.2, i32 757, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[%-6.6s] <== %s() = %d [%hd]\0A\00", [34 x i8] zeroinitializer }, align 32
@afs_do_getlk._entry_ptr.53 = internal global ptr @afs_do_getlk._entry.51, section ".printk_index", align 4
@__tracepoint_afs_flock_op = external dso_local global %struct.tracepoint, align 4
@trace_afs_flock_op.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@afs_do_unlk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.2, i32 707, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[%-6.6s] ==> %s({%llx:%llu},%u)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"afs_do_unlk\00", [20 x i8] zeroinitializer }, align 32
@afs_do_unlk._entry_ptr = internal global ptr @afs_do_unlk._entry, section ".printk_index", align 4
@afs_do_unlk._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.55, ptr @.str.2, i32 715, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[%-6.6s] <== %s() = %d [%u]\0A\00", [35 x i8] zeroinitializer }, align 32
@afs_do_unlk._entry_ptr.58 = internal global ptr @afs_do_unlk._entry.56, section ".printk_index", align 4
@afs_do_setlk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.2, i32 467, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"[%-6.6s] ==> %s({%llx:%llu},%llu-%llu,%u,%u)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"afs_do_setlk\00", [19 x i8] zeroinitializer }, align 32
@afs_do_setlk._entry_ptr = internal global ptr @afs_do_setlk._entry, section ".printk_index", align 4
@afs_lock_ops = internal constant { %struct.file_lock_operations, [24 x i8] } { %struct.file_lock_operations { ptr @afs_fl_copy_lock, ptr @afs_fl_release_private }, [24 x i8] zeroinitializer }, align 32
@afs_do_setlk._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.2, i32 509, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"[%-6.6s]     try %u\0A\00", [43 x i8] zeroinitializer }, align 32
@afs_do_setlk._entry_ptr.63 = internal global ptr @afs_do_setlk._entry.61, section ".printk_index", align 4
@afs_do_setlk._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.60, ptr @.str.2, i32 512, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"[%-6.6s]     instant readlock\0A\00", [33 x i8] zeroinitializer }, align 32
@afs_do_setlk._entry_ptr.66 = internal global ptr @afs_do_setlk._entry.64, section ".printk_index", align 4
@afs_do_setlk._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.60, ptr @.str.2, i32 519, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[%-6.6s]     instant writelock\0A\00", [32 x i8] zeroinitializer }, align 32
@afs_do_setlk._entry_ptr.69 = internal global ptr @afs_do_setlk._entry.67, section ".printk_index", align 4
@afs_do_setlk._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.60, ptr @.str.2, i32 590, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_do_setlk._entry_ptr.71 = internal global ptr @afs_do_setlk._entry.70, section ".printk_index", align 4
@afs_do_setlk._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.60, ptr @.str.2, i32 590, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_do_setlk._entry_ptr.73 = internal global ptr @afs_do_setlk._entry.72, section ".printk_index", align 4
@afs_do_setlk._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.60, ptr @.str.2, i32 591, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_do_setlk._entry_ptr.75 = internal global ptr @afs_do_setlk._entry.74, section ".printk_index", align 4
@afs_do_setlk._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.60, ptr @.str.2, i32 591, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_do_setlk._entry_ptr.77 = internal global ptr @afs_do_setlk._entry.76, section ".printk_index", align 4
@afs_do_setlk._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.60, ptr @.str.2, i32 591, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013%lu == %lu is false\0A\00", [41 x i8] zeroinitializer }, align 32
@afs_do_setlk._entry_ptr.80 = internal global ptr @afs_do_setlk._entry.78, section ".printk_index", align 4
@afs_do_setlk._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.60, ptr @.str.2, i32 591, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\0130x%lx == 0x%lx is false\0A\00", [37 x i8] zeroinitializer }, align 32
@afs_do_setlk._entry_ptr.83 = internal global ptr @afs_do_setlk._entry.81, section ".printk_index", align 4
@afs_do_setlk._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.60, ptr @.str.2, i32 605, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_do_setlk._entry_ptr.85 = internal global ptr @afs_do_setlk._entry.84, section ".printk_index", align 4
@afs_do_setlk._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.60, ptr @.str.2, i32 605, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_do_setlk._entry_ptr.87 = internal global ptr @afs_do_setlk._entry.86, section ".printk_index", align 4
@afs_do_setlk._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.60, ptr @.str.2, i32 605, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_do_setlk._entry_ptr.89 = internal global ptr @afs_do_setlk._entry.88, section ".printk_index", align 4
@afs_do_setlk._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.60, ptr @.str.2, i32 605, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_do_setlk._entry_ptr.91 = internal global ptr @afs_do_setlk._entry.90, section ".printk_index", align 4
@afs_do_setlk._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.60, ptr @.str.2, i32 620, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"[%-6.6s] <== %s() = 0\0A\00", [41 x i8] zeroinitializer }, align 32
@afs_do_setlk._entry_ptr.94 = internal global ptr @afs_do_setlk._entry.92, section ".printk_index", align 4
@afs_do_setlk._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.60, ptr @.str.2, i32 661, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_do_setlk._entry_ptr.96 = internal global ptr @afs_do_setlk._entry.95, section ".printk_index", align 4
@afs_do_setlk._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.60, ptr @.str.2, i32 661, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_do_setlk._entry_ptr.98 = internal global ptr @afs_do_setlk._entry.97, section ".printk_index", align 4
@afs_do_setlk._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.60, ptr @.str.2, i32 661, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_do_setlk._entry_ptr.100 = internal global ptr @afs_do_setlk._entry.99, section ".printk_index", align 4
@afs_do_setlk._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.60, ptr @.str.2, i32 661, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_do_setlk._entry_ptr.102 = internal global ptr @afs_do_setlk._entry.101, section ".printk_index", align 4
@afs_do_setlk._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.60, ptr @.str.2, i32 685, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[%-6.6s]     vfs refused %d\0A\00", [35 x i8] zeroinitializer }, align 32
@afs_do_setlk._entry_ptr.105 = internal global ptr @afs_do_setlk._entry.103, section ".printk_index", align 4
@afs_do_setlk._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.60, ptr @.str.2, i32 695, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[%-6.6s] <== %s() = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@afs_do_setlk._entry_ptr.108 = internal global ptr @afs_do_setlk._entry.106, section ".printk_index", align 4
@afs_fl_copy_lock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.109, ptr @.str.2, i32 848, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"afs_fl_copy_lock\00", [47 x i8] zeroinitializer }, align 32
@afs_fl_copy_lock._entry_ptr = internal global ptr @afs_fl_copy_lock._entry, section ".printk_index", align 4
@afs_fl_release_private._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.110, ptr @.str.2, i32 866, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"afs_fl_release_private\00", [41 x i8] zeroinitializer }, align 32
@afs_fl_release_private._entry_ptr = internal global ptr @afs_fl_release_private._entry, section ".printk_index", align 4
@afs_fl_release_private._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.110, ptr @.str.2, i32 875, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[%-6.6s]     state %u for %p\0A\00", [34 x i8] zeroinitializer }, align 32
@afs_fl_release_private._entry_ptr.113 = internal global ptr @afs_fl_release_private._entry.111, section ".printk_index", align 4
@afs_set_lock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.115, ptr @.str.2, i32 202, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"[%-6.6s] ==> %s(%s{%llx:%llu.%u},%x,%u)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"afs_set_lock\00", [19 x i8] zeroinitializer }, align 32
@afs_set_lock._entry_ptr = internal global ptr @afs_set_lock._entry, section ".printk_index", align 4
@afs_set_lock_operation = internal constant { %struct.afs_operation_ops, [36 x i8] } { %struct.afs_operation_ops { ptr @afs_fs_set_lock, ptr @yfs_fs_set_lock, ptr @afs_lock_success, ptr @afs_check_for_remote_deletion, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@afs_defer_unlock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.117, ptr @.str.2, i32 395, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"[%-6.6s] ==> %s(%u)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"afs_defer_unlock\00", [47 x i8] zeroinitializer }, align 32
@afs_defer_unlock._entry_ptr = internal global ptr @afs_defer_unlock._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 3, i64 5, i64 7]
@__sancov_gen_cov_switch_values.118 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 12]
@__sancov_gen_cov_switch_values.119 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967261, i64 4294967285]
@__sancov_gen_cov_switch_values.120 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 4294967167, i64 4294967168, i64 4294967169, i64 4294967283, i64 4294967285, i64 4294967294, i64 4294967295]
@__sancov_gen_cov_switch_values.121 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.122 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967261, i64 4294967285]
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 38, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 289, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 294, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 307, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 324, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 326, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 339, i32 4 }
@___asan_gen_.177 = private unnamed_addr constant [17 x i8] c"afs_lock_manager\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 14, i32 26 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 359, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 369, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 382, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 770, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant [23 x i8] c"afs_file_lock_debug_id\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 31, i32 17 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 805, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant [30 x i8] c"../include/trace/events/afs.h\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 1261, i32 1 }
@___asan_gen_.226 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 108, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 117, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 151, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 27, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 259, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant [27 x i8] c"afs_release_lock_operation\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 246, i32 39 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 178, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 228, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant [26 x i8] c"afs_extend_lock_operation\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 215, i32 39 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 728, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 757, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 707, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 715, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 465, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant [13 x i8] c"afs_lock_ops\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 20, i32 42 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 509, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 512, i32 4 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 519, i32 4 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 590, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 591, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 605, i32 2 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 620, i32 2 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 661, i32 5 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 685, i32 2 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 695, i32 2 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 848, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 866, i32 2 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 875, i32 2 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 197, i32 2 }
@___asan_gen_.432 = private unnamed_addr constant [23 x i8] c"afs_set_lock_operation\00", align 1
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 182, i32 39 }
@___asan_gen_.435 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.441 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.442 = private constant [18 x i8] c"../fs/afs/flock.c\00", align 1
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 395, i32 2 }
@llvm.compiler.used = appending global [156 x ptr] [ptr @afs_defer_unlock._entry, ptr @afs_defer_unlock._entry_ptr, ptr @afs_do_getlk._entry, ptr @afs_do_getlk._entry.51, ptr @afs_do_getlk._entry_ptr, ptr @afs_do_getlk._entry_ptr.53, ptr @afs_do_setlk._entry, ptr @afs_do_setlk._entry.101, ptr @afs_do_setlk._entry.103, ptr @afs_do_setlk._entry.106, ptr @afs_do_setlk._entry.61, ptr @afs_do_setlk._entry.64, ptr @afs_do_setlk._entry.67, ptr @afs_do_setlk._entry.70, ptr @afs_do_setlk._entry.72, ptr @afs_do_setlk._entry.74, ptr @afs_do_setlk._entry.76, ptr @afs_do_setlk._entry.78, ptr @afs_do_setlk._entry.81, ptr @afs_do_setlk._entry.84, ptr @afs_do_setlk._entry.86, ptr @afs_do_setlk._entry.88, ptr @afs_do_setlk._entry.90, ptr @afs_do_setlk._entry.92, ptr @afs_do_setlk._entry.95, ptr @afs_do_setlk._entry.97, ptr @afs_do_setlk._entry.99, ptr @afs_do_setlk._entry_ptr, ptr @afs_do_setlk._entry_ptr.100, ptr @afs_do_setlk._entry_ptr.102, ptr @afs_do_setlk._entry_ptr.105, ptr @afs_do_setlk._entry_ptr.108, ptr @afs_do_setlk._entry_ptr.63, ptr @afs_do_setlk._entry_ptr.66, ptr @afs_do_setlk._entry_ptr.69, ptr @afs_do_setlk._entry_ptr.71, ptr @afs_do_setlk._entry_ptr.73, ptr @afs_do_setlk._entry_ptr.75, ptr @afs_do_setlk._entry_ptr.77, ptr @afs_do_setlk._entry_ptr.80, ptr @afs_do_setlk._entry_ptr.83, ptr @afs_do_setlk._entry_ptr.85, ptr @afs_do_setlk._entry_ptr.87, ptr @afs_do_setlk._entry_ptr.89, ptr @afs_do_setlk._entry_ptr.91, ptr @afs_do_setlk._entry_ptr.94, ptr @afs_do_setlk._entry_ptr.96, ptr @afs_do_setlk._entry_ptr.98, ptr @afs_do_unlk._entry, ptr @afs_do_unlk._entry.56, ptr @afs_do_unlk._entry_ptr, ptr @afs_do_unlk._entry_ptr.58, ptr @afs_extend_lock._entry, ptr @afs_extend_lock._entry_ptr, ptr @afs_fl_copy_lock._entry, ptr @afs_fl_copy_lock._entry_ptr, ptr @afs_fl_release_private._entry, ptr @afs_fl_release_private._entry.111, ptr @afs_fl_release_private._entry_ptr, ptr @afs_fl_release_private._entry_ptr.113, ptr @afs_flock._entry, ptr @afs_flock._entry_ptr, ptr @afs_lock._entry, ptr @afs_lock._entry_ptr, ptr @afs_lock_may_be_available._entry, ptr @afs_lock_may_be_available._entry_ptr, ptr @afs_lock_success._entry, ptr @afs_lock_success._entry_ptr, ptr @afs_lock_work._entry, ptr @afs_lock_work._entry.10, ptr @afs_lock_work._entry.13, ptr @afs_lock_work._entry.16, ptr @afs_lock_work._entry.19, ptr @afs_lock_work._entry.22, ptr @afs_lock_work._entry.25, ptr @afs_lock_work._entry.28, ptr @afs_lock_work._entry.4, ptr @afs_lock_work._entry.7, ptr @afs_lock_work._entry_ptr, ptr @afs_lock_work._entry_ptr.12, ptr @afs_lock_work._entry_ptr.15, ptr @afs_lock_work._entry_ptr.18, ptr @afs_lock_work._entry_ptr.21, ptr @afs_lock_work._entry_ptr.24, ptr @afs_lock_work._entry_ptr.27, ptr @afs_lock_work._entry_ptr.30, ptr @afs_lock_work._entry_ptr.6, ptr @afs_lock_work._entry_ptr.9, ptr @afs_next_locker._entry, ptr @afs_next_locker._entry.40, ptr @afs_next_locker._entry_ptr, ptr @afs_next_locker._entry_ptr.42, ptr @afs_release_lock._entry, ptr @afs_release_lock._entry_ptr, ptr @afs_set_lock._entry, ptr @afs_set_lock._entry_ptr, ptr @afs_set_lock_state._entry, ptr @afs_set_lock_state._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @afs_lock_manager, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @afs_file_lock_debug_id, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @afs_release_lock_operation, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @afs_extend_lock_operation, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.59, ptr @.str.60, ptr @afs_lock_ops, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @.str.79, ptr @.str.82, ptr @.str.93, ptr @.str.104, ptr @.str.107, ptr @.str.109, ptr @.str.110, ptr @.str.112, ptr @.str.114, ptr @.str.115, ptr @afs_set_lock_operation, ptr @.str.116, ptr @.str.117], section "llvm.metadata"
@0 = internal global [107 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_lock_may_be_available._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_lock_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_lock_work._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_lock_work._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_lock_work._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_lock_work._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_lock_work._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_lock_work._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_lock_manager to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_lock_work._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_lock_work._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_lock_work._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_lock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_file_lock_debug_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_flock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_next_locker._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_next_locker._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_set_lock_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_release_lock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_release_lock_operation to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_lock_success._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_extend_lock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_extend_lock_operation to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_do_getlk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_do_getlk._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_do_unlk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_do_unlk._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_do_setlk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_lock_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_do_setlk._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_do_setlk._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_do_setlk._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_do_setlk._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_do_setlk._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_do_setlk._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_do_setlk._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_do_setlk._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_do_setlk._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_do_setlk._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_do_setlk._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_do_setlk._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_do_setlk._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_do_setlk._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_do_setlk._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_do_setlk._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_do_setlk._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_do_setlk._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_do_setlk._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_do_setlk._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_fl_copy_lock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_fl_release_private._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_fl_release_private._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_set_lock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_set_lock_operation to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_defer_unlock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @afs_lock_may_be_available(ptr noundef %vnode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end, !prof !218

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = tail call i32 @llvm.read_register.i32(metadata !208) #7
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %fid = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 2
  %5 = ptrtoint ptr %fid to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %fid, align 8
  %vnode5 = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %vnode5 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %vnode5, align 8
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm, ptr noundef nonnull @.str.1, i64 noundef %6, i64 noundef %8) #10
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %lock = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %lock) #7
  %lock_state = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 20
  %9 = ptrtoint ptr %lock_state to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load = load i16, ptr %lock_state, align 8
  %bf.lshr.mask = and i16 %bf.load, -256
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %bf.lshr.mask)
  %cmp = icmp eq i16 %bf.lshr.mask, 256
  br i1 %cmp, label %if.then8, label %do.end7.if.end9_crit_edge

do.end7.if.end9_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then8:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @afs_next_locker(ptr noundef %vnode, i32 noundef 0)
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %do.end7.if.end9_crit_edge
  tail call fastcc void @trace_afs_flock_ev(ptr noundef %vnode, ptr noundef null, i32 noundef 1, i32 noundef 0)
  tail call void @_raw_spin_unlock(ptr noundef %lock) #7
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @afs_next_locker(ptr noundef %vnode, i32 noundef %error) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock_key = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 18
  %0 = ptrtoint ptr %lock_key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lock_key, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %2 = load i32, ptr @afs_debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !218

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = tail call i32 @llvm.read_register.i32(metadata !208) #7
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 101
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %comm, ptr noundef nonnull @.str.39) #10
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %lock_type = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 20
  %pending_locks = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 15
  %7 = ptrtoint ptr %pending_locks to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pending_locks, align 4
  %cmp18.not125 = icmp eq ptr %8, %pending_locks
  br i1 %cmp18.not125, label %for.end.thread, label %for.body.lr.ph

for.end.thread:                                   ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %lock_key to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %lock_key, align 8
  tail call void @key_put(ptr noundef %1) #7
  br label %if.else

for.body.lr.ph:                                   ; preds = %do.end6
  %10 = ptrtoint ptr %lock_type to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load = load i16, ptr %lock_type, align 8
  %bf.clear = and i16 %bf.load, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %bf.clear)
  %cmp = icmp eq i16 %bf.clear, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error)
  %tobool21.not = icmp eq i32 %error, 0
  %11 = zext i1 %cmp to i8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn.in127 = phi ptr [ %8, %for.body.lr.ph ], [ %.pn131, %for.inc.for.body_crit_edge ]
  %next.0126 = phi ptr [ null, %for.body.lr.ph ], [ %next.1, %for.inc.for.body_crit_edge ]
  %p.0130 = getelementptr i8, ptr %.pn.in127, i32 -148
  %12 = ptrtoint ptr %.pn.in127 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn131 = load ptr, ptr %.pn.in127, align 4
  br i1 %tobool21.not, label %for.body.if.end33_crit_edge, label %land.lhs.true

for.body.if.end33_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

land.lhs.true:                                    ; preds = %for.body
  %fl_type22 = getelementptr i8, ptr %.pn.in127, i32 -104
  %13 = ptrtoint ptr %fl_type22 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %fl_type22, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %14, i8 %11)
  %cmp23 = icmp eq i8 %14, %11
  br i1 %cmp23, label %land.lhs.true25, label %land.lhs.true.if.end33_crit_edge

land.lhs.true.if.end33_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

land.lhs.true25:                                  ; preds = %land.lhs.true
  %fl_file = getelementptr i8, ptr %.pn.in127, i32 -40
  %15 = ptrtoint ptr %fl_file to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fl_file, align 4
  %private_data.i = getelementptr inbounds %struct.file, ptr %16, i32 0, i32 16
  %17 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %private_data.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %cmp27 = icmp eq ptr %20, %1
  br i1 %cmp27, label %if.then29, label %land.lhs.true25.if.end33_crit_edge

land.lhs.true25.if.end33_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then29:                                        ; preds = %land.lhs.true25
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in127) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.then29.list_del_init.exit_crit_edge

if.then29.list_del_init.exit_crit_edge:           ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in127, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i, align 4
  %23 = ptrtoint ptr %.pn.in127 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %.pn.in127, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev1.i.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %22, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then29.list_del_init.exit_crit_edge
  %27 = ptrtoint ptr %.pn.in127 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %.pn.in127, ptr %.pn.in127, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn.in127, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %.pn.in127, ptr %prev.i3.i, align 4
  %state = getelementptr i8, ptr %.pn.in127, i32 8
  %29 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %error, ptr %state, align 4
  %fl_wait = getelementptr i8, ptr %.pn.in127, i32 -92
  tail call void @__wake_up(ptr noundef %fl_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  br label %if.end33

if.end33:                                         ; preds = %list_del_init.exit, %land.lhs.true25.if.end33_crit_edge, %land.lhs.true.if.end33_crit_edge, %for.body.if.end33_crit_edge
  %tobool34.not = icmp eq ptr %next.0126, null
  br i1 %tobool34.not, label %if.end33.if.end45_crit_edge, label %land.lhs.true35

if.end33.if.end45_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

land.lhs.true35:                                  ; preds = %if.end33
  %fl_type36 = getelementptr inbounds %struct.file_lock, ptr %next.0126, i32 0, i32 7
  %30 = ptrtoint ptr %fl_type36 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %fl_type36, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %31)
  %cmp38 = icmp eq i8 %31, 1
  br i1 %cmp38, label %land.lhs.true35.for.inc_crit_edge, label %lor.lhs.false

land.lhs.true35.for.inc_crit_edge:                ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

lor.lhs.false:                                    ; preds = %land.lhs.true35
  %fl_type40 = getelementptr i8, ptr %.pn.in127, i32 -104
  %32 = ptrtoint ptr %fl_type40 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %fl_type40, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp42 = icmp eq i8 %33, 0
  br i1 %cmp42, label %lor.lhs.false.for.inc_crit_edge, label %lor.lhs.false.if.end45_crit_edge

lor.lhs.false.if.end45_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end45:                                         ; preds = %lor.lhs.false.if.end45_crit_edge, %if.end33.if.end45_crit_edge
  br label %for.inc

for.inc:                                          ; preds = %if.end45, %lor.lhs.false.for.inc_crit_edge, %land.lhs.true35.for.inc_crit_edge
  %next.1 = phi ptr [ %next.0126, %land.lhs.true35.for.inc_crit_edge ], [ %next.0126, %lor.lhs.false.for.inc_crit_edge ], [ %p.0130, %if.end45 ]
  %cmp18.not = icmp eq ptr %.pn131, %pending_locks
  br i1 %cmp18.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  %34 = ptrtoint ptr %lock_key to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %lock_key, align 8
  tail call void @key_put(ptr noundef %1) #7
  %tobool53.not = icmp eq ptr %next.1, null
  br i1 %tobool53.not, label %for.end.if.else_crit_edge, label %if.then54

for.end.if.else_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then54:                                        ; preds = %for.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %35 = load i32, ptr @afs_debug, align 4
  %and.i106 = and i32 %35, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i106)
  %tobool.not.i = icmp eq i32 %and.i106, 0
  br i1 %tobool.not.i, label %if.then54.afs_set_lock_state.exit_crit_edge, label %do.end.i, !prof !218

if.then54.afs_set_lock_state.exit_crit_edge:      ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #9
  br label %afs_set_lock_state.exit

do.end.i:                                         ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #9
  %36 = tail call i32 @llvm.read_register.i32(metadata !208) #7
  %and.i.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %39, i32 0, i32 101
  %40 = ptrtoint ptr %lock_type to i32
  call void @__asan_load2_noabort(i32 %40)
  %bf.load.i = load i16, ptr %lock_type, align 8
  %bf.lshr.i = lshr i16 %bf.load.i, 8
  %bf.cast.i = zext i16 %bf.lshr.i to i32
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %comm.i, i32 noundef %bf.cast.i, i32 noundef 2) #10
  br label %afs_set_lock_state.exit

afs_set_lock_state.exit:                          ; preds = %do.end.i, %if.then54.afs_set_lock_state.exit_crit_edge
  %41 = ptrtoint ptr %lock_type to i32
  call void @__asan_load2_noabort(i32 %41)
  %bf.load7.i = load i16, ptr %lock_type, align 8
  %bf.clear.i = and i16 %bf.load7.i, 255
  %bf.set.i = or i16 %bf.clear.i, 512
  store i16 %bf.set.i, ptr %lock_type, align 8
  %state56 = getelementptr inbounds %struct.file_lock, ptr %next.1, i32 0, i32 19, i32 0, i32 2
  %42 = ptrtoint ptr %state56 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 2, ptr %state56, align 4
  tail call fastcc void @trace_afs_flock_op(ptr noundef %vnode, ptr noundef nonnull %next.1, i32 noundef 11)
  %fl_wait57 = getelementptr inbounds %struct.file_lock, ptr %next.1, i32 0, i32 10
  tail call void @__wake_up(ptr noundef %fl_wait57, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  br label %do.body59

if.else:                                          ; preds = %for.end.if.else_crit_edge, %for.end.thread
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %43 = load i32, ptr @afs_debug, align 4
  %and.i107 = and i32 %43, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i107)
  %tobool.not.i108 = icmp eq i32 %and.i107, 0
  br i1 %tobool.not.i108, label %if.else.afs_set_lock_state.exit121_crit_edge, label %do.end.i117, !prof !218

if.else.afs_set_lock_state.exit121_crit_edge:     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %afs_set_lock_state.exit121

do.end.i117:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %44 = tail call i32 @llvm.read_register.i32(metadata !208) #7
  %and.i.i109 = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i109 to ptr
  %task.i110 = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %task.i110 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %task.i110, align 8
  %comm.i111 = getelementptr inbounds %struct.task_struct, ptr %47, i32 0, i32 101
  %48 = ptrtoint ptr %lock_type to i32
  call void @__asan_load2_noabort(i32 %48)
  %bf.load.i113 = load i16, ptr %lock_type, align 8
  %bf.lshr.i114 = lshr i16 %bf.load.i113, 8
  %bf.cast.i115 = zext i16 %bf.lshr.i114 to i32
  %call4.i116 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %comm.i111, i32 noundef %bf.cast.i115, i32 noundef 0) #10
  br label %afs_set_lock_state.exit121

afs_set_lock_state.exit121:                       ; preds = %do.end.i117, %if.else.afs_set_lock_state.exit121_crit_edge
  %49 = ptrtoint ptr %lock_type to i32
  call void @__asan_load2_noabort(i32 %49)
  %bf.load7.i119 = load i16, ptr %lock_type, align 8
  %bf.clear.i120 = and i16 %bf.load7.i119, 255
  store i16 %bf.clear.i120, ptr %lock_type, align 8
  tail call fastcc void @trace_afs_flock_ev(ptr noundef %vnode, ptr noundef null, i32 noundef 6, i32 noundef 0)
  br label %do.body59

do.body59:                                        ; preds = %afs_set_lock_state.exit121, %afs_set_lock_state.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %50 = load i32, ptr @afs_debug, align 4
  %and60 = and i32 %50, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %do.body59.do.end80_crit_edge, label %do.end71, !prof !218

do.body59.do.end80_crit_edge:                     ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end80

do.end71:                                         ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #9
  %51 = tail call i32 @llvm.read_register.i32(metadata !208) #7
  %and.i122 = and i32 %51, -16384
  %52 = inttoptr i32 %and.i122 to ptr
  %task74 = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %task74 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %task74, align 8
  %comm75 = getelementptr inbounds %struct.task_struct, ptr %54, i32 0, i32 101
  %call77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %comm75, ptr noundef nonnull @.str.39) #10
  br label %do.end80

do.end80:                                         ; preds = %do.end71, %do.body59.do.end80_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_afs_flock_ev(ptr noundef %vnode, ptr noundef %fl, i32 noundef %event, i32 noundef %error) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_flock_ev, i32 0, i32 1), ptr blockaddress(@trace_afs_flock_ev, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !219

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !208) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !218

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !208) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !220
  %call42 = tail call i32 @__traceiter_afs_flock_ev(ptr noundef null, ptr noundef %vnode, ptr noundef %fl, i32 noundef %event, i32 noundef %error) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !221
  %13 = tail call i32 @llvm.read_register.i32(metadata !208) #7
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !208) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !218

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !208) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !222
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_flock_ev, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_flock_ev, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_afs_flock_ev.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_afs_flock_ev.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.35, i32 noundef 1289, ptr noundef nonnull @.str.36) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !223
  %31 = tail call i32 @llvm.read_register.i32(metadata !208) #7
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
define dso_local void @afs_lock_op_done(ptr nocapture noundef readonly %call) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %error = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 23
  %0 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %error, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %op1 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 18
  %2 = ptrtoint ptr %op1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %op1, align 4
  %file = getelementptr inbounds %struct.afs_operation, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %file, align 8
  %lock = getelementptr inbounds %struct.afs_vnode, ptr %5, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %lock) #7
  tail call fastcc void @trace_afs_flock_ev(ptr noundef %5, ptr noundef null, i32 noundef 9, i32 noundef 0)
  %reply_time = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 43
  %6 = ptrtoint ptr %reply_time to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %reply_time, align 8
  %locked_at = getelementptr inbounds %struct.afs_vnode, ptr %5, i32 0, i32 19
  %8 = ptrtoint ptr %locked_at to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %locked_at, align 8
  %add.i.i = add i64 %7, 150000000000
  %call.i.i = tail call i64 @ktime_get_with_offset(i32 noundef 0) #7
  %sub.i = sub i64 %add.i.i, %call.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %sub.i)
  %cmp.i = icmp slt i64 %sub.i, 1
  br i1 %cmp.i, label %if.then.afs_schedule_lock_extension.exit_crit_edge, label %if.else.i

if.then.afs_schedule_lock_extension.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %afs_schedule_lock_extension.exit

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call3.i = tail call i32 @nsecs_to_jiffies(i64 noundef %sub.i) #7
  br label %afs_schedule_lock_extension.exit

afs_schedule_lock_extension.exit:                 ; preds = %if.else.i, %if.then.afs_schedule_lock_extension.exit_crit_edge
  %duration_j.0.off0.i = phi i32 [ %call3.i, %if.else.i ], [ 0, %if.then.afs_schedule_lock_extension.exit_crit_edge ]
  %9 = load ptr, ptr @afs_lock_manager, align 4
  %lock_work.i = getelementptr inbounds %struct.afs_vnode, ptr %5, i32 0, i32 17
  %call.i8.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %9, ptr noundef %lock_work.i, i32 noundef %duration_j.0.off0.i) #7
  tail call void @_raw_spin_unlock(ptr noundef %lock) #7
  br label %if.end

if.end:                                           ; preds = %afs_schedule_lock_extension.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @afs_lock_work(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1340
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.end, !prof !218

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = tail call i32 @llvm.read_register.i32(metadata !208) #7
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %fid = getelementptr i8, ptr %work, i32 -548
  %5 = ptrtoint ptr %fid to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %fid, align 8
  %vnode6 = getelementptr i8, ptr %work, i32 -540
  %7 = ptrtoint ptr %vnode6 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %vnode6, align 8
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm, ptr noundef nonnull @.str.3, i64 noundef %6, i64 noundef %8) #10
  br label %do.end9

do.end9:                                          ; preds = %do.end, %entry.do.end9_crit_edge
  %lock = getelementptr i8, ptr %work, i32 -72
  tail call void @_raw_spin_lock(ptr noundef %lock) #7
  %lock_state = getelementptr i8, ptr %work, i32 116
  %granted_locks = getelementptr i8, ptr %work, i32 -8
  %lock_key115 = getelementptr i8, ptr %work, i32 100
  %volume.i300 = getelementptr i8, ptr %work, i32 -556
  %fid.i302 = getelementptr i8, ptr %work, i32 -548
  %vnode6.i303 = getelementptr i8, ptr %work, i32 -540
  %unique.i304 = getelementptr i8, ptr %work, i32 -528
  br label %again

again:                                            ; preds = %if.end135.again_crit_edge, %do.end9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %9 = load i32, ptr @afs_debug, align 4
  %and11 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %again.do.end31_crit_edge, label %do.end22, !prof !218

again.do.end31_crit_edge:                         ; preds = %again
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end31

do.end22:                                         ; preds = %again
  call void @__sanitizer_cov_trace_pc() #9
  %10 = tail call i32 @llvm.read_register.i32(metadata !208) #7
  %and.i269 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i269 to ptr
  %task25 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task25 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task25, align 8
  %comm26 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 101
  %14 = ptrtoint ptr %lock_state to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load = load i16, ptr %lock_state, align 8
  %bf.lshr = lshr i16 %bf.load, 8
  %bf.cast = zext i16 %bf.lshr to i32
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %comm26, i32 noundef %bf.cast, ptr noundef %add.ptr) #10
  br label %do.end31

do.end31:                                         ; preds = %do.end22, %again.do.end31_crit_edge
  %15 = ptrtoint ptr %lock_state to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load33 = load i16, ptr %lock_state, align 8
  %bf.lshr34 = lshr i16 %bf.load33, 8
  %trunc = trunc i16 %bf.lshr34 to i8
  %16 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %sw.default [
    i8 5, label %sw.bb
    i8 3, label %do.body60
    i8 1, label %do.body171
    i8 7, label %sw.bb194
  ]

sw.bb:                                            ; preds = %do.end31
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %17 = load i32, ptr @afs_debug, align 4
  %and.i270 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i270)
  %tobool.not.i = icmp eq i32 %and.i270, 0
  br i1 %tobool.not.i, label %sw.bb.afs_set_lock_state.exit_crit_edge, label %do.end.i, !prof !218

sw.bb.afs_set_lock_state.exit_crit_edge:          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %afs_set_lock_state.exit

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %18 = tail call i32 @llvm.read_register.i32(metadata !208) #7
  %and.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 101
  %22 = ptrtoint ptr %lock_state to i32
  call void @__asan_load2_noabort(i32 %22)
  %bf.load.i = load i16, ptr %lock_state, align 8
  %bf.lshr.i = lshr i16 %bf.load.i, 8
  %bf.cast.i = zext i16 %bf.lshr.i to i32
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %comm.i, i32 noundef %bf.cast.i, i32 noundef 6) #10
  br label %afs_set_lock_state.exit

afs_set_lock_state.exit:                          ; preds = %do.end.i, %sw.bb.afs_set_lock_state.exit_crit_edge
  %23 = ptrtoint ptr %lock_state to i32
  call void @__asan_load2_noabort(i32 %23)
  %bf.load7.i = load i16, ptr %lock_state, align 8
  %bf.clear.i = and i16 %bf.load7.i, 255
  %bf.set.i = or i16 %bf.clear.i, 1536
  store i16 %bf.set.i, ptr %lock_state, align 8
  tail call fastcc void @trace_afs_flock_ev(ptr noundef %add.ptr, ptr noundef null, i32 noundef 17, i32 noundef 0)
  tail call void @_raw_spin_unlock(ptr noundef %lock) #7
  %24 = ptrtoint ptr %lock_key115 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %lock_key115, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %26 = load i32, ptr @afs_debug, align 4
  %and.i271 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i271)
  %tobool.not.i272 = icmp eq i32 %and.i271, 0
  br i1 %tobool.not.i272, label %afs_set_lock_state.exit.do.end11.i_crit_edge, label %do.end.i276, !prof !218

afs_set_lock_state.exit.do.end11.i_crit_edge:     ; preds = %afs_set_lock_state.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end11.i

do.end.i276:                                      ; preds = %afs_set_lock_state.exit
  %27 = tail call i32 @llvm.read_register.i32(metadata !208) #7
  %and.i.i273 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i273 to ptr
  %task.i274 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %task.i274 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %task.i274, align 8
  %comm.i275 = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 101
  %31 = ptrtoint ptr %volume.i300 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %volume.i300, align 8
  %name.i = getelementptr inbounds %struct.afs_volume, ptr %32, i32 0, i32 17
  %33 = ptrtoint ptr %fid.i302 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %fid.i302, align 8
  %35 = ptrtoint ptr %vnode6.i303 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %vnode6.i303, align 8
  %37 = ptrtoint ptr %unique.i304 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %unique.i304, align 4
  %tobool.not.i.i = icmp eq ptr %25, null
  br i1 %tobool.not.i.i, label %do.end.i276.key_serial.exit.i_crit_edge, label %cond.true.i.i

do.end.i276.key_serial.exit.i_crit_edge:          ; preds = %do.end.i276
  call void @__sanitizer_cov_trace_pc() #9
  br label %key_serial.exit.i

cond.true.i.i:                                    ; preds = %do.end.i276
  call void @__sanitizer_cov_trace_pc() #9
  %serial.i.i = getelementptr inbounds %struct.key, ptr %25, i32 0, i32 1
  %39 = ptrtoint ptr %serial.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %serial.i.i, align 4
  br label %key_serial.exit.i

key_serial.exit.i:                                ; preds = %cond.true.i.i, %do.end.i276.key_serial.exit.i_crit_edge
  %cond.i.i = phi i32 [ %40, %cond.true.i.i ], [ 0, %do.end.i276.key_serial.exit.i_crit_edge ]
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %comm.i275, ptr noundef nonnull @.str.46, ptr noundef %name.i, i64 noundef %34, i64 noundef %36, i32 noundef %38, i32 noundef %cond.i.i) #10
  br label %do.end11.i

do.end11.i:                                       ; preds = %key_serial.exit.i, %afs_set_lock_state.exit.do.end11.i_crit_edge
  %41 = ptrtoint ptr %volume.i300 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %volume.i300, align 8
  %call13.i = tail call ptr @afs_alloc_operation(ptr noundef %25, ptr noundef %42) #7
  %cmp.i.i = icmp ugt ptr %call13.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then15.i, label %if.end17.i

if.then15.i:                                      ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %call13.i to i32
  br label %afs_release_lock.exit

if.end17.i:                                       ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  %file.i.i = getelementptr inbounds %struct.afs_operation, ptr %call13.i, i32 0, i32 5
  %44 = ptrtoint ptr %file.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %add.ptr, ptr %file.i.i, align 8
  %need_io_lock.i.i = getelementptr inbounds %struct.afs_operation, ptr %call13.i, i32 0, i32 5, i32 0, i32 6
  %45 = ptrtoint ptr %need_io_lock.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load.i.i = load i8, ptr %need_io_lock.i.i, align 1
  %bf.set.i.i = or i8 %bf.load.i.i, 64
  store i8 %bf.set.i.i, ptr %need_io_lock.i.i, align 1
  %flags.i = getelementptr inbounds %struct.afs_operation, ptr %call13.i, i32 0, i32 25
  %46 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flags.i, align 8
  %or.i = or i32 %47, 64
  store i32 %or.i, ptr %flags.i, align 8
  %ops.i = getelementptr inbounds %struct.afs_operation, ptr %call13.i, i32 0, i32 3
  %48 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @afs_release_lock_operation, ptr %ops.i, align 4
  %call18.i = tail call i32 @afs_do_sync_operation(ptr noundef %call13.i) #7
  br label %afs_release_lock.exit

afs_release_lock.exit:                            ; preds = %if.end17.i, %if.then15.i
  %retval.0.i = phi i32 [ %43, %if.then15.i ], [ %call18.i, %if.end17.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %land.lhs.true, label %if.end53.thread

if.end53.thread:                                  ; preds = %afs_release_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_lock(ptr noundef %lock) #7
  br label %if.else

land.lhs.true:                                    ; preds = %afs_release_lock.exit
  %49 = ptrtoint ptr %lock_state to i32
  call void @__asan_load2_noabort(i32 %49)
  %bf.load39 = load i16, ptr %lock_state, align 8
  %bf.lshr40.mask = and i16 %bf.load39, -256
  call void @__sanitizer_cov_trace_const_cmp2(i16 1792, i16 %bf.lshr40.mask)
  %cmp42.not = icmp eq i16 %bf.lshr40.mask, 1792
  br i1 %cmp42.not, label %land.lhs.true.if.end53_crit_edge, label %if.then43

land.lhs.true.if.end53_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

if.then43:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @trace_afs_flock_ev(ptr noundef %add.ptr, ptr noundef null, i32 noundef 7, i32 noundef %retval.0.i)
  %50 = ptrtoint ptr %fid.i302 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %fid.i302, align 8
  %52 = ptrtoint ptr %vnode6.i303 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %vnode6.i303, align 8
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i64 noundef %51, i64 noundef %53, i32 noundef %retval.0.i) #10
  br label %if.end53

if.end53:                                         ; preds = %if.then43, %land.lhs.true.if.end53_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %lock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %retval.0.i)
  %cmp55 = icmp eq i32 %retval.0.i, -2
  br i1 %cmp55, label %if.then56, label %if.end53.if.else_crit_edge

if.end53.if.else_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then56:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @afs_kill_lockers_enoent(ptr noundef %add.ptr)
  br label %if.end57

if.else:                                          ; preds = %if.end53.if.else_crit_edge, %if.end53.thread
  tail call fastcc void @afs_next_locker(ptr noundef %add.ptr, i32 noundef 0)
  br label %if.end57

if.end57:                                         ; preds = %if.else, %if.then56
  tail call void @_raw_spin_unlock(ptr noundef %lock) #7
  br label %cleanup

do.body60:                                        ; preds = %do.end31
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %54 = load i32, ptr @afs_debug, align 4
  %and61 = and i32 %54, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %do.body60.do.body82_crit_edge, label %do.end72, !prof !218

do.body60.do.body82_crit_edge:                    ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body82

do.end72:                                         ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #9
  %55 = tail call i32 @llvm.read_register.i32(metadata !208) #7
  %and.i277 = and i32 %55, -16384
  %56 = inttoptr i32 %and.i277 to ptr
  %task75 = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %task75 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %task75, align 8
  %comm76 = getelementptr inbounds %struct.task_struct, ptr %58, i32 0, i32 101
  %call78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %comm76) #10
  br label %do.body82

do.body82:                                        ; preds = %do.end72, %do.body60.do.body82_crit_edge
  %59 = ptrtoint ptr %granted_locks to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile ptr, ptr %granted_locks, align 4
  %cmp.i.not = icmp eq ptr %60, %granted_locks
  br i1 %cmp.i.not, label %do.end98, label %do.end114, !prof !224

do.end98:                                         ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #9
  %call100 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #10
  %call105 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/afs/flock.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 326, 0\0A.popsection", ""() #7, !srcloc !225
  unreachable

do.end114:                                        ; preds = %do.body82
  %61 = ptrtoint ptr %lock_key115 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %lock_key115, align 8
  %tobool.not.i278 = icmp eq ptr %62, null
  br i1 %tobool.not.i278, label %do.end114.key_get.exit_crit_edge, label %cond.true.i

do.end114.key_get.exit_crit_edge:                 ; preds = %do.end114
  call void @__sanitizer_cov_trace_pc() #9
  br label %key_get.exit

cond.true.i:                                      ; preds = %do.end114
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %62, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr nonnull %62, i32 1, i32 3, i32 1) #7
  %63 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %62, ptr nonnull %62, i32 1, ptr nonnull elementtype(i32) %62) #7, !srcloc !226
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %63, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %cond.true.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !224

cond.true.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %cond.true.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %64 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %64)
  %.not.i.i.i.i.i = icmp sgt i32 %64, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.key_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !218

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.key_get.exit_crit_edge:         ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %key_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %cond.true.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %cond.true.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %62, i32 noundef %.sink.i.i.i.i.i) #7
  br label %key_get.exit

key_get.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.key_get.exit_crit_edge, %do.end114.key_get.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %65 = load i32, ptr @afs_debug, align 4
  %and.i279 = and i32 %65, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i279)
  %tobool.not.i280 = icmp eq i32 %and.i279, 0
  br i1 %tobool.not.i280, label %key_get.exit.afs_set_lock_state.exit294_crit_edge, label %do.end.i289, !prof !218

key_get.exit.afs_set_lock_state.exit294_crit_edge: ; preds = %key_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %afs_set_lock_state.exit294

do.end.i289:                                      ; preds = %key_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  %66 = tail call i32 @llvm.read_register.i32(metadata !208) #7
  %and.i.i281 = and i32 %66, -16384
  %67 = inttoptr i32 %and.i.i281 to ptr
  %task.i282 = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %task.i282 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %task.i282, align 8
  %comm.i283 = getelementptr inbounds %struct.task_struct, ptr %69, i32 0, i32 101
  %70 = ptrtoint ptr %lock_state to i32
  call void @__asan_load2_noabort(i32 %70)
  %bf.load.i285 = load i16, ptr %lock_state, align 8
  %bf.lshr.i286 = lshr i16 %bf.load.i285, 8
  %bf.cast.i287 = zext i16 %bf.lshr.i286 to i32
  %call4.i288 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %comm.i283, i32 noundef %bf.cast.i287, i32 noundef 4) #10
  br label %afs_set_lock_state.exit294

afs_set_lock_state.exit294:                       ; preds = %do.end.i289, %key_get.exit.afs_set_lock_state.exit294_crit_edge
  %71 = ptrtoint ptr %lock_state to i32
  call void @__asan_load2_noabort(i32 %71)
  %bf.load7.i291 = load i16, ptr %lock_state, align 8
  %bf.clear.i292 = and i16 %bf.load7.i291, 255
  %bf.set.i293 = or i16 %bf.clear.i292, 1024
  store i16 %bf.set.i293, ptr %lock_state, align 8
  tail call fastcc void @trace_afs_flock_ev(ptr noundef %add.ptr, ptr noundef null, i32 noundef 15, i32 noundef 0)
  tail call void @_raw_spin_unlock(ptr noundef %lock) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %72 = load i32, ptr @afs_debug, align 4
  %and.i295 = and i32 %72, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i295)
  %tobool.not.i296 = icmp eq i32 %and.i295, 0
  br i1 %tobool.not.i296, label %afs_set_lock_state.exit294.do.end11.i315_crit_edge, label %do.end.i306, !prof !218

afs_set_lock_state.exit294.do.end11.i315_crit_edge: ; preds = %afs_set_lock_state.exit294
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end11.i315

do.end.i306:                                      ; preds = %afs_set_lock_state.exit294
  %73 = tail call i32 @llvm.read_register.i32(metadata !208) #7
  %and.i.i297 = and i32 %73, -16384
  %74 = inttoptr i32 %and.i.i297 to ptr
  %task.i298 = getelementptr inbounds %struct.thread_info, ptr %74, i32 0, i32 2
  %75 = ptrtoint ptr %task.i298 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %task.i298, align 8
  %comm.i299 = getelementptr inbounds %struct.task_struct, ptr %76, i32 0, i32 101
  %77 = ptrtoint ptr %volume.i300 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %volume.i300, align 8
  %name.i301 = getelementptr inbounds %struct.afs_volume, ptr %78, i32 0, i32 17
  %79 = ptrtoint ptr %fid.i302 to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %fid.i302, align 8
  %81 = ptrtoint ptr %vnode6.i303 to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %vnode6.i303, align 8
  %83 = ptrtoint ptr %unique.i304 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %unique.i304, align 4
  br i1 %tobool.not.i278, label %do.end.i306.key_serial.exit.i311_crit_edge, label %cond.true.i.i308

do.end.i306.key_serial.exit.i311_crit_edge:       ; preds = %do.end.i306
  call void @__sanitizer_cov_trace_pc() #9
  br label %key_serial.exit.i311

cond.true.i.i308:                                 ; preds = %do.end.i306
  call void @__sanitizer_cov_trace_pc() #9
  %serial.i.i307 = getelementptr inbounds %struct.key, ptr %62, i32 0, i32 1
  %85 = ptrtoint ptr %serial.i.i307 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %serial.i.i307, align 4
  br label %key_serial.exit.i311

key_serial.exit.i311:                             ; preds = %cond.true.i.i308, %do.end.i306.key_serial.exit.i311_crit_edge
  %cond.i.i309 = phi i32 [ %86, %cond.true.i.i308 ], [ 0, %do.end.i306.key_serial.exit.i311_crit_edge ]
  %call9.i310 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %comm.i299, ptr noundef nonnull @.str.49, ptr noundef %name.i301, i64 noundef %80, i64 noundef %82, i32 noundef %84, i32 noundef %cond.i.i309) #10
  br label %do.end11.i315

do.end11.i315:                                    ; preds = %key_serial.exit.i311, %afs_set_lock_state.exit294.do.end11.i315_crit_edge
  %87 = ptrtoint ptr %volume.i300 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %volume.i300, align 8
  %call13.i313 = tail call ptr @afs_alloc_operation(ptr noundef %62, ptr noundef %88) #7
  %cmp.i.i314 = icmp ugt ptr %call13.i313, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i314, label %if.then15.i316, label %if.end17.i325

if.then15.i316:                                   ; preds = %do.end11.i315
  call void @__sanitizer_cov_trace_pc() #9
  %89 = ptrtoint ptr %call13.i313 to i32
  br label %afs_extend_lock.exit

if.end17.i325:                                    ; preds = %do.end11.i315
  call void @__sanitizer_cov_trace_pc() #9
  %file.i.i317 = getelementptr inbounds %struct.afs_operation, ptr %call13.i313, i32 0, i32 5
  %90 = ptrtoint ptr %file.i.i317 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %add.ptr, ptr %file.i.i317, align 8
  %need_io_lock.i.i318 = getelementptr inbounds %struct.afs_operation, ptr %call13.i313, i32 0, i32 5, i32 0, i32 6
  %91 = ptrtoint ptr %need_io_lock.i.i318 to i32
  call void @__asan_load1_noabort(i32 %91)
  %bf.load.i.i319 = load i8, ptr %need_io_lock.i.i318, align 1
  %bf.set.i.i320 = or i8 %bf.load.i.i319, 64
  store i8 %bf.set.i.i320, ptr %need_io_lock.i.i318, align 1
  %flags.i321 = getelementptr inbounds %struct.afs_operation, ptr %call13.i313, i32 0, i32 25
  %92 = ptrtoint ptr %flags.i321 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %flags.i321, align 8
  %or.i322 = or i32 %93, 64
  store i32 %or.i322, ptr %flags.i321, align 8
  %ops.i323 = getelementptr inbounds %struct.afs_operation, ptr %call13.i313, i32 0, i32 3
  %94 = ptrtoint ptr %ops.i323 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr @afs_extend_lock_operation, ptr %ops.i323, align 4
  %call18.i324 = tail call i32 @afs_do_sync_operation(ptr noundef %call13.i313) #7
  br label %afs_extend_lock.exit

afs_extend_lock.exit:                             ; preds = %if.end17.i325, %if.then15.i316
  %retval.0.i326 = phi i32 [ %89, %if.then15.i316 ], [ %call18.i324, %if.end17.i325 ]
  tail call void @key_put(ptr noundef %62) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i326)
  %cmp119 = icmp slt i32 %retval.0.i326, 0
  br i1 %cmp119, label %if.end130, label %if.end130.thread

if.end130.thread:                                 ; preds = %afs_extend_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_lock(ptr noundef %lock) #7
  br label %if.end135

if.end130:                                        ; preds = %afs_extend_lock.exit
  tail call fastcc void @trace_afs_flock_ev(ptr noundef %add.ptr, ptr noundef null, i32 noundef 3, i32 noundef %retval.0.i326)
  %95 = ptrtoint ptr %fid.i302 to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %fid.i302, align 8
  %97 = ptrtoint ptr %vnode6.i303 to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %vnode6.i303, align 8
  %call129 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i64 noundef %96, i64 noundef %98, i32 noundef %retval.0.i326) #10
  tail call void @_raw_spin_lock(ptr noundef %lock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %retval.0.i326)
  %cmp132 = icmp eq i32 %retval.0.i326, -2
  br i1 %cmp132, label %if.then133, label %if.end130.if.end135_crit_edge

if.end130.if.end135_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end135

if.then133:                                       ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @afs_kill_lockers_enoent(ptr noundef %add.ptr)
  tail call void @_raw_spin_unlock(ptr noundef %lock) #7
  br label %cleanup

if.end135:                                        ; preds = %if.end130.if.end135_crit_edge, %if.end130.thread
  %99 = ptrtoint ptr %lock_state to i32
  call void @__asan_load2_noabort(i32 %99)
  %bf.load137 = load i16, ptr %lock_state, align 8
  %bf.lshr138.mask = and i16 %bf.load137, -256
  %cmp140.not = icmp eq i16 %bf.lshr138.mask, 1024
  br i1 %cmp140.not, label %if.end142, label %if.end135.again_crit_edge

if.end135.again_crit_edge:                        ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #9
  br label %again

if.end142:                                        ; preds = %if.end135
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %100 = load i32, ptr @afs_debug, align 4
  %and.i327 = and i32 %100, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i327)
  %tobool.not.i328 = icmp eq i32 %and.i327, 0
  br i1 %tobool.not.i328, label %if.end142.afs_set_lock_state.exit342_crit_edge, label %do.end.i337, !prof !218

if.end142.afs_set_lock_state.exit342_crit_edge:   ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #9
  br label %afs_set_lock_state.exit342

do.end.i337:                                      ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #9
  %101 = tail call i32 @llvm.read_register.i32(metadata !208) #7
  %and.i.i329 = and i32 %101, -16384
  %102 = inttoptr i32 %and.i.i329 to ptr
  %task.i330 = getelementptr inbounds %struct.thread_info, ptr %102, i32 0, i32 2
  %103 = ptrtoint ptr %task.i330 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %task.i330, align 8
  %comm.i331 = getelementptr inbounds %struct.task_struct, ptr %104, i32 0, i32 101
  %105 = ptrtoint ptr %lock_state to i32
  call void @__asan_load2_noabort(i32 %105)
  %bf.load.i333 = load i16, ptr %lock_state, align 8
  %bf.lshr.i334 = lshr i16 %bf.load.i333, 8
  %bf.cast.i335 = zext i16 %bf.lshr.i334 to i32
  %call4.i336 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %comm.i331, i32 noundef %bf.cast.i335, i32 noundef 3) #10
  br label %afs_set_lock_state.exit342

afs_set_lock_state.exit342:                       ; preds = %do.end.i337, %if.end142.afs_set_lock_state.exit342_crit_edge
  %106 = ptrtoint ptr %lock_state to i32
  call void @__asan_load2_noabort(i32 %106)
  %bf.load7.i339 = load i16, ptr %lock_state, align 8
  %bf.clear.i340 = and i16 %bf.load7.i339, 255
  %bf.set.i341 = or i16 %bf.clear.i340, 768
  store i16 %bf.set.i341, ptr %lock_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i326)
  %cmp143.not = icmp eq i32 %retval.0.i326, 0
  br i1 %cmp143.not, label %afs_set_lock_state.exit342.if.end146_crit_edge, label %if.then144

afs_set_lock_state.exit342.if.end146_crit_edge:   ; preds = %afs_set_lock_state.exit342
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end146

if.then144:                                       ; preds = %afs_set_lock_state.exit342
  call void @__sanitizer_cov_trace_pc() #9
  %107 = load ptr, ptr @afs_lock_manager, align 4
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %107, ptr noundef %work, i32 noundef 1000) #7
  br label %if.end146

if.end146:                                        ; preds = %if.then144, %afs_set_lock_state.exit342.if.end146_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %108 = load i32, ptr @afs_debug, align 4
  %and149 = and i32 %108, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and149)
  %tobool150.not = icmp eq i32 %and149, 0
  br i1 %tobool150.not, label %if.end146.cleanup_crit_edge, label %do.end160, !prof !218

if.end146.cleanup_crit_edge:                      ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end160:                                        ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #9
  %109 = tail call i32 @llvm.read_register.i32(metadata !208) #7
  %and.i343 = and i32 %109, -16384
  %110 = inttoptr i32 %and.i343 to ptr
  %task163 = getelementptr inbounds %struct.thread_info, ptr %110, i32 0, i32 2
  %111 = ptrtoint ptr %task163 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %task163, align 8
  %comm164 = getelementptr inbounds %struct.task_struct, ptr %112, i32 0, i32 101
  %call166 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %comm164, ptr noundef nonnull @.str.3) #10
  br label %cleanup

do.body171:                                       ; preds = %do.end31
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %113 = load i32, ptr @afs_debug, align 4
  %and172 = and i32 %113, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and172)
  %tobool173.not = icmp eq i32 %and172, 0
  br i1 %tobool173.not, label %do.body171.do.end192_crit_edge, label %do.end183, !prof !218

do.body171.do.end192_crit_edge:                   ; preds = %do.body171
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end192

do.end183:                                        ; preds = %do.body171
  call void @__sanitizer_cov_trace_pc() #9
  %114 = tail call i32 @llvm.read_register.i32(metadata !208) #7
  %and.i344 = and i32 %114, -16384
  %115 = inttoptr i32 %and.i344 to ptr
  %task186 = getelementptr inbounds %struct.thread_info, ptr %115, i32 0, i32 2
  %116 = ptrtoint ptr %task186 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %task186, align 8
  %comm187 = getelementptr inbounds %struct.task_struct, ptr %117, i32 0, i32 101
  %call189 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %comm187) #10
  br label %do.end192

do.end192:                                        ; preds = %do.end183, %do.body171.do.end192_crit_edge
  tail call fastcc void @afs_next_locker(ptr noundef %add.ptr, i32 noundef 0)
  tail call void @_raw_spin_unlock(ptr noundef %lock) #7
  br label %cleanup

sw.bb194:                                         ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @afs_kill_lockers_enoent(ptr noundef %add.ptr)
  tail call void @_raw_spin_unlock(ptr noundef %lock) #7
  br label %cleanup

sw.default:                                       ; preds = %do.end31
  tail call void @_raw_spin_unlock(ptr noundef %lock) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %118 = load i32, ptr @afs_debug, align 4
  %and198 = and i32 %118, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and198)
  %tobool199.not = icmp eq i32 %and198, 0
  br i1 %tobool199.not, label %sw.default.cleanup_crit_edge, label %do.end209, !prof !218

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end209:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  %119 = tail call i32 @llvm.read_register.i32(metadata !208) #7
  %and.i345 = and i32 %119, -16384
  %120 = inttoptr i32 %and.i345 to ptr
  %task212 = getelementptr inbounds %struct.thread_info, ptr %120, i32 0, i32 2
  %121 = ptrtoint ptr %task212 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %task212, align 8
  %comm213 = getelementptr inbounds %struct.task_struct, ptr %122, i32 0, i32 101
  %call215 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %comm213, ptr noundef nonnull @.str.3) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end209, %sw.default.cleanup_crit_edge, %sw.bb194, %do.end192, %do.end160, %if.end146.cleanup_crit_edge, %if.then133, %if.end57
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @afs_set_lock_state(ptr nocapture noundef %vnode, i32 noundef %state) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end, !prof !218

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = tail call i32 @llvm.read_register.i32(metadata !208) #7
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %lock_state = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 20
  %5 = ptrtoint ptr %lock_state to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load = load i16, ptr %lock_state, align 8
  %bf.lshr = lshr i16 %bf.load, 8
  %bf.cast = zext i16 %bf.lshr to i32
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %comm, i32 noundef %bf.cast, i32 noundef %state) #10
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %lock_state6 = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 20
  %6 = trunc i32 %state to i16
  %7 = ptrtoint ptr %lock_state6 to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load7 = load i16, ptr %lock_state6, align 8
  %bf.shl = shl i16 %6, 8
  %bf.clear = and i16 %bf.load7, 255
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %lock_state6, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @afs_kill_lockers_enoent(ptr noundef %vnode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and.i = and i32 %0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.afs_set_lock_state.exit_crit_edge, label %do.end.i, !prof !218

entry.afs_set_lock_state.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %afs_set_lock_state.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = tail call i32 @llvm.read_register.i32(metadata !208) #7
  %and.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %lock_state.i = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 20
  %5 = ptrtoint ptr %lock_state.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load.i = load i16, ptr %lock_state.i, align 8
  %bf.lshr.i = lshr i16 %bf.load.i, 8
  %bf.cast.i = zext i16 %bf.lshr.i to i32
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %comm.i, i32 noundef %bf.cast.i, i32 noundef 7) #10
  br label %afs_set_lock_state.exit

afs_set_lock_state.exit:                          ; preds = %do.end.i, %entry.afs_set_lock_state.exit_crit_edge
  %lock_state6.i = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 20
  %6 = ptrtoint ptr %lock_state6.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load7.i = load i16, ptr %lock_state6.i, align 8
  %bf.clear.i = and i16 %bf.load7.i, 255
  %bf.set.i = or i16 %bf.clear.i, 1792
  store i16 %bf.set.i, ptr %lock_state6.i, align 8
  %pending_locks = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 15
  %7 = ptrtoint ptr %pending_locks to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %pending_locks, align 4
  %cmp.i.not10 = icmp eq ptr %8, %pending_locks
  br i1 %cmp.i.not10, label %afs_set_lock_state.exit.while.end_crit_edge, label %afs_set_lock_state.exit.while.body_crit_edge

afs_set_lock_state.exit.while.body_crit_edge:     ; preds = %afs_set_lock_state.exit
  br label %while.body

afs_set_lock_state.exit.while.end_crit_edge:      ; preds = %afs_set_lock_state.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %list_del_init.exit.while.body_crit_edge, %afs_set_lock_state.exit.while.body_crit_edge
  %9 = phi ptr [ %20, %list_del_init.exit.while.body_crit_edge ], [ %8, %afs_set_lock_state.exit.while.body_crit_edge ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %9) #7
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del_init.exit_crit_edge

while.body.list_del_init.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %while.body.list_del_init.exit_crit_edge
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %9, ptr %9, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %9, ptr %prev.i3.i, align 4
  %state = getelementptr inbounds %struct.anon.24, ptr %9, i32 0, i32 1
  %18 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -2, ptr %state, align 4
  %fl_wait = getelementptr i8, ptr %9, i32 -92
  tail call void @__wake_up(ptr noundef %fl_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  %19 = ptrtoint ptr %pending_locks to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %pending_locks, align 4
  %cmp.i.not = icmp eq ptr %20, %pending_locks
  br i1 %cmp.i.not, label %list_del_init.exit.while.end_crit_edge, label %list_del_init.exit.while.body_crit_edge

list_del_init.exit.while.body_crit_edge:          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

list_del_init.exit.while.end_crit_edge:           ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %list_del_init.exit.while.end_crit_edge, %afs_set_lock_state.exit.while.end_crit_edge
  %lock_key = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 18
  %21 = ptrtoint ptr %lock_key to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %lock_key, align 8
  tail call void @key_put(ptr noundef %22) #7
  %23 = ptrtoint ptr %lock_key to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %lock_key, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @afs_lock(ptr noundef %file, i32 noundef %cmd, ptr noundef %fl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %2 = load i32, ptr @afs_debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.end, !prof !218

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = tail call i32 @llvm.read_register.i32(metadata !208) #7
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 101
  %fid = getelementptr inbounds %struct.afs_vnode, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %fid to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %fid, align 8
  %vnode7 = getelementptr inbounds %struct.afs_vnode, ptr %1, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %vnode7 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %vnode7, align 8
  %fl_type = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 7
  %11 = ptrtoint ptr %fl_type to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %fl_type, align 4
  %conv = zext i8 %12 to i32
  %fl_flags = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 6
  %13 = ptrtoint ptr %fl_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fl_flags, align 8
  %fl_start = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 12
  %15 = ptrtoint ptr %fl_start to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %fl_start, align 8
  %fl_end = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 13
  %17 = ptrtoint ptr %fl_end to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %fl_end, align 8
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %comm, ptr noundef nonnull @.str.32, i64 noundef %8, i64 noundef %10, i32 noundef %cmd, i32 noundef %conv, i32 noundef %14, i64 noundef %16, i64 noundef %18) #10
  br label %do.end10

do.end10:                                         ; preds = %do.end, %entry.do.end10_crit_edge
  %19 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.118)
  switch i32 %cmd, label %if.end16 [
    i32 5, label %do.end10.if.then14_crit_edge
    i32 12, label %do.end10.if.then14_crit_edge50
  ]

do.end10.if.then14_crit_edge50:                   ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then14

do.end10.if.then14_crit_edge:                     ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then14

if.then14:                                        ; preds = %do.end10.if.then14_crit_edge, %do.end10.if.then14_crit_edge50
  %20 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %f_inode.i, align 8
  %private_data.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %22 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %private_data.i.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %26 = load i32, ptr @afs_debug, align 4
  %and.i49 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i49)
  %tobool.not.i = icmp eq i32 %and.i49, 0
  br i1 %tobool.not.i, label %if.then14.do.end9.i_crit_edge, label %do.end.i, !prof !218

if.then14.do.end9.i_crit_edge:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9.i

do.end.i:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  %27 = tail call i32 @llvm.read_register.i32(metadata !208) #7
  %and.i.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 101
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %comm.i, ptr noundef nonnull @.str.50) #10
  br label %do.end9.i

do.end9.i:                                        ; preds = %do.end.i, %if.then14.do.end9.i_crit_edge
  %lock_state.i = getelementptr inbounds %struct.afs_vnode, ptr %21, i32 0, i32 20
  %31 = ptrtoint ptr %lock_state.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %bf.load.i = load i16, ptr %lock_state.i, align 8
  %bf.lshr.mask.i = and i16 %bf.load.i, -256
  call void @__sanitizer_cov_trace_const_cmp2(i16 1792, i16 %bf.lshr.mask.i)
  %cmp.i = icmp eq i16 %bf.lshr.mask.i, 1792
  br i1 %cmp.i, label %do.end9.i.cleanup_crit_edge, label %if.end11.i

do.end9.i.cleanup_crit_edge:                      ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11.i:                                       ; preds = %do.end9.i
  %fl_type.i = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 7
  %32 = ptrtoint ptr %fl_type.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 2, ptr %fl_type.i, align 4
  tail call void @posix_test_lock(ptr noundef %file, ptr noundef %fl) #7
  %33 = ptrtoint ptr %fl_type.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %fl_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %34)
  %cmp13.i = icmp eq i8 %34, 2
  br i1 %cmp13.i, label %if.then15.i, label %if.end11.i.do.body37.i_crit_edge

if.end11.i.do.body37.i_crit_edge:                 ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body37.i

if.then15.i:                                      ; preds = %if.end11.i
  %call16.i = tail call i32 @afs_fetch_status(ptr noundef %21, ptr noundef %25, i1 noundef zeroext false, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp17.i = icmp slt i32 %call16.i, 0
  br i1 %cmp17.i, label %if.then15.i.do.body37.i_crit_edge, label %do.end23.i

if.then15.i.do.body37.i_crit_edge:                ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body37.i

do.end23.i:                                       ; preds = %if.then15.i
  %lock_count25.i = getelementptr inbounds %struct.afs_vnode, ptr %21, i32 0, i32 3, i32 12
  %35 = ptrtoint ptr %lock_count25.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %lock_count25.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp26.not.i = icmp eq i32 %36, 0
  br i1 %cmp26.not.i, label %do.end23.i.do.body37.i_crit_edge, label %if.then28.i

do.end23.i.do.body37.i_crit_edge:                 ; preds = %do.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body37.i

if.then28.i:                                      ; preds = %do.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %cmp29.i = icmp slt i32 %36, 1
  %..i = zext i1 %cmp29.i to i8
  %37 = ptrtoint ptr %fl_type.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %..i, ptr %fl_type.i, align 4
  %fl_start.i = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 12
  %38 = ptrtoint ptr %fl_start.i to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 0, ptr %fl_start.i, align 8
  %fl_end.i = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 13
  %39 = ptrtoint ptr %fl_end.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 9223372036854775807, ptr %fl_end.i, align 8
  %fl_pid.i = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 8
  %40 = ptrtoint ptr %fl_pid.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %fl_pid.i, align 8
  br label %do.body37.i

do.body37.i:                                      ; preds = %if.then28.i, %do.end23.i.do.body37.i_crit_edge, %if.then15.i.do.body37.i_crit_edge, %if.end11.i.do.body37.i_crit_edge
  %ret.0.i = phi i32 [ %call16.i, %if.then15.i.do.body37.i_crit_edge ], [ 0, %do.end23.i.do.body37.i_crit_edge ], [ 0, %if.then28.i ], [ 0, %if.end11.i.do.body37.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %41 = load i32, ptr @afs_debug, align 4
  %and38.i = and i32 %41, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i)
  %tobool39.not.i = icmp eq i32 %and38.i, 0
  br i1 %tobool39.not.i, label %do.body37.i.cleanup_crit_edge, label %do.end49.i, !prof !218

do.body37.i.cleanup_crit_edge:                    ; preds = %do.body37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end49.i:                                       ; preds = %do.body37.i
  call void @__sanitizer_cov_trace_pc() #9
  %42 = tail call i32 @llvm.read_register.i32(metadata !208) #7
  %and.i79.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i79.i to ptr
  %task52.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %task52.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %task52.i, align 8
  %comm53.i = getelementptr inbounds %struct.task_struct, ptr %45, i32 0, i32 101
  %46 = ptrtoint ptr %fl_type.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %fl_type.i, align 4
  %conv56.i = zext i8 %47 to i32
  %call57.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %comm53.i, ptr noundef nonnull @.str.50, i32 noundef %ret.0.i, i32 noundef %conv56.i) #10
  br label %cleanup

if.end16:                                         ; preds = %do.end10
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @afs_file_lock_debug_id, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !227
  tail call void @llvm.prefetch.p0(ptr nonnull @afs_file_lock_debug_id, i32 1, i32 3, i32 1) #7
  %48 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @afs_file_lock_debug_id, ptr nonnull @afs_file_lock_debug_id, i32 1, ptr nonnull elementtype(i32) @afs_file_lock_debug_id) #7, !srcloc !228
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %48, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !229
  %debug_id = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 19, i32 0, i32 2, i32 1
  %49 = ptrtoint ptr %debug_id to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %asmresult.i.i.i.i, ptr %debug_id, align 4
  tail call fastcc void @trace_afs_flock_op(ptr noundef %1, ptr noundef %fl, i32 noundef 3)
  %fl_type18 = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 7
  %50 = ptrtoint ptr %fl_type18 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %fl_type18, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %51)
  %cmp20 = icmp eq i8 %51, 2
  br i1 %cmp20, label %if.then22, label %if.else

if.then22:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %call23 = tail call fastcc i32 @afs_do_unlk(ptr noundef %file, ptr noundef %fl)
  br label %if.end25

if.else:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %call24 = tail call fastcc i32 @afs_do_setlk(ptr noundef %file, ptr noundef %fl)
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then22
  %ret.0 = phi i32 [ %call23, %if.then22 ], [ %call24, %if.else ]
  %52 = zext i32 %ret.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.119)
  switch i32 %ret.0, label %sw.default [
    i32 0, label %if.end25.sw.epilog_crit_edge
    i32 -11, label %sw.bb26
    i32 -35, label %sw.bb27
  ]

if.end25.sw.epilog_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb27:                                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.default:                                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb27, %sw.bb26, %if.end25.sw.epilog_crit_edge
  %op.0 = phi i32 [ 8, %sw.default ], [ 7, %sw.bb27 ], [ 6, %sw.bb26 ], [ 5, %if.end25.sw.epilog_crit_edge ]
  tail call fastcc void @trace_afs_flock_op(ptr noundef %1, ptr noundef %fl, i32 noundef %op.0)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end49.i, %do.body37.i.cleanup_crit_edge, %do.end9.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog ], [ -2, %do.end9.i.cleanup_crit_edge ], [ %ret.0.i, %do.end49.i ], [ %ret.0.i, %do.body37.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_afs_flock_op(ptr noundef %vnode, ptr noundef %fl, i32 noundef %op) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_flock_op, i32 0, i32 1), ptr blockaddress(@trace_afs_flock_op, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !219

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !208) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !218

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !208) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !230
  %call42 = tail call i32 @__traceiter_afs_flock_op(ptr noundef null, ptr noundef %vnode, ptr noundef %fl, i32 noundef %op) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !231
  %13 = tail call i32 @llvm.read_register.i32(metadata !208) #7
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !208) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !218

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !208) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !222
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_flock_op, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_flock_op, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_afs_flock_op.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_afs_flock_op.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.35, i32 noundef 1323, ptr noundef nonnull @.str.36) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !223
  %31 = tail call i32 @llvm.read_register.i32(metadata !208) #7
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
define internal fastcc i32 @afs_do_unlk(ptr noundef %file, ptr noundef %fl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %2 = load i32, ptr @afs_debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.end, !prof !218

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = tail call i32 @llvm.read_register.i32(metadata !208) #7
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 101
  %fid = getelementptr inbounds %struct.afs_vnode, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %fid to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %fid, align 8
  %vnode7 = getelementptr inbounds %struct.afs_vnode, ptr %1, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %vnode7 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %vnode7, align 8
  %fl_type = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 7
  %11 = ptrtoint ptr %fl_type to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %fl_type, align 4
  %conv = zext i8 %12 to i32
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %comm, ptr noundef nonnull @.str.55, i64 noundef %8, i64 noundef %10, i32 noundef %conv) #10
  br label %do.end10

do.end10:                                         ; preds = %do.end, %entry.do.end10_crit_edge
  tail call fastcc void @trace_afs_flock_op(ptr noundef %1, ptr noundef %fl, i32 noundef 10)
  %call11 = tail call i32 @vfs_fsync(ptr noundef %file, i32 noundef 0) #7
  %13 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %f_inode.i, align 8
  %call1.i = tail call i32 @locks_lock_inode_wait(ptr noundef %14, ptr noundef %fl) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %15 = load i32, ptr @afs_debug, align 4
  %and14 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %do.end10.do.end34_crit_edge, label %do.end25, !prof !218

do.end10.do.end34_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end34

do.end25:                                         ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #9
  %16 = tail call i32 @llvm.read_register.i32(metadata !208) #7
  %and.i43 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i43 to ptr
  %task28 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task28 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task28, align 8
  %comm29 = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 101
  %lock_state = getelementptr inbounds %struct.afs_vnode, ptr %1, i32 0, i32 20
  %20 = ptrtoint ptr %lock_state to i32
  call void @__asan_load2_noabort(i32 %20)
  %bf.load = load i16, ptr %lock_state, align 8
  %bf.lshr = lshr i16 %bf.load, 8
  %bf.cast = zext i16 %bf.lshr to i32
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %comm29, ptr noundef nonnull @.str.55, i32 noundef %call1.i, i32 noundef %bf.cast) #10
  br label %do.end34

do.end34:                                         ; preds = %do.end25, %do.end10.do.end34_crit_edge
  ret i32 %call1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @afs_do_setlk(ptr nocapture noundef readonly %file, ptr noundef %fl) unnamed_addr #0 align 64 {
entry:
  %access.i = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %flock_mode = getelementptr inbounds %struct.afs_super_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %flock_mode to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %flock_mode, align 4
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %7 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %private_data.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %cmp = icmp eq i8 %bf.load, 0
  %narrow = select i1 %cmp, i8 2, i8 %bf.load
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %11 = load i32, ptr @afs_debug, align 4
  %and = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %do.end, !prof !218

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end14

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %spec.store.select = zext i8 %narrow to i32
  %12 = tail call i32 @llvm.read_register.i32(metadata !208) #7
  %and.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 101
  %fid = getelementptr inbounds %struct.afs_vnode, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %fid to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %fid, align 8
  %vnode10 = getelementptr inbounds %struct.afs_vnode, ptr %1, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %vnode10 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %vnode10, align 8
  %fl_start = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 12
  %20 = ptrtoint ptr %fl_start to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %fl_start, align 8
  %fl_end = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 13
  %22 = ptrtoint ptr %fl_end to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %fl_end, align 8
  %fl_type = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 7
  %24 = ptrtoint ptr %fl_type to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %fl_type, align 4
  %conv = zext i8 %25 to i32
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef %comm, ptr noundef nonnull @.str.60, i64 noundef %17, i64 noundef %19, i64 noundef %21, i64 noundef %23, i32 noundef %conv, i32 noundef %spec.store.select) #10
  br label %do.end14

do.end14:                                         ; preds = %do.end, %entry.do.end14_crit_edge
  %fl_ops = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 17
  %26 = ptrtoint ptr %fl_ops to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @afs_lock_ops, ptr %fl_ops, align 4
  %fl_u = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 19
  %27 = ptrtoint ptr %fl_u to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %fl_u, ptr %fl_u, align 4
  %prev.i = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 19, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %fl_u, ptr %prev.i, align 4
  %state = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 19, i32 0, i32 2
  %29 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %state, align 4
  %fl_start16 = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 12
  %30 = ptrtoint ptr %fl_start16 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %fl_start16, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %31)
  %cmp17.not = icmp eq i64 %31, 0
  br i1 %cmp17.not, label %lor.rhs, label %do.end14.lor.end_crit_edge

do.end14.lor.end_crit_edge:                       ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end

lor.rhs:                                          ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #9
  %fl_end19 = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 13
  %32 = ptrtoint ptr %fl_end19 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %fl_end19, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372036854775807, i64 %33)
  %cmp20 = icmp ne i64 %33, 9223372036854775807
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %do.end14.lor.end_crit_edge
  %34 = phi i1 [ true, %do.end14.lor.end_crit_edge ], [ %cmp20, %lor.rhs ]
  %fl_type22 = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 7
  %35 = ptrtoint ptr %fl_type22 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %fl_type22, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp24 = icmp ne i8 %36, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %narrow)
  %cmp26 = icmp eq i8 %narrow, 4
  %37 = select i1 %cmp26, i1 %34, i1 false
  %spec.select693 = select i1 %37, i1 true, i1 %cmp24
  %type.0 = zext i1 %spec.select693 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %access.i) #7
  %38 = ptrtoint ptr %access.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %access.i, align 4, !annotation !232
  %call.i = tail call i32 @afs_validate(ptr noundef %1, ptr noundef %10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %lor.end.afs_do_setlk_check.exit.thread_crit_edge, label %if.end.i

lor.end.afs_do_setlk_check.exit.thread_crit_edge: ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %afs_do_setlk_check.exit.thread

if.end.i:                                         ; preds = %lor.end
  %call1.i = call i32 @afs_check_permit(ptr noundef %1, ptr noundef %10, ptr noundef nonnull %access.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp slt i32 %call1.i, 0
  br i1 %cmp2.i, label %if.end.i.afs_do_setlk_check.exit.thread_crit_edge, label %if.end4.i

if.end.i.afs_do_setlk_check.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %afs_do_setlk_check.exit.thread

if.end4.i:                                        ; preds = %if.end.i
  %39 = ptrtoint ptr %access.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %access.i, align 4
  br i1 %spec.select693, label %if.else.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.end4.i
  %and.i694 = and i32 %40, 38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i694)
  %tobool.not.i = icmp eq i32 %and.i694, 0
  br i1 %tobool.not.i, label %if.then6.i.afs_do_setlk_check.exit.thread_crit_edge, label %if.then6.i.if.end36_crit_edge

if.then6.i.if.end36_crit_edge:                    ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then6.i.afs_do_setlk_check.exit.thread_crit_edge: ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %afs_do_setlk_check.exit.thread

if.else.i:                                        ; preds = %if.end4.i
  %and9.i = and i32 %40, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.else.i.afs_do_setlk_check.exit.thread_crit_edge, label %if.else.i.if.end36_crit_edge

if.else.i.if.end36_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.else.i.afs_do_setlk_check.exit.thread_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %afs_do_setlk_check.exit.thread

afs_do_setlk_check.exit.thread:                   ; preds = %if.else.i.afs_do_setlk_check.exit.thread_crit_edge, %if.then6.i.afs_do_setlk_check.exit.thread_crit_edge, %if.end.i.afs_do_setlk_check.exit.thread_crit_edge, %lor.end.afs_do_setlk_check.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -13, %if.else.i.afs_do_setlk_check.exit.thread_crit_edge ], [ -13, %if.then6.i.afs_do_setlk_check.exit.thread_crit_edge ], [ %call1.i, %if.end.i.afs_do_setlk_check.exit.thread_crit_edge ], [ %call.i, %lor.end.afs_do_setlk_check.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %access.i) #7
  br label %cleanup540

if.end36:                                         ; preds = %if.else.i.if.end36_crit_edge, %if.then6.i.if.end36_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %access.i) #7
  call fastcc void @trace_afs_flock_op(ptr noundef %1, ptr noundef %fl, i32 noundef 9)
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %narrow)
  %cmp37 = icmp eq i8 %narrow, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %narrow)
  %cmp42 = icmp eq i8 %narrow, 2
  %or.cond = select i1 %34, i1 %cmp42, i1 false
  %or.cond692 = select i1 %cmp37, i1 true, i1 %or.cond
  br i1 %or.cond692, label %if.end36.skip_server_lock_crit_edge, label %if.end45

if.end36.skip_server_lock_crit_edge:              ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %skip_server_lock

if.end45:                                         ; preds = %if.end36
  %lock = getelementptr inbounds %struct.afs_vnode, ptr %1, i32 0, i32 12
  call void @_raw_spin_lock(ptr noundef %lock) #7
  %pending_locks = getelementptr inbounds %struct.afs_vnode, ptr %1, i32 0, i32 15
  %prev.i695 = getelementptr inbounds %struct.afs_vnode, ptr %1, i32 0, i32 15, i32 1
  %41 = ptrtoint ptr %prev.i695 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev.i695, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %fl_u, ptr noundef %42, ptr noundef %pending_locks) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end45.list_add_tail.exit_crit_edge

if.end45.list_add_tail.exit_crit_edge:            ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %prev.i695 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %fl_u, ptr %prev.i695, align 4
  %44 = ptrtoint ptr %fl_u to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %pending_locks, ptr %fl_u, align 4
  %45 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %prev.i, align 4
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %fl_u, ptr %42, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end45.list_add_tail.exit_crit_edge
  %lock_state = getelementptr inbounds %struct.afs_vnode, ptr %1, i32 0, i32 20
  %47 = ptrtoint ptr %lock_state to i32
  call void @__asan_load2_noabort(i32 %47)
  %bf.load48 = load i16, ptr %lock_state, align 8
  %bf.lshr = lshr i16 %bf.load48, 8
  %bf.cast49 = zext i16 %bf.lshr to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %bf.lshr)
  %cmp50 = icmp eq i16 %bf.lshr, 7
  br i1 %cmp50, label %list_add_tail.exit.error_unlock_crit_edge, label %do.body54

list_add_tail.exit.error_unlock_crit_edge:        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_unlock

do.body54:                                        ; preds = %list_add_tail.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %48 = load i32, ptr @afs_debug, align 4
  %and55 = and i32 %48, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %do.body54.do.end79_crit_edge, label %do.end66, !prof !218

do.body54.do.end79_crit_edge:                     ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end79

do.end66:                                         ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #9
  %49 = call i32 @llvm.read_register.i32(metadata !208) #7
  %and.i696 = and i32 %49, -16384
  %50 = inttoptr i32 %and.i696 to ptr
  %task69 = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %task69 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %task69, align 8
  %comm70 = getelementptr inbounds %struct.task_struct, ptr %52, i32 0, i32 101
  %call76 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %comm70, i32 noundef %bf.cast49) #10
  br label %do.end79

do.end79:                                         ; preds = %do.end66, %do.body54.do.end79_crit_edge
  %53 = ptrtoint ptr %lock_state to i32
  call void @__asan_load2_noabort(i32 %53)
  %bf.load81 = load i16, ptr %lock_state, align 8
  %bf.lshr82.mask = and i16 %bf.load81, -256
  call void @__sanitizer_cov_trace_const_cmp2(i16 768, i16 %bf.lshr82.mask)
  %cmp84 = icmp eq i16 %bf.lshr82.mask, 768
  br i1 %cmp84, label %if.then86, label %if.end150

if.then86:                                        ; preds = %do.end79
  br i1 %spec.select693, label %if.end116, label %do.body90

do.body90:                                        ; preds = %if.then86
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %54 = load i32, ptr @afs_debug, align 4
  %and91 = and i32 %54, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %do.body90.do.end111_crit_edge, label %do.end102, !prof !218

do.body90.do.end111_crit_edge:                    ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end111

do.end102:                                        ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #9
  %55 = call i32 @llvm.read_register.i32(metadata !208) #7
  %and.i697 = and i32 %55, -16384
  %56 = inttoptr i32 %and.i697 to ptr
  %task105 = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %task105 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %task105, align 8
  %comm106 = getelementptr inbounds %struct.task_struct, ptr %58, i32 0, i32 101
  %call108 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef %comm106) #10
  br label %do.end111

do.end111:                                        ; preds = %do.end102, %do.body90.do.end111_crit_edge
  %granted_locks = getelementptr inbounds %struct.afs_vnode, ptr %1, i32 0, i32 16
  %call.i.i698 = call zeroext i1 @__list_del_entry_valid(ptr noundef %fl_u) #7
  br i1 %call.i.i698, label %if.end.i.i699, label %do.end111.__list_del_entry.exit.i_crit_edge

do.end111.__list_del_entry.exit.i_crit_edge:      ; preds = %do.end111
  call void @__sanitizer_cov_trace_pc() #9
  br label %__list_del_entry.exit.i

if.end.i.i699:                                    ; preds = %do.end111
  call void @__sanitizer_cov_trace_pc() #9
  %59 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %prev.i, align 4
  %61 = ptrtoint ptr %fl_u to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %fl_u, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %60, ptr %prev1.i.i.i, align 4
  %64 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %62, ptr %60, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i699, %do.end111.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr inbounds %struct.afs_vnode, ptr %1, i32 0, i32 16, i32 1
  %65 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %fl_u, ptr noundef %66, ptr noundef %granted_locks) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %67 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %fl_u, ptr %prev.i2.i, align 4
  %68 = ptrtoint ptr %fl_u to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %granted_locks, ptr %fl_u, align 4
  %69 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %66, ptr %prev.i, align 4
  %70 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %fl_u, ptr %66, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %71 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %state, align 4
  br label %do.body291

if.end116:                                        ; preds = %if.then86
  %bf.clear = and i16 %bf.load81, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %bf.clear)
  %cmp119 = icmp eq i16 %bf.clear, 1
  br i1 %cmp119, label %do.body122, label %if.end116.need_to_wait_crit_edge

if.end116.need_to_wait_crit_edge:                 ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #9
  br label %need_to_wait

do.body122:                                       ; preds = %if.end116
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %72 = load i32, ptr @afs_debug, align 4
  %and123 = and i32 %72, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and123)
  %tobool124.not = icmp eq i32 %and123, 0
  br i1 %tobool124.not, label %do.body122.do.end143_crit_edge, label %do.end134, !prof !218

do.body122.do.end143_crit_edge:                   ; preds = %do.body122
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end143

do.end134:                                        ; preds = %do.body122
  call void @__sanitizer_cov_trace_pc() #9
  %73 = call i32 @llvm.read_register.i32(metadata !208) #7
  %and.i700 = and i32 %73, -16384
  %74 = inttoptr i32 %and.i700 to ptr
  %task137 = getelementptr inbounds %struct.thread_info, ptr %74, i32 0, i32 2
  %75 = ptrtoint ptr %task137 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %task137, align 8
  %comm138 = getelementptr inbounds %struct.task_struct, ptr %76, i32 0, i32 101
  %call140 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef %comm138) #10
  br label %do.end143

do.end143:                                        ; preds = %do.end134, %do.body122.do.end143_crit_edge
  %granted_locks146 = getelementptr inbounds %struct.afs_vnode, ptr %1, i32 0, i32 16
  call fastcc void @list_move_tail(ptr noundef %fl_u, ptr noundef %granted_locks146)
  %77 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %state, align 4
  br label %do.body291

if.end150:                                        ; preds = %do.end79
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %bf.load81)
  %cmp155 = icmp ult i16 %bf.load81, 256
  br i1 %cmp155, label %land.lhs.true157, label %if.end150.need_to_wait_crit_edge

if.end150.need_to_wait_crit_edge:                 ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #9
  br label %need_to_wait

land.lhs.true157:                                 ; preds = %if.end150
  %fl_flags = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 6
  %78 = ptrtoint ptr %fl_flags to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %fl_flags, align 8
  %and158 = and i32 %79, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and158)
  %tobool159.not = icmp eq i32 %and158, 0
  br i1 %tobool159.not, label %if.then160, label %land.lhs.true157.try_to_lock_crit_edge

land.lhs.true157.try_to_lock_crit_edge:           ; preds = %land.lhs.true157
  call void @__sanitizer_cov_trace_pc() #9
  br label %try_to_lock

if.then160:                                       ; preds = %land.lhs.true157
  %lock_count169 = getelementptr inbounds %struct.afs_vnode, ptr %1, i32 0, i32 3, i32 12
  %80 = ptrtoint ptr %lock_count169 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %lock_count169, align 4
  br i1 %spec.select693, label %if.else, label %if.then163

if.then163:                                       ; preds = %if.then160
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %81)
  %cmp164 = icmp eq i32 %81, -1
  br i1 %cmp164, label %if.then163.lock_is_contended_crit_edge, label %if.then163.try_to_lock_crit_edge

if.then163.try_to_lock_crit_edge:                 ; preds = %if.then163
  call void @__sanitizer_cov_trace_pc() #9
  br label %try_to_lock

if.then163.lock_is_contended_crit_edge:           ; preds = %if.then163
  call void @__sanitizer_cov_trace_pc() #9
  br label %lock_is_contended

if.else:                                          ; preds = %if.then160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp170.not = icmp eq i32 %81, 0
  br i1 %cmp170.not, label %if.else.try_to_lock_crit_edge, label %if.else.lock_is_contended_crit_edge

if.else.lock_is_contended_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %lock_is_contended

if.else.try_to_lock_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %try_to_lock

try_to_lock.sink.split:                           ; preds = %afs_set_lock_state.exit772, %if.then410.try_to_lock.sink.split_crit_edge
  %82 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 1, ptr %state, align 4
  br label %try_to_lock

try_to_lock:                                      ; preds = %try_to_lock.sink.split, %if.else.try_to_lock_crit_edge, %if.then163.try_to_lock_crit_edge, %land.lhs.true157.try_to_lock_crit_edge
  call fastcc void @trace_afs_flock_ev(ptr noundef %1, ptr noundef %fl, i32 noundef 10, i32 noundef 0)
  %tobool.not.i701 = icmp eq ptr %10, null
  br i1 %tobool.not.i701, label %try_to_lock.key_get.exit_crit_edge, label %cond.true.i

try_to_lock.key_get.exit_crit_edge:               ; preds = %try_to_lock
  call void @__sanitizer_cov_trace_pc() #9
  br label %key_get.exit

cond.true.i:                                      ; preds = %try_to_lock
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %10, i32 noundef 4) #7
  call void @llvm.prefetch.p0(ptr nonnull %10, i32 1, i32 3, i32 1) #7
  %83 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %10, ptr nonnull %10, i32 1, ptr nonnull elementtype(i32) %10) #7, !srcloc !226
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %83, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %cond.true.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !224

cond.true.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %cond.true.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %84 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %84)
  %.not.i.i.i.i.i = icmp sgt i32 %84, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.key_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !218

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.key_get.exit_crit_edge:         ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %key_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %cond.true.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %cond.true.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef nonnull %10, i32 noundef %.sink.i.i.i.i.i) #7
  br label %key_get.exit

key_get.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.key_get.exit_crit_edge, %try_to_lock.key_get.exit_crit_edge
  %lock_key = getelementptr inbounds %struct.afs_vnode, ptr %1, i32 0, i32 18
  %85 = ptrtoint ptr %lock_key to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %10, ptr %lock_key, align 8
  %86 = zext i1 %spec.select693 to i16
  %87 = ptrtoint ptr %lock_state to i32
  call void @__asan_load2_noabort(i32 %87)
  %bf.load186 = load i16, ptr %lock_state, align 8
  %bf.clear187 = and i16 %bf.load186, -256
  %bf.set = or i16 %bf.clear187, %86
  store i16 %bf.set, ptr %lock_state, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %88 = load i32, ptr @afs_debug, align 4
  %and.i702 = and i32 %88, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i702)
  %tobool.not.i703 = icmp eq i32 %and.i702, 0
  br i1 %tobool.not.i703, label %key_get.exit.afs_set_lock_state.exit_crit_edge, label %do.end.i, !prof !218

key_get.exit.afs_set_lock_state.exit_crit_edge:   ; preds = %key_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %afs_set_lock_state.exit

do.end.i:                                         ; preds = %key_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  %89 = call i32 @llvm.read_register.i32(metadata !208) #7
  %and.i.i = and i32 %89, -16384
  %90 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %90, i32 0, i32 2
  %91 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %92, i32 0, i32 101
  %bf.lshr.i = lshr i16 %bf.load186, 8
  %bf.cast.i = zext i16 %bf.lshr.i to i32
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %comm.i, i32 noundef %bf.cast.i, i32 noundef 2) #10
  br label %afs_set_lock_state.exit

afs_set_lock_state.exit:                          ; preds = %do.end.i, %key_get.exit.afs_set_lock_state.exit_crit_edge
  %93 = ptrtoint ptr %lock_state to i32
  call void @__asan_load2_noabort(i32 %93)
  %bf.load7.i = load i16, ptr %lock_state, align 8
  %bf.clear.i = and i16 %bf.load7.i, 255
  %bf.set.i = or i16 %bf.clear.i, 512
  store i16 %bf.set.i, ptr %lock_state, align 8
  call void @_raw_spin_unlock(ptr noundef %lock) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %94 = load i32, ptr @afs_debug, align 4
  %and.i704 = and i32 %94, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i704)
  %tobool.not.i705 = icmp eq i32 %and.i704, 0
  br i1 %tobool.not.i705, label %afs_set_lock_state.exit.do.end11.i_crit_edge, label %do.end.i709, !prof !218

afs_set_lock_state.exit.do.end11.i_crit_edge:     ; preds = %afs_set_lock_state.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end11.i

do.end.i709:                                      ; preds = %afs_set_lock_state.exit
  %95 = call i32 @llvm.read_register.i32(metadata !208) #7
  %and.i.i706 = and i32 %95, -16384
  %96 = inttoptr i32 %and.i.i706 to ptr
  %task.i707 = getelementptr inbounds %struct.thread_info, ptr %96, i32 0, i32 2
  %97 = ptrtoint ptr %task.i707 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %task.i707, align 8
  %comm.i708 = getelementptr inbounds %struct.task_struct, ptr %98, i32 0, i32 101
  %volume.i = getelementptr inbounds %struct.afs_vnode, ptr %1, i32 0, i32 1
  %99 = ptrtoint ptr %volume.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %volume.i, align 8
  %name.i = getelementptr inbounds %struct.afs_volume, ptr %100, i32 0, i32 17
  %fid.i = getelementptr inbounds %struct.afs_vnode, ptr %1, i32 0, i32 2
  %101 = ptrtoint ptr %fid.i to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %fid.i, align 8
  %vnode6.i = getelementptr inbounds %struct.afs_vnode, ptr %1, i32 0, i32 2, i32 1
  %103 = ptrtoint ptr %vnode6.i to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %vnode6.i, align 8
  %unique.i = getelementptr inbounds %struct.afs_vnode, ptr %1, i32 0, i32 2, i32 3
  %105 = ptrtoint ptr %unique.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %unique.i, align 4
  br i1 %tobool.not.i701, label %do.end.i709.key_serial.exit.i_crit_edge, label %cond.true.i.i

do.end.i709.key_serial.exit.i_crit_edge:          ; preds = %do.end.i709
  call void @__sanitizer_cov_trace_pc() #9
  br label %key_serial.exit.i

cond.true.i.i:                                    ; preds = %do.end.i709
  call void @__sanitizer_cov_trace_pc() #9
  %serial.i.i = getelementptr inbounds %struct.key, ptr %10, i32 0, i32 1
  %107 = ptrtoint ptr %serial.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %serial.i.i, align 4
  br label %key_serial.exit.i

key_serial.exit.i:                                ; preds = %cond.true.i.i, %do.end.i709.key_serial.exit.i_crit_edge
  %cond.i.i = phi i32 [ %108, %cond.true.i.i ], [ 0, %do.end.i709.key_serial.exit.i_crit_edge ]
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, ptr noundef %comm.i708, ptr noundef nonnull @.str.115, ptr noundef %name.i, i64 noundef %102, i64 noundef %104, i32 noundef %106, i32 noundef %cond.i.i, i32 noundef %type.0) #10
  br label %do.end11.i

do.end11.i:                                       ; preds = %key_serial.exit.i, %afs_set_lock_state.exit.do.end11.i_crit_edge
  %volume12.i = getelementptr inbounds %struct.afs_vnode, ptr %1, i32 0, i32 1
  %109 = ptrtoint ptr %volume12.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %volume12.i, align 8
  %call13.i = call ptr @afs_alloc_operation(ptr noundef %10, ptr noundef %110) #7
  %cmp.i.i = icmp ugt ptr %call13.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then15.i, label %if.end17.i

if.then15.i:                                      ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  %111 = ptrtoint ptr %call13.i to i32
  br label %afs_set_lock.exit

if.end17.i:                                       ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  %file.i.i = getelementptr inbounds %struct.afs_operation, ptr %call13.i, i32 0, i32 5
  %112 = ptrtoint ptr %file.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %1, ptr %file.i.i, align 8
  %need_io_lock.i.i = getelementptr inbounds %struct.afs_operation, ptr %call13.i, i32 0, i32 5, i32 0, i32 6
  %113 = ptrtoint ptr %need_io_lock.i.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %bf.load.i.i = load i8, ptr %need_io_lock.i.i, align 1
  %bf.set.i.i = or i8 %bf.load.i.i, 64
  store i8 %bf.set.i.i, ptr %need_io_lock.i.i, align 1
  %114 = getelementptr inbounds %struct.afs_operation, ptr %call13.i, i32 0, i32 17
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %type.0, ptr %114, align 8
  %ops.i = getelementptr inbounds %struct.afs_operation, ptr %call13.i, i32 0, i32 3
  %116 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr @afs_set_lock_operation, ptr %ops.i, align 4
  %call19.i = call i32 @afs_do_sync_operation(ptr noundef %call13.i) #7
  br label %afs_set_lock.exit

afs_set_lock.exit:                                ; preds = %if.end17.i, %if.then15.i
  %retval.0.i710 = phi i32 [ %111, %if.then15.i ], [ %call19.i, %if.end17.i ]
  call void @_raw_spin_lock(ptr noundef %lock) #7
  %117 = zext i32 %retval.0.i710 to i64
  call void @__sanitizer_cov_trace_switch(i64 %117, ptr @__sancov_gen_cov_switch_values.120)
  switch i32 %retval.0.i710, label %sw.default [
    i32 -129, label %afs_set_lock.exit.sw.bb_crit_edge
    i32 -127, label %afs_set_lock.exit.sw.bb_crit_edge806
    i32 -128, label %afs_set_lock.exit.sw.bb_crit_edge807
    i32 -1, label %afs_set_lock.exit.sw.bb_crit_edge808
    i32 -13, label %afs_set_lock.exit.sw.bb_crit_edge809
    i32 -2, label %sw.bb195
    i32 -11, label %do.body205
    i32 0, label %sw.bb289
  ]

afs_set_lock.exit.sw.bb_crit_edge809:             ; preds = %afs_set_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

afs_set_lock.exit.sw.bb_crit_edge808:             ; preds = %afs_set_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

afs_set_lock.exit.sw.bb_crit_edge807:             ; preds = %afs_set_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

afs_set_lock.exit.sw.bb_crit_edge806:             ; preds = %afs_set_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

afs_set_lock.exit.sw.bb_crit_edge:                ; preds = %afs_set_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

sw.bb:                                            ; preds = %afs_set_lock.exit.sw.bb_crit_edge, %afs_set_lock.exit.sw.bb_crit_edge806, %afs_set_lock.exit.sw.bb_crit_edge807, %afs_set_lock.exit.sw.bb_crit_edge808, %afs_set_lock.exit.sw.bb_crit_edge809
  %118 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %retval.0.i710, ptr %state, align 4
  call fastcc void @trace_afs_flock_ev(ptr noundef %1, ptr noundef %fl, i32 noundef 5, i32 noundef %retval.0.i710)
  %call.i.i711 = call zeroext i1 @__list_del_entry_valid(ptr noundef %fl_u) #7
  br i1 %call.i.i711, label %if.end.i.i714, label %sw.bb.list_del_init.exit_crit_edge

sw.bb.list_del_init.exit_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit

if.end.i.i714:                                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %119 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %prev.i, align 4
  %121 = ptrtoint ptr %fl_u to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %fl_u, align 4
  %prev1.i.i.i713 = getelementptr inbounds %struct.list_head, ptr %122, i32 0, i32 1
  %123 = ptrtoint ptr %prev1.i.i.i713 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %120, ptr %prev1.i.i.i713, align 4
  %124 = ptrtoint ptr %120 to i32
  call void @__asan_store4_noabort(i32 %124)
  store volatile ptr %122, ptr %120, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i714, %sw.bb.list_del_init.exit_crit_edge
  %125 = ptrtoint ptr %fl_u to i32
  call void @__asan_store4_noabort(i32 %125)
  store volatile ptr %fl_u, ptr %fl_u, align 4
  %126 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %fl_u, ptr %prev.i, align 4
  call fastcc void @afs_next_locker(ptr noundef %1, i32 noundef %retval.0.i710)
  br label %error_unlock

sw.bb195:                                         ; preds = %afs_set_lock.exit
  %127 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 -2, ptr %state, align 4
  call fastcc void @trace_afs_flock_ev(ptr noundef %1, ptr noundef %fl, i32 noundef 4, i32 noundef -2)
  %call.i.i716 = call zeroext i1 @__list_del_entry_valid(ptr noundef %fl_u) #7
  br i1 %call.i.i716, label %if.end.i.i719, label %sw.bb195.list_del_init.exit722_crit_edge

sw.bb195.list_del_init.exit722_crit_edge:         ; preds = %sw.bb195
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit722

if.end.i.i719:                                    ; preds = %sw.bb195
  call void @__sanitizer_cov_trace_pc() #9
  %128 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %prev.i, align 4
  %130 = ptrtoint ptr %fl_u to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %fl_u, align 4
  %prev1.i.i.i718 = getelementptr inbounds %struct.list_head, ptr %131, i32 0, i32 1
  %132 = ptrtoint ptr %prev1.i.i.i718 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %129, ptr %prev1.i.i.i718, align 4
  %133 = ptrtoint ptr %129 to i32
  call void @__asan_store4_noabort(i32 %133)
  store volatile ptr %131, ptr %129, align 4
  br label %list_del_init.exit722

list_del_init.exit722:                            ; preds = %if.end.i.i719, %sw.bb195.list_del_init.exit722_crit_edge
  %134 = ptrtoint ptr %fl_u to i32
  call void @__asan_store4_noabort(i32 %134)
  store volatile ptr %fl_u, ptr %fl_u, align 4
  %135 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %fl_u, ptr %prev.i, align 4
  call fastcc void @afs_kill_lockers_enoent(ptr noundef %1)
  br label %error_unlock

sw.default:                                       ; preds = %afs_set_lock.exit
  %136 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %retval.0.i710, ptr %state, align 4
  call fastcc void @trace_afs_flock_ev(ptr noundef %1, ptr noundef %fl, i32 noundef 4, i32 noundef %retval.0.i710)
  %call.i.i723 = call zeroext i1 @__list_del_entry_valid(ptr noundef %fl_u) #7
  br i1 %call.i.i723, label %if.end.i.i726, label %sw.default.list_del_init.exit729_crit_edge

sw.default.list_del_init.exit729_crit_edge:       ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit729

if.end.i.i726:                                    ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  %137 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %prev.i, align 4
  %139 = ptrtoint ptr %fl_u to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %fl_u, align 4
  %prev1.i.i.i725 = getelementptr inbounds %struct.list_head, ptr %140, i32 0, i32 1
  %141 = ptrtoint ptr %prev1.i.i.i725 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %138, ptr %prev1.i.i.i725, align 4
  %142 = ptrtoint ptr %138 to i32
  call void @__asan_store4_noabort(i32 %142)
  store volatile ptr %140, ptr %138, align 4
  br label %list_del_init.exit729

list_del_init.exit729:                            ; preds = %if.end.i.i726, %sw.default.list_del_init.exit729_crit_edge
  %143 = ptrtoint ptr %fl_u to i32
  call void @__asan_store4_noabort(i32 %143)
  store volatile ptr %fl_u, ptr %fl_u, align 4
  %144 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %fl_u, ptr %prev.i, align 4
  call fastcc void @afs_next_locker(ptr noundef %1, i32 noundef 0)
  br label %error_unlock

do.body205:                                       ; preds = %afs_set_lock.exit
  %granted_locks206 = getelementptr inbounds %struct.afs_vnode, ptr %1, i32 0, i32 16
  %145 = ptrtoint ptr %granted_locks206 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load volatile ptr, ptr %granted_locks206, align 4
  %cmp.i730.not = icmp eq ptr %146, %granted_locks206
  br i1 %cmp.i730.not, label %do.body237, label %do.end220, !prof !218

do.end220:                                        ; preds = %do.body205
  call void @__sanitizer_cov_trace_pc() #9
  %call222 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #10
  %call227 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/afs/flock.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 590, 0\0A.popsection", ""() #7, !srcloc !233
  unreachable

do.body237:                                       ; preds = %do.body205
  %147 = ptrtoint ptr %pending_locks to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %pending_locks, align 4
  %cmp241.not = icmp eq ptr %148, %fl_u
  br i1 %cmp241.not, label %do.body237.lock_is_contended_crit_edge, label %do.end254, !prof !218

do.body237.lock_is_contended_crit_edge:           ; preds = %do.body237
  call void @__sanitizer_cov_trace_pc() #9
  br label %lock_is_contended

do.end254:                                        ; preds = %do.body237
  call void @__sanitizer_cov_trace_pc() #9
  %call256 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #10
  %call261 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #10
  %149 = ptrtoint ptr %pending_locks to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %pending_locks, align 4
  %151 = ptrtoint ptr %150 to i32
  %152 = ptrtoint ptr %fl_u to i32
  %call270 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, i32 noundef %151, i32 noundef %152) #10
  %153 = ptrtoint ptr %pending_locks to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %pending_locks, align 4
  %155 = ptrtoint ptr %154 to i32
  %call279 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, i32 noundef %155, i32 noundef %152) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/afs/flock.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 591, 0\0A.popsection", ""() #7, !srcloc !234
  unreachable

sw.bb289:                                         ; preds = %afs_set_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @afs_set_lock_state(ptr noundef %1, i32 noundef 3)
  call fastcc void @trace_afs_flock_ev(ptr noundef %1, ptr noundef %fl, i32 noundef 0, i32 noundef %type.0)
  call fastcc void @afs_grant_locks(ptr noundef %1)
  br label %do.body291

do.body291:                                       ; preds = %sw.bb289, %do.end143, %list_move_tail.exit
  call void @_raw_spin_unlock(ptr noundef %lock) #7
  %156 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %156)
  %.pr = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp294.not = icmp eq i32 %.pr, 0
  br i1 %cmp294.not, label %do.body291.skip_server_lock_crit_edge, label %do.end307, !prof !218

do.body291.skip_server_lock_crit_edge:            ; preds = %do.body291
  call void @__sanitizer_cov_trace_pc() #9
  br label %skip_server_lock

do.end307:                                        ; preds = %do.body291
  call void @__sanitizer_cov_trace_pc() #9
  %call309 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #10
  %call314 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #10
  %157 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %state, align 4
  %call321 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, i32 noundef %158, i32 noundef 0) #10
  %159 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %state, align 4
  %call328 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, i32 noundef %160, i32 noundef 0) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/afs/flock.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 605, 0\0A.popsection", ""() #7, !srcloc !235
  unreachable

skip_server_lock:                                 ; preds = %if.end480.skip_server_lock_crit_edge, %do.body291.skip_server_lock_crit_edge, %if.end36.skip_server_lock_crit_edge
  call fastcc void @trace_afs_flock_ev(ptr noundef %1, ptr noundef %fl, i32 noundef 12, i32 noundef 0)
  %161 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %f_inode.i, align 8
  %call1.i731 = call i32 @locks_lock_inode_wait(ptr noundef %162, ptr noundef %fl) #7
  call fastcc void @trace_afs_flock_ev(ptr noundef %1, ptr noundef %fl, i32 noundef 11, i32 noundef %call1.i731)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i731)
  %cmp339 = icmp slt i32 %call1.i731, 0
  br i1 %cmp339, label %do.body489, label %if.end342

if.end342:                                        ; preds = %skip_server_lock
  %call343 = call i32 @afs_validate(ptr noundef %1, ptr noundef %10) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %163 = load i32, ptr @afs_debug, align 4
  %and345 = and i32 %163, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and345)
  %tobool346.not = icmp eq i32 %and345, 0
  br i1 %tobool346.not, label %if.end342.cleanup540_crit_edge, label %do.end356, !prof !218

if.end342.cleanup540_crit_edge:                   ; preds = %if.end342
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup540

do.end356:                                        ; preds = %if.end342
  call void @__sanitizer_cov_trace_pc() #9
  %164 = call i32 @llvm.read_register.i32(metadata !208) #7
  %and.i732 = and i32 %164, -16384
  %165 = inttoptr i32 %and.i732 to ptr
  %task359 = getelementptr inbounds %struct.thread_info, ptr %165, i32 0, i32 2
  %166 = ptrtoint ptr %task359 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %task359, align 8
  %comm360 = getelementptr inbounds %struct.task_struct, ptr %167, i32 0, i32 101
  %call362 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef %comm360, ptr noundef nonnull @.str.60) #10
  br label %cleanup540

lock_is_contended:                                ; preds = %do.body237.lock_is_contended_crit_edge, %if.else.lock_is_contended_crit_edge, %if.then163.lock_is_contended_crit_edge
  %fl_flags366 = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 6
  %168 = ptrtoint ptr %fl_flags366 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %fl_flags366, align 8
  %and367 = and i32 %169, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and367)
  %tobool368.not = icmp eq i32 %and367, 0
  br i1 %tobool368.not, label %if.then369, label %if.end372

if.then369:                                       ; preds = %lock_is_contended
  %call.i.i733 = call zeroext i1 @__list_del_entry_valid(ptr noundef %fl_u) #7
  br i1 %call.i.i733, label %if.end.i.i736, label %if.then369.list_del_init.exit739_crit_edge

if.then369.list_del_init.exit739_crit_edge:       ; preds = %if.then369
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit739

if.end.i.i736:                                    ; preds = %if.then369
  call void @__sanitizer_cov_trace_pc() #9
  %170 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %prev.i, align 4
  %172 = ptrtoint ptr %fl_u to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %fl_u, align 4
  %prev1.i.i.i735 = getelementptr inbounds %struct.list_head, ptr %173, i32 0, i32 1
  %174 = ptrtoint ptr %prev1.i.i.i735 to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %171, ptr %prev1.i.i.i735, align 4
  %175 = ptrtoint ptr %171 to i32
  call void @__asan_store4_noabort(i32 %175)
  store volatile ptr %173, ptr %171, align 4
  br label %list_del_init.exit739

list_del_init.exit739:                            ; preds = %if.end.i.i736, %if.then369.list_del_init.exit739_crit_edge
  %176 = ptrtoint ptr %fl_u to i32
  call void @__asan_store4_noabort(i32 %176)
  store volatile ptr %fl_u, ptr %fl_u, align 4
  %177 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr %fl_u, ptr %prev.i, align 4
  call fastcc void @afs_next_locker(ptr noundef %1, i32 noundef 0)
  br label %error_unlock

if.end372:                                        ; preds = %lock_is_contended
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %178 = load i32, ptr @afs_debug, align 4
  %and.i740 = and i32 %178, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i740)
  %tobool.not.i741 = icmp eq i32 %and.i740, 0
  br i1 %tobool.not.i741, label %if.end372.afs_set_lock_state.exit755_crit_edge, label %do.end.i750, !prof !218

if.end372.afs_set_lock_state.exit755_crit_edge:   ; preds = %if.end372
  call void @__sanitizer_cov_trace_pc() #9
  br label %afs_set_lock_state.exit755

do.end.i750:                                      ; preds = %if.end372
  call void @__sanitizer_cov_trace_pc() #9
  %179 = call i32 @llvm.read_register.i32(metadata !208) #7
  %and.i.i742 = and i32 %179, -16384
  %180 = inttoptr i32 %and.i.i742 to ptr
  %task.i743 = getelementptr inbounds %struct.thread_info, ptr %180, i32 0, i32 2
  %181 = ptrtoint ptr %task.i743 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %task.i743, align 8
  %comm.i744 = getelementptr inbounds %struct.task_struct, ptr %182, i32 0, i32 101
  %183 = ptrtoint ptr %lock_state to i32
  call void @__asan_load2_noabort(i32 %183)
  %bf.load.i746 = load i16, ptr %lock_state, align 8
  %bf.lshr.i747 = lshr i16 %bf.load.i746, 8
  %bf.cast.i748 = zext i16 %bf.lshr.i747 to i32
  %call4.i749 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %comm.i744, i32 noundef %bf.cast.i748, i32 noundef 1) #10
  br label %afs_set_lock_state.exit755

afs_set_lock_state.exit755:                       ; preds = %do.end.i750, %if.end372.afs_set_lock_state.exit755_crit_edge
  %184 = ptrtoint ptr %lock_state to i32
  call void @__asan_load2_noabort(i32 %184)
  %bf.load7.i752 = load i16, ptr %lock_state, align 8
  %bf.clear.i753 = and i16 %bf.load7.i752, 255
  %bf.set.i754 = or i16 %bf.clear.i753, 256
  store i16 %bf.set.i754, ptr %lock_state, align 8
  call fastcc void @trace_afs_flock_ev(ptr noundef %1, ptr noundef %fl, i32 noundef 18, i32 noundef -11)
  %185 = load ptr, ptr @afs_lock_manager, align 4
  %lock_work = getelementptr inbounds %struct.afs_vnode, ptr %1, i32 0, i32 17
  %call.i756 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %185, ptr noundef %lock_work, i32 noundef 500) #7
  br label %need_to_wait

need_to_wait:                                     ; preds = %afs_set_lock_state.exit755, %if.end150.need_to_wait_crit_edge, %if.end116.need_to_wait_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock) #7
  call fastcc void @trace_afs_flock_ev(ptr noundef %1, ptr noundef %fl, i32 noundef 14, i32 noundef 0)
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 645) #7
  %186 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %187)
  %cmp383.not = icmp eq i32 %187, 1
  br i1 %cmp383.not, label %if.then385, label %need_to_wait.if.end399_crit_edge

need_to_wait.if.end399_crit_edge:                 ; preds = %need_to_wait
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end399

if.then385:                                       ; preds = %need_to_wait
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #7
  %188 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #7
  %fl_wait = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 10
  %call387798 = call i32 @prepare_to_wait_event(ptr noundef %fl_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #7
  %189 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %190)
  %cmp390.not799 = icmp eq i32 %190, 1
  br i1 %cmp390.not799, label %if.then385.if.end393_crit_edge, label %if.then385.for.end_crit_edge

if.then385.for.end_crit_edge:                     ; preds = %if.then385
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.then385.if.end393_crit_edge:                   ; preds = %if.then385
  br label %if.end393

if.end393:                                        ; preds = %cleanup.if.end393_crit_edge, %if.then385.if.end393_crit_edge
  %call387800 = phi i32 [ %call387, %cleanup.if.end393_crit_edge ], [ %call387798, %if.then385.if.end393_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call387800)
  %tobool394.not = icmp eq i32 %call387800, 0
  br i1 %tobool394.not, label %cleanup, label %if.end393.__out_crit_edge

if.end393.__out_crit_edge:                        ; preds = %if.end393
  call void @__sanitizer_cov_trace_pc() #9
  br label %__out

cleanup:                                          ; preds = %if.end393
  call void @schedule() #7
  %call387 = call i32 @prepare_to_wait_event(ptr noundef %fl_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #7
  %191 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %state, align 4
  %cmp390.not = icmp eq i32 %192, 1
  br i1 %cmp390.not, label %cleanup.if.end393_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

cleanup.if.end393_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end393

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then385.for.end_crit_edge
  call void @finish_wait(ptr noundef %fl_wait, ptr noundef nonnull %__wq_entry) #7
  br label %__out

__out:                                            ; preds = %for.end, %if.end393.__out_crit_edge
  %__ret386.1790 = phi i32 [ 0, %for.end ], [ %call387800, %if.end393.__out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #7
  br label %if.end399

if.end399:                                        ; preds = %__out, %need_to_wait.if.end399_crit_edge
  %__ret.0 = phi i32 [ 0, %need_to_wait.if.end399_crit_edge ], [ %__ret386.1790, %__out ]
  call fastcc void @trace_afs_flock_ev(ptr noundef %1, ptr noundef %fl, i32 noundef 13, i32 noundef %__ret.0)
  %193 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %194)
  %195 = icmp slt i32 %194, 1
  br i1 %195, label %if.end399.if.end480_crit_edge, label %if.then410

if.end399.if.end480_crit_edge:                    ; preds = %if.end399
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end480

if.then410:                                       ; preds = %if.end399
  call void @_raw_spin_lock(ptr noundef %lock) #7
  %196 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %state, align 4
  %198 = zext i32 %197 to i64
  call void @__sanitizer_cov_trace_switch(i64 %198, ptr @__sancov_gen_cov_switch_values.121)
  switch i32 %197, label %sw.epilog [
    i32 2, label %if.then410.try_to_lock.sink.split_crit_edge
    i32 1, label %sw.bb417
  ]

if.then410.try_to_lock.sink.split_crit_edge:      ; preds = %if.then410
  call void @__sanitizer_cov_trace_pc() #9
  br label %try_to_lock.sink.split

sw.bb417:                                         ; preds = %if.then410
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.0)
  %cmp418 = icmp sgt i32 %__ret.0, 0
  br i1 %cmp418, label %do.body421, label %sw.bb417.error_unlock_crit_edge

sw.bb417.error_unlock_crit_edge:                  ; preds = %sw.bb417
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_unlock

do.body421:                                       ; preds = %sw.bb417
  %199 = ptrtoint ptr %lock_state to i32
  call void @__asan_load2_noabort(i32 %199)
  %bf.load423 = load i16, ptr %lock_state, align 8
  %bf.lshr424.mask = and i16 %bf.load423, -256
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %bf.lshr424.mask)
  %cmp426.not = icmp eq i16 %bf.lshr424.mask, 256
  br i1 %cmp426.not, label %do.end473, label %do.end439, !prof !218

do.end439:                                        ; preds = %do.body421
  call void @__sanitizer_cov_trace_pc() #9
  %call441 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #10
  %call446 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #10
  %200 = ptrtoint ptr %lock_state to i32
  call void @__asan_load2_noabort(i32 %200)
  %bf.load452 = load i16, ptr %lock_state, align 8
  %bf.lshr453 = lshr i16 %bf.load452, 8
  %bf.cast454 = zext i16 %bf.lshr453 to i32
  %call455 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, i32 noundef %bf.cast454, i32 noundef 1) #10
  %201 = ptrtoint ptr %lock_state to i32
  call void @__asan_load2_noabort(i32 %201)
  %bf.load461 = load i16, ptr %lock_state, align 8
  %bf.lshr462 = lshr i16 %bf.load461, 8
  %bf.cast463 = zext i16 %bf.lshr462 to i32
  %call464 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, i32 noundef %bf.cast463, i32 noundef 1) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/afs/flock.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 661, 0\0A.popsection", ""() #7, !srcloc !236
  unreachable

do.end473:                                        ; preds = %do.body421
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %202 = load i32, ptr @afs_debug, align 4
  %and.i757 = and i32 %202, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i757)
  %tobool.not.i758 = icmp eq i32 %and.i757, 0
  br i1 %tobool.not.i758, label %do.end473.afs_set_lock_state.exit772_crit_edge, label %do.end.i767, !prof !218

do.end473.afs_set_lock_state.exit772_crit_edge:   ; preds = %do.end473
  call void @__sanitizer_cov_trace_pc() #9
  br label %afs_set_lock_state.exit772

do.end.i767:                                      ; preds = %do.end473
  call void @__sanitizer_cov_trace_pc() #9
  %203 = call i32 @llvm.read_register.i32(metadata !208) #7
  %and.i.i759 = and i32 %203, -16384
  %204 = inttoptr i32 %and.i.i759 to ptr
  %task.i760 = getelementptr inbounds %struct.thread_info, ptr %204, i32 0, i32 2
  %205 = ptrtoint ptr %task.i760 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %task.i760, align 8
  %comm.i761 = getelementptr inbounds %struct.task_struct, ptr %206, i32 0, i32 101
  %bf.lshr.i764 = lshr i16 %bf.load423, 8
  %bf.cast.i765 = zext i16 %bf.lshr.i764 to i32
  %call4.i766 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %comm.i761, i32 noundef %bf.cast.i765, i32 noundef 2) #10
  br label %afs_set_lock_state.exit772

afs_set_lock_state.exit772:                       ; preds = %do.end.i767, %do.end473.afs_set_lock_state.exit772_crit_edge
  %207 = ptrtoint ptr %lock_state to i32
  call void @__asan_load2_noabort(i32 %207)
  %bf.load7.i769 = load i16, ptr %lock_state, align 8
  %bf.clear.i770 = and i16 %bf.load7.i769, 255
  %bf.set.i771 = or i16 %bf.clear.i770, 512
  store i16 %bf.set.i771, ptr %lock_state, align 8
  br label %try_to_lock.sink.split

sw.epilog:                                        ; preds = %if.then410
  call void @__sanitizer_cov_trace_pc() #9
  call void @_raw_spin_unlock(ptr noundef %lock) #7
  %208 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %208)
  %.pr795 = load i32, ptr %state, align 4
  br label %if.end480

if.end480:                                        ; preds = %sw.epilog, %if.end399.if.end480_crit_edge
  %209 = phi i32 [ %.pr795, %sw.epilog ], [ %194, %if.end399.if.end480_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %209)
  %cmp483 = icmp eq i32 %209, 0
  br i1 %cmp483, label %if.end480.skip_server_lock_crit_edge, label %if.end480.do.body518_crit_edge

if.end480.do.body518_crit_edge:                   ; preds = %if.end480
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body518

if.end480.skip_server_lock_crit_edge:             ; preds = %if.end480
  call void @__sanitizer_cov_trace_pc() #9
  br label %skip_server_lock

do.body489:                                       ; preds = %skip_server_lock
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %210 = load i32, ptr @afs_debug, align 4
  %and490 = and i32 %210, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and490)
  %tobool491.not = icmp eq i32 %and490, 0
  br i1 %tobool491.not, label %do.body489.do.end510_crit_edge, label %do.end501, !prof !218

do.body489.do.end510_crit_edge:                   ; preds = %do.body489
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end510

do.end501:                                        ; preds = %do.body489
  call void @__sanitizer_cov_trace_pc() #9
  %211 = call i32 @llvm.read_register.i32(metadata !208) #7
  %and.i773 = and i32 %211, -16384
  %212 = inttoptr i32 %and.i773 to ptr
  %task504 = getelementptr inbounds %struct.thread_info, ptr %212, i32 0, i32 2
  %213 = ptrtoint ptr %task504 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %task504, align 8
  %comm505 = getelementptr inbounds %struct.task_struct, ptr %214, i32 0, i32 101
  %call507 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, ptr noundef %comm505, i32 noundef %call1.i731) #10
  br label %do.end510

do.end510:                                        ; preds = %do.end501, %do.body489.do.end510_crit_edge
  br i1 %or.cond692, label %do.end510.do.body518_crit_edge, label %if.end513

do.end510.do.body518_crit_edge:                   ; preds = %do.end510
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body518

if.end513:                                        ; preds = %do.end510
  %lock514 = getelementptr inbounds %struct.afs_vnode, ptr %1, i32 0, i32 12
  call void @_raw_spin_lock(ptr noundef %lock514) #7
  %call.i.i774 = call zeroext i1 @__list_del_entry_valid(ptr noundef %fl_u) #7
  br i1 %call.i.i774, label %if.end.i.i777, label %if.end513.list_del_init.exit780_crit_edge

if.end513.list_del_init.exit780_crit_edge:        ; preds = %if.end513
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit780

if.end.i.i777:                                    ; preds = %if.end513
  call void @__sanitizer_cov_trace_pc() #9
  %215 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %prev.i, align 4
  %217 = ptrtoint ptr %fl_u to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %fl_u, align 4
  %prev1.i.i.i776 = getelementptr inbounds %struct.list_head, ptr %218, i32 0, i32 1
  %219 = ptrtoint ptr %prev1.i.i.i776 to i32
  call void @__asan_store4_noabort(i32 %219)
  store ptr %216, ptr %prev1.i.i.i776, align 4
  %220 = ptrtoint ptr %216 to i32
  call void @__asan_store4_noabort(i32 %220)
  store volatile ptr %218, ptr %216, align 4
  br label %list_del_init.exit780

list_del_init.exit780:                            ; preds = %if.end.i.i777, %if.end513.list_del_init.exit780_crit_edge
  %221 = ptrtoint ptr %fl_u to i32
  call void @__asan_store4_noabort(i32 %221)
  store volatile ptr %fl_u, ptr %fl_u, align 4
  %222 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store ptr %fl_u, ptr %prev.i, align 4
  call fastcc void @afs_defer_unlock(ptr noundef %1)
  br label %error_unlock

error_unlock:                                     ; preds = %list_del_init.exit780, %sw.bb417.error_unlock_crit_edge, %list_del_init.exit739, %list_del_init.exit729, %list_del_init.exit722, %list_del_init.exit, %list_add_tail.exit.error_unlock_crit_edge
  %ret.1 = phi i32 [ %call1.i731, %list_del_init.exit780 ], [ -2, %list_add_tail.exit.error_unlock_crit_edge ], [ %retval.0.i710, %list_del_init.exit729 ], [ -11, %list_del_init.exit739 ], [ -2, %list_del_init.exit722 ], [ %retval.0.i710, %list_del_init.exit ], [ %__ret.0, %sw.bb417.error_unlock_crit_edge ]
  %lock517 = getelementptr inbounds %struct.afs_vnode, ptr %1, i32 0, i32 12
  call void @_raw_spin_unlock(ptr noundef %lock517) #7
  br label %do.body518

do.body518:                                       ; preds = %error_unlock, %do.end510.do.body518_crit_edge, %if.end480.do.body518_crit_edge
  %ret.2 = phi i32 [ %call1.i731, %do.end510.do.body518_crit_edge ], [ %ret.1, %error_unlock ], [ %209, %if.end480.do.body518_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %223 = load i32, ptr @afs_debug, align 4
  %and519 = and i32 %223, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and519)
  %tobool520.not = icmp eq i32 %and519, 0
  br i1 %tobool520.not, label %do.body518.cleanup540_crit_edge, label %do.end530, !prof !218

do.body518.cleanup540_crit_edge:                  ; preds = %do.body518
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup540

do.end530:                                        ; preds = %do.body518
  call void @__sanitizer_cov_trace_pc() #9
  %224 = call i32 @llvm.read_register.i32(metadata !208) #7
  %and.i781 = and i32 %224, -16384
  %225 = inttoptr i32 %and.i781 to ptr
  %task533 = getelementptr inbounds %struct.thread_info, ptr %225, i32 0, i32 2
  %226 = ptrtoint ptr %task533 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %task533, align 8
  %comm534 = getelementptr inbounds %struct.task_struct, ptr %227, i32 0, i32 101
  %call536 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, ptr noundef %comm534, ptr noundef nonnull @.str.60, i32 noundef %ret.2) #10
  br label %cleanup540

cleanup540:                                       ; preds = %do.end530, %do.body518.cleanup540_crit_edge, %do.end356, %if.end342.cleanup540_crit_edge, %afs_do_setlk_check.exit.thread
  %retval.0 = phi i32 [ 0, %do.end356 ], [ 0, %if.end342.cleanup540_crit_edge ], [ %ret.2, %do.end530 ], [ %ret.2, %do.body518.cleanup540_crit_edge ], [ %retval.0.i.ph, %afs_do_setlk_check.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @afs_flock(ptr noundef %file, i32 noundef %cmd, ptr noundef %fl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %2 = load i32, ptr @afs_debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.end, !prof !218

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = tail call i32 @llvm.read_register.i32(metadata !208) #7
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 101
  %fid = getelementptr inbounds %struct.afs_vnode, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %fid to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %fid, align 8
  %vnode7 = getelementptr inbounds %struct.afs_vnode, ptr %1, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %vnode7 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %vnode7, align 8
  %fl_type = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 7
  %11 = ptrtoint ptr %fl_type to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %fl_type, align 4
  %conv = zext i8 %12 to i32
  %fl_flags = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 6
  %13 = ptrtoint ptr %fl_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fl_flags, align 8
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %comm, ptr noundef nonnull @.str.34, i64 noundef %8, i64 noundef %10, i32 noundef %cmd, i32 noundef %conv, i32 noundef %14) #10
  br label %do.end10

do.end10:                                         ; preds = %do.end, %entry.do.end10_crit_edge
  %fl_flags11 = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 6
  %15 = ptrtoint ptr %fl_flags11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fl_flags11, align 8
  %and12 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %do.end10.cleanup_crit_edge, label %if.end15

do.end10.cleanup_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %do.end10
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @afs_file_lock_debug_id, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !227
  tail call void @llvm.prefetch.p0(ptr nonnull @afs_file_lock_debug_id, i32 1, i32 3, i32 1) #7
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @afs_file_lock_debug_id, ptr nonnull @afs_file_lock_debug_id, i32 1, ptr nonnull elementtype(i32) @afs_file_lock_debug_id) #7, !srcloc !228
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %17, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !229
  %debug_id = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 19, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %debug_id to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %asmresult.i.i.i.i, ptr %debug_id, align 4
  tail call fastcc void @trace_afs_flock_op(ptr noundef %1, ptr noundef %fl, i32 noundef 1)
  %fl_type17 = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 7
  %19 = ptrtoint ptr %fl_type17 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %fl_type17, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %20)
  %cmp = icmp eq i8 %20, 2
  br i1 %cmp, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %call21 = tail call fastcc i32 @afs_do_unlk(ptr noundef %file, ptr noundef %fl)
  br label %if.end23

if.else:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %call22 = tail call fastcc i32 @afs_do_setlk(ptr noundef %file, ptr noundef %fl)
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then20
  %ret.0 = phi i32 [ %call21, %if.then20 ], [ %call22, %if.else ]
  %21 = zext i32 %ret.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.122)
  switch i32 %ret.0, label %sw.default [
    i32 0, label %if.end23.sw.epilog_crit_edge
    i32 -11, label %sw.bb24
    i32 -35, label %sw.bb25
  ]

if.end23.sw.epilog_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb24:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.default:                                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb25, %sw.bb24, %if.end23.sw.epilog_crit_edge
  %op.0 = phi i32 [ 8, %sw.default ], [ 7, %sw.bb25 ], [ 6, %sw.bb24 ], [ 5, %if.end23.sw.epilog_crit_edge ]
  tail call fastcc void @trace_afs_flock_op(ptr noundef %1, ptr noundef %fl, i32 noundef %op.0)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end10.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog ], [ -37, %do.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_afs_flock_ev(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nsecs_to_jiffies(i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @afs_alloc_operation(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afs_do_sync_operation(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_fs_release_lock(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @yfs_fs_release_lock(ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @afs_lock_success(ptr noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end, !prof !218

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = tail call i32 @llvm.read_register.i32(metadata !208) #7
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %debug_id = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 14
  %5 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %debug_id, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %comm, ptr noundef nonnull @.str.48, i32 noundef %6) #10
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %file = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5
  tail call void @afs_vnode_commit_status(ptr noundef %op, ptr noundef %file) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_vnode_commit_status(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_fs_extend_lock(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @yfs_fs_extend_lock(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @posix_test_lock(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afs_fetch_status(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_afs_flock_op(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_fsync(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @locks_lock_inode_wait(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @list_move_tail(ptr noundef %list, ptr noundef %head) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #7
  br i1 %call.i, label %if.end.i, label %entry.__list_del_entry.exit_crit_edge

entry.__list_del_entry.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %__list_del_entry.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i, align 4
  %2 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %list, align 4
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %__list_del_entry.exit

__list_del_entry.exit:                            ; preds = %if.end.i, %entry.__list_del_entry.exit_crit_edge
  %prev.i2 = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i2, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %7, ptr noundef %head) #7
  br i1 %call.i.i, label %if.end.i.i, label %__list_del_entry.exit.list_add_tail.exit_crit_edge

__list_del_entry.exit.list_add_tail.exit_crit_edge: ; preds = %__list_del_entry.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %__list_del_entry.exit
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %prev.i2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list, ptr %prev.i2, align 4
  %9 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %head, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %list, ptr %7, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %__list_del_entry.exit.list_add_tail.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @afs_grant_locks(ptr noundef %vnode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock_type = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 20
  %0 = ptrtoint ptr %lock_type to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %lock_type, align 8
  %bf.clear = and i16 %bf.load, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %bf.clear)
  %cmp = icmp eq i16 %bf.clear, 1
  %pending_locks = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 15
  %1 = ptrtoint ptr %pending_locks to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pending_locks, align 4
  %cmp8.not34 = icmp eq ptr %2, %pending_locks
  br i1 %cmp8.not34, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %granted_locks = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 16
  %prev.i2.i = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 16, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn.in35 = phi ptr [ %2, %for.body.lr.ph ], [ %.pn39, %for.inc.for.body_crit_edge ]
  %p.038 = getelementptr i8, ptr %.pn.in35, i32 -148
  %3 = ptrtoint ptr %.pn.in35 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn39 = load ptr, ptr %.pn.in35, align 4
  br i1 %cmp, label %for.body.if.end_crit_edge, label %land.lhs.true

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %fl_type = getelementptr i8, ptr %.pn.in35, i32 -104
  %4 = ptrtoint ptr %fl_type to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fl_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp9 = icmp eq i8 %5, 1
  br i1 %cmp9, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in35) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end.__list_del_entry.exit.i_crit_edge

if.end.__list_del_entry.exit.i_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in35, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %.pn.in35 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %.pn.in35, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.end.__list_del_entry.exit.i_crit_edge
  %12 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %.pn.in35, ptr noundef %13, ptr noundef %granted_locks) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %.pn.in35, ptr %prev.i2.i, align 4
  %15 = ptrtoint ptr %.pn.in35 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %granted_locks, ptr %.pn.in35, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in35, i32 0, i32 1
  %16 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev3.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %.pn.in35, ptr %13, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %state = getelementptr i8, ptr %.pn.in35, i32 8
  %18 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %state, align 4
  tail call fastcc void @trace_afs_flock_op(ptr noundef %vnode, ptr noundef %p.038, i32 noundef 2)
  %fl_wait = getelementptr i8, ptr %.pn.in35, i32 -92
  tail call void @__wake_up(ptr noundef %fl_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  br label %for.inc

for.inc:                                          ; preds = %list_move_tail.exit, %land.lhs.true.for.inc_crit_edge
  %cmp8.not = icmp eq ptr %.pn39, %pending_locks
  br i1 %cmp8.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afs_validate(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @afs_defer_unlock(ptr noundef %vnode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end, !prof !218

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = tail call i32 @llvm.read_register.i32(metadata !208) #7
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %lock_state = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 20
  %5 = ptrtoint ptr %lock_state to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load = load i16, ptr %lock_state, align 8
  %bf.lshr = lshr i16 %bf.load, 8
  %bf.cast = zext i16 %bf.lshr to i32
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, ptr noundef %comm, ptr noundef nonnull @.str.117, i32 noundef %bf.cast) #10
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %granted_locks = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 16
  %6 = ptrtoint ptr %granted_locks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %granted_locks, align 4
  %cmp.i.not = icmp eq ptr %7, %granted_locks
  br i1 %cmp.i.not, label %land.lhs.true, label %do.end5.if.end21_crit_edge

do.end5.if.end21_crit_edge:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

land.lhs.true:                                    ; preds = %do.end5
  %lock_state8 = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 20
  %8 = ptrtoint ptr %lock_state8 to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load9 = load i16, ptr %lock_state8, align 8
  %bf.lshr10 = lshr i16 %bf.load9, 8
  %bf.lshr10.off = add nsw i16 %bf.lshr10, -3
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %bf.lshr10.off)
  %switch = icmp ult i16 %bf.lshr10.off, 2
  br i1 %switch, label %if.then17, label %land.lhs.true.if.end21_crit_edge

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then17:                                        ; preds = %land.lhs.true
  %lock_work = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 17
  %call18 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %lock_work) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %9 = load i32, ptr @afs_debug, align 4
  %and.i29 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i29)
  %tobool.not.i = icmp eq i32 %and.i29, 0
  br i1 %tobool.not.i, label %if.then17.afs_set_lock_state.exit_crit_edge, label %do.end.i, !prof !218

if.then17.afs_set_lock_state.exit_crit_edge:      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %afs_set_lock_state.exit

do.end.i:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  %10 = tail call i32 @llvm.read_register.i32(metadata !208) #7
  %and.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 101
  %14 = ptrtoint ptr %lock_state8 to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load.i = load i16, ptr %lock_state8, align 8
  %bf.lshr.i = lshr i16 %bf.load.i, 8
  %bf.cast.i = zext i16 %bf.lshr.i to i32
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %comm.i, i32 noundef %bf.cast.i, i32 noundef 5) #10
  br label %afs_set_lock_state.exit

afs_set_lock_state.exit:                          ; preds = %do.end.i, %if.then17.afs_set_lock_state.exit_crit_edge
  %15 = ptrtoint ptr %lock_state8 to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load7.i = load i16, ptr %lock_state8, align 8
  %bf.clear.i = and i16 %bf.load7.i, 255
  %bf.set.i = or i16 %bf.clear.i, 1280
  store i16 %bf.set.i, ptr %lock_state8, align 8
  tail call fastcc void @trace_afs_flock_ev(ptr noundef %vnode, ptr noundef null, i32 noundef 2, i32 noundef 0)
  %16 = load ptr, ptr @afs_lock_manager, align 4
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %16, ptr noundef %lock_work, i32 noundef 0) #7
  br label %if.end21

if.end21:                                         ; preds = %afs_set_lock_state.exit, %land.lhs.true.if.end21_crit_edge, %do.end5.if.end21_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @afs_fl_copy_lock(ptr noundef %new, ptr noundef %fl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fl_file = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 11
  %0 = ptrtoint ptr %fl_file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fl_file, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %4 = load i32, ptr @afs_debug, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end, !prof !218

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = tail call i32 @llvm.read_register.i32(metadata !208) #7
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 101
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %comm, ptr noundef nonnull @.str.109) #10
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @afs_file_lock_debug_id, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !227
  tail call void @llvm.prefetch.p0(ptr nonnull @afs_file_lock_debug_id, i32 1, i32 3, i32 1) #7
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @afs_file_lock_debug_id, ptr nonnull @afs_file_lock_debug_id, i32 1, ptr nonnull elementtype(i32) @afs_file_lock_debug_id) #7, !srcloc !228
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %9, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !229
  %fl_u = getelementptr inbounds %struct.file_lock, ptr %new, i32 0, i32 19
  %debug_id = getelementptr inbounds %struct.file_lock, ptr %new, i32 0, i32 19, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %debug_id to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %asmresult.i.i.i.i, ptr %debug_id, align 4
  %lock = getelementptr inbounds %struct.afs_vnode, ptr %3, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %lock) #7
  tail call fastcc void @trace_afs_flock_op(ptr noundef %3, ptr noundef %new, i32 noundef 0)
  %fl_u11 = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 19
  %11 = ptrtoint ptr %fl_u11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fl_u11, align 4
  %call.i.i19 = tail call zeroext i1 @__list_add_valid(ptr noundef %fl_u, ptr noundef %fl_u11, ptr noundef %12) #7
  br i1 %call.i.i19, label %if.end.i.i, label %do.end8.list_add.exit_crit_edge

do.end8.list_add.exit_crit_edge:                  ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add.exit

if.end.i.i:                                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %fl_u, ptr %prev1.i.i, align 4
  %14 = ptrtoint ptr %fl_u to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %12, ptr %fl_u, align 4
  %prev3.i.i = getelementptr inbounds %struct.file_lock, ptr %new, i32 0, i32 19, i32 0, i32 1
  %15 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %fl_u11, ptr %prev3.i.i, align 4
  %16 = ptrtoint ptr %fl_u11 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %fl_u, ptr %fl_u11, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %do.end8.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @afs_fl_release_private(ptr noundef %fl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fl_file = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 11
  %0 = ptrtoint ptr %fl_file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fl_file, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %4 = load i32, ptr @afs_debug, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end, !prof !218

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = tail call i32 @llvm.read_register.i32(metadata !208) #7
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 101
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %comm, ptr noundef nonnull @.str.110) #10
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %lock = getelementptr inbounds %struct.afs_vnode, ptr %3, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %lock) #7
  tail call fastcc void @trace_afs_flock_op(ptr noundef %3, ptr noundef %fl, i32 noundef 4)
  %fl_u = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 19
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %fl_u) #7
  br i1 %call.i.i, label %if.end.i.i, label %do.end8.list_del_init.exit_crit_edge

do.end8.list_del_init.exit_crit_edge:             ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 19, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %fl_u to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fl_u, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %do.end8.list_del_init.exit_crit_edge
  %15 = ptrtoint ptr %fl_u to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %fl_u, ptr %fl_u, align 4
  %prev.i3.i = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 19, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %fl_u, ptr %prev.i3.i, align 4
  %granted_locks = getelementptr inbounds %struct.afs_vnode, ptr %3, i32 0, i32 16
  %17 = ptrtoint ptr %granted_locks to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %granted_locks, align 4
  %cmp.i.not = icmp eq ptr %18, %granted_locks
  br i1 %cmp.i.not, label %if.then11, label %list_del_init.exit.do.body13_crit_edge

list_del_init.exit.do.body13_crit_edge:           ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body13

if.then11:                                        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @afs_defer_unlock(ptr noundef %3)
  br label %do.body13

do.body13:                                        ; preds = %if.then11, %list_del_init.exit.do.body13_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %19 = load i32, ptr @afs_debug, align 4
  %and14 = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %do.body13.do.end34_crit_edge, label %do.end25, !prof !218

do.body13.do.end34_crit_edge:                     ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end34

do.end25:                                         ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #9
  %20 = tail call i32 @llvm.read_register.i32(metadata !208) #7
  %and.i44 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i44 to ptr
  %task28 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task28 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task28, align 8
  %comm29 = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 101
  %lock_state = getelementptr inbounds %struct.afs_vnode, ptr %3, i32 0, i32 20
  %24 = ptrtoint ptr %lock_state to i32
  call void @__asan_load2_noabort(i32 %24)
  %bf.load = load i16, ptr %lock_state, align 8
  %bf.lshr = lshr i16 %bf.load, 8
  %bf.cast = zext i16 %bf.lshr to i32
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, ptr noundef %comm29, i32 noundef %bf.cast, ptr noundef %3) #10
  br label %do.end34

do.end34:                                         ; preds = %do.end25, %do.body13.do.end34_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afs_check_permit(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_fs_set_lock(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @yfs_fs_set_lock(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_check_for_remote_deletion(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 107)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 107)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !55, !57, !59, !61, !62, !63, !64, !66, !67, !69, !70, !71, !72, !74, !75, !76, !78, !79, !80, !81, !83, !84, !85, !86, !88, !90, !91, !92, !93, !95, !96, !97, !99, !101, !102, !103, !105, !106, !107, !109, !110, !112, !113, !114, !115, !117, !118, !119, !121, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139, !140, !141, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !154, !155, !156, !157, !158, !159, !160, !161, !163, !164, !165, !167, !168, !169, !170, !171, !172, !173, !174, !176, !177, !178, !180, !181, !182, !184, !186, !187, !188, !190, !191, !192, !194, !195, !196, !198, !199, !200, !201, !203, !205, !206, !207}
!llvm.named.register.sp = !{!208}
!llvm.module.flags = !{!209, !210, !211, !212, !213, !214, !215, !216}
!llvm.ident = !{!217}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/afs/flock.c", i32 38, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @afs_lock_may_be_available._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @afs_lock_may_be_available._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/afs/flock.c", i32 289, i32 2}
!8 = !{ptr @afs_lock_work._entry, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @afs_lock_work._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/afs/flock.c", i32 294, i32 2}
!12 = !{ptr @afs_lock_work._entry.4, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @afs_lock_work._entry_ptr.6, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/afs/flock.c", i32 307, i32 4}
!16 = !{ptr @afs_lock_work._entry.7, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @afs_lock_work._entry_ptr.9, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/afs/flock.c", i32 324, i32 3}
!20 = !{ptr @afs_lock_work._entry.10, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @afs_lock_work._entry_ptr.12, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/afs/flock.c", i32 326, i32 3}
!24 = !{ptr @afs_lock_work._entry.13, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @afs_lock_work._entry_ptr.15, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.17, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @afs_lock_work._entry.16, !23, !"_entry", i1 false, i1 false}
!28 = !{ptr @afs_lock_work._entry_ptr.18, !23, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.20, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/afs/flock.c", i32 339, i32 4}
!31 = !{ptr @afs_lock_work._entry.19, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @afs_lock_work._entry_ptr.21, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.23, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/afs/flock.c", i32 359, i32 3}
!35 = !{ptr @afs_lock_work._entry.22, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @afs_lock_work._entry_ptr.24, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.26, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/afs/flock.c", i32 369, i32 3}
!39 = !{ptr @afs_lock_work._entry.25, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @afs_lock_work._entry_ptr.27, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.29, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/afs/flock.c", i32 382, i32 3}
!43 = !{ptr @afs_lock_work._entry.28, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @afs_lock_work._entry_ptr.30, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.31, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/afs/flock.c", i32 770, i32 2}
!47 = !{ptr @.str.32, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @afs_lock._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @afs_lock._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.33, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/afs/flock.c", i32 805, i32 2}
!52 = !{ptr @.str.34, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @afs_flock._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @afs_flock._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @afs_lock_manager, !56, !"afs_lock_manager", i1 false, i1 false}
!56 = !{!"../fs/afs/flock.c", i32 14, i32 26}
!57 = !{ptr @afs_file_lock_debug_id, !58, !"afs_file_lock_debug_id", i1 false, i1 false}
!58 = !{!"../fs/afs/flock.c", i32 31, i32 17}
!59 = distinct !{null, !60, !"__already_done", i1 false, i1 false}
!60 = !{!"../include/trace/events/afs.h", i32 1261, i32 1}
!61 = !{ptr @.str.35, !60, !"<string literal>", i1 false, i1 false}
!62 = distinct !{null, !60, !"__warned", i1 false, i1 false}
!63 = !{ptr @.str.36, !60, !"<string literal>", i1 false, i1 false}
!64 = distinct !{null, !65, !"__already_done", i1 false, i1 false}
!65 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!66 = !{ptr @.str.37, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.38, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/afs/flock.c", i32 117, i32 2}
!69 = !{ptr @.str.39, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @afs_next_locker._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @afs_next_locker._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.41, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/afs/flock.c", i32 151, i32 2}
!74 = !{ptr @afs_next_locker._entry.40, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @afs_next_locker._entry_ptr.42, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.43, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../fs/afs/flock.c", i32 27, i32 2}
!78 = !{ptr @.str.44, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @afs_set_lock_state._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @afs_set_lock_state._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.45, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/afs/flock.c", i32 259, i32 2}
!83 = !{ptr @.str.46, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @afs_release_lock._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @afs_release_lock._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @afs_release_lock_operation, !87, !"afs_release_lock_operation", i1 false, i1 false}
!87 = !{!"../fs/afs/flock.c", i32 246, i32 39}
!88 = !{ptr @.str.47, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../fs/afs/flock.c", i32 178, i32 2}
!90 = !{ptr @.str.48, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @afs_lock_success._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @afs_lock_success._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.49, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../fs/afs/flock.c", i32 228, i32 2}
!95 = !{ptr @afs_extend_lock._entry, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @afs_extend_lock._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @afs_extend_lock_operation, !98, !"afs_extend_lock_operation", i1 false, i1 false}
!98 = !{!"../fs/afs/flock.c", i32 215, i32 39}
!99 = !{ptr @.str.50, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../fs/afs/flock.c", i32 728, i32 2}
!101 = !{ptr @afs_do_getlk._entry, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @afs_do_getlk._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.52, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../fs/afs/flock.c", i32 757, i32 2}
!105 = !{ptr @afs_do_getlk._entry.51, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @afs_do_getlk._entry_ptr.53, !104, !"_entry_ptr", i1 false, i1 false}
!107 = distinct !{null, !108, !"__already_done", i1 false, i1 false}
!108 = !{!"../include/trace/events/afs.h", i32 1291, i32 1}
!109 = distinct !{null, !108, !"__warned", i1 false, i1 false}
!110 = !{ptr @.str.54, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../fs/afs/flock.c", i32 707, i32 2}
!112 = !{ptr @.str.55, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @afs_do_unlk._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @afs_do_unlk._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.57, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../fs/afs/flock.c", i32 715, i32 2}
!117 = !{ptr @afs_do_unlk._entry.56, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @afs_do_unlk._entry_ptr.58, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.59, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../fs/afs/flock.c", i32 465, i32 2}
!121 = !{ptr @.str.60, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @afs_do_setlk._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @afs_do_setlk._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.62, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../fs/afs/flock.c", i32 509, i32 2}
!126 = !{ptr @afs_do_setlk._entry.61, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @afs_do_setlk._entry_ptr.63, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.65, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../fs/afs/flock.c", i32 512, i32 4}
!130 = !{ptr @afs_do_setlk._entry.64, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @afs_do_setlk._entry_ptr.66, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.68, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../fs/afs/flock.c", i32 519, i32 4}
!134 = !{ptr @afs_do_setlk._entry.67, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @afs_do_setlk._entry_ptr.69, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @afs_do_setlk._entry.70, !137, !"_entry", i1 false, i1 false}
!137 = !{!"../fs/afs/flock.c", i32 590, i32 3}
!138 = !{ptr @afs_do_setlk._entry_ptr.71, !137, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @afs_do_setlk._entry.72, !137, !"_entry", i1 false, i1 false}
!140 = !{ptr @afs_do_setlk._entry_ptr.73, !137, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @afs_do_setlk._entry.74, !142, !"_entry", i1 false, i1 false}
!142 = !{!"../fs/afs/flock.c", i32 591, i32 3}
!143 = !{ptr @afs_do_setlk._entry_ptr.75, !142, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @afs_do_setlk._entry.76, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @afs_do_setlk._entry_ptr.77, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.79, !142, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @afs_do_setlk._entry.78, !142, !"_entry", i1 false, i1 false}
!148 = !{ptr @afs_do_setlk._entry_ptr.80, !142, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.82, !142, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @afs_do_setlk._entry.81, !142, !"_entry", i1 false, i1 false}
!151 = !{ptr @afs_do_setlk._entry_ptr.83, !142, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @afs_do_setlk._entry.84, !153, !"_entry", i1 false, i1 false}
!153 = !{!"../fs/afs/flock.c", i32 605, i32 2}
!154 = !{ptr @afs_do_setlk._entry_ptr.85, !153, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @afs_do_setlk._entry.86, !153, !"_entry", i1 false, i1 false}
!156 = !{ptr @afs_do_setlk._entry_ptr.87, !153, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @afs_do_setlk._entry.88, !153, !"_entry", i1 false, i1 false}
!158 = !{ptr @afs_do_setlk._entry_ptr.89, !153, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @afs_do_setlk._entry.90, !153, !"_entry", i1 false, i1 false}
!160 = !{ptr @afs_do_setlk._entry_ptr.91, !153, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.93, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../fs/afs/flock.c", i32 620, i32 2}
!163 = !{ptr @afs_do_setlk._entry.92, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @afs_do_setlk._entry_ptr.94, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @afs_do_setlk._entry.95, !166, !"_entry", i1 false, i1 false}
!166 = !{!"../fs/afs/flock.c", i32 661, i32 5}
!167 = !{ptr @afs_do_setlk._entry_ptr.96, !166, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @afs_do_setlk._entry.97, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @afs_do_setlk._entry_ptr.98, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @afs_do_setlk._entry.99, !166, !"_entry", i1 false, i1 false}
!171 = !{ptr @afs_do_setlk._entry_ptr.100, !166, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @afs_do_setlk._entry.101, !166, !"_entry", i1 false, i1 false}
!173 = !{ptr @afs_do_setlk._entry_ptr.102, !166, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.104, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../fs/afs/flock.c", i32 685, i32 2}
!176 = !{ptr @afs_do_setlk._entry.103, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @afs_do_setlk._entry_ptr.105, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.107, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../fs/afs/flock.c", i32 695, i32 2}
!180 = !{ptr @afs_do_setlk._entry.106, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @afs_do_setlk._entry_ptr.108, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @afs_lock_ops, !183, !"afs_lock_ops", i1 false, i1 false}
!183 = !{!"../fs/afs/flock.c", i32 20, i32 42}
!184 = !{ptr @.str.109, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../fs/afs/flock.c", i32 848, i32 2}
!186 = !{ptr @afs_fl_copy_lock._entry, !185, !"_entry", i1 false, i1 false}
!187 = !{ptr @afs_fl_copy_lock._entry_ptr, !185, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.110, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../fs/afs/flock.c", i32 866, i32 2}
!190 = !{ptr @afs_fl_release_private._entry, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @afs_fl_release_private._entry_ptr, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.112, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../fs/afs/flock.c", i32 875, i32 2}
!194 = !{ptr @afs_fl_release_private._entry.111, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @afs_fl_release_private._entry_ptr.113, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.114, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../fs/afs/flock.c", i32 197, i32 2}
!198 = !{ptr @.str.115, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @afs_set_lock._entry, !197, !"_entry", i1 false, i1 false}
!200 = !{ptr @afs_set_lock._entry_ptr, !197, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @afs_set_lock_operation, !202, !"afs_set_lock_operation", i1 false, i1 false}
!202 = !{!"../fs/afs/flock.c", i32 182, i32 39}
!203 = !{ptr @.str.116, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../fs/afs/flock.c", i32 395, i32 2}
!205 = !{ptr @.str.117, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @afs_defer_unlock._entry, !204, !"_entry", i1 false, i1 false}
!207 = !{ptr @afs_defer_unlock._entry_ptr, !204, !"_entry_ptr", i1 false, i1 false}
!208 = !{!"sp"}
!209 = !{i32 1, !"wchar_size", i32 2}
!210 = !{i32 1, !"min_enum_size", i32 4}
!211 = !{i32 8, !"branch-target-enforcement", i32 0}
!212 = !{i32 8, !"sign-return-address", i32 0}
!213 = !{i32 8, !"sign-return-address-all", i32 0}
!214 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!215 = !{i32 7, !"uwtable", i32 1}
!216 = !{i32 7, !"frame-pointer", i32 2}
!217 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!218 = !{!"branch_weights", i32 2000, i32 1}
!219 = !{i64 2148774302, i64 2148774307, i64 2148774320, i64 2148774364, i64 2148774398, i64 2148774419}
!220 = !{i64 2157608390}
!221 = !{i64 2157608623}
!222 = !{i64 2149629492}
!223 = !{i64 2149630528}
!224 = !{!"branch_weights", i32 1, i32 2000}
!225 = !{i64 2157832416, i64 2157832895, i64 2157832453, i64 2157832509, i64 2157832543, i64 2157832567, i64 2157832608, i64 2157832629, i64 2157832657, i64 2157832691}
!226 = !{i64 2148294017, i64 2148294049, i64 2148294078, i64 2148294112, i64 2148294143, i64 2148294166}
!227 = !{i64 2148377898}
!228 = !{i64 2148293207, i64 2148293239, i64 2148293268, i64 2148293302, i64 2148293333, i64 2148293356}
!229 = !{i64 2148378127}
!230 = !{i64 2157625360}
!231 = !{i64 2157625573}
!232 = !{!"auto-init"}
!233 = !{i64 2157853843, i64 2157854322, i64 2157853880, i64 2157853936, i64 2157853970, i64 2157853994, i64 2157854035, i64 2157854056, i64 2157854084, i64 2157854118}
!234 = !{i64 2157865841, i64 2157866320, i64 2157865878, i64 2157865934, i64 2157865968, i64 2157865992, i64 2157866033, i64 2157866054, i64 2157866082, i64 2157866116}
!235 = !{i64 2157873588, i64 2157874067, i64 2157873625, i64 2157873681, i64 2157873715, i64 2157873739, i64 2157873780, i64 2157873801, i64 2157873829, i64 2157873863}
!236 = !{i64 2157884680, i64 2157885159, i64 2157884717, i64 2157884773, i64 2157884807, i64 2157884831, i64 2157884872, i64 2157884893, i64 2157884921, i64 2157884955}
