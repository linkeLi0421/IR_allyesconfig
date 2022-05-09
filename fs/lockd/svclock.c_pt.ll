; ModuleID = '/llk/IR_all_yes/fs/lockd/svclock.c_pt.bc'
source_filename = "../fs/lockd/svclock.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_manager_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.rpc_call_ops = type { ptr, ptr, ptr, ptr }
%struct.nlm_file = type { %struct.hlist_node, %struct.nfs_fh, [2 x ptr], ptr, %struct.list_head, i32, i32, %struct.mutex }
%struct.hlist_node = type { ptr, ptr }
%struct.nfs_fh = type { i16, [128 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nlm_block = type { %struct.kref, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nlm_rqst = type { %struct.refcount_struct, i32, ptr, %struct.nlm_args, %struct.nlm_res, ptr, i32, [74 x i8], ptr }
%struct.nlm_args = type { %struct.nlm_cookie, %struct.nlm_lock, i32, i32, i32, i32, i32, i32 }
%struct.nlm_cookie = type { [32 x i8], i32 }
%struct.nlm_lock = type { ptr, i32, %struct.nfs_fh, %struct.xdr_netobj, i32, %struct.file_lock }
%struct.xdr_netobj = type { i32, ptr }
%struct.file_lock = type { ptr, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, ptr, i32, i8, i32, i32, %struct.wait_queue_head, ptr, i64, i64, ptr, i32, i32, ptr, ptr, %union.anon.117 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%union.anon.117 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, ptr, %struct.list_head }
%struct.nlm_res = type { %struct.nlm_cookie, i32, %struct.nlm_lock }
%struct.nlm_lockowner = type { %struct.list_head, %struct.refcount_struct, ptr, ptr, i32 }
%struct.nlm_host = type { %struct.hlist_node, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, i32, i16, i8, %struct.wait_queue_head, %struct.rw_semaphore, i32, i32, i32, %struct.refcount_struct, %struct.mutex, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, [65 x i8], ptr }
%struct.__kernel_sockaddr_storage = type { %union.anon }
%union.anon = type { ptr, [124 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.file = type { %union.anon.7, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.7 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.134, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.135, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.136, ptr, %struct.address_space, %struct.list_head, %union.anon.137, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.134 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.135 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.136 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.137 = type { ptr }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.100, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.13 }
%struct.llist_node = type { ptr }
%union.anon.13 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.15 }
%union.anon.15 = type { %struct.anon.16 }
%struct.anon.16 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.100 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.nsproxy = type { %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.new_utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%struct.svc_rqst = type { %struct.list_head, %struct.callback_head, ptr, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, ptr, ptr, %struct.svc_cred, ptr, ptr, i32, %struct.xdr_buf, %struct.xdr_stream, %struct.xdr_stream, ptr, %struct.xdr_buf, [260 x ptr], ptr, ptr, ptr, %struct.pagevec, [259 x %struct.kvec], [259 x %struct.bio_vec], i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, i64, %struct.cache_req, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr }
%struct.svc_cred = type { %struct.kuid_t, %struct.kgid_t, ptr, i32, ptr, ptr, ptr, ptr }
%struct.xdr_stream = type { ptr, ptr, ptr, ptr, %struct.kvec, ptr, i32, ptr }
%struct.kvec = type { ptr, i32 }
%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }
%struct.pagevec = type { i8, i8, [15 x ptr] }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.cache_req = type { ptr, i32 }
%struct.svc_xprt = type { ptr, ptr, %struct.kref, %struct.list_head, %struct.list_head, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.mutex, %struct.spinlock, ptr, %struct.list_head, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, [58 x i8], %struct.list_head, ptr, ptr, ptr, ptr }
%struct.cache_deferred_req = type { %struct.hlist_node, %struct.list_head, ptr, ptr, ptr }
%struct.rpc_task = type { %struct.atomic_t, i32, %struct.list_head, ptr, ptr, i32, i32, ptr, %union.anon.4, i32, %struct.rpc_message, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i16, i16, i16, i8 }
%union.anon.4 = type { %struct.work_struct }
%struct.rpc_message = type { ptr, ptr, ptr, ptr }

@nlm_debug = external dso_local local_unnamed_addr global i32, align 4
@nlmsvc_lock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 487, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"lockd: nlmsvc_lock(%s/%ld, ty=%d, pi=%d, %Ld-%Ld, bl=%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nlmsvc_lock\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/lockd/svclock.c\00", [45 x i8] zeroinitializer }, align 32
@nlmsvc_lock._entry_ptr = internal global ptr @nlmsvc_lock._entry, section ".printk_index", align 4
@nlmsvc_lock._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 511, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"lockd: nlmsvc_lock deferred block %p flags %d\0A\00", [49 x i8] zeroinitializer }, align 32
@nlmsvc_lock._entry_ptr.5 = internal global ptr @nlmsvc_lock._entry.3, section ".printk_index", align 4
@nlmsvc_lock._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 541, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"lockd: vfs_lock_file returned %d\0A\00", [62 x i8] zeroinitializer }, align 32
@nlmsvc_lock._entry_ptr.8 = internal global ptr @nlmsvc_lock._entry.6, section ".printk_index", align 4
@nlmsvc_lock._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 578, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"lockd: nlmsvc_lock returned %u\0A\00", [32 x i8] zeroinitializer }, align 32
@nlmsvc_lock._entry_ptr.11 = internal global ptr @nlmsvc_lock._entry.9, section ".printk_index", align 4
@nlmsvc_testlock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 600, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"lockd: nlmsvc_testlock(%s/%ld, ty=%d, %Ld-%Ld)\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nlmsvc_testlock\00", [16 x i8] zeroinitializer }, align 32
@nlmsvc_testlock._entry_ptr = internal global ptr @nlmsvc_testlock._entry, section ".printk_index", align 4
@nlmsvc_testlock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@nlmsvc_testlock._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.2, i32 628, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"lockd: conflicting lock(ty=%d, %Ld-%Ld)\0A\00", [55 x i8] zeroinitializer }, align 32
@nlmsvc_testlock._entry_ptr.16 = internal global ptr @nlmsvc_testlock._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"somehost\00", [23 x i8] zeroinitializer }, align 32
@nlmsvc_unlock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 664, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"lockd: nlmsvc_unlock(%s/%ld, pi=%d, %Ld-%Ld)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nlmsvc_unlock\00", [18 x i8] zeroinitializer }, align 32
@nlmsvc_unlock._entry_ptr = internal global ptr @nlmsvc_unlock._entry, section ".printk_index", align 4
@nlmsvc_cancel_blocked._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 699, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"lockd: nlmsvc_cancel(%s/%ld, pi=%d, %Ld-%Ld)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nlmsvc_cancel_blocked\00", [42 x i8] zeroinitializer }, align 32
@nlmsvc_cancel_blocked._entry_ptr = internal global ptr @nlmsvc_cancel_blocked._entry, section ".printk_index", align 4
@nlmsvc_lock_operations = dso_local constant { %struct.lock_manager_operations, [32 x i8] } { %struct.lock_manager_operations { ptr @nlmsvc_get_owner, ptr @nlmsvc_put_owner, ptr @nlmsvc_notify_blocked, ptr @nlmsvc_grant_deferred, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@nlmsvc_grant_reply._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 964, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"grant_reply: looking for cookie %x, s=%d \0A\00", [53 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nlmsvc_grant_reply\00", [45 x i8] zeroinitializer }, align 32
@nlmsvc_grant_reply._entry_ptr = internal global ptr @nlmsvc_grant_reply._entry, section ".printk_index", align 4
@nlm_blocked_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.59, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@nlm_blocked = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @nlm_blocked, ptr @nlm_blocked }, [24 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@nlmsvc_retry_blocked._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 1022, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"nlmsvc_retry_blocked(%p, when=%ld)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nlmsvc_retry_blocked\00", [43 x i8] zeroinitializer }, align 32
@nlmsvc_retry_blocked._entry_ptr = internal global ptr @nlmsvc_retry_blocked._entry, section ".printk_index", align 4
@nlmsvc_retry_blocked._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.2, i32 1025, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"nlmsvc_retry_blocked delete block (%p, granted=%d, flags=%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@nlmsvc_retry_blocked._entry_ptr.28 = internal global ptr @nlmsvc_retry_blocked._entry.26, section ".printk_index", align 4
@nlmsvc_unlink_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 277, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"lockd: unlinking block %p...\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nlmsvc_unlink_block\00", [44 x i8] zeroinitializer }, align 32
@nlmsvc_unlink_block._entry_ptr = internal global ptr @nlmsvc_unlink_block._entry, section ".printk_index", align 4
@nlmsvc_free_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 290, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"lockd: freeing block %p...\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nlmsvc_free_block\00", [46 x i8] zeroinitializer }, align 32
@nlmsvc_free_block._entry_ptr = internal global ptr @nlmsvc_free_block._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nlmsvc_lookup_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 154, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"lockd: nlmsvc_lookup_block f=%p pd=%d %Ld-%Ld ty=%d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nlmsvc_lookup_block\00", [44 x i8] zeroinitializer }, align 32
@nlmsvc_lookup_block._entry_ptr = internal global ptr @nlmsvc_lookup_block._entry, section ".printk_index", align 4
@nlmsvc_lookup_block._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.2, i32 161, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"lockd: check f=%p pd=%d %Ld-%Ld ty=%d cookie=%s\0A\00", [47 x i8] zeroinitializer }, align 32
@nlmsvc_lookup_block._entry_ptr.37 = internal global ptr @nlmsvc_lookup_block._entry.35, section ".printk_index", align 4
@nlmdbg_cookie2a.buf = internal global { [65 x i8], [63 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%02x\00", [27 x i8] zeroinitializer }, align 32
@nlmsvc_create_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"lockd: created block %p...\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nlmsvc_create_block\00", [44 x i8] zeroinitializer }, align 32
@nlmsvc_create_block._entry_ptr = internal global ptr @nlmsvc_create_block._entry, section ".printk_index", align 4
@nlmsvc_defer_lock_rqst._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 459, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"lockd: nlmsvc_defer_lock_rqst block %p flags %d status %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nlmsvc_defer_lock_rqst\00", [41 x i8] zeroinitializer }, align 32
@nlmsvc_defer_lock_rqst._entry_ptr = internal global ptr @nlmsvc_defer_lock_rqst._entry, section ".printk_index", align 4
@nlmsvc_insert_block_locked._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 96, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"lockd: nlmsvc_insert_block(%p, %ld)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nlmsvc_insert_block_locked\00", [37 x i8] zeroinitializer }, align 32
@nlmsvc_insert_block_locked._entry_ptr = internal global ptr @nlmsvc_insert_block_locked._entry, section ".printk_index", align 4
@nlmsvc_notify_blocked._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 779, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"lockd: VFS unblock notification for block %p\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nlmsvc_notify_blocked\00", [42 x i8] zeroinitializer }, align 32
@nlmsvc_notify_blocked._entry_ptr = internal global ptr @nlmsvc_notify_blocked._entry, section ".printk_index", align 4
@nlmsvc_notify_blocked._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.2, i32 790, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014lockd: notification for unknown block!\0A\00", [54 x i8] zeroinitializer }, align 32
@nlmsvc_notify_blocked._entry_ptr.51 = internal global ptr @nlmsvc_notify_blocked._entry.49, section ".printk_index", align 4
@nlmsvc_grant_deferred._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 745, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"lockd: nlmsvc_notify_blocked block %p flags %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nlmsvc_grant_deferred\00", [42 x i8] zeroinitializer }, align 32
@nlmsvc_grant_deferred._entry_ptr = internal global ptr @nlmsvc_grant_deferred._entry, section ".printk_index", align 4
@nlmsvc_grant_deferred._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.2, i32 763, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014lockd: grant for unknown block\0A\00", [62 x i8] zeroinitializer }, align 32
@nlmsvc_grant_deferred._entry_ptr.56 = internal global ptr @nlmsvc_grant_deferred._entry.54, section ".printk_index", align 4
@nlmsvc_find_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.2, i32 196, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"nlmsvc_find_block(%s): block=%p\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nlmsvc_find_block\00", [46 x i8] zeroinitializer }, align 32
@nlmsvc_find_block._entry_ptr = internal global ptr @nlmsvc_find_block._entry, section ".printk_index", align 4
@.str.59 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nlm_blocked_lock\00", [47 x i8] zeroinitializer }, align 32
@retry_deferred_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.2, i32 991, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"revisit block %p flags %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"retry_deferred_block\00", [43 x i8] zeroinitializer }, align 32
@retry_deferred_block._entry_ptr = internal global ptr @retry_deferred_block._entry, section ".printk_index", align 4
@nlmsvc_grant_blocked._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.2, i32 830, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"lockd: grant blocked lock %p\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nlmsvc_grant_blocked\00", [43 x i8] zeroinitializer }, align 32
@nlmsvc_grant_blocked._entry_ptr = internal global ptr @nlmsvc_grant_blocked._entry, section ".printk_index", align 4
@nlmsvc_grant_blocked._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.63, ptr @.str.2, i32 862, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"lockd: lock still blocked error %d\0A\00", [60 x i8] zeroinitializer }, align 32
@nlmsvc_grant_blocked._entry_ptr.66 = internal global ptr @nlmsvc_grant_blocked._entry.64, section ".printk_index", align 4
@nlmsvc_grant_blocked._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.63, ptr @.str.2, i32 868, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014lockd: unexpected error %d in %s!\0A\00", [59 x i8] zeroinitializer }, align 32
@nlmsvc_grant_blocked._entry_ptr.69 = internal global ptr @nlmsvc_grant_blocked._entry.67, section ".printk_index", align 4
@nlmsvc_grant_blocked._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.63, ptr @.str.2, i32 876, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"lockd: GRANTing blocked lock.\0A\00", [33 x i8] zeroinitializer }, align 32
@nlmsvc_grant_blocked._entry_ptr.72 = internal global ptr @nlmsvc_grant_blocked._entry.70, section ".printk_index", align 4
@nlmsvc_grant_ops = internal constant { %struct.rpc_call_ops, [16 x i8] } { %struct.rpc_call_ops { ptr null, ptr @nlmsvc_grant_callback, ptr null, ptr @nlmsvc_grant_release }, [16 x i8] zeroinitializer }, align 32
@nlmsvc_grant_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.2, i32 909, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"lockd: GRANT_MSG RPC callback\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nlmsvc_grant_callback\00", [42 x i8] zeroinitializer }, align 32
@nlmsvc_grant_callback._entry_ptr = internal global ptr @nlmsvc_grant_callback._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 4294967261, i64 4294967285]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 482, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 510, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 541, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 578, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 595, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 626, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 629, i32 21 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 659, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 694, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant [23 x i8] c"nlmsvc_lock_operations\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 803, i32 38 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 963, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant [17 x i8] c"nlm_blocked_lock\00", align 1
@___asan_gen_.158 = private unnamed_addr constant [12 x i8] c"nlm_blocked\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 55, i32 8 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1021, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1024, i32 4 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 277, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 290, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 151, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 157, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 65, i32 14 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 77, i32 14 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 244, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 458, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 96, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 779, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 790, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 744, i32 4 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 763, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 196, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 56, i32 8 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 991, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 830, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 862, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 867, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 876, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant [17 x i8] c"nlmsvc_grant_ops\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 949, i32 34 }
@___asan_gen_.323 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.329 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.330 = private constant [22 x i8] c"../fs/lockd/svclock.c\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 909, i32 2 }
@llvm.compiler.used = appending global [114 x ptr] [ptr @nlmsvc_cancel_blocked._entry, ptr @nlmsvc_cancel_blocked._entry_ptr, ptr @nlmsvc_create_block._entry, ptr @nlmsvc_create_block._entry_ptr, ptr @nlmsvc_defer_lock_rqst._entry, ptr @nlmsvc_defer_lock_rqst._entry_ptr, ptr @nlmsvc_find_block._entry, ptr @nlmsvc_find_block._entry_ptr, ptr @nlmsvc_free_block._entry, ptr @nlmsvc_free_block._entry_ptr, ptr @nlmsvc_grant_blocked._entry, ptr @nlmsvc_grant_blocked._entry.64, ptr @nlmsvc_grant_blocked._entry.67, ptr @nlmsvc_grant_blocked._entry.70, ptr @nlmsvc_grant_blocked._entry_ptr, ptr @nlmsvc_grant_blocked._entry_ptr.66, ptr @nlmsvc_grant_blocked._entry_ptr.69, ptr @nlmsvc_grant_blocked._entry_ptr.72, ptr @nlmsvc_grant_callback._entry, ptr @nlmsvc_grant_callback._entry_ptr, ptr @nlmsvc_grant_deferred._entry, ptr @nlmsvc_grant_deferred._entry.54, ptr @nlmsvc_grant_deferred._entry_ptr, ptr @nlmsvc_grant_deferred._entry_ptr.56, ptr @nlmsvc_grant_reply._entry, ptr @nlmsvc_grant_reply._entry_ptr, ptr @nlmsvc_insert_block_locked._entry, ptr @nlmsvc_insert_block_locked._entry_ptr, ptr @nlmsvc_lock._entry, ptr @nlmsvc_lock._entry.3, ptr @nlmsvc_lock._entry.6, ptr @nlmsvc_lock._entry.9, ptr @nlmsvc_lock._entry_ptr, ptr @nlmsvc_lock._entry_ptr.11, ptr @nlmsvc_lock._entry_ptr.5, ptr @nlmsvc_lock._entry_ptr.8, ptr @nlmsvc_lookup_block._entry, ptr @nlmsvc_lookup_block._entry.35, ptr @nlmsvc_lookup_block._entry_ptr, ptr @nlmsvc_lookup_block._entry_ptr.37, ptr @nlmsvc_notify_blocked._entry, ptr @nlmsvc_notify_blocked._entry.49, ptr @nlmsvc_notify_blocked._entry_ptr, ptr @nlmsvc_notify_blocked._entry_ptr.51, ptr @nlmsvc_retry_blocked._entry, ptr @nlmsvc_retry_blocked._entry.26, ptr @nlmsvc_retry_blocked._entry_ptr, ptr @nlmsvc_retry_blocked._entry_ptr.28, ptr @nlmsvc_testlock._entry, ptr @nlmsvc_testlock._entry.14, ptr @nlmsvc_testlock._entry_ptr, ptr @nlmsvc_testlock._entry_ptr.16, ptr @nlmsvc_unlink_block._entry, ptr @nlmsvc_unlink_block._entry_ptr, ptr @nlmsvc_unlock._entry, ptr @nlmsvc_unlock._entry_ptr, ptr @retry_deferred_block._entry, ptr @retry_deferred_block._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @nlmsvc_lock_operations, ptr @.str.22, ptr @.str.23, ptr @nlm_blocked_lock, ptr @nlm_blocked, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @nlmdbg_cookie2a.buf, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.68, ptr @.str.71, ptr @nlmsvc_grant_ops, ptr @.str.73, ptr @.str.74], section "llvm.metadata"
@0 = internal global [85 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmsvc_lock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmsvc_lock._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmsvc_lock._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmsvc_lock._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmsvc_testlock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmsvc_testlock._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmsvc_unlock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmsvc_cancel_blocked._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmsvc_lock_operations to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmsvc_grant_reply._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlm_blocked_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlm_blocked to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmsvc_retry_blocked._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmsvc_retry_blocked._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmsvc_unlink_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmsvc_free_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmsvc_lookup_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmsvc_lookup_block._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmdbg_cookie2a.buf to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmsvc_create_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmsvc_defer_lock_rqst._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmsvc_insert_block_locked._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmsvc_notify_blocked._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmsvc_notify_blocked._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmsvc_grant_deferred._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmsvc_grant_deferred._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmsvc_find_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @retry_deferred_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmsvc_grant_blocked._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmsvc_grant_blocked._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmsvc_grant_blocked._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmsvc_grant_blocked._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmsvc_grant_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmsvc_grant_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nlmsvc_traverse_blocks(ptr noundef %host, ptr noundef %file, ptr nocapture noundef readonly %match) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %f_mutex = getelementptr inbounds %struct.nlm_file, ptr %file, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %f_mutex, i32 noundef 0) #10
  %f_blocks = getelementptr inbounds %struct.nlm_file, ptr %file, i32 0, i32 4
  %0 = ptrtoint ptr %f_blocks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_blocks, align 4
  %cmp.not3540 = icmp eq ptr %1, %f_blocks
  br i1 %cmp.not3540, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.backedge, %entry.for.body_crit_edge
  %.pn.in36 = phi ptr [ %.pn.in36.be, %for.body.backedge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %.pn.in36 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn37 = load ptr, ptr %.pn.in36, align 4
  %b_host = getelementptr i8, ptr %.pn.in36, i32 16
  %3 = ptrtoint ptr %b_host to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %b_host, align 4
  %call = tail call i32 %match(ptr noundef %4, ptr noundef %host) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end:                                           ; preds = %for.body
  %b_list = getelementptr i8, ptr %.pn.in36, i32 -8
  %5 = ptrtoint ptr %b_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %b_list, align 4
  %cmp.i.not = icmp eq ptr %6, %b_list
  br i1 %cmp.i.not, label %if.end.for.inc_crit_edge, label %if.end11

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end11:                                         ; preds = %if.end
  %block.0.le = getelementptr i8, ptr %.pn.in36, i32 -12
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %block.0.le, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %block.0.le, i32 1, i32 3, i32 1) #10
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %block.0.le, ptr %block.0.le, i32 1, ptr elementtype(i32) %block.0.le) #10, !srcloc !166
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end11.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !167

if.end11.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end11
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %8 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %.not.i.i.i.i = icmp sgt i32 %8, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !168

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end11.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end11.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %block.0.le, i32 noundef %.sink.i.i.i.i) #10
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %f_mutex) #10
  %call13 = tail call fastcc i32 @nlmsvc_unlink_block(ptr noundef %block.0.le)
  tail call fastcc void @nlmsvc_release_block(ptr noundef %block.0.le)
  tail call void @mutex_lock_nested(ptr noundef %f_mutex, i32 noundef 0) #10
  %9 = ptrtoint ptr %f_blocks to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %f_blocks, align 4
  %cmp.not35 = icmp eq ptr %10, %f_blocks
  br i1 %cmp.not35, label %kref_get.exit.for.end_crit_edge, label %kref_get.exit.for.body.backedge_crit_edge

kref_get.exit.for.body.backedge_crit_edge:        ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.backedge

kref_get.exit.for.end_crit_edge:                  ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %.pn37, %f_blocks
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body.backedge_crit_edge

for.inc.for.body.backedge_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.backedge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.backedge:                                ; preds = %for.inc.for.body.backedge_crit_edge, %kref_get.exit.for.body.backedge_crit_edge
  %.pn.in36.be = phi ptr [ %.pn37, %for.inc.for.body.backedge_crit_edge ], [ %10, %kref_get.exit.for.body.backedge_crit_edge ]
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %kref_get.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %f_mutex) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nlmsvc_unlink_block(ptr noundef %block) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %0 = load i32, ptr @nlm_debug, align 4
  %and = and i32 %0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end, !prof !168

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %block) #13
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %b_call = getelementptr inbounds %struct.nlm_block, ptr %block, i32 0, i32 3
  %1 = ptrtoint ptr %b_call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %b_call, align 4
  %fl = getelementptr inbounds %struct.nlm_rqst, ptr %2, i32 0, i32 3, i32 1, i32 5
  %call6 = tail call i32 @locks_delete_block(ptr noundef %fl) #10
  %b_list.i = getelementptr inbounds %struct.nlm_block, ptr %block, i32 0, i32 1
  %3 = ptrtoint ptr %b_list.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %b_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %4, %b_list.i
  br i1 %cmp.i.not.i, label %do.end5.nlmsvc_remove_block.exit_crit_edge, label %if.then.i

do.end5.nlmsvc_remove_block.exit_crit_edge:       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %nlmsvc_remove_block.exit

if.then.i:                                        ; preds = %do.end5
  tail call void @_raw_spin_lock(ptr noundef nonnull @nlm_blocked_lock) #10
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %b_list.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del_init.exit.i_crit_edge

if.then.i.list_del_init.exit.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.nlm_block, ptr %block, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i.i, align 4
  %7 = ptrtoint ptr %b_list.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %b_list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.then.i.list_del_init.exit.i_crit_edge
  %11 = ptrtoint ptr %b_list.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %b_list.i, ptr %b_list.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.nlm_block, ptr %block, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %b_list.i, ptr %prev.i3.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @nlm_blocked_lock) #10
  tail call fastcc void @nlmsvc_release_block(ptr noundef %block) #10
  br label %nlmsvc_remove_block.exit

nlmsvc_remove_block.exit:                         ; preds = %list_del_init.exit.i, %do.end5.nlmsvc_remove_block.exit_crit_edge
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nlmsvc_release_block(ptr noundef %block) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.not = icmp eq ptr %block, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %b_file = getelementptr inbounds %struct.nlm_block, ptr %block, i32 0, i32 9
  %0 = ptrtoint ptr %b_file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_file, align 4
  %f_mutex = getelementptr inbounds %struct.nlm_file, ptr %1, i32 0, i32 7
  %call.i = tail call zeroext i1 @refcount_dec_and_mutex_lock(ptr noundef nonnull %block, ptr noundef %f_mutex) #10
  br i1 %call.i, label %if.then.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.i:                                        ; preds = %if.then
  %2 = ptrtoint ptr %b_file to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_file, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %4 = load i32, ptr @nlm_debug, align 4
  %and.i.i = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.do.end6.i.i_crit_edge, label %do.end.i.i, !prof !168

if.then.i.do.end6.i.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end6.i.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull %block) #13
  br label %do.end6.i.i

do.end6.i.i:                                      ; preds = %do.end.i.i, %if.then.i.do.end6.i.i_crit_edge
  %b_flist.i.i = getelementptr inbounds %struct.nlm_block, ptr %block, i32 0, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %b_flist.i.i) #10
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %do.end6.i.i.list_del_init.exit.i.i_crit_edge

do.end6.i.i.list_del_init.exit.i.i_crit_edge:     ; preds = %do.end6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit.i.i

if.end.i.i.i.i:                                   ; preds = %do.end6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i.i = getelementptr inbounds %struct.nlm_block, ptr %block, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i.i.i, align 4
  %7 = ptrtoint ptr %b_flist.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %b_flist.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del_init.exit.i.i

list_del_init.exit.i.i:                           ; preds = %if.end.i.i.i.i, %do.end6.i.i.list_del_init.exit.i.i_crit_edge
  %11 = ptrtoint ptr %b_flist.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %b_flist.i.i, ptr %b_flist.i.i, align 4
  %prev.i3.i.i.i = getelementptr inbounds %struct.nlm_block, ptr %block, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %b_flist.i.i, ptr %prev.i3.i.i.i, align 4
  %f_mutex.i.i = getelementptr inbounds %struct.nlm_file, ptr %3, i32 0, i32 7
  tail call void @mutex_unlock(ptr noundef %f_mutex.i.i) #10
  %b_call.i.i = getelementptr inbounds %struct.nlm_block, ptr %block, i32 0, i32 3
  %13 = ptrtoint ptr %b_call.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %b_call.i.i, align 4
  %data.i.i.i = getelementptr inbounds %struct.nlm_rqst, ptr %14, i32 0, i32 3, i32 1, i32 3, i32 1
  %15 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data.i.i.i, align 4
  %a_owner.i.i.i = getelementptr inbounds %struct.nlm_rqst, ptr %14, i32 0, i32 7
  %cmp.not.i.i.i = icmp eq ptr %16, %a_owner.i.i.i
  br i1 %cmp.not.i.i.i, label %list_del_init.exit.i.i.nlmsvc_free_block.exit.i_crit_edge, label %if.then.i.i.i

list_del_init.exit.i.i.nlmsvc_free_block.exit.i_crit_edge: ; preds = %list_del_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nlmsvc_free_block.exit.i

if.then.i.i.i:                                    ; preds = %list_del_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef %16) #10
  br label %nlmsvc_free_block.exit.i

nlmsvc_free_block.exit.i:                         ; preds = %if.then.i.i.i, %list_del_init.exit.i.i.nlmsvc_free_block.exit.i_crit_edge
  %fl.i.i.i = getelementptr inbounds %struct.nlm_rqst, ptr %14, i32 0, i32 3, i32 1, i32 5
  tail call void @locks_release_private(ptr noundef %fl.i.i.i) #10
  %17 = ptrtoint ptr %b_call.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %b_call.i.i, align 4
  tail call void @nlmsvc_release_call(ptr noundef %18) #10
  %19 = ptrtoint ptr %b_file to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %b_file, align 4
  tail call void @nlm_release_file(ptr noundef %20) #10
  tail call void @kfree(ptr noundef nonnull %block) #10
  br label %if.end

if.end:                                           ; preds = %nlmsvc_free_block.exit.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nlmsvc_release_lockowner(ptr nocapture noundef readonly %lock) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fl_owner = getelementptr inbounds %struct.nlm_lock, ptr %lock, i32 0, i32 5, i32 5
  %0 = ptrtoint ptr %fl_owner to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fl_owner, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %count.i = getelementptr inbounds %struct.nlm_lockowner, ptr %1, i32 0, i32 1
  %host.i = getelementptr inbounds %struct.nlm_lockowner, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host.i, align 4
  %h_lock.i = getelementptr inbounds %struct.nlm_host, ptr %3, i32 0, i32 20
  %call.i = tail call zeroext i1 @refcount_dec_and_lock(ptr noundef %count.i, ptr noundef %h_lock.i) #10
  br i1 %call.i, label %if.end.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %1) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del.exit.i_crit_edge

if.end.i.list_del.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i.i, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i.list_del.exit.i_crit_edge
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %host.i, align 4
  %h_lock2.i = getelementptr inbounds %struct.nlm_host, ptr %13, i32 0, i32 20
  tail call void @_raw_spin_unlock(ptr noundef %h_lock2.i) #10
  %14 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %host.i, align 4
  tail call void @nlmsvc_release_host(ptr noundef %15) #10
  tail call void @kfree(ptr noundef nonnull %1) #10
  br label %if.end

if.end:                                           ; preds = %list_del.exit.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nlmsvc_locks_init_private(ptr nocapture noundef writeonly %fl, ptr noundef %host, i32 noundef %pid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %h_lock.i = getelementptr inbounds %struct.nlm_host, ptr %host, i32 0, i32 20
  tail call void @_raw_spin_lock(ptr noundef %h_lock.i) #10
  %h_lockowners.i.i = getelementptr inbounds %struct.nlm_host, ptr %host, i32 0, i32 19
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %entry
  %lockowner.0.in.i.i = phi ptr [ %h_lockowners.i.i, %entry ], [ %lockowner.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %0 = ptrtoint ptr %lockowner.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %lockowner.0.i.i = load ptr, ptr %lockowner.0.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %lockowner.0.i.i, %h_lockowners.i.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.if.then.i_crit_edge, label %for.body.i.i

for.cond.i.i.if.then.i_crit_edge:                 ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %pid2.i.i = getelementptr inbounds %struct.nlm_lockowner, ptr %lockowner.0.i.i, i32 0, i32 4
  %1 = ptrtoint ptr %pid2.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %pid2.i.i, align 4
  %cmp3.not.i.i = icmp eq i32 %2, %pid
  br i1 %cmp3.not.i.i, label %if.end.i.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %count.i.i.i = getelementptr inbounds %struct.nlm_lockowner, ptr %lockowner.0.i.i, i32 0, i32 1
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %count.i.i.i, i32 1, i32 3, i32 1) #10
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i.i, ptr %count.i.i.i, i32 1, ptr elementtype(i32) %count.i.i.i) #10, !srcloc !166
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.end.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !167

if.end.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.end.i.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %4 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %.not.i.i.i.i.i.i = icmp sgt i32 %4, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.__nlmsvc_find_lockowner.exit.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !168

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.__nlmsvc_find_lockowner.exit.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__nlmsvc_find_lockowner.exit.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.end.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.end.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count.i.i.i, i32 noundef %.sink.i.i.i.i.i.i) #10
  br label %__nlmsvc_find_lockowner.exit.i

__nlmsvc_find_lockowner.exit.i:                   ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.__nlmsvc_find_lockowner.exit.i_crit_edge
  %cmp.i = icmp eq ptr %lockowner.0.i.i, null
  br i1 %cmp.i, label %__nlmsvc_find_lockowner.exit.i.if.then.i_crit_edge, label %__nlmsvc_find_lockowner.exit.i.nlmsvc_find_lockowner.exit_crit_edge

__nlmsvc_find_lockowner.exit.i.nlmsvc_find_lockowner.exit_crit_edge: ; preds = %__nlmsvc_find_lockowner.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nlmsvc_find_lockowner.exit

__nlmsvc_find_lockowner.exit.i.if.then.i_crit_edge: ; preds = %__nlmsvc_find_lockowner.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.i:                                        ; preds = %__nlmsvc_find_lockowner.exit.i.if.then.i_crit_edge, %for.cond.i.i.if.then.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %h_lock.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 24) #14
  tail call void @_raw_spin_lock(ptr noundef %h_lock.i) #10
  br label %for.cond.i34.i

for.cond.i34.i:                                   ; preds = %for.body.i37.i.for.cond.i34.i_crit_edge, %if.then.i
  %lockowner.0.in.i31.i = phi ptr [ %h_lockowners.i.i, %if.then.i ], [ %lockowner.0.i32.i, %for.body.i37.i.for.cond.i34.i_crit_edge ]
  %6 = ptrtoint ptr %lockowner.0.in.i31.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %lockowner.0.i32.i = load ptr, ptr %lockowner.0.in.i31.i, align 4
  %cmp.not.i33.i = icmp eq ptr %lockowner.0.i32.i, %h_lockowners.i.i
  br i1 %cmp.not.i33.i, label %for.cond.i34.i.land.lhs.true.i_crit_edge, label %for.body.i37.i

for.cond.i34.i.land.lhs.true.i_crit_edge:         ; preds = %for.cond.i34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i

for.body.i37.i:                                   ; preds = %for.cond.i34.i
  %pid2.i35.i = getelementptr inbounds %struct.nlm_lockowner, ptr %lockowner.0.i32.i, i32 0, i32 4
  %7 = ptrtoint ptr %pid2.i35.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pid2.i35.i, align 4
  %cmp3.not.i36.i = icmp eq i32 %8, %pid
  br i1 %cmp3.not.i36.i, label %if.end.i42.i, label %for.body.i37.i.for.cond.i34.i_crit_edge

for.body.i37.i.for.cond.i34.i_crit_edge:          ; preds = %for.body.i37.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i34.i

if.end.i42.i:                                     ; preds = %for.body.i37.i
  %count.i.i38.i = getelementptr inbounds %struct.nlm_lockowner, ptr %lockowner.0.i32.i, i32 0, i32 1
  %call.i.i.i.i.i.i.i39.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i38.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %count.i.i38.i, i32 1, i32 3, i32 1) #10
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i38.i, ptr %count.i.i38.i, i32 1, ptr elementtype(i32) %count.i.i38.i) #10, !srcloc !166
  %asmresult.i.i.i.i.i.i.i40.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i40.i)
  %tobool1.not.i.i.i.i.i41.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i40.i, 0
  br i1 %tobool1.not.i.i.i.i.i41.i, label %if.end.i42.i.if.end15.sink.split.i.i.i.i.i47.i_crit_edge, label %if.else.i.i.i.i.i45.i, !prof !167

if.end.i42.i.if.end15.sink.split.i.i.i.i.i47.i_crit_edge: ; preds = %if.end.i42.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i47.i

if.else.i.i.i.i.i45.i:                            ; preds = %if.end.i42.i
  %add.i.i.i.i.i43.i = add i32 %asmresult.i.i.i.i.i.i.i40.i, 1
  %10 = or i32 %add.i.i.i.i.i43.i, %asmresult.i.i.i.i.i.i.i40.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %.not.i.i.i.i.i44.i = icmp sgt i32 %10, -1
  br i1 %.not.i.i.i.i.i44.i, label %if.else.i.i.i.i.i45.i.__nlmsvc_find_lockowner.exit49.i_crit_edge, label %if.else.i.i.i.i.i45.i.if.end15.sink.split.i.i.i.i.i47.i_crit_edge, !prof !168

if.else.i.i.i.i.i45.i.if.end15.sink.split.i.i.i.i.i47.i_crit_edge: ; preds = %if.else.i.i.i.i.i45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i47.i

if.else.i.i.i.i.i45.i.__nlmsvc_find_lockowner.exit49.i_crit_edge: ; preds = %if.else.i.i.i.i.i45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__nlmsvc_find_lockowner.exit49.i

if.end15.sink.split.i.i.i.i.i47.i:                ; preds = %if.else.i.i.i.i.i45.i.if.end15.sink.split.i.i.i.i.i47.i_crit_edge, %if.end.i42.i.if.end15.sink.split.i.i.i.i.i47.i_crit_edge
  %.sink.i.i.i.i.i46.i = phi i32 [ 2, %if.end.i42.i.if.end15.sink.split.i.i.i.i.i47.i_crit_edge ], [ 1, %if.else.i.i.i.i.i45.i.if.end15.sink.split.i.i.i.i.i47.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count.i.i38.i, i32 noundef %.sink.i.i.i.i.i46.i) #10
  br label %__nlmsvc_find_lockowner.exit49.i

__nlmsvc_find_lockowner.exit49.i:                 ; preds = %if.end15.sink.split.i.i.i.i.i47.i, %if.else.i.i.i.i.i45.i.__nlmsvc_find_lockowner.exit49.i_crit_edge
  %cmp5.i = icmp eq ptr %lockowner.0.i32.i, null
  br i1 %cmp5.i, label %__nlmsvc_find_lockowner.exit49.i.land.lhs.true.i_crit_edge, label %__nlmsvc_find_lockowner.exit49.i.nlmsvc_find_lockowner.exit_crit_edge

__nlmsvc_find_lockowner.exit49.i.nlmsvc_find_lockowner.exit_crit_edge: ; preds = %__nlmsvc_find_lockowner.exit49.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nlmsvc_find_lockowner.exit

__nlmsvc_find_lockowner.exit49.i.land.lhs.true.i_crit_edge: ; preds = %__nlmsvc_find_lockowner.exit49.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %__nlmsvc_find_lockowner.exit49.i.land.lhs.true.i_crit_edge, %for.cond.i34.i.land.lhs.true.i_crit_edge
  %cmp6.not.i = icmp eq ptr %call7.i.i, null
  br i1 %cmp6.not.i, label %land.lhs.true.i.nlmsvc_find_lockowner.exit_crit_edge, label %if.then7.i

land.lhs.true.i.nlmsvc_find_lockowner.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nlmsvc_find_lockowner.exit

if.then7.i:                                       ; preds = %land.lhs.true.i
  %count.i = getelementptr inbounds %struct.nlm_lockowner, ptr %call7.i.i, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #10
  %11 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 1, ptr %count.i, align 8
  %pid8.i = getelementptr inbounds %struct.nlm_lockowner, ptr %call7.i.i, i32 0, i32 4
  %12 = ptrtoint ptr %pid8.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %pid, ptr %pid8.i, align 4
  %call9.i = tail call ptr @nlm_get_host(ptr noundef %host) #10
  %host10.i = getelementptr inbounds %struct.nlm_lockowner, ptr %call7.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %host10.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call9.i, ptr %host10.i, align 4
  %14 = ptrtoint ptr %h_lockowners.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %h_lockowners.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %h_lockowners.i.i, ptr noundef %15) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then7.i.nlmsvc_find_lockowner.exit_crit_edge

if.then7.i.nlmsvc_find_lockowner.exit_crit_edge:  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nlmsvc_find_lockowner.exit

if.end.i.i.i:                                     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %15, ptr %call7.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %h_lockowners.i.i, ptr %prev3.i.i.i, align 4
  %19 = ptrtoint ptr %h_lockowners.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %call7.i.i, ptr %h_lockowners.i.i, align 4
  br label %nlmsvc_find_lockowner.exit

nlmsvc_find_lockowner.exit:                       ; preds = %if.end.i.i.i, %if.then7.i.nlmsvc_find_lockowner.exit_crit_edge, %land.lhs.true.i.nlmsvc_find_lockowner.exit_crit_edge, %__nlmsvc_find_lockowner.exit49.i.nlmsvc_find_lockowner.exit_crit_edge, %__nlmsvc_find_lockowner.exit.i.nlmsvc_find_lockowner.exit_crit_edge
  %res.0.i = phi ptr [ null, %land.lhs.true.i.nlmsvc_find_lockowner.exit_crit_edge ], [ %lockowner.0.i32.i, %__nlmsvc_find_lockowner.exit49.i.nlmsvc_find_lockowner.exit_crit_edge ], [ %lockowner.0.i.i, %__nlmsvc_find_lockowner.exit.i.nlmsvc_find_lockowner.exit_crit_edge ], [ %call7.i.i, %if.then7.i.nlmsvc_find_lockowner.exit_crit_edge ], [ %call7.i.i, %if.end.i.i.i ]
  %new.0.i = phi ptr [ null, %land.lhs.true.i.nlmsvc_find_lockowner.exit_crit_edge ], [ %call7.i.i, %__nlmsvc_find_lockowner.exit49.i.nlmsvc_find_lockowner.exit_crit_edge ], [ null, %__nlmsvc_find_lockowner.exit.i.nlmsvc_find_lockowner.exit_crit_edge ], [ null, %if.then7.i.nlmsvc_find_lockowner.exit_crit_edge ], [ null, %if.end.i.i.i ]
  tail call void @_raw_spin_unlock(ptr noundef %h_lock.i) #10
  tail call void @kfree(ptr noundef %new.0.i) #10
  %fl_owner = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 5
  %20 = ptrtoint ptr %fl_owner to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %res.0.i, ptr %fl_owner, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nlmsvc_lock(ptr noundef %rqstp, ptr noundef %file, ptr noundef %host, ptr noundef %lock, i32 noundef %wait, ptr nocapture noundef readnone %cookie, i32 noundef %reclaim) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %f_file.i.i = getelementptr inbounds %struct.nlm_file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_file.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_file.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %cond.false.i.i, label %entry.nlmsvc_file_inode.exit_crit_edge

entry.nlmsvc_file_inode.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %nlmsvc_file_inode.exit

cond.false.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx4.i.i = getelementptr %struct.nlm_file, ptr %file, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx4.i.i, align 4
  br label %nlmsvc_file_inode.exit

nlmsvc_file_inode.exit:                           ; preds = %cond.false.i.i, %entry.nlmsvc_file_inode.exit_crit_edge
  %cond.i.i = phi ptr [ %3, %cond.false.i.i ], [ %1, %entry.nlmsvc_file_inode.exit_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %4 = load i32, ptr @nlm_debug, align 4
  %and = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %nlmsvc_file_inode.exit.do.end9_crit_edge, label %do.end, !prof !168

nlmsvc_file_inode.exit.do.end9_crit_edge:         ; preds = %nlmsvc_file_inode.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9

do.end:                                           ; preds = %nlmsvc_file_inode.exit
  call void @__sanitizer_cov_trace_pc() #12
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %cond.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %f_inode.i.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_sb, align 4
  %s_id = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 39
  %i_ino = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 11
  %9 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i_ino, align 8
  %fl_type = getelementptr inbounds %struct.nlm_lock, ptr %lock, i32 0, i32 5, i32 7
  %11 = ptrtoint ptr %fl_type to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %fl_type, align 4
  %conv = zext i8 %12 to i32
  %fl_pid = getelementptr inbounds %struct.nlm_lock, ptr %lock, i32 0, i32 5, i32 8
  %13 = ptrtoint ptr %fl_pid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fl_pid, align 8
  %fl_start = getelementptr inbounds %struct.nlm_lock, ptr %lock, i32 0, i32 5, i32 12
  %15 = ptrtoint ptr %fl_start to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %fl_start, align 8
  %fl_end = getelementptr inbounds %struct.nlm_lock, ptr %lock, i32 0, i32 5, i32 13
  %17 = ptrtoint ptr %fl_end to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %fl_end, align 8
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %s_id, i32 noundef %10, i32 noundef %conv, i32 noundef %14, i64 noundef %16, i64 noundef %18, i32 noundef %wait) #13
  br label %do.end9

do.end9:                                          ; preds = %do.end, %nlmsvc_file_inode.exit.do.end9_crit_edge
  %19 = ptrtoint ptr %f_file.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %f_file.i.i, align 4
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %cond.false.i, label %do.end9.nlmsvc_file_file.exit_crit_edge

do.end9.nlmsvc_file_file.exit_crit_edge:          ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %nlmsvc_file_file.exit

cond.false.i:                                     ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx4.i = getelementptr %struct.nlm_file, ptr %file, i32 0, i32 2, i32 1
  %21 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx4.i, align 4
  br label %nlmsvc_file_file.exit

nlmsvc_file_file.exit:                            ; preds = %cond.false.i, %do.end9.nlmsvc_file_file.exit_crit_edge
  %cond.i = phi ptr [ %22, %cond.false.i ], [ %20, %do.end9.nlmsvc_file_file.exit_crit_edge ]
  %f_op = getelementptr inbounds %struct.file, ptr %cond.i, i32 0, i32 3
  %23 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %f_op, align 4
  %lock11 = getelementptr inbounds %struct.file_operations, ptr %24, i32 0, i32 19
  %25 = ptrtoint ptr %lock11 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %lock11, align 4
  %tobool12.not = icmp eq ptr %26, null
  %f_mutex = getelementptr inbounds %struct.nlm_file, ptr %file, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %f_mutex, i32 noundef 0) #10
  %call15 = tail call fastcc ptr @nlmsvc_lookup_block(ptr noundef %file, ptr noundef %lock)
  %cmp = icmp eq ptr %call15, null
  br i1 %cmp, label %if.then17, label %if.else

if.then17:                                        ; preds = %nlmsvc_file_file.exit
  %call1.i = tail call ptr @nlm_alloc_call(ptr noundef %host) #10
  %cmp.i = icmp eq ptr %call1.i, null
  br i1 %cmp.i, label %if.then17.out_crit_edge, label %if.end.i

if.then17.out_crit_edge:                          ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end.i:                                         ; preds = %if.then17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %27 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %27, i32 noundef 3520, i32 noundef 60) #14
  %cmp3.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp3.i, label %if.end.i.failed.i_crit_edge, label %if.end5.i

if.end.i.failed.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed.i

if.end5.i:                                        ; preds = %if.end.i
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i.i, i32 noundef 4) #10
  %28 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile i32 1, ptr %call7.i.i.i, align 8
  %b_list.i = getelementptr inbounds %struct.nlm_block, ptr %call7.i.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %b_list.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %b_list.i, ptr %b_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.nlm_block, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %b_list.i, ptr %prev.i.i, align 8
  %b_flist.i = getelementptr inbounds %struct.nlm_block, ptr %call7.i.i.i, i32 0, i32 2
  %31 = ptrtoint ptr %b_flist.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %b_flist.i, ptr %b_flist.i, align 4
  %prev.i1.i = getelementptr inbounds %struct.nlm_block, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %32 = ptrtoint ptr %prev.i1.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %b_flist.i, ptr %prev.i1.i, align 8
  %lock1.i.i = getelementptr inbounds %struct.nlm_rqst, ptr %call1.i, i32 0, i32 3, i32 1
  %fl.i.i = getelementptr inbounds %struct.nlm_rqst, ptr %call1.i, i32 0, i32 3, i32 1, i32 5
  %fl2.i.i = getelementptr inbounds %struct.nlm_lock, ptr %lock, i32 0, i32 5
  tail call void @locks_copy_lock(ptr noundef %fl.i.i, ptr noundef %fl2.i.i) #10
  %fh.i.i = getelementptr inbounds %struct.nlm_rqst, ptr %call1.i, i32 0, i32 3, i32 1, i32 2
  %fh5.i.i = getelementptr inbounds %struct.nlm_lock, ptr %lock, i32 0, i32 2
  %33 = call ptr @memcpy(ptr %fh.i.i, ptr %fh5.i.i, i32 130)
  %34 = tail call i32 @llvm.read_register.i32(metadata !156) #10
  %and.i.i.i.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %task.i.i.i, align 8
  %nsproxy.i.i.i = getelementptr inbounds %struct.task_struct, ptr %37, i32 0, i32 110
  %38 = ptrtoint ptr %nsproxy.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %nsproxy.i.i.i, align 4
  %uts_ns.i.i.i = getelementptr inbounds %struct.nsproxy, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %uts_ns.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %uts_ns.i.i.i, align 4
  %nodename.i.i = getelementptr inbounds %struct.new_utsname, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %lock1.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %nodename.i.i, ptr %lock1.i.i, align 8
  %oh.i.i = getelementptr inbounds %struct.nlm_lock, ptr %lock, i32 0, i32 3
  %43 = ptrtoint ptr %oh.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %oh.i.i, align 4
  %oh11.i.i = getelementptr inbounds %struct.nlm_rqst, ptr %call1.i, i32 0, i32 3, i32 1, i32 3
  %45 = ptrtoint ptr %oh11.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %oh11.i.i, align 4
  %a_owner.i.i = getelementptr inbounds %struct.nlm_rqst, ptr %call1.i, i32 0, i32 7
  %data.i.i = getelementptr inbounds %struct.nlm_rqst, ptr %call1.i, i32 0, i32 3, i32 1, i32 3, i32 1
  %46 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %a_owner.i.i, ptr %data.i.i, align 4
  %fl_owner.i.i = getelementptr inbounds %struct.nlm_lock, ptr %lock, i32 0, i32 5, i32 5
  %47 = ptrtoint ptr %fl_owner.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %fl_owner.i.i, align 4
  %pid.i.i = getelementptr inbounds %struct.nlm_lockowner, ptr %48, i32 0, i32 4
  %49 = ptrtoint ptr %pid.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %pid.i.i, align 4
  %svid.i.i = getelementptr inbounds %struct.nlm_rqst, ptr %call1.i, i32 0, i32 3, i32 1, i32 4
  %51 = ptrtoint ptr %svid.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %svid.i.i, align 4
  %52 = load i32, ptr %oh.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 74, i32 %52)
  %cmp.i.i = icmp ugt i32 %52, 74
  br i1 %cmp.i.i, label %if.end8.i.i.i, label %if.end5.i.if.end8.i_crit_edge

if.end5.i.if.end8.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

if.end8.i.i.i:                                    ; preds = %if.end5.i
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %52, i32 noundef 3264) #15
  %tobool.not.i.i188 = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i.i188, label %failed_free.i, label %cleanup.thread.i.i

cleanup.thread.i.i:                               ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call9.i.i.i, ptr %data.i.i, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %cleanup.thread.i.i, %if.end5.i.if.end8.i_crit_edge
  %54 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data.i.i, align 4
  %data37.i.i = getelementptr inbounds %struct.nlm_lock, ptr %lock, i32 0, i32 3, i32 1
  %56 = ptrtoint ptr %data37.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %data37.i.i, align 4
  %58 = ptrtoint ptr %oh.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %oh.i.i, align 4
  %60 = call ptr @memcpy(ptr %55, ptr %57, i32 %59)
  %a_args.i = getelementptr inbounds %struct.nlm_rqst, ptr %call1.i, i32 0, i32 3
  %fl_flags.i = getelementptr inbounds %struct.nlm_rqst, ptr %call1.i, i32 0, i32 3, i32 1, i32 5, i32 6
  %61 = ptrtoint ptr %fl_flags.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %fl_flags.i, align 8
  %or.i = or i32 %62, 128
  store i32 %or.i, ptr %fl_flags.i, align 8
  %fl_lmops.i = getelementptr inbounds %struct.nlm_rqst, ptr %call1.i, i32 0, i32 3, i32 1, i32 5, i32 18
  %63 = ptrtoint ptr %fl_lmops.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @nlmsvc_lock_operations, ptr %fl_lmops.i, align 8
  tail call void @nlmclnt_next_cookie(ptr noundef %a_args.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %64 = load i32, ptr @nlm_debug, align 4
  %and.i = and i32 %64, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool15.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool15.not.i, label %if.end8.i.do.end23.i_crit_edge, label %do.end.i, !prof !168

if.end8.i.do.end23.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end23.i

do.end.i:                                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull %call7.i.i.i) #13
  br label %do.end23.i

do.end23.i:                                       ; preds = %do.end.i, %if.end8.i.do.end23.i_crit_edge
  %rq_server.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 7
  %65 = ptrtoint ptr %rq_server.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %rq_server.i, align 4
  %b_daemon.i = getelementptr inbounds %struct.nlm_block, ptr %call7.i.i.i, i32 0, i32 4
  %67 = ptrtoint ptr %b_daemon.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %66, ptr %b_daemon.i, align 8
  %b_host.i = getelementptr inbounds %struct.nlm_block, ptr %call7.i.i.i, i32 0, i32 5
  %68 = ptrtoint ptr %b_host.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %host, ptr %b_host.i, align 4
  %b_file.i = getelementptr inbounds %struct.nlm_block, ptr %call7.i.i.i, i32 0, i32 9
  %69 = ptrtoint ptr %b_file.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %file, ptr %b_file.i, align 4
  %f_count.i = getelementptr inbounds %struct.nlm_file, ptr %file, i32 0, i32 6
  %70 = ptrtoint ptr %f_count.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %f_count.i, align 4
  %inc.i = add i32 %71, 1
  store i32 %inc.i, ptr %f_count.i, align 4
  %f_blocks.i = getelementptr inbounds %struct.nlm_file, ptr %file, i32 0, i32 4
  %72 = ptrtoint ptr %f_blocks.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %f_blocks.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %b_flist.i, ptr noundef %f_blocks.i, ptr noundef %73) #10
  br i1 %call.i.i.i, label %if.end.i.i3.i, label %do.end23.i.if.end22_crit_edge

do.end23.i.if.end22_crit_edge:                    ; preds = %do.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.end.i.i3.i:                                    ; preds = %do.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %b_flist.i, ptr %prev1.i.i.i, align 4
  %75 = ptrtoint ptr %b_flist.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %73, ptr %b_flist.i, align 4
  %76 = ptrtoint ptr %prev.i1.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %f_blocks.i, ptr %prev.i1.i, align 8
  %77 = ptrtoint ptr %f_blocks.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr %b_flist.i, ptr %f_blocks.i, align 4
  br label %if.end22

failed_free.i:                                    ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  br label %failed.i

failed.i:                                         ; preds = %failed_free.i, %if.end.i.failed.i_crit_edge
  tail call void @nlmsvc_release_call(ptr noundef nonnull %call1.i) #10
  br label %out

if.end22:                                         ; preds = %if.end.i.i3.i, %do.end23.i.if.end22_crit_edge
  %b_call.i = getelementptr inbounds %struct.nlm_block, ptr %call7.i.i.i, i32 0, i32 3
  %78 = ptrtoint ptr %b_call.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call1.i, ptr %b_call.i, align 4
  %a_flags.i = getelementptr inbounds %struct.nlm_rqst, ptr %call1.i, i32 0, i32 1
  %79 = ptrtoint ptr %a_flags.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 1, ptr %a_flags.i, align 4
  %a_block.i = getelementptr inbounds %struct.nlm_rqst, ptr %call1.i, i32 0, i32 5
  %80 = ptrtoint ptr %a_block.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call7.i.i.i, ptr %a_block.i, align 8
  %81 = load ptr, ptr %b_call.i, align 4
  %lock23 = getelementptr inbounds %struct.nlm_rqst, ptr %81, i32 0, i32 3, i32 1
  br label %if.end26

if.else:                                          ; preds = %nlmsvc_file_file.exit
  call void @__sanitizer_cov_trace_pc() #12
  %fl_flags = getelementptr inbounds %struct.nlm_lock, ptr %lock, i32 0, i32 5, i32 6
  %82 = ptrtoint ptr %fl_flags to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %fl_flags, align 8
  %and25 = and i32 %83, -129
  store i32 %and25, ptr %fl_flags, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.end22
  %block.0 = phi ptr [ %call7.i.i.i, %if.end22 ], [ %call15, %if.else ]
  %lock.addr.0 = phi ptr [ %lock23, %if.end22 ], [ %lock, %if.else ]
  %b_flags = getelementptr inbounds %struct.nlm_block, ptr %block.0, i32 0, i32 12
  %84 = ptrtoint ptr %b_flags to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %b_flags, align 4
  %and27 = and i32 %85, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end59, label %do.body30

do.body30:                                        ; preds = %if.end26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %86 = load i32, ptr @nlm_debug, align 4
  %and31 = and i32 %86, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %do.body30.do.end48_crit_edge, label %do.end42, !prof !168

do.body30.do.end48_crit_edge:                     ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end48

do.end42:                                         ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #12
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull %block.0, i32 noundef %85) #13
  br label %do.end48

do.end48:                                         ; preds = %do.end42, %do.body30.do.end48_crit_edge
  %b_granted = getelementptr inbounds %struct.nlm_block, ptr %block.0, i32 0, i32 8
  %87 = ptrtoint ptr %b_granted to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %b_granted, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool49.not = icmp eq i8 %88, 0
  br i1 %tobool49.not, label %if.end52, label %if.then50

if.then50:                                        ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #12
  %call51 = tail call fastcc i32 @nlmsvc_unlink_block(ptr noundef nonnull %block.0)
  br label %out

if.end52:                                         ; preds = %do.end48
  %89 = ptrtoint ptr %b_flags to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %b_flags, align 4
  %and54 = and i32 %90, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.end52.out_crit_edge, label %if.then56

if.end52.out_crit_edge:                           ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then56:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  %call57 = tail call fastcc i32 @nlmsvc_unlink_block(ptr noundef nonnull %block.0)
  br label %out

if.end59:                                         ; preds = %if.end26
  %rq_xprt = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 2
  %91 = ptrtoint ptr %rq_xprt to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %rq_xprt, align 8
  %tobool60.not = icmp eq ptr %92, null
  %xpt_net = getelementptr inbounds %struct.svc_xprt, ptr %92, i32 0, i32 19
  %rq_bc_net = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 48
  %cond.in = select i1 %tobool60.not, ptr %rq_bc_net, ptr %xpt_net
  %93 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %93)
  %cond = load ptr, ptr %cond.in, align 4
  %call62 = tail call zeroext i1 @locks_in_grace(ptr noundef %cond) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reclaim)
  %tobool64.not = icmp eq i32 %reclaim, 0
  %or.cond = and i1 %tobool64.not, %call62
  br i1 %or.cond, label %if.end59.out_crit_edge, label %if.end66

if.end59.out_crit_edge:                           ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end66:                                         ; preds = %if.end59
  br i1 %tobool64.not, label %if.end66.if.end80_crit_edge, label %land.lhs.true68

if.end66.if.end80_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

land.lhs.true68:                                  ; preds = %if.end66
  %94 = ptrtoint ptr %rq_xprt to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %rq_xprt, align 8
  %tobool70.not = icmp eq ptr %95, null
  %xpt_net73 = getelementptr inbounds %struct.svc_xprt, ptr %95, i32 0, i32 19
  %cond77.in = select i1 %tobool70.not, ptr %rq_bc_net, ptr %xpt_net73
  %96 = ptrtoint ptr %cond77.in to i32
  call void @__asan_load4_noabort(i32 %96)
  %cond77 = load ptr, ptr %cond77.in, align 4
  %call78 = tail call zeroext i1 @locks_in_grace(ptr noundef %cond77) #10
  br i1 %call78, label %land.lhs.true68.if.end80_crit_edge, label %land.lhs.true68.out_crit_edge

land.lhs.true68.out_crit_edge:                    ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

land.lhs.true68.if.end80_crit_edge:               ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

if.end80:                                         ; preds = %land.lhs.true68.if.end80_crit_edge, %if.end66.if.end80_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wait)
  %tobool81.not191 = icmp ne i32 %wait, 0
  %97 = and i1 %tobool81.not191, %tobool12.not
  br i1 %97, label %if.end80.if.end86_crit_edge, label %if.then82

if.end80.if.end86_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end86

if.then82:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  %fl_flags84 = getelementptr inbounds %struct.nlm_lock, ptr %lock.addr.0, i32 0, i32 5, i32 6
  %98 = ptrtoint ptr %fl_flags84 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %fl_flags84, align 8
  %and85 = and i32 %99, -129
  store i32 %and85, ptr %fl_flags84, align 8
  br label %if.end86

if.end86:                                         ; preds = %if.then82, %if.end80.if.end86_crit_edge
  %fl87 = getelementptr inbounds %struct.nlm_lock, ptr %lock.addr.0, i32 0, i32 5
  %call88 = tail call i32 @lock_to_openmode(ptr noundef %fl87) #10
  %arrayidx = getelementptr %struct.nlm_file, ptr %file, i32 0, i32 2, i32 %call88
  %100 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arrayidx, align 4
  %call90 = tail call i32 @vfs_lock_file(ptr noundef %101, i32 noundef 6, ptr noundef %fl87, ptr noundef null) #10
  %fl_flags92 = getelementptr inbounds %struct.nlm_lock, ptr %lock.addr.0, i32 0, i32 5, i32 6
  %102 = ptrtoint ptr %fl_flags92 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %fl_flags92, align 8
  %and93 = and i32 %103, -129
  store i32 %and93, ptr %fl_flags92, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %104 = load i32, ptr @nlm_debug, align 4
  %and95 = and i32 %104, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool96.not = icmp eq i32 %and95, 0
  br i1 %tobool96.not, label %if.end86.do.end111_crit_edge, label %do.end106, !prof !168

if.end86.do.end111_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end111

do.end106:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #12
  %call108 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %call90) #13
  br label %do.end111

do.end111:                                        ; preds = %do.end106, %if.end86.do.end111_crit_edge
  %105 = zext i32 %call90 to i64
  call void @__sanitizer_cov_trace_switch(i64 %105, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call90, label %sw.default [
    i32 0, label %do.end111.out_crit_edge
    i32 -11, label %sw.bb112
    i32 1, label %sw.bb118
    i32 -35, label %sw.bb123
  ]

do.end111.out_crit_edge:                          ; preds = %do.end111
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

sw.bb112:                                         ; preds = %do.end111
  br i1 %97, label %sw.bb112.sw.epilog_crit_edge, label %if.end115

sw.bb112.sw.epilog_crit_edge:                     ; preds = %sw.bb112
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end115:                                        ; preds = %sw.bb112
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wait)
  %tobool116.not192 = icmp eq i32 %wait, 0
  %tobool116.not = or i1 %tobool116.not192, %tobool12.not
  %cond117 = select i1 %tobool116.not, i32 1, i32 3
  br label %out

sw.bb118:                                         ; preds = %do.end111
  br i1 %97, label %sw.bb118.sw.epilog_crit_edge, label %if.end121

sw.bb118.sw.epilog_crit_edge:                     ; preds = %sw.bb118
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end121:                                        ; preds = %sw.bb118
  call void @__sanitizer_cov_trace_pc() #12
  %call122 = tail call fastcc i32 @nlmsvc_defer_lock_rqst(ptr noundef %rqstp, ptr noundef nonnull %block.0)
  br label %out

sw.bb123:                                         ; preds = %do.end111
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

sw.default:                                       ; preds = %do.end111
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

sw.epilog:                                        ; preds = %sw.bb118.sw.epilog_crit_edge, %sw.bb112.sw.epilog_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull @nlm_blocked_lock) #10
  tail call fastcc void @nlmsvc_insert_block_locked(ptr noundef nonnull %block.0, i32 noundef -1) #10
  tail call void @_raw_spin_unlock(ptr noundef nonnull @nlm_blocked_lock) #10
  br label %out

out:                                              ; preds = %sw.epilog, %sw.default, %sw.bb123, %if.end121, %if.end115, %do.end111.out_crit_edge, %land.lhs.true68.out_crit_edge, %if.end59.out_crit_edge, %if.then56, %if.end52.out_crit_edge, %if.then50, %failed.i, %if.then17.out_crit_edge
  %ret.0 = phi i32 [ 0, %if.then50 ], [ 1, %if.then56 ], [ 2, %sw.default ], [ 5, %sw.bb123 ], [ 3, %sw.epilog ], [ %call122, %if.end121 ], [ %cond117, %if.end115 ], [ 30000, %if.end52.out_crit_edge ], [ 4, %if.end59.out_crit_edge ], [ 4, %land.lhs.true68.out_crit_edge ], [ %call90, %do.end111.out_crit_edge ], [ 2, %failed.i ], [ 2, %if.then17.out_crit_edge ]
  %block.1 = phi ptr [ %block.0, %if.then50 ], [ %block.0, %if.then56 ], [ %block.0, %sw.default ], [ %block.0, %sw.bb123 ], [ %block.0, %sw.epilog ], [ %block.0, %if.end121 ], [ %block.0, %if.end115 ], [ %block.0, %if.end52.out_crit_edge ], [ %block.0, %if.end59.out_crit_edge ], [ %block.0, %land.lhs.true68.out_crit_edge ], [ %block.0, %do.end111.out_crit_edge ], [ null, %failed.i ], [ null, %if.then17.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %f_mutex) #10
  tail call fastcc void @nlmsvc_release_block(ptr noundef %block.1)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %106 = load i32, ptr @nlm_debug, align 4
  %and126 = and i32 %106, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and126)
  %tobool127.not = icmp eq i32 %and126, 0
  br i1 %tobool127.not, label %out.do.end142_crit_edge, label %do.end137, !prof !168

out.do.end142_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end142

do.end137:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  %call139 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %ret.0) #13
  br label %do.end142

do.end142:                                        ; preds = %do.end137, %out.do.end142_crit_edge
  ret i32 %ret.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @nlmsvc_lookup_block(ptr noundef %file, ptr nocapture noundef readonly %lock) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %0 = load i32, ptr @nlm_debug, align 4
  %and = and i32 %0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.end, !prof !168

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %fl_pid = getelementptr inbounds %struct.nlm_lock, ptr %lock, i32 0, i32 5, i32 8
  %1 = ptrtoint ptr %fl_pid to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %fl_pid, align 8
  %fl_start = getelementptr inbounds %struct.nlm_lock, ptr %lock, i32 0, i32 5, i32 12
  %3 = ptrtoint ptr %fl_start to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %fl_start, align 8
  %fl_end = getelementptr inbounds %struct.nlm_lock, ptr %lock, i32 0, i32 5, i32 13
  %5 = ptrtoint ptr %fl_end to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %fl_end, align 8
  %fl_type = getelementptr inbounds %struct.nlm_lock, ptr %lock, i32 0, i32 5, i32 7
  %7 = ptrtoint ptr %fl_type to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %fl_type, align 4
  %conv = zext i8 %8 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %file, i32 noundef %2, i64 noundef %4, i64 noundef %6, i32 noundef %conv) #13
  br label %do.end9

do.end9:                                          ; preds = %do.end, %entry.do.end9_crit_edge
  %.pn75 = load ptr, ptr @nlm_blocked, align 4
  %cmp.not76 = icmp eq ptr %.pn75, @nlm_blocked
  br i1 %cmp.not76, label %do.end9.cleanup_crit_edge, label %for.body.lr.ph

do.end9.cleanup_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.end9
  %fl_file1.i = getelementptr inbounds %struct.nlm_lock, ptr %lock, i32 0, i32 5, i32 11
  %fl_pid3.i = getelementptr inbounds %struct.nlm_lock, ptr %lock, i32 0, i32 5, i32 8
  %fl_owner6.i = getelementptr inbounds %struct.nlm_lock, ptr %lock, i32 0, i32 5, i32 5
  %fl_start9.i = getelementptr inbounds %struct.nlm_lock, ptr %lock, i32 0, i32 5, i32 12
  %fl_end12.i = getelementptr inbounds %struct.nlm_lock, ptr %lock, i32 0, i32 5, i32 13
  %fl_type14.i = getelementptr inbounds %struct.nlm_lock, ptr %lock, i32 0, i32 5, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn77 = phi ptr [ %.pn75, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %b_call = getelementptr i8, ptr %.pn77, i32 16
  %9 = ptrtoint ptr %b_call to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %b_call, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %11 = load i32, ptr @nlm_debug, align 4
  %and17 = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %for.body.do.end41_crit_edge, label %do.end28, !prof !168

for.body.do.end41_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end41

do.end28:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %a_args = getelementptr inbounds %struct.nlm_rqst, ptr %10, i32 0, i32 3
  %b_file = getelementptr i8, ptr %.pn77, i32 40
  %12 = ptrtoint ptr %b_file to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %b_file, align 4
  %fl_pid30 = getelementptr inbounds %struct.nlm_rqst, ptr %10, i32 0, i32 3, i32 1, i32 5, i32 8
  %14 = ptrtoint ptr %fl_pid30 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fl_pid30, align 8
  %fl_start31 = getelementptr inbounds %struct.nlm_rqst, ptr %10, i32 0, i32 3, i32 1, i32 5, i32 12
  %16 = ptrtoint ptr %fl_start31 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %fl_start31, align 8
  %fl_end32 = getelementptr inbounds %struct.nlm_rqst, ptr %10, i32 0, i32 3, i32 1, i32 5, i32 13
  %18 = ptrtoint ptr %fl_end32 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %fl_end32, align 8
  %fl_type33 = getelementptr inbounds %struct.nlm_rqst, ptr %10, i32 0, i32 3, i32 1, i32 5, i32 7
  %20 = ptrtoint ptr %fl_type33 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %fl_type33, align 4
  %conv34 = zext i8 %21 to i32
  tail call fastcc void @nlmdbg_cookie2a(ptr noundef %a_args)
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %13, i32 noundef %15, i64 noundef %17, i64 noundef %19, i32 noundef %conv34, ptr noundef nonnull @nlmdbg_cookie2a.buf) #13
  br label %do.end41

do.end41:                                         ; preds = %do.end28, %for.body.do.end41_crit_edge
  %b_file42 = getelementptr i8, ptr %.pn77, i32 40
  %22 = ptrtoint ptr %b_file42 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %b_file42, align 4
  %cmp43 = icmp eq ptr %23, %file
  br i1 %cmp43, label %land.lhs.true, label %do.end41.for.inc_crit_edge

do.end41.for.inc_crit_edge:                       ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %do.end41
  %fl_file.i = getelementptr inbounds %struct.nlm_rqst, ptr %10, i32 0, i32 3, i32 1, i32 5, i32 11
  %24 = ptrtoint ptr %fl_file.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fl_file.i, align 4
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %f_inode.i.i, align 8
  %28 = ptrtoint ptr %fl_file1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fl_file1.i, align 4
  %f_inode.i33.i = getelementptr inbounds %struct.file, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %f_inode.i33.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %f_inode.i33.i, align 8
  %cmp.i = icmp eq ptr %27, %31
  br i1 %cmp.i, label %land.lhs.true.i, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true.i:                                  ; preds = %land.lhs.true
  %fl_pid.i = getelementptr inbounds %struct.nlm_rqst, ptr %10, i32 0, i32 3, i32 1, i32 5, i32 8
  %32 = ptrtoint ptr %fl_pid.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %fl_pid.i, align 8
  %34 = ptrtoint ptr %fl_pid3.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %fl_pid3.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp4.i = icmp eq i32 %33, %35
  br i1 %cmp4.i, label %land.lhs.true5.i, label %land.lhs.true.i.for.inc_crit_edge

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %fl_owner.i = getelementptr inbounds %struct.nlm_rqst, ptr %10, i32 0, i32 3, i32 1, i32 5, i32 5
  %36 = ptrtoint ptr %fl_owner.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %fl_owner.i, align 4
  %38 = ptrtoint ptr %fl_owner6.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fl_owner6.i, align 4
  %cmp7.i = icmp eq ptr %37, %39
  br i1 %cmp7.i, label %land.lhs.true8.i, label %land.lhs.true5.i.for.inc_crit_edge

land.lhs.true5.i.for.inc_crit_edge:               ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true8.i:                                 ; preds = %land.lhs.true5.i
  %fl_start.i = getelementptr inbounds %struct.nlm_rqst, ptr %10, i32 0, i32 3, i32 1, i32 5, i32 12
  %40 = ptrtoint ptr %fl_start.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %fl_start.i, align 8
  %42 = ptrtoint ptr %fl_start9.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %fl_start9.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %41, i64 %43)
  %cmp10.i = icmp eq i64 %41, %43
  br i1 %cmp10.i, label %land.lhs.true11.i, label %land.lhs.true8.i.for.inc_crit_edge

land.lhs.true8.i.for.inc_crit_edge:               ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true11.i:                                ; preds = %land.lhs.true8.i
  %fl_end.i = getelementptr inbounds %struct.nlm_rqst, ptr %10, i32 0, i32 3, i32 1, i32 5, i32 13
  %44 = ptrtoint ptr %fl_end.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %fl_end.i, align 8
  %46 = ptrtoint ptr %fl_end12.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %fl_end12.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %45, i64 %47)
  %cmp13.i = icmp eq i64 %45, %47
  br i1 %cmp13.i, label %land.rhs.i, label %land.lhs.true11.i.for.inc_crit_edge

land.lhs.true11.i.for.inc_crit_edge:              ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.rhs.i:                                       ; preds = %land.lhs.true11.i
  %fl_type.i = getelementptr inbounds %struct.nlm_rqst, ptr %10, i32 0, i32 3, i32 1, i32 5, i32 7
  %48 = ptrtoint ptr %fl_type.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %fl_type.i, align 4
  %50 = ptrtoint ptr %fl_type14.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %fl_type14.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %49, i8 %51)
  %cmp16.i = icmp eq i8 %49, %51
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %51)
  %cmp20.i.not = icmp eq i8 %51, 2
  %or.cond = or i1 %cmp16.i, %cmp20.i.not
  br i1 %or.cond, label %if.then48, label %land.rhs.i.for.inc_crit_edge

land.rhs.i.for.inc_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then48:                                        ; preds = %land.rhs.i
  %block.0.le = getelementptr i8, ptr %.pn77, i32 -4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %block.0.le, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %block.0.le, i32 1, i32 3, i32 1) #10
  %52 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %block.0.le, ptr %block.0.le, i32 1, ptr elementtype(i32) %block.0.le) #10, !srcloc !166
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %52, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then48.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !167

if.then48.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then48
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %53 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %53)
  %.not.i.i.i.i = icmp sgt i32 %53, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.cleanup_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !168

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.cleanup_crit_edge:                ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then48.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then48.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %block.0.le, i32 noundef %.sink.i.i.i.i) #10
  br label %cleanup

for.inc:                                          ; preds = %land.rhs.i.for.inc_crit_edge, %land.lhs.true11.i.for.inc_crit_edge, %land.lhs.true8.i.for.inc_crit_edge, %land.lhs.true5.i.for.inc_crit_edge, %land.lhs.true.i.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %do.end41.for.inc_crit_edge
  %54 = ptrtoint ptr %.pn77 to i32
  call void @__asan_load4_noabort(i32 %54)
  %.pn = load ptr, ptr %.pn77, align 4
  %cmp.not = icmp eq ptr %.pn, @nlm_blocked
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.cleanup_crit_edge, %do.end9.cleanup_crit_edge
  %retval.0 = phi ptr [ %block.0.le, %if.else.i.i.i.i.cleanup_crit_edge ], [ %block.0.le, %if.end15.sink.split.i.i.i.i ], [ null, %do.end9.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @locks_in_grace(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_to_openmode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_lock_file(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nlmsvc_defer_lock_rqst(ptr noundef %rqstp, ptr noundef %block) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %b_flags = getelementptr inbounds %struct.nlm_block, ptr %block, i32 0, i32 12
  %0 = ptrtoint ptr %b_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %b_flags, align 4
  %or = or i32 %1, 1
  store i32 %or, ptr %b_flags, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @nlm_blocked_lock) #10
  tail call fastcc void @nlmsvc_insert_block_locked(ptr noundef %block, i32 noundef 700) #10
  tail call void @_raw_spin_unlock(ptr noundef nonnull @nlm_blocked_lock) #10
  %rq_chandle = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 42
  %b_cache_req = getelementptr inbounds %struct.nlm_block, ptr %block, i32 0, i32 10
  %2 = ptrtoint ptr %b_cache_req to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %rq_chandle, ptr %b_cache_req, align 4
  %3 = ptrtoint ptr %rq_chandle to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rq_chandle, align 8
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call ptr %4(ptr noundef %rq_chandle) #10
  %b_deferred_req = getelementptr inbounds %struct.nlm_block, ptr %block, i32 0, i32 11
  %5 = ptrtoint ptr %b_deferred_req to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %b_deferred_req, align 4
  %cmp.not = icmp eq ptr %call, null
  %spec.select = select i1 %cmp.not, i32 2, i32 30000
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  %status.0 = phi i32 [ 2, %entry.do.body_crit_edge ], [ %spec.select, %if.then ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %6 = load i32, ptr @nlm_debug, align 4
  %and = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %do.body.do.end17_crit_edge, label %do.end, !prof !168

do.body.do.end17_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end17

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %b_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %b_flags, align 4
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %block, i32 noundef %8, i32 noundef %status.0) #13
  br label %do.end17

do.end17:                                         ; preds = %do.end, %do.body.do.end17_crit_edge
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nlmsvc_testlock(ptr nocapture noundef readonly %rqstp, ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %host, ptr noundef %lock, ptr nocapture noundef writeonly %conflock, ptr nocapture noundef readnone %cookie) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %0 = load i32, ptr @nlm_debug, align 4
  %and = and i32 %0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.end, !prof !168

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9

do.end:                                           ; preds = %entry
  %f_file.i.i = getelementptr inbounds %struct.nlm_file, ptr %file, i32 0, i32 2
  %1 = ptrtoint ptr %f_file.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %f_file.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i, label %cond.false.i.i155, label %do.end.nlmsvc_file_inode.exit158_crit_edge

do.end.nlmsvc_file_inode.exit158_crit_edge:       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %nlmsvc_file_inode.exit158

cond.false.i.i155:                                ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx4.i.i = getelementptr %struct.nlm_file, ptr %file, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx4.i.i, align 4
  br label %nlmsvc_file_inode.exit158

nlmsvc_file_inode.exit158:                        ; preds = %cond.false.i.i155, %do.end.nlmsvc_file_inode.exit158_crit_edge
  %.pn166 = phi ptr [ %4, %cond.false.i.i155 ], [ %2, %do.end.nlmsvc_file_inode.exit158_crit_edge ]
  %.pn165.in = getelementptr inbounds %struct.file, ptr %.pn166, i32 0, i32 2
  %5 = ptrtoint ptr %.pn165.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn165 = load ptr, ptr %.pn165.in, align 8
  %.pn.in = getelementptr inbounds %struct.inode, ptr %.pn165, i32 0, i32 8
  %6 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load ptr, ptr %.pn.in, align 4
  %s_id163 = getelementptr inbounds %struct.super_block, ptr %.pn, i32 0, i32 39
  %i_ino = getelementptr inbounds %struct.inode, ptr %.pn165, i32 0, i32 11
  %7 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %i_ino, align 8
  %fl_type = getelementptr inbounds %struct.nlm_lock, ptr %lock, i32 0, i32 5, i32 7
  %9 = ptrtoint ptr %fl_type to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %fl_type, align 4
  %conv = zext i8 %10 to i32
  %fl_start = getelementptr inbounds %struct.nlm_lock, ptr %lock, i32 0, i32 5, i32 12
  %11 = ptrtoint ptr %fl_start to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %fl_start, align 8
  %fl_end = getelementptr inbounds %struct.nlm_lock, ptr %lock, i32 0, i32 5, i32 13
  %13 = ptrtoint ptr %fl_end to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %fl_end, align 8
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %s_id163, i32 noundef %8, i32 noundef %conv, i64 noundef %12, i64 noundef %14) #13
  br label %do.end9

do.end9:                                          ; preds = %nlmsvc_file_inode.exit158, %entry.do.end9_crit_edge
  %rq_xprt = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 2
  %15 = ptrtoint ptr %rq_xprt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rq_xprt, align 8
  %tobool10.not = icmp eq ptr %16, null
  %xpt_net = getelementptr inbounds %struct.svc_xprt, ptr %16, i32 0, i32 19
  %rq_bc_net = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 48
  %cond.in = select i1 %tobool10.not, ptr %rq_bc_net, ptr %xpt_net
  %17 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %17)
  %cond = load ptr, ptr %cond.in, align 4
  %call12 = tail call zeroext i1 @locks_in_grace(ptr noundef %cond) #10
  br i1 %call12, label %do.end9.out_crit_edge, label %if.end14

do.end9.out_crit_edge:                            ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end14:                                         ; preds = %do.end9
  %fl15 = getelementptr inbounds %struct.nlm_lock, ptr %lock, i32 0, i32 5
  %fl_owner = getelementptr inbounds %struct.nlm_lock, ptr %lock, i32 0, i32 5, i32 5
  %18 = ptrtoint ptr %fl_owner to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fl_owner, align 4
  %call17 = tail call i32 @lock_to_openmode(ptr noundef %fl15) #10
  %arrayidx = getelementptr %struct.nlm_file, ptr %file, i32 0, i32 2, i32 %call17
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %call19 = tail call i32 @vfs_test_lock(ptr noundef %21, ptr noundef %fl15) #10
  %22 = zext i32 %call19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %call19, label %if.end14.out_crit_edge [
    i32 0, label %if.end70
    i32 1, label %land.end
  ]

if.end14.out_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

land.end:                                         ; preds = %if.end14
  %.b151 = load i1, ptr @nlmsvc_testlock.__already_done, align 1
  br i1 %.b151, label %land.end.out_crit_edge, label %if.then35, !prof !168

land.end.out_crit_edge:                           ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then35:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @nlmsvc_testlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 615, i32 noundef 9, ptr noundef null) #10
  br label %out

if.end70:                                         ; preds = %if.end14
  %fl_type72 = getelementptr inbounds %struct.nlm_lock, ptr %lock, i32 0, i32 5, i32 7
  %23 = ptrtoint ptr %fl_type72 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %fl_type72, align 4
  %conv73 = zext i8 %24 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %24)
  %cmp74 = icmp eq i8 %24, 2
  br i1 %cmp74, label %if.end70.out_crit_edge, label %do.body78

if.end70.out_crit_edge:                           ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.body78:                                        ; preds = %if.end70
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %25 = load i32, ptr @nlm_debug, align 4
  %and79 = and i32 %25, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %do.body78.do.end102_crit_edge, label %do.end90, !prof !168

do.body78.do.end102_crit_edge:                    ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end102

do.end90:                                         ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #12
  %fl_start96 = getelementptr inbounds %struct.nlm_lock, ptr %lock, i32 0, i32 5, i32 12
  %26 = ptrtoint ptr %fl_start96 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %fl_start96, align 8
  %fl_end98 = getelementptr inbounds %struct.nlm_lock, ptr %lock, i32 0, i32 5, i32 13
  %28 = ptrtoint ptr %fl_end98 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %fl_end98, align 8
  %call99 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %conv73, i64 noundef %27, i64 noundef %29) #13
  br label %do.end102

do.end102:                                        ; preds = %do.end90, %do.body78.do.end102_crit_edge
  %30 = ptrtoint ptr %conflock to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @.str.17, ptr %conflock, align 8
  %len = getelementptr inbounds %struct.nlm_lock, ptr %conflock, i32 0, i32 1
  %31 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 8, ptr %len, align 4
  %oh = getelementptr inbounds %struct.nlm_lock, ptr %conflock, i32 0, i32 3
  %32 = ptrtoint ptr %oh to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %oh, align 4
  %fl_pid = getelementptr inbounds %struct.nlm_lock, ptr %lock, i32 0, i32 5, i32 8
  %33 = ptrtoint ptr %fl_pid to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %fl_pid, align 8
  %svid = getelementptr inbounds %struct.nlm_lock, ptr %conflock, i32 0, i32 4
  %35 = ptrtoint ptr %svid to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %svid, align 4
  %36 = ptrtoint ptr %fl_type72 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %fl_type72, align 4
  %fl_type110 = getelementptr inbounds %struct.nlm_lock, ptr %conflock, i32 0, i32 5, i32 7
  %38 = ptrtoint ptr %fl_type110 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %fl_type110, align 4
  %fl_start112 = getelementptr inbounds %struct.nlm_lock, ptr %lock, i32 0, i32 5, i32 12
  %39 = ptrtoint ptr %fl_start112 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %fl_start112, align 8
  %fl_start114 = getelementptr inbounds %struct.nlm_lock, ptr %conflock, i32 0, i32 5, i32 12
  %41 = ptrtoint ptr %fl_start114 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %40, ptr %fl_start114, align 8
  %fl_end116 = getelementptr inbounds %struct.nlm_lock, ptr %lock, i32 0, i32 5, i32 13
  %42 = ptrtoint ptr %fl_end116 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %fl_end116, align 8
  %fl_end118 = getelementptr inbounds %struct.nlm_lock, ptr %conflock, i32 0, i32 5, i32 13
  %44 = ptrtoint ptr %fl_end118 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %43, ptr %fl_end118, align 8
  tail call void @locks_release_private(ptr noundef %fl15) #10
  %45 = ptrtoint ptr %fl_owner to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %fl_owner, align 4
  %count.i = getelementptr inbounds %struct.nlm_lockowner, ptr %19, i32 0, i32 1
  %host.i = getelementptr inbounds %struct.nlm_lockowner, ptr %19, i32 0, i32 2
  %46 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %host.i, align 4
  %h_lock.i = getelementptr inbounds %struct.nlm_host, ptr %47, i32 0, i32 20
  %call.i = tail call zeroext i1 @refcount_dec_and_lock(ptr noundef %count.i, ptr noundef %h_lock.i) #10
  br i1 %call.i, label %if.end.i, label %do.end102.out_crit_edge

do.end102.out_crit_edge:                          ; preds = %do.end102
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end.i:                                         ; preds = %do.end102
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %19) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del.exit.i_crit_edge

if.end.i.list_del.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %48 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev.i.i.i, align 4
  %50 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %19, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %prev1.i.i.i.i, align 4
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %51, ptr %49, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i.list_del.exit.i_crit_edge
  %54 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr inttoptr (i32 256 to ptr), ptr %19, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %55 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %56 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %host.i, align 4
  %h_lock2.i = getelementptr inbounds %struct.nlm_host, ptr %57, i32 0, i32 20
  tail call void @_raw_spin_unlock(ptr noundef %h_lock2.i) #10
  %58 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %host.i, align 4
  tail call void @nlmsvc_release_host(ptr noundef %59) #10
  tail call void @kfree(ptr noundef %19) #10
  br label %out

out:                                              ; preds = %list_del.exit.i, %do.end102.out_crit_edge, %if.end70.out_crit_edge, %if.then35, %land.end.out_crit_edge, %if.end14.out_crit_edge, %do.end9.out_crit_edge
  %ret.0 = phi i32 [ 4, %do.end9.out_crit_edge ], [ 2, %land.end.out_crit_edge ], [ 2, %if.then35 ], [ 2, %if.end14.out_crit_edge ], [ 0, %if.end70.out_crit_edge ], [ 1, %do.end102.out_crit_edge ], [ 1, %list_del.exit.i ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_test_lock(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @locks_release_private(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nlmsvc_unlock(ptr noundef %net, ptr noundef %file, ptr noundef %lock) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %0 = load i32, ptr @nlm_debug, align 4
  %and = and i32 %0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.end, !prof !168

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9

do.end:                                           ; preds = %entry
  %f_file.i.i = getelementptr inbounds %struct.nlm_file, ptr %file, i32 0, i32 2
  %1 = ptrtoint ptr %f_file.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %f_file.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i, label %cond.false.i.i44, label %do.end.nlmsvc_file_inode.exit47_crit_edge

do.end.nlmsvc_file_inode.exit47_crit_edge:        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %nlmsvc_file_inode.exit47

cond.false.i.i44:                                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx4.i.i = getelementptr %struct.nlm_file, ptr %file, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx4.i.i, align 4
  br label %nlmsvc_file_inode.exit47

nlmsvc_file_inode.exit47:                         ; preds = %cond.false.i.i44, %do.end.nlmsvc_file_inode.exit47_crit_edge
  %.pn55 = phi ptr [ %4, %cond.false.i.i44 ], [ %2, %do.end.nlmsvc_file_inode.exit47_crit_edge ]
  %.pn54.in = getelementptr inbounds %struct.file, ptr %.pn55, i32 0, i32 2
  %5 = ptrtoint ptr %.pn54.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn54 = load ptr, ptr %.pn54.in, align 8
  %.pn.in = getelementptr inbounds %struct.inode, ptr %.pn54, i32 0, i32 8
  %6 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load ptr, ptr %.pn.in, align 4
  %s_id52 = getelementptr inbounds %struct.super_block, ptr %.pn, i32 0, i32 39
  %i_ino = getelementptr inbounds %struct.inode, ptr %.pn54, i32 0, i32 11
  %7 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %i_ino, align 8
  %fl_pid = getelementptr inbounds %struct.nlm_lock, ptr %lock, i32 0, i32 5, i32 8
  %9 = ptrtoint ptr %fl_pid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fl_pid, align 8
  %fl_start = getelementptr inbounds %struct.nlm_lock, ptr %lock, i32 0, i32 5, i32 12
  %11 = ptrtoint ptr %fl_start to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %fl_start, align 8
  %fl_end = getelementptr inbounds %struct.nlm_lock, ptr %lock, i32 0, i32 5, i32 13
  %13 = ptrtoint ptr %fl_end to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %fl_end, align 8
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %s_id52, i32 noundef %8, i32 noundef %10, i64 noundef %12, i64 noundef %14) #13
  br label %do.end9

do.end9:                                          ; preds = %nlmsvc_file_inode.exit47, %entry.do.end9_crit_edge
  %call10 = tail call i32 @nlmsvc_cancel_blocked(ptr noundef %net, ptr noundef %file, ptr noundef %lock)
  %fl11 = getelementptr inbounds %struct.nlm_lock, ptr %lock, i32 0, i32 5
  %fl_type = getelementptr inbounds %struct.nlm_lock, ptr %lock, i32 0, i32 5, i32 7
  %15 = ptrtoint ptr %fl_type to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 2, ptr %fl_type, align 4
  %f_file = getelementptr inbounds %struct.nlm_file, ptr %file, i32 0, i32 2
  %16 = ptrtoint ptr %f_file to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %f_file, align 4
  %tobool12.not = icmp eq ptr %17, null
  br i1 %tobool12.not, label %do.end9.if.end18_crit_edge, label %if.then13

do.end9.if.end18_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then13:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  %call17 = tail call i32 @vfs_lock_file(ptr noundef nonnull %17, i32 noundef 6, ptr noundef %fl11, ptr noundef null) #10
  br label %if.end18

if.end18:                                         ; preds = %if.then13, %do.end9.if.end18_crit_edge
  %error.0 = phi i32 [ %call17, %if.then13 ], [ 0, %do.end9.if.end18_crit_edge ]
  %arrayidx20 = getelementptr %struct.nlm_file, ptr %file, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx20, align 4
  %tobool21.not = icmp eq ptr %19, null
  br i1 %tobool21.not, label %if.end18.if.end27_crit_edge, label %if.then22

if.end18.if.end27_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %call26 = tail call i32 @vfs_lock_file(ptr noundef nonnull %19, i32 noundef 6, ptr noundef %fl11, ptr noundef null) #10
  br label %if.end27

if.end27:                                         ; preds = %if.then22, %if.end18.if.end27_crit_edge
  %error.1 = phi i32 [ %call26, %if.then22 ], [ %error.0, %if.end18.if.end27_crit_edge ]
  %20 = lshr i32 %error.1, 30
  %21 = and i32 %20, 2
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nlmsvc_cancel_blocked(ptr noundef %net, ptr noundef %file, ptr noundef %lock) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %0 = load i32, ptr @nlm_debug, align 4
  %and = and i32 %0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.end, !prof !168

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9

do.end:                                           ; preds = %entry
  %f_file.i.i = getelementptr inbounds %struct.nlm_file, ptr %file, i32 0, i32 2
  %1 = ptrtoint ptr %f_file.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %f_file.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i, label %cond.false.i.i41, label %do.end.nlmsvc_file_inode.exit44_crit_edge

do.end.nlmsvc_file_inode.exit44_crit_edge:        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %nlmsvc_file_inode.exit44

cond.false.i.i41:                                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx4.i.i = getelementptr %struct.nlm_file, ptr %file, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx4.i.i, align 4
  br label %nlmsvc_file_inode.exit44

nlmsvc_file_inode.exit44:                         ; preds = %cond.false.i.i41, %do.end.nlmsvc_file_inode.exit44_crit_edge
  %.pn52 = phi ptr [ %4, %cond.false.i.i41 ], [ %2, %do.end.nlmsvc_file_inode.exit44_crit_edge ]
  %.pn51.in = getelementptr inbounds %struct.file, ptr %.pn52, i32 0, i32 2
  %5 = ptrtoint ptr %.pn51.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn51 = load ptr, ptr %.pn51.in, align 8
  %.pn.in = getelementptr inbounds %struct.inode, ptr %.pn51, i32 0, i32 8
  %6 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load ptr, ptr %.pn.in, align 4
  %s_id49 = getelementptr inbounds %struct.super_block, ptr %.pn, i32 0, i32 39
  %i_ino = getelementptr inbounds %struct.inode, ptr %.pn51, i32 0, i32 11
  %7 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %i_ino, align 8
  %fl_pid = getelementptr inbounds %struct.nlm_lock, ptr %lock, i32 0, i32 5, i32 8
  %9 = ptrtoint ptr %fl_pid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fl_pid, align 8
  %fl_start = getelementptr inbounds %struct.nlm_lock, ptr %lock, i32 0, i32 5, i32 12
  %11 = ptrtoint ptr %fl_start to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %fl_start, align 8
  %fl_end = getelementptr inbounds %struct.nlm_lock, ptr %lock, i32 0, i32 5, i32 13
  %13 = ptrtoint ptr %fl_end to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %fl_end, align 8
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %s_id49, i32 noundef %8, i32 noundef %10, i64 noundef %12, i64 noundef %14) #13
  br label %do.end9

do.end9:                                          ; preds = %nlmsvc_file_inode.exit44, %entry.do.end9_crit_edge
  %call10 = tail call zeroext i1 @locks_in_grace(ptr noundef %net) #10
  br i1 %call10, label %do.end9.cleanup_crit_edge, label %if.end12

do.end9.cleanup_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %do.end9
  %f_mutex = getelementptr inbounds %struct.nlm_file, ptr %file, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %f_mutex, i32 noundef 0) #10
  %call13 = tail call fastcc ptr @nlmsvc_lookup_block(ptr noundef %file, ptr noundef %lock)
  tail call void @mutex_unlock(ptr noundef %f_mutex) #10
  %cmp.not = icmp eq ptr %call13, null
  br i1 %cmp.not, label %if.end12.cleanup_crit_edge, label %if.then15

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %fl16 = getelementptr inbounds %struct.nlm_lock, ptr %lock, i32 0, i32 5
  %call17 = tail call i32 @lock_to_openmode(ptr noundef %fl16) #10
  %b_file = getelementptr inbounds %struct.nlm_block, ptr %call13, i32 0, i32 9
  %15 = ptrtoint ptr %b_file to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %b_file, align 4
  %arrayidx = getelementptr %struct.nlm_file, ptr %16, i32 0, i32 2, i32 %call17
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 4
  %b_call = getelementptr inbounds %struct.nlm_block, ptr %call13, i32 0, i32 3
  %19 = ptrtoint ptr %b_call to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %b_call, align 4
  %fl19 = getelementptr inbounds %struct.nlm_rqst, ptr %20, i32 0, i32 3, i32 1, i32 5
  %call20 = tail call i32 @vfs_cancel_lock(ptr noundef %18, ptr noundef %fl19) #10
  %call21 = tail call fastcc i32 @nlmsvc_unlink_block(ptr noundef nonnull %call13)
  tail call fastcc void @nlmsvc_release_block(ptr noundef nonnull %call13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %phi.cmp = icmp ne i32 %call21, 0
  %phi.cast = zext i1 %phi.cmp to i32
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.end12.cleanup_crit_edge, %do.end9.cleanup_crit_edge
  %retval.0 = phi i32 [ 4, %do.end9.cleanup_crit_edge ], [ %phi.cast, %if.then15 ], [ 0, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_cancel_lock(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nlmsvc_get_owner(ptr noundef returned %owner) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %count.i = getelementptr inbounds %struct.nlm_lockowner, ptr %owner, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #10, !srcloc !166
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !167

entry.if.end15.sink.split.i.i.i.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %entry
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.nlmsvc_get_lockowner.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !168

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.nlmsvc_get_lockowner.exit_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nlmsvc_get_lockowner.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef %.sink.i.i.i.i) #10
  br label %nlmsvc_get_lockowner.exit

nlmsvc_get_lockowner.exit:                        ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.nlmsvc_get_lockowner.exit_crit_edge
  ret ptr %owner
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nlmsvc_put_owner(ptr noundef %owner) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %count.i = getelementptr inbounds %struct.nlm_lockowner, ptr %owner, i32 0, i32 1
  %host.i = getelementptr inbounds %struct.nlm_lockowner, ptr %owner, i32 0, i32 2
  %0 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host.i, align 4
  %h_lock.i = getelementptr inbounds %struct.nlm_host, ptr %1, i32 0, i32 20
  %call.i = tail call zeroext i1 @refcount_dec_and_lock(ptr noundef %count.i, ptr noundef %h_lock.i) #10
  br i1 %call.i, label %if.end.i, label %entry.nlmsvc_put_lockowner.exit_crit_edge

entry.nlmsvc_put_lockowner.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %nlmsvc_put_lockowner.exit

if.end.i:                                         ; preds = %entry
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %owner) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del.exit.i_crit_edge

if.end.i.list_del.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %owner, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i.i, align 4
  %4 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %owner, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i.list_del.exit.i_crit_edge
  %8 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %owner, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %owner, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %host.i, align 4
  %h_lock2.i = getelementptr inbounds %struct.nlm_host, ptr %11, i32 0, i32 20
  tail call void @_raw_spin_unlock(ptr noundef %h_lock2.i) #10
  %12 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %host.i, align 4
  tail call void @nlmsvc_release_host(ptr noundef %13) #10
  tail call void @kfree(ptr noundef %owner) #10
  br label %nlmsvc_put_lockowner.exit

nlmsvc_put_lockowner.exit:                        ; preds = %list_del.exit.i, %entry.nlmsvc_put_lockowner.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nlmsvc_notify_blocked(ptr noundef %fl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %0 = load i32, ptr @nlm_debug, align 4
  %and = and i32 %0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end, !prof !168

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %fl) #13
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull @nlm_blocked_lock) #10
  %fl_file1.i = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 11
  %fl_pid3.i = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 8
  %fl_owner6.i = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 5
  %fl_start9.i = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 12
  %fl_end12.i = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 13
  %fl_type14.i = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 7
  br label %for.cond

for.cond:                                         ; preds = %nlm_compare_locks.exit.for.cond_crit_edge, %do.end5
  %.pn.in = phi ptr [ @nlm_blocked, %do.end5 ], [ %.pn, %nlm_compare_locks.exit.for.cond_crit_edge ]
  %1 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, @nlm_blocked
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %b_call = getelementptr i8, ptr %.pn, i32 16
  %2 = ptrtoint ptr %b_call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_call, align 4
  %fl_file.i = getelementptr inbounds %struct.nlm_rqst, ptr %3, i32 0, i32 3, i32 1, i32 5, i32 11
  %4 = ptrtoint ptr %fl_file.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fl_file.i, align 4
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %f_inode.i.i, align 8
  %8 = ptrtoint ptr %fl_file1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fl_file1.i, align 4
  %f_inode.i33.i = getelementptr inbounds %struct.file, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %f_inode.i33.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %f_inode.i33.i, align 8
  %cmp.i = icmp eq ptr %7, %11
  br i1 %cmp.i, label %land.lhs.true.i, label %for.body.nlm_compare_locks.exit_crit_edge

for.body.nlm_compare_locks.exit_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %nlm_compare_locks.exit

land.lhs.true.i:                                  ; preds = %for.body
  %fl_pid.i = getelementptr inbounds %struct.nlm_rqst, ptr %3, i32 0, i32 3, i32 1, i32 5, i32 8
  %12 = ptrtoint ptr %fl_pid.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fl_pid.i, align 8
  %14 = ptrtoint ptr %fl_pid3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fl_pid3.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp4.i = icmp eq i32 %13, %15
  br i1 %cmp4.i, label %land.lhs.true5.i, label %land.lhs.true.i.nlm_compare_locks.exit_crit_edge

land.lhs.true.i.nlm_compare_locks.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nlm_compare_locks.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %fl_owner.i = getelementptr inbounds %struct.nlm_rqst, ptr %3, i32 0, i32 3, i32 1, i32 5, i32 5
  %16 = ptrtoint ptr %fl_owner.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fl_owner.i, align 4
  %18 = ptrtoint ptr %fl_owner6.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fl_owner6.i, align 4
  %cmp7.i = icmp eq ptr %17, %19
  br i1 %cmp7.i, label %land.lhs.true8.i, label %land.lhs.true5.i.nlm_compare_locks.exit_crit_edge

land.lhs.true5.i.nlm_compare_locks.exit_crit_edge: ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nlm_compare_locks.exit

land.lhs.true8.i:                                 ; preds = %land.lhs.true5.i
  %fl_start.i = getelementptr inbounds %struct.nlm_rqst, ptr %3, i32 0, i32 3, i32 1, i32 5, i32 12
  %20 = ptrtoint ptr %fl_start.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %fl_start.i, align 8
  %22 = ptrtoint ptr %fl_start9.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %fl_start9.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %21, i64 %23)
  %cmp10.i = icmp eq i64 %21, %23
  br i1 %cmp10.i, label %land.lhs.true11.i, label %land.lhs.true8.i.nlm_compare_locks.exit_crit_edge

land.lhs.true8.i.nlm_compare_locks.exit_crit_edge: ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nlm_compare_locks.exit

land.lhs.true11.i:                                ; preds = %land.lhs.true8.i
  %fl_end.i = getelementptr inbounds %struct.nlm_rqst, ptr %3, i32 0, i32 3, i32 1, i32 5, i32 13
  %24 = ptrtoint ptr %fl_end.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %fl_end.i, align 8
  %26 = ptrtoint ptr %fl_end12.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %fl_end12.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %25, i64 %27)
  %cmp13.i = icmp eq i64 %25, %27
  br i1 %cmp13.i, label %land.rhs.i, label %land.lhs.true11.i.nlm_compare_locks.exit_crit_edge

land.lhs.true11.i.nlm_compare_locks.exit_crit_edge: ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nlm_compare_locks.exit

land.rhs.i:                                       ; preds = %land.lhs.true11.i
  %fl_type.i = getelementptr inbounds %struct.nlm_rqst, ptr %3, i32 0, i32 3, i32 1, i32 5, i32 7
  %28 = ptrtoint ptr %fl_type.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %fl_type.i, align 4
  %30 = ptrtoint ptr %fl_type14.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %fl_type14.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %29, i8 %31)
  %cmp16.i = icmp eq i8 %29, %31
  br i1 %cmp16.i, label %land.rhs.i.if.then12_crit_edge, label %lor.rhs.i

land.rhs.i.if.then12_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12

lor.rhs.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %31)
  %cmp20.i = icmp eq i8 %31, 2
  %phi.cast.i = zext i1 %cmp20.i to i32
  br label %nlm_compare_locks.exit

nlm_compare_locks.exit:                           ; preds = %lor.rhs.i, %land.lhs.true11.i.nlm_compare_locks.exit_crit_edge, %land.lhs.true8.i.nlm_compare_locks.exit_crit_edge, %land.lhs.true5.i.nlm_compare_locks.exit_crit_edge, %land.lhs.true.i.nlm_compare_locks.exit_crit_edge, %for.body.nlm_compare_locks.exit_crit_edge
  %32 = phi i32 [ 0, %land.lhs.true11.i.nlm_compare_locks.exit_crit_edge ], [ 0, %land.lhs.true8.i.nlm_compare_locks.exit_crit_edge ], [ 0, %land.lhs.true5.i.nlm_compare_locks.exit_crit_edge ], [ 0, %land.lhs.true.i.nlm_compare_locks.exit_crit_edge ], [ 0, %for.body.nlm_compare_locks.exit_crit_edge ], [ %phi.cast.i, %lor.rhs.i ]
  %tobool11.not = icmp eq i32 %32, 0
  br i1 %tobool11.not, label %nlm_compare_locks.exit.for.cond_crit_edge, label %nlm_compare_locks.exit.if.then12_crit_edge

nlm_compare_locks.exit.if.then12_crit_edge:       ; preds = %nlm_compare_locks.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12

nlm_compare_locks.exit.for.cond_crit_edge:        ; preds = %nlm_compare_locks.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

if.then12:                                        ; preds = %nlm_compare_locks.exit.if.then12_crit_edge, %land.rhs.i.if.then12_crit_edge
  %block.0.le = getelementptr i8, ptr %.pn, i32 -4
  tail call fastcc void @nlmsvc_insert_block_locked(ptr noundef %block.0.le, i32 noundef 0)
  tail call void @_raw_spin_unlock(ptr noundef nonnull @nlm_blocked_lock) #10
  %b_daemon = getelementptr i8, ptr %.pn, i32 20
  %33 = ptrtoint ptr %b_daemon to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %b_daemon, align 4
  tail call void @svc_wake_up(ptr noundef %34) #10
  br label %cleanup

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock(ptr noundef nonnull @nlm_blocked_lock) #10
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50) #13
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nlmsvc_grant_deferred(ptr nocapture noundef readonly %fl, i32 noundef %result) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @nlm_blocked_lock) #10
  %fl_file1.i = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 11
  %fl_pid3.i = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 8
  %fl_owner6.i = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 5
  %fl_start9.i = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 12
  %fl_end12.i = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 13
  %fl_type14.i = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 7
  br label %for.cond

for.cond:                                         ; preds = %nlm_compare_locks.exit.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ @nlm_blocked, %entry ], [ %.pn, %nlm_compare_locks.exit.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, @nlm_blocked
  br i1 %cmp.not, label %do.end34, label %for.body

for.body:                                         ; preds = %for.cond
  %b_call = getelementptr i8, ptr %.pn, i32 16
  %1 = ptrtoint ptr %b_call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %b_call, align 4
  %fl_file.i = getelementptr inbounds %struct.nlm_rqst, ptr %2, i32 0, i32 3, i32 1, i32 5, i32 11
  %3 = ptrtoint ptr %fl_file.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fl_file.i, align 4
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %f_inode.i.i, align 8
  %7 = ptrtoint ptr %fl_file1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fl_file1.i, align 4
  %f_inode.i33.i = getelementptr inbounds %struct.file, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %f_inode.i33.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %f_inode.i33.i, align 8
  %cmp.i = icmp eq ptr %6, %10
  br i1 %cmp.i, label %land.lhs.true.i, label %for.body.nlm_compare_locks.exit_crit_edge

for.body.nlm_compare_locks.exit_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %nlm_compare_locks.exit

land.lhs.true.i:                                  ; preds = %for.body
  %fl_pid.i = getelementptr inbounds %struct.nlm_rqst, ptr %2, i32 0, i32 3, i32 1, i32 5, i32 8
  %11 = ptrtoint ptr %fl_pid.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fl_pid.i, align 8
  %13 = ptrtoint ptr %fl_pid3.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fl_pid3.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp4.i = icmp eq i32 %12, %14
  br i1 %cmp4.i, label %land.lhs.true5.i, label %land.lhs.true.i.nlm_compare_locks.exit_crit_edge

land.lhs.true.i.nlm_compare_locks.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nlm_compare_locks.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %fl_owner.i = getelementptr inbounds %struct.nlm_rqst, ptr %2, i32 0, i32 3, i32 1, i32 5, i32 5
  %15 = ptrtoint ptr %fl_owner.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fl_owner.i, align 4
  %17 = ptrtoint ptr %fl_owner6.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fl_owner6.i, align 4
  %cmp7.i = icmp eq ptr %16, %18
  br i1 %cmp7.i, label %land.lhs.true8.i, label %land.lhs.true5.i.nlm_compare_locks.exit_crit_edge

land.lhs.true5.i.nlm_compare_locks.exit_crit_edge: ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nlm_compare_locks.exit

land.lhs.true8.i:                                 ; preds = %land.lhs.true5.i
  %fl_start.i = getelementptr inbounds %struct.nlm_rqst, ptr %2, i32 0, i32 3, i32 1, i32 5, i32 12
  %19 = ptrtoint ptr %fl_start.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %fl_start.i, align 8
  %21 = ptrtoint ptr %fl_start9.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %fl_start9.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %20, i64 %22)
  %cmp10.i = icmp eq i64 %20, %22
  br i1 %cmp10.i, label %land.lhs.true11.i, label %land.lhs.true8.i.nlm_compare_locks.exit_crit_edge

land.lhs.true8.i.nlm_compare_locks.exit_crit_edge: ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nlm_compare_locks.exit

land.lhs.true11.i:                                ; preds = %land.lhs.true8.i
  %fl_end.i = getelementptr inbounds %struct.nlm_rqst, ptr %2, i32 0, i32 3, i32 1, i32 5, i32 13
  %23 = ptrtoint ptr %fl_end.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %fl_end.i, align 8
  %25 = ptrtoint ptr %fl_end12.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %fl_end12.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %24, i64 %26)
  %cmp13.i = icmp eq i64 %24, %26
  br i1 %cmp13.i, label %land.rhs.i, label %land.lhs.true11.i.nlm_compare_locks.exit_crit_edge

land.lhs.true11.i.nlm_compare_locks.exit_crit_edge: ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nlm_compare_locks.exit

land.rhs.i:                                       ; preds = %land.lhs.true11.i
  %fl_type.i = getelementptr inbounds %struct.nlm_rqst, ptr %2, i32 0, i32 3, i32 1, i32 5, i32 7
  %27 = ptrtoint ptr %fl_type.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %fl_type.i, align 4
  %29 = ptrtoint ptr %fl_type14.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %fl_type14.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %28, i8 %30)
  %cmp16.i = icmp eq i8 %28, %30
  br i1 %cmp16.i, label %land.rhs.i.do.body_crit_edge, label %lor.rhs.i

land.rhs.i.do.body_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

lor.rhs.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %30)
  %cmp20.i = icmp eq i8 %30, 2
  %phi.cast.i = zext i1 %cmp20.i to i32
  br label %nlm_compare_locks.exit

nlm_compare_locks.exit:                           ; preds = %lor.rhs.i, %land.lhs.true11.i.nlm_compare_locks.exit_crit_edge, %land.lhs.true8.i.nlm_compare_locks.exit_crit_edge, %land.lhs.true5.i.nlm_compare_locks.exit_crit_edge, %land.lhs.true.i.nlm_compare_locks.exit_crit_edge, %for.body.nlm_compare_locks.exit_crit_edge
  %31 = phi i32 [ 0, %land.lhs.true11.i.nlm_compare_locks.exit_crit_edge ], [ 0, %land.lhs.true8.i.nlm_compare_locks.exit_crit_edge ], [ 0, %land.lhs.true5.i.nlm_compare_locks.exit_crit_edge ], [ 0, %land.lhs.true.i.nlm_compare_locks.exit_crit_edge ], [ 0, %for.body.nlm_compare_locks.exit_crit_edge ], [ %phi.cast.i, %lor.rhs.i ]
  %tobool.not = icmp eq i32 %31, 0
  br i1 %tobool.not, label %nlm_compare_locks.exit.for.cond_crit_edge, label %nlm_compare_locks.exit.do.body_crit_edge

nlm_compare_locks.exit.do.body_crit_edge:         ; preds = %nlm_compare_locks.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

nlm_compare_locks.exit.for.cond_crit_edge:        ; preds = %nlm_compare_locks.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

do.body:                                          ; preds = %nlm_compare_locks.exit.do.body_crit_edge, %land.rhs.i.do.body_crit_edge
  %block.0.le = getelementptr i8, ptr %.pn, i32 -4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %32 = load i32, ptr @nlm_debug, align 4
  %and = and i32 %32, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %do.body.do.end11_crit_edge, label %do.end, !prof !168

do.body.do.end11_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end11

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %b_flags = getelementptr i8, ptr %.pn, i32 52
  %33 = ptrtoint ptr %b_flags to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %b_flags, align 4
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %block.0.le, i32 noundef %34) #13
  br label %do.end11

do.end11:                                         ; preds = %do.end, %do.body.do.end11_crit_edge
  %b_flags12 = getelementptr i8, ptr %.pn, i32 52
  %35 = ptrtoint ptr %b_flags12 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %b_flags12, align 4
  %and13 = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %do.end11
  %and17 = and i32 %36, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end20, label %if.then15.for.end.thread_crit_edge

if.then15.for.end.thread_crit_edge:               ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.thread

if.end20:                                         ; preds = %if.then15
  %37 = ptrtoint ptr %b_flags12 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %b_flags12, align 4
  %or.i = or i32 %38, 2
  store i32 %or.i, ptr %b_flags12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result)
  %cmp.i50 = icmp eq i32 %result, 0
  br i1 %cmp.i50, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %b_granted.i = getelementptr i8, ptr %.pn, i32 36
  %39 = ptrtoint ptr %b_granted.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %b_granted.i, align 4
  br label %if.end24

if.else.i:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %or2.i = or i32 %38, 6
  %40 = ptrtoint ptr %b_flags12 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %or2.i, ptr %b_flags12, align 4
  br label %if.end24

if.else:                                          ; preds = %do.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result)
  %cmp21 = icmp eq i32 %result, 0
  br i1 %cmp21, label %if.then22, label %if.else.if.end24_crit_edge

if.else.if.end24_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then22:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %b_granted = getelementptr i8, ptr %.pn, i32 36
  %41 = ptrtoint ptr %b_granted to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %b_granted, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.else.if.end24_crit_edge, %if.else.i, %if.then.i
  tail call fastcc void @nlmsvc_insert_block_locked(ptr noundef %block.0.le, i32 noundef 0)
  %b_daemon = getelementptr i8, ptr %.pn, i32 20
  %42 = ptrtoint ptr %b_daemon to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %b_daemon, align 4
  tail call void @svc_wake_up(ptr noundef %43) #10
  br label %for.end.thread

for.end.thread:                                   ; preds = %if.end24, %if.then15.for.end.thread_crit_edge
  %rc.0.ph = phi i32 [ -37, %if.then15.for.end.thread_crit_edge ], [ 0, %if.end24 ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @nlm_blocked_lock) #10
  br label %if.end37

do.end34:                                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock(ptr noundef nonnull @nlm_blocked_lock) #10
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55) #13
  br label %if.end37

if.end37:                                         ; preds = %do.end34, %for.end.thread
  %rc.053 = phi i32 [ %rc.0.ph, %for.end.thread ], [ -2, %do.end34 ]
  ret i32 %rc.053
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nlmsvc_grant_reply(ptr nocapture noundef readonly %cookie, i32 noundef %status) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %0 = load i32, ptr @nlm_debug, align 4
  %and = and i32 %0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end, !prof !168

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cookie, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %2, i32 noundef %status) #13
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %len1.i.i = getelementptr inbounds %struct.nlm_cookie, ptr %cookie, i32 0, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %nlm_cookie_match.exit.i.for.cond.i_crit_edge, %do.end5
  %.pn.in.i = phi ptr [ @nlm_blocked, %do.end5 ], [ %.pn.i, %nlm_cookie_match.exit.i.for.cond.i_crit_edge ]
  %3 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @nlm_blocked
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %b_call.i = getelementptr i8, ptr %.pn.i, i32 16
  %4 = ptrtoint ptr %b_call.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b_call.i, align 4
  %len.i.i = getelementptr inbounds %struct.nlm_rqst, ptr %5, i32 0, i32 3, i32 0, i32 1
  %6 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len.i.i, align 4
  %8 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp.not.i.i = icmp eq i32 %7, %9
  br i1 %cmp.not.i.i, label %if.end.i.i, label %for.body.i.nlm_cookie_match.exit.i_crit_edge

for.body.i.nlm_cookie_match.exit.i_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nlm_cookie_match.exit.i

if.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %a_args.i = getelementptr inbounds %struct.nlm_rqst, ptr %5, i32 0, i32 3
  %bcmp.i.i = tail call i32 @bcmp(ptr %a_args.i, ptr %cookie, i32 %7) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool.not.i.i = icmp eq i32 %bcmp.i.i, 0
  %..i.i = zext i1 %tobool.not.i.i to i32
  br label %nlm_cookie_match.exit.i

nlm_cookie_match.exit.i:                          ; preds = %if.end.i.i, %for.body.i.nlm_cookie_match.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %for.body.i.nlm_cookie_match.exit.i_crit_edge ], [ %..i.i, %if.end.i.i ]
  %tobool.not.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool.not.i, label %nlm_cookie_match.exit.i.for.cond.i_crit_edge, label %do.body.i

nlm_cookie_match.exit.i.for.cond.i_crit_edge:     ; preds = %nlm_cookie_match.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

do.body.i:                                        ; preds = %nlm_cookie_match.exit.i
  %block.0.le.i = getelementptr i8, ptr %.pn.i, i32 -4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %10 = load i32, ptr @nlm_debug, align 4
  %and.i = and i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool6.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool6.not.i, label %do.body.i.do.end17.i_crit_edge, label %do.end.i, !prof !168

do.body.i.do.end17.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end17.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @nlmdbg_cookie2a(ptr noundef %cookie) #10
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull @nlmdbg_cookie2a.buf, ptr noundef %block.0.le.i) #13
  br label %do.end17.i

do.end17.i:                                       ; preds = %do.end.i, %do.body.i.do.end17.i_crit_edge
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %block.0.le.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %block.0.le.i, i32 1, i32 3, i32 1) #10
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %block.0.le.i, ptr %block.0.le.i, i32 1, ptr elementtype(i32) %block.0.le.i) #10, !srcloc !166
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %do.end17.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !167

do.end17.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %do.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %do.end17.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %12 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %.not.i.i.i.i.i = icmp sgt i32 %12, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.nlmsvc_find_block.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !168

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.nlmsvc_find_block.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nlmsvc_find_block.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %do.end17.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %do.end17.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %block.0.le.i, i32 noundef %.sink.i.i.i.i.i) #10
  br label %nlmsvc_find_block.exit

nlmsvc_find_block.exit:                           ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.nlmsvc_find_block.exit_crit_edge
  %tobool7.not = icmp eq ptr %block.0.le.i, null
  br i1 %tobool7.not, label %nlmsvc_find_block.exit.cleanup_crit_edge, label %if.end9

nlmsvc_find_block.exit.cleanup_crit_edge:         ; preds = %nlmsvc_find_block.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %nlmsvc_find_block.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %status)
  %cmp = icmp eq i32 %status, 4
  br i1 %cmp, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_lock(ptr noundef nonnull @nlm_blocked_lock) #10
  tail call fastcc void @nlmsvc_insert_block_locked(ptr noundef nonnull %block.0.le.i, i32 noundef 1000) #10
  tail call void @_raw_spin_unlock(ptr noundef nonnull @nlm_blocked_lock) #10
  br label %if.end12

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %call11 = tail call fastcc i32 @nlmsvc_unlink_block(ptr noundef nonnull %block.0.le.i)
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then10
  tail call fastcc void @nlmsvc_release_block(ptr noundef nonnull %block.0.le.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %nlmsvc_find_block.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nlmsvc_retry_blocked() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @nlm_blocked_lock) #10
  %0 = load volatile ptr, ptr @nlm_blocked, align 4
  %cmp.i.not59 = icmp eq ptr %0, @nlm_blocked
  br i1 %cmp.i.not59, label %entry.while.end_crit_edge, label %entry.land.rhs_crit_edge

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs:                                         ; preds = %if.end42.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %call1 = tail call zeroext i1 @kthread_should_stop() #10
  br i1 %call1, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %1 = load ptr, ptr @nlm_blocked, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -4
  %b_when = getelementptr i8, ptr %1, i32 28
  %2 = ptrtoint ptr %b_when to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %b_when, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp = icmp eq i32 %3, -1
  br i1 %cmp, label %while.body.while.end_crit_edge, label %if.end

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end:                                           ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %4, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp3 = icmp slt i32 %sub, 0
  br i1 %cmp3, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %sub6 = sub i32 %3, %5
  br label %while.end

if.end7:                                          ; preds = %if.end
  tail call void @_raw_spin_unlock(ptr noundef nonnull @nlm_blocked_lock) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %6 = load i32, ptr @nlm_debug, align 4
  %and = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.end7.do.end19_crit_edge, label %do.end, !prof !168

if.end7.do.end19_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end19

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %b_when to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %b_when, align 4
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %add.ptr, i32 noundef %8) #13
  br label %do.end19

do.end19:                                         ; preds = %do.end, %if.end7.do.end19_crit_edge
  %b_flags = getelementptr i8, ptr %1, i32 52
  %9 = ptrtoint ptr %b_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %b_flags, align 4
  %and20 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.else, label %do.body23

do.body23:                                        ; preds = %do.end19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %11 = load i32, ptr @nlm_debug, align 4
  %and24 = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %do.body23.do.end41_crit_edge, label %do.end35, !prof !168

do.body23.do.end41_crit_edge:                     ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end41

do.end35:                                         ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #12
  %b_granted = getelementptr i8, ptr %1, i32 36
  %12 = ptrtoint ptr %b_granted to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %b_granted, align 4
  %conv = zext i8 %13 to i32
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %add.ptr, i32 noundef %conv, i32 noundef %10) #13
  br label %do.end41

do.end41:                                         ; preds = %do.end35, %do.body23.do.end41_crit_edge
  %14 = ptrtoint ptr %b_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %b_flags, align 4
  %and.i = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.end41.if.end.i_crit_edge

do.end41.if.end.i_crit_edge:                      ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #12
  %or.i = or i32 %15, 4
  %16 = ptrtoint ptr %b_flags to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or.i, ptr %b_flags, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %do.end41.if.end.i_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull @nlm_blocked_lock) #10
  tail call fastcc void @nlmsvc_insert_block_locked(ptr noundef %add.ptr, i32 noundef 700) #10
  tail call void @_raw_spin_unlock(ptr noundef nonnull @nlm_blocked_lock) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %17 = load i32, ptr @nlm_debug, align 4
  %and2.i = and i32 %17, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.end.i.do.end10.i_crit_edge, label %do.end.i, !prof !168

if.end.i.do.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %b_flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %b_flags, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef %add.ptr, i32 noundef %19) #13
  br label %do.end10.i

do.end10.i:                                       ; preds = %do.end.i, %if.end.i.do.end10.i_crit_edge
  %b_deferred_req.i = getelementptr i8, ptr %1, i32 48
  %20 = ptrtoint ptr %b_deferred_req.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %b_deferred_req.i, align 4
  %tobool11.not.i = icmp eq ptr %21, null
  br i1 %tobool11.not.i, label %do.end10.i.if.end42_crit_edge, label %if.then12.i

do.end10.i.if.end42_crit_edge:                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.then12.i:                                      ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  %revisit.i = getelementptr inbounds %struct.cache_deferred_req, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %revisit.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %revisit.i, align 4
  tail call void %23(ptr noundef nonnull %21, i32 noundef 0) #10
  %24 = ptrtoint ptr %b_deferred_req.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %b_deferred_req.i, align 4
  br label %if.end42

if.else:                                          ; preds = %do.end19
  %b_file.i = getelementptr i8, ptr %1, i32 40
  %25 = ptrtoint ptr %b_file.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %b_file.i, align 4
  %b_call.i = getelementptr i8, ptr %1, i32 16
  %27 = ptrtoint ptr %b_call.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %b_call.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %29 = load i32, ptr @nlm_debug, align 4
  %and.i53 = and i32 %29, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i53)
  %tobool.not.i54 = icmp eq i32 %and.i53, 0
  br i1 %tobool.not.i54, label %if.else.do.end6.i_crit_edge, label %do.end.i56, !prof !168

if.else.do.end6.i_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end6.i

do.end.i56:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %call.i55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %add.ptr) #13
  br label %do.end6.i

do.end6.i:                                        ; preds = %do.end.i56, %if.else.do.end6.i_crit_edge
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %add.ptr, i32 1, i32 3, i32 1) #10
  %30 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %add.ptr, ptr %add.ptr, i32 1, ptr elementtype(i32) %add.ptr) #10, !srcloc !166
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %do.end6.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !167

do.end6.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %do.end6.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %31 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %31)
  %.not.i.i.i.i.i = icmp sgt i32 %31, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.kref_get.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !168

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.kref_get.exit.i_crit_edge:      ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_get.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %do.end6.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %do.end6.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %add.ptr, i32 noundef %.sink.i.i.i.i.i) #10
  br label %kref_get.exit.i

kref_get.exit.i:                                  ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.kref_get.exit.i_crit_edge
  %call7.i = tail call fastcc i32 @nlmsvc_unlink_block(ptr noundef %add.ptr) #10
  %b_granted.i = getelementptr i8, ptr %1, i32 36
  %32 = ptrtoint ptr %b_granted.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %b_granted.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool8.not.i = icmp eq i8 %33, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %if.then9.i

if.then9.i:                                       ; preds = %kref_get.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %b_host.i = getelementptr i8, ptr %1, i32 24
  %34 = ptrtoint ptr %b_host.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %b_host.i, align 4
  tail call void @nlm_rebind_host(ptr noundef %35) #10
  br label %do.body49.i

if.end10.i:                                       ; preds = %kref_get.exit.i
  %fl.i = getelementptr inbounds %struct.nlm_rqst, ptr %28, i32 0, i32 3, i32 1, i32 5
  %fl_flags.i = getelementptr inbounds %struct.nlm_rqst, ptr %28, i32 0, i32 3, i32 1, i32 5, i32 6
  %36 = ptrtoint ptr %fl_flags.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %fl_flags.i, align 8
  %or.i57 = or i32 %37, 128
  store i32 %or.i57, ptr %fl_flags.i, align 8
  %fl_start12.i = getelementptr inbounds %struct.nlm_rqst, ptr %28, i32 0, i32 3, i32 1, i32 5, i32 12
  %38 = ptrtoint ptr %fl_start12.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %fl_start12.i, align 8
  %fl_end14.i = getelementptr inbounds %struct.nlm_rqst, ptr %28, i32 0, i32 3, i32 1, i32 5, i32 13
  %40 = ptrtoint ptr %fl_end14.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %fl_end14.i, align 8
  %call16.i = tail call i32 @lock_to_openmode(ptr noundef %fl.i) #10
  %arrayidx.i = getelementptr %struct.nlm_file, ptr %26, i32 0, i32 2, i32 %call16.i
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i, align 4
  %call18.i = tail call i32 @vfs_lock_file(ptr noundef %43, i32 noundef 6, ptr noundef %fl.i, ptr noundef null) #10
  %44 = ptrtoint ptr %fl_flags.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %fl_flags.i, align 8
  %and21.i = and i32 %45, -129
  store i32 %and21.i, ptr %fl_flags.i, align 8
  %46 = ptrtoint ptr %fl_start12.i to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %39, ptr %fl_start12.i, align 8
  %47 = ptrtoint ptr %fl_end14.i to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %41, ptr %fl_end14.i, align 8
  %48 = zext i32 %call18.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %call18.i, label %do.end46.i [
    i32 0, label %if.end10.i.do.body49.i_crit_edge
    i32 1, label %do.body26.i
  ]

if.end10.i.do.body49.i_crit_edge:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body49.i

do.body26.i:                                      ; preds = %if.end10.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %49 = load i32, ptr @nlm_debug, align 4
  %and27.i = and i32 %49, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %do.body26.i.do.end43.i_crit_edge, label %do.end38.i, !prof !168

do.body26.i.do.end43.i_crit_edge:                 ; preds = %do.body26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end43.i

do.end38.i:                                       ; preds = %do.body26.i
  call void @__sanitizer_cov_trace_pc() #12
  %call40.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, i32 noundef 1) #13
  br label %do.end43.i

do.end43.i:                                       ; preds = %do.end38.i, %do.body26.i.do.end43.i_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull @nlm_blocked_lock) #10
  tail call fastcc void @nlmsvc_insert_block_locked(ptr noundef %add.ptr, i32 noundef -1) #10
  tail call void @_raw_spin_unlock(ptr noundef nonnull @nlm_blocked_lock) #10
  tail call fastcc void @nlmsvc_release_block(ptr noundef %add.ptr) #10
  br label %if.end42

do.end46.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i = sub i32 0, %call18.i
  %call48.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, i32 noundef %sub.i, ptr noundef nonnull @.str.63) #13
  tail call void @_raw_spin_lock(ptr noundef nonnull @nlm_blocked_lock) #10
  tail call fastcc void @nlmsvc_insert_block_locked(ptr noundef %add.ptr, i32 noundef 1000) #10
  tail call void @_raw_spin_unlock(ptr noundef nonnull @nlm_blocked_lock) #10
  tail call fastcc void @nlmsvc_release_block(ptr noundef %add.ptr) #10
  br label %if.end42

do.body49.i:                                      ; preds = %if.end10.i.do.body49.i_crit_edge, %if.then9.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %50 = load i32, ptr @nlm_debug, align 4
  %and50.i = and i32 %50, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50.i)
  %tobool51.not.i = icmp eq i32 %and50.i, 0
  br i1 %tobool51.not.i, label %do.body49.i.do.end66.i_crit_edge, label %do.end61.i, !prof !168

do.body49.i.do.end66.i_crit_edge:                 ; preds = %do.body49.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end66.i

do.end61.i:                                       ; preds = %do.body49.i
  call void @__sanitizer_cov_trace_pc() #12
  %call63.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71) #13
  br label %do.end66.i

do.end66.i:                                       ; preds = %do.end61.i, %do.body49.i.do.end66.i_crit_edge
  %51 = ptrtoint ptr %b_granted.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %b_granted.i, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @nlm_blocked_lock) #10
  tail call fastcc void @nlmsvc_insert_block_locked(ptr noundef %add.ptr, i32 noundef -1) #10
  tail call void @_raw_spin_unlock(ptr noundef nonnull @nlm_blocked_lock) #10
  %52 = ptrtoint ptr %b_call.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %b_call.i, align 4
  %call69.i = tail call i32 @nlm_async_call(ptr noundef %53, i32 noundef 10, ptr noundef nonnull @nlmsvc_grant_ops) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69.i)
  %cmp.i58 = icmp slt i32 %call69.i, 0
  br i1 %cmp.i58, label %if.then70.i, label %do.end66.i.if.end42_crit_edge

do.end66.i.if.end42_crit_edge:                    ; preds = %do.end66.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.then70.i:                                      ; preds = %do.end66.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_lock(ptr noundef nonnull @nlm_blocked_lock) #10
  tail call fastcc void @nlmsvc_insert_block_locked(ptr noundef %add.ptr, i32 noundef 1000) #10
  tail call void @_raw_spin_unlock(ptr noundef nonnull @nlm_blocked_lock) #10
  br label %if.end42

if.end42:                                         ; preds = %if.then70.i, %do.end66.i.if.end42_crit_edge, %do.end46.i, %do.end43.i, %if.then12.i, %do.end10.i.if.end42_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull @nlm_blocked_lock) #10
  %54 = load volatile ptr, ptr @nlm_blocked, align 4
  %cmp.i.not = icmp eq ptr %54, @nlm_blocked
  br i1 %cmp.i.not, label %if.end42.while.end_crit_edge, label %if.end42.land.rhs_crit_edge

if.end42.land.rhs_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

if.end42.while.end_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %if.end42.while.end_crit_edge, %if.then4, %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge, %entry.while.end_crit_edge
  %timeout.0 = phi i32 [ %sub6, %if.then4 ], [ 2147483647, %entry.while.end_crit_edge ], [ 2147483647, %if.end42.while.end_crit_edge ], [ 2147483647, %while.body.while.end_crit_edge ], [ 2147483647, %land.rhs.while.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @nlm_blocked_lock) #10
  ret i32 %timeout.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @locks_delete_block(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @refcount_dec_and_mutex_lock(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nlmsvc_release_call(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nlm_release_file(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @refcount_dec_and_lock(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nlmsvc_release_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nlm_get_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nlmdbg_cookie2a(ptr nocapture noundef readonly %cookie) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %len1 = getelementptr inbounds %struct.nlm_cookie, ptr %cookie, i32 0, i32 1
  %0 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp23.not = icmp eq i32 %1, 0
  br i1 %cmp23.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %if.end5.for.body_crit_edge, %entry.for.body_crit_edge
  %p.06 = phi ptr [ %add.ptr7, %if.end5.for.body_crit_edge ], [ @nlmdbg_cookie2a.buf, %entry.for.body_crit_edge ]
  %len.05 = phi i32 [ %sub, %if.end5.for.body_crit_edge ], [ 64, %entry.for.body_crit_edge ]
  %i.04 = phi i32 [ %inc, %if.end5.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.05)
  %cmp3 = icmp eq i32 %len.05, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %p.06, i32 -3
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 774778368, ptr %add.ptr, align 1
  br label %for.end

if.end5:                                          ; preds = %for.body
  %arrayidx = getelementptr [32 x i8], ptr %cookie, i32 0, i32 %i.04
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %call6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %p.06, ptr noundef nonnull @.str.40, i32 noundef %conv)
  %add.ptr7 = getelementptr i8, ptr %p.06, i32 2
  %sub = add nsw i32 %len.05, -2
  %inc = add nuw nsw i32 %i.04, 1
  %5 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len1, align 4
  %cmp2 = icmp ult i32 %inc, %6
  br i1 %cmp2, label %if.end5.for.body_crit_edge, label %if.end5.for.end_crit_edge

if.end5.for.end_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end5.for.body_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %if.end5.for.end_crit_edge, %if.then4, %entry.for.end_crit_edge
  %p.02 = phi ptr [ %p.06, %if.then4 ], [ @nlmdbg_cookie2a.buf, %entry.for.end_crit_edge ], [ %add.ptr7, %if.end5.for.end_crit_edge ]
  %7 = ptrtoint ptr %p.02 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %p.02, align 1
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nlm_alloc_call(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nlmclnt_next_cookie(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @locks_copy_lock(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nlmsvc_insert_block_locked(ptr noundef %block, i32 noundef %when) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %0 = load i32, ptr @nlm_debug, align 4
  %and = and i32 %0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end, !prof !168

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %block, i32 noundef %when) #13
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %b_list = getelementptr inbounds %struct.nlm_block, ptr %block, i32 0, i32 1
  %1 = ptrtoint ptr %b_list to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %b_list, align 4
  %cmp.i.not = icmp eq ptr %2, %b_list
  br i1 %cmp.i.not, label %if.then8, label %if.else

if.then8:                                         ; preds = %do.end5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %block, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %block, i32 1, i32 3, i32 1) #10
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %block, ptr %block, i32 1, ptr elementtype(i32) %block) #10, !srcloc !166
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then8.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !167

if.then8.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then8
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %4 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %.not.i.i.i.i = icmp sgt i32 %4, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end10_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !168

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end10_crit_edge:               ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then8.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then8.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %block, i32 noundef %.sink.i.i.i.i) #10
  br label %if.end10

if.else:                                          ; preds = %do.end5
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %b_list) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.else.list_del_init.exit_crit_edge

if.else.list_del_init.exit_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.nlm_block, ptr %block, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %b_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %b_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.else.list_del_init.exit_crit_edge
  %11 = ptrtoint ptr %b_list to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %b_list, ptr %b_list, align 4
  %prev.i3.i = getelementptr inbounds %struct.nlm_block, ptr %block, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %b_list, ptr %prev.i3.i, align 4
  br label %if.end10

if.end10:                                         ; preds = %list_del_init.exit, %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end10_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %when)
  %cmp.not = icmp eq i32 %when, -1
  br i1 %cmp.not, label %if.end10.if.end25_crit_edge, label %if.then11

if.end10.if.end25_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then11:                                        ; preds = %if.end10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %13, %when
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %add)
  %cmp12 = icmp eq i32 %add, -1
  %spec.select = select i1 %cmp12, i32 0, i32 %add
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.then11
  %pos.0.in = phi ptr [ @nlm_blocked, %if.then11 ], [ %pos.0, %for.body.for.cond_crit_edge ]
  %14 = ptrtoint ptr %pos.0.in to i32
  call void @__asan_load4_noabort(i32 %14)
  %pos.0 = load ptr, ptr %pos.0.in, align 4
  %cmp.i42.not = icmp eq ptr %pos.0, @nlm_blocked
  br i1 %cmp.i42.not, label %for.cond.if.end25_crit_edge, label %for.body

for.cond.if.end25_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

for.body:                                         ; preds = %for.cond
  %b_when = getelementptr i8, ptr %pos.0, i32 28
  %15 = ptrtoint ptr %b_when to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %b_when, align 4
  %sub = sub i32 %spec.select, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp20 = icmp slt i32 %sub, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %cmp22 = icmp eq i32 %16, -1
  %or.cond = or i1 %cmp22, %cmp20
  br i1 %or.cond, label %for.body.if.end25_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

for.body.if.end25_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.end25:                                         ; preds = %for.body.if.end25_crit_edge, %for.cond.if.end25_crit_edge, %if.end10.if.end25_crit_edge
  %pos.1 = phi ptr [ @nlm_blocked, %if.end10.if.end25_crit_edge ], [ @nlm_blocked, %for.cond.if.end25_crit_edge ], [ %pos.0, %for.body.if.end25_crit_edge ]
  %when.addr.1 = phi i32 [ -1, %if.end10.if.end25_crit_edge ], [ %spec.select, %for.body.if.end25_crit_edge ], [ %spec.select, %for.cond.if.end25_crit_edge ]
  %prev.i = getelementptr inbounds %struct.list_head, ptr %pos.1, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i, align 4
  %call.i.i44 = tail call zeroext i1 @__list_add_valid(ptr noundef %b_list, ptr noundef %18, ptr noundef %pos.1) #10
  br i1 %call.i.i44, label %if.end.i.i45, label %if.end25.list_add_tail.exit_crit_edge

if.end25.list_add_tail.exit_crit_edge:            ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i45:                                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %b_list, ptr %prev.i, align 4
  %20 = ptrtoint ptr %b_list to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %pos.1, ptr %b_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.nlm_block, ptr %block, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev3.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %b_list, ptr %18, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i45, %if.end25.list_add_tail.exit_crit_edge
  %b_when27 = getelementptr inbounds %struct.nlm_block, ptr %block, i32 0, i32 6
  %23 = ptrtoint ptr %b_when27 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %when.addr.1, ptr %b_when27, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_wake_up(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @nlm_rebind_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nlm_async_call(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nlmsvc_grant_callback(ptr nocapture noundef readonly %task, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %a_block = getelementptr inbounds %struct.nlm_rqst, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %a_block to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %a_block, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %2 = load i32, ptr @nlm_debug, align 4
  %and = and i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !168

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73) #13
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull @nlm_blocked_lock) #10
  %b_list = getelementptr inbounds %struct.nlm_block, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %b_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %b_list, align 4
  %cmp.i.not = icmp eq ptr %4, %b_list
  br i1 %cmp.i.not, label %do.end6.out_crit_edge, label %if.end10

do.end6.out_crit_edge:                            ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end10:                                         ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #12
  %tk_status = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 1
  %5 = ptrtoint ptr %tk_status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tk_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp slt i32 %6, 0
  %. = select i1 %cmp, i32 1000, i32 6000
  tail call fastcc void @nlmsvc_insert_block_locked(ptr noundef %1, i32 noundef %.)
  %b_daemon = getelementptr inbounds %struct.nlm_block, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %b_daemon to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %b_daemon, align 4
  tail call void @svc_wake_up(ptr noundef %8) #10
  br label %out

out:                                              ; preds = %if.end10, %do.end6.out_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @nlm_blocked_lock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nlmsvc_grant_release(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %a_block = getelementptr inbounds %struct.nlm_rqst, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %a_block to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %a_block, align 8
  tail call fastcc void @nlmsvc_release_block(ptr noundef %1)
  ret void
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 85)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 85)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !23, !25, !27, !28, !29, !31, !33, !34, !35, !36, !38, !39, !40, !41, !43, !45, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !67, !69, !70, !71, !72, !74, !75, !76, !78, !80, !82, !84, !86, !87, !88, !89, !91, !92, !93, !94, !96, !97, !98, !99, !101, !102, !103, !104, !106, !107, !108, !110, !111, !112, !113, !115, !116, !117, !119, !120, !121, !122, !124, !125, !127, !129, !130, !131, !132, !134, !135, !136, !137, !139, !140, !141, !143, !144, !145, !147, !148, !149, !151, !153, !154, !155}
!llvm.named.register.sp = !{!156}
!llvm.module.flags = !{!157, !158, !159, !160, !161, !162, !163, !164}
!llvm.ident = !{!165}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/lockd/svclock.c", i32 482, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @nlmsvc_lock._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @nlmsvc_lock._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/lockd/svclock.c", i32 510, i32 3}
!8 = !{ptr @nlmsvc_lock._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @nlmsvc_lock._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/lockd/svclock.c", i32 541, i32 2}
!12 = !{ptr @nlmsvc_lock._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @nlmsvc_lock._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/lockd/svclock.c", i32 578, i32 2}
!16 = !{ptr @nlmsvc_lock._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @nlmsvc_lock._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/lockd/svclock.c", i32 595, i32 2}
!20 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @nlmsvc_testlock._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @nlmsvc_testlock._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../fs/lockd/svclock.c", i32 615, i32 4}
!25 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/lockd/svclock.c", i32 626, i32 2}
!27 = !{ptr @nlmsvc_testlock._entry.14, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @nlmsvc_testlock._entry_ptr.16, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/lockd/svclock.c", i32 629, i32 21}
!31 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/lockd/svclock.c", i32 659, i32 2}
!33 = !{ptr @.str.19, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @nlmsvc_unlock._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @nlmsvc_unlock._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/lockd/svclock.c", i32 694, i32 2}
!38 = !{ptr @.str.21, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @nlmsvc_cancel_blocked._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @nlmsvc_cancel_blocked._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @nlmsvc_lock_operations, !42, !"nlmsvc_lock_operations", i1 false, i1 false}
!42 = !{!"../fs/lockd/svclock.c", i32 803, i32 38}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/lockd/svclock.c", i32 963, i32 2}
!45 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @nlmsvc_grant_reply._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @nlmsvc_grant_reply._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/lockd/svclock.c", i32 1021, i32 3}
!50 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @nlmsvc_retry_blocked._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @nlmsvc_retry_blocked._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/lockd/svclock.c", i32 1024, i32 4}
!55 = !{ptr @nlmsvc_retry_blocked._entry.26, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @nlmsvc_retry_blocked._entry_ptr.28, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/lockd/svclock.c", i32 277, i32 2}
!59 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @nlmsvc_unlink_block._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @nlmsvc_unlink_block._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/lockd/svclock.c", i32 290, i32 2}
!64 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @nlmsvc_free_block._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @nlmsvc_free_block._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/lockd/svclock.c", i32 151, i32 2}
!69 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @nlmsvc_lookup_block._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @nlmsvc_lookup_block._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/lockd/svclock.c", i32 157, i32 3}
!74 = !{ptr @nlmsvc_lookup_block._entry.35, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @nlmsvc_lookup_block._entry_ptr.37, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @nlmdbg_cookie2a.buf, !77, !"buf", i1 false, i1 false}
!77 = !{!"../fs/lockd/svclock.c", i32 65, i32 14}
!78 = distinct !{null, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../fs/lockd/svclock.c", i32 71, i32 10}
!80 = distinct !{null, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../fs/lockd/svclock.c", i32 74, i32 16}
!82 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../fs/lockd/svclock.c", i32 77, i32 14}
!84 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../fs/lockd/svclock.c", i32 244, i32 2}
!86 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @nlmsvc_create_block._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @nlmsvc_create_block._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.43, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../fs/lockd/svclock.c", i32 458, i32 2}
!91 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @nlmsvc_defer_lock_rqst._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @nlmsvc_defer_lock_rqst._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../fs/lockd/svclock.c", i32 96, i32 2}
!96 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @nlmsvc_insert_block_locked._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @nlmsvc_insert_block_locked._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.47, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../fs/lockd/svclock.c", i32 779, i32 2}
!101 = !{ptr @.str.48, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @nlmsvc_notify_blocked._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @nlmsvc_notify_blocked._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.50, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../fs/lockd/svclock.c", i32 790, i32 2}
!106 = !{ptr @nlmsvc_notify_blocked._entry.49, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @nlmsvc_notify_blocked._entry_ptr.51, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.52, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../fs/lockd/svclock.c", i32 744, i32 4}
!110 = !{ptr @.str.53, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @nlmsvc_grant_deferred._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @nlmsvc_grant_deferred._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.55, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../fs/lockd/svclock.c", i32 763, i32 3}
!115 = !{ptr @nlmsvc_grant_deferred._entry.54, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @nlmsvc_grant_deferred._entry_ptr.56, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.57, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../fs/lockd/svclock.c", i32 196, i32 2}
!119 = !{ptr @.str.58, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @nlmsvc_find_block._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @nlmsvc_find_block._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.59, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../fs/lockd/svclock.c", i32 56, i32 8}
!124 = !{ptr @nlm_blocked_lock, !123, !"nlm_blocked_lock", i1 false, i1 false}
!125 = !{ptr @nlm_blocked, !126, !"nlm_blocked", i1 false, i1 false}
!126 = !{!"../fs/lockd/svclock.c", i32 55, i32 8}
!127 = !{ptr @.str.60, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../fs/lockd/svclock.c", i32 991, i32 2}
!129 = !{ptr @.str.61, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @retry_deferred_block._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @retry_deferred_block._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.62, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../fs/lockd/svclock.c", i32 830, i32 2}
!134 = !{ptr @.str.63, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @nlmsvc_grant_blocked._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @nlmsvc_grant_blocked._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.65, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../fs/lockd/svclock.c", i32 862, i32 3}
!139 = !{ptr @nlmsvc_grant_blocked._entry.64, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @nlmsvc_grant_blocked._entry_ptr.66, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.68, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../fs/lockd/svclock.c", i32 867, i32 3}
!143 = !{ptr @nlmsvc_grant_blocked._entry.67, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @nlmsvc_grant_blocked._entry_ptr.69, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.71, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../fs/lockd/svclock.c", i32 876, i32 2}
!147 = !{ptr @nlmsvc_grant_blocked._entry.70, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @nlmsvc_grant_blocked._entry_ptr.72, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @nlmsvc_grant_ops, !150, !"nlmsvc_grant_ops", i1 false, i1 false}
!150 = !{!"../fs/lockd/svclock.c", i32 949, i32 34}
!151 = !{ptr @.str.73, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../fs/lockd/svclock.c", i32 909, i32 2}
!153 = !{ptr @.str.74, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @nlmsvc_grant_callback._entry, !152, !"_entry", i1 false, i1 false}
!155 = !{ptr @nlmsvc_grant_callback._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!156 = !{!"sp"}
!157 = !{i32 1, !"wchar_size", i32 2}
!158 = !{i32 1, !"min_enum_size", i32 4}
!159 = !{i32 8, !"branch-target-enforcement", i32 0}
!160 = !{i32 8, !"sign-return-address", i32 0}
!161 = !{i32 8, !"sign-return-address-all", i32 0}
!162 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!163 = !{i32 7, !"uwtable", i32 1}
!164 = !{i32 7, !"frame-pointer", i32 2}
!165 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!166 = !{i64 2148608015, i64 2148608047, i64 2148608076, i64 2148608110, i64 2148608141, i64 2148608164}
!167 = !{!"branch_weights", i32 1, i32 2000}
!168 = !{!"branch_weights", i32 2000, i32 1}
