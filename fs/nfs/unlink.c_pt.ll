; ModuleID = '/llk/IR_all_yes/fs/nfs/unlink.c_pt.bc'
source_filename = "../fs/nfs/unlink.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rpc_call_ops = type { ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.65 }
%struct.atomic_t = type { i32 }
%union.anon.65 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.rpc_message = type { ptr, ptr, ptr, ptr }
%struct.rpc_task_setup = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i8 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.161, %struct.list_head, %struct.list_head, %union.anon.162 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.159 }
%union.anon.159 = type { %struct.anon.160 }
%struct.anon.160 = type { %struct.spinlock, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%union.anon.161 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.anon.162 = type { %struct.hlist_node }
%struct.nfs_removeargs = type { %struct.nfs4_sequence_args, ptr, %struct.qstr }
%struct.nfs4_sequence_args = type { ptr, i8 }
%struct.nfs_unlinkdata = type { %struct.nfs_removeargs, %struct.nfs_removeres, ptr, %struct.wait_queue_head, ptr, %struct.nfs_fattr, i32 }
%struct.nfs_removeres = type { %struct.nfs4_sequence_res, ptr, ptr, %struct.nfs4_change_info }
%struct.nfs4_sequence_res = type { ptr, i32, i32, i32, i32, i32 }
%struct.nfs4_change_info = type { i32, i64, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.nfs_fattr = type { i32, i16, i32, %struct.kuid_t, %struct.kgid_t, i32, i64, %union.anon.144, %struct.nfs_fsid, i64, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64, i64, %struct.timespec64, %struct.timespec64, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.144 = type { %struct.anon.146 }
%struct.anon.146 = type { i64 }
%struct.nfs_fsid = type { i64, i64 }
%struct.timespec64 = type { i64, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.155, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.156, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.157, ptr, %struct.address_space, %struct.list_head, %union.anon.158, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.155 = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.156 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.157 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.158 = type { ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.nfs_client = type { %struct.refcount_struct, %struct.atomic_t, i32, i32, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32, i32, i32, ptr, %struct.list_head, i64, %struct.nfs4_verifier, i32, %struct.spinlock, i32, i32, %struct.delayed_work, %struct.rpc_wait_queue, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i8, ptr, ptr, ptr, i32, %struct.wait_queue_head, [48 x i8], ptr, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__kernel_sockaddr_storage = type { %union.anon.138 }
%union.anon.138 = type { ptr, [124 x i8] }
%struct.nfs4_verifier = type { [8 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.nfs_rpc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nfs_server = type { ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nfs_fsid, i64, %struct.timespec64, i32, ptr, i32, %struct.nfs_auth_info, ptr, ptr, i32, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, %struct.rpc_wait_queue, ptr, %struct.rb_root, %struct.ida, %struct.ida, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, ptr, %struct.atomic_t, %struct.__kernel_sockaddr_storage, i32, i32, i16, i16, %struct.rpc_wait_queue, i32, ptr, i8 }
%struct.nfs_auth_info = type { i32, [12 x i32] }
%struct.ida = type { %struct.xarray }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.28 }
%struct.llist_node = type { ptr }
%union.anon.28 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.35 }
%union.anon.35 = type { %struct.anon.36 }
%struct.anon.36 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.57 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.40 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.40 = type { %struct.callback_head }
%struct.nfs_renamedata = type { %struct.nfs_renameargs, %struct.nfs_renameres, ptr, ptr, ptr, %struct.nfs_fattr, ptr, ptr, %struct.nfs_fattr, ptr, i32, i8 }
%struct.nfs_renameargs = type { %struct.nfs4_sequence_args, ptr, ptr, ptr, ptr }
%struct.nfs_renameres = type { %struct.nfs4_sequence_res, ptr, %struct.nfs4_change_info, ptr, %struct.nfs4_change_info, ptr }
%struct.nfs_iostats = type { [8 x i64], [5 x i64], [27 x i32], [44 x i8] }
%struct.rpc_task = type { %struct.atomic_t, i32, %struct.list_head, ptr, ptr, i32, i32, ptr, %union.anon.140, i32, %struct.rpc_message, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i16, i16, i16, i8 }
%union.anon.140 = type { %struct.work_struct }

@nfs_rename_ops = internal constant { %struct.rpc_call_ops, [16 x i8] } { %struct.rpc_call_ops { ptr @nfs_rename_prepare, ptr @nfs_async_rename_done, ptr null, ptr @nfs_async_rename_release }, [16 x i8] zeroinitializer }, align 32
@nfsiod_workqueue = external dso_local local_unnamed_addr global ptr, align 4
@nfs_sillyrename.sillycounter = internal global { i32, [28 x i8] } zeroinitializer, align 32
@nfs_debug = external dso_local local_unnamed_addr global i32, align 4
@nfs_sillyrename._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 442, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"NFS: silly-rename(%pd2, ct=%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nfs_sillyrename\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/nfs/unlink.c\00", [16 x i8] zeroinitializer }, align 32
@nfs_sillyrename._entry_ptr = internal global ptr @nfs_sillyrename._entry, section ".printk_index", align 4
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c".nfs%0*llx%0*x\00", [17 x i8] zeroinitializer }, align 32
@nfs_sillyrename._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 464, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"NFS: trying to rename %pd to %s\0A\00", [63 x i8] zeroinitializer }, align 32
@nfs_sillyrename._entry_ptr.6 = internal global ptr @nfs_sillyrename._entry.4, section ".printk_index", align 4
@nfs_unlink_ops = internal constant { %struct.rpc_call_ops, [16 x i8] } { %struct.rpc_call_ops { ptr @nfs_unlink_prepare, ptr @nfs_async_unlink_done, ptr null, ptr @nfs_async_unlink_release }, [16 x i8] zeroinitializer }, align 32
@__tracepoint_nfs_sillyrename_unlink = external dso_local global %struct.tracepoint, align 4
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs/nfs/nfstrace.h\00", [46 x i8] zeroinitializer }, align 32
@trace_nfs_sillyrename_unlink.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/cred.h\00", [43 x i8] zeroinitializer }, align 32
@__tracepoint_nfs_sillyrename_rename = external dso_local global %struct.tracepoint, align 4
@trace_nfs_sillyrename_rename.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@nfs_async_unlink.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&data->wq\00", [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@___asan_gen_.12 = private unnamed_addr constant [15 x i8] c"nfs_rename_ops\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 316, i32 34 }
@___asan_gen_.15 = private unnamed_addr constant [13 x i8] c"sillycounter\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 433, i32 22 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 441, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 459, i32 5 }
@___asan_gen_.33 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 463, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant [15 x i8] c"nfs_unlink_ops\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 83, i32 34 }
@___asan_gen_.46 = private unnamed_addr constant [21 x i8] c"../fs/nfs/nfstrace.h\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 781, i32 1 }
@___asan_gen_.49 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 108, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant [24 x i8] c"../include/linux/cred.h\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 286, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.57 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.58 = private constant [19 x i8] c"../fs/nfs/unlink.c\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 183, i32 2 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @nfs_sillyrename._entry, ptr @nfs_sillyrename._entry.4, ptr @nfs_sillyrename._entry_ptr, ptr @nfs_sillyrename._entry_ptr.6, ptr @nfs_rename_ops, ptr @nfs_sillyrename.sillycounter, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @nfs_unlink_ops, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @nfs_async_unlink.__key, ptr @.str.11], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_rename_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_sillyrename.sillycounter to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_sillyrename._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_sillyrename._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_unlink_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_async_unlink.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs_complete_unlink(ptr noundef %dentry, ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  %msg.i.i = alloca %struct.rpc_message, align 4
  %task_setup_data.i.i = alloca %struct.rpc_task_setup, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %d_lockref = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %d_lockref) #8
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dentry, align 8
  %and = and i32 %1, -4097
  store i32 %and, ptr %dentry, align 8
  %d_fsdata = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %2 = ptrtoint ptr %d_fsdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_fsdata, align 4
  store ptr null, ptr %d_fsdata, align 4
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref) #8
  %flags.i = getelementptr i8, ptr %inode, i32 -308
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags.i, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %d_parent.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 3
  %7 = ptrtoint ptr %d_parent.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %d_parent.i, align 8
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %d_inode.i.i, align 8
  %rmdir_sem.i = getelementptr i8, ptr %10, i32 -252
  tail call void @down_read_non_owner(ptr noundef %rmdir_sem.i) #8
  %11 = ptrtoint ptr %d_parent.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %d_parent.i, align 8
  %name.i = getelementptr inbounds %struct.nfs_removeargs, ptr %3, i32 0, i32 2
  %wq.i = getelementptr inbounds %struct.nfs_unlinkdata, ptr %3, i32 0, i32 3
  %call3.i = tail call ptr @d_alloc_parallel(ptr noundef %12, ptr noundef %name.i, ptr noundef %wq.i) #8
  %cmp.i.i = icmp ugt ptr %call3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %nfs_call_unlink.exit.thread, label %if.end.i

nfs_call_unlink.exit.thread:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @up_read_non_owner(ptr noundef %rmdir_sem.i) #8
  br label %if.then

if.end.i:                                         ; preds = %lor.lhs.false
  %13 = ptrtoint ptr %call3.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %call3.i, align 8
  %and.i.i = and i32 %14, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then8.i, label %if.end19.i

if.then8.i:                                       ; preds = %if.end.i
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %call3.i, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %d_lockref.i) #8
  %d_inode.i40.i = getelementptr inbounds %struct.dentry, ptr %call3.i, i32 0, i32 5
  %15 = ptrtoint ptr %d_inode.i40.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %d_inode.i40.i, align 8
  %cmp.i41.not.i = icmp eq ptr %16, null
  br i1 %cmp.i41.not.i, label %if.then.critedge, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then8.i
  %17 = ptrtoint ptr %call3.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %call3.i, align 8
  %and.i = and i32 %18, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool10.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool10.not.i, label %if.then11.i, label %if.then.critedge18

if.then11.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %call3.i, i32 0, i32 11
  %19 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %d_fsdata.i, align 4
  store ptr %3, ptr %d_fsdata.i, align 4
  %or.i = or i32 %18, 4096
  %21 = ptrtoint ptr %call3.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or.i, ptr %call3.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref.i) #8
  tail call void @dput(ptr noundef %call3.i) #8
  tail call void @up_read_non_owner(ptr noundef %rmdir_sem.i) #8
  tail call void @kfree(ptr noundef %20) #8
  br label %if.end

if.end19.i:                                       ; preds = %if.end.i
  %dentry20.i = getelementptr inbounds %struct.nfs_unlinkdata, ptr %3, i32 0, i32 2
  %22 = ptrtoint ptr %dentry20.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call3.i, ptr %dentry20.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg.i.i) #8
  %23 = getelementptr inbounds %struct.rpc_message, ptr %msg.i.i, i32 0, i32 1
  %24 = getelementptr inbounds %struct.rpc_message, ptr %msg.i.i, i32 0, i32 2
  %25 = getelementptr inbounds %struct.rpc_message, ptr %msg.i.i, i32 0, i32 3
  %26 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %msg.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %3, ptr %23, align 4
  %res.i.i = getelementptr inbounds %struct.nfs_unlinkdata, ptr %3, i32 0, i32 1
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %res.i.i, ptr %24, align 4
  %cred.i.i = getelementptr inbounds %struct.nfs_unlinkdata, ptr %3, i32 0, i32 4
  %29 = ptrtoint ptr %cred.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cred.i.i, align 8
  %31 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %25, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %task_setup_data.i.i) #8
  %32 = getelementptr inbounds i8, ptr %task_setup_data.i.i, i32 32
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -2147417857, ptr %32, align 4, !annotation !48
  %rpc_client.i.i = getelementptr inbounds %struct.rpc_task_setup, ptr %task_setup_data.i.i, i32 0, i32 1
  %rpc_message.i.i = getelementptr inbounds %struct.rpc_task_setup, ptr %task_setup_data.i.i, i32 0, i32 4
  %34 = call ptr @memset(ptr %task_setup_data.i.i, i32 0, i32 16)
  %35 = ptrtoint ptr %rpc_message.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %msg.i.i, ptr %rpc_message.i.i, align 4
  %callback_ops.i.i = getelementptr inbounds %struct.rpc_task_setup, ptr %task_setup_data.i.i, i32 0, i32 5
  %36 = ptrtoint ptr %callback_ops.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @nfs_unlink_ops, ptr %callback_ops.i.i, align 4
  %callback_data.i.i = getelementptr inbounds %struct.rpc_task_setup, ptr %task_setup_data.i.i, i32 0, i32 6
  %37 = ptrtoint ptr %callback_data.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %3, ptr %callback_data.i.i, align 4
  %workqueue.i.i = getelementptr inbounds %struct.rpc_task_setup, ptr %task_setup_data.i.i, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsiod_workqueue to i32))
  %38 = load ptr, ptr @nfsiod_workqueue, align 4
  %39 = ptrtoint ptr %workqueue.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %workqueue.i.i, align 4
  %d_parent.i.i = getelementptr inbounds %struct.dentry, ptr %call3.i, i32 0, i32 3
  %40 = ptrtoint ptr %d_parent.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %d_parent.i.i, align 8
  %d_inode.i.i.i = getelementptr inbounds %struct.dentry, ptr %41, i32 0, i32 5
  %42 = ptrtoint ptr %d_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %d_inode.i.i.i, align 8
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %43, i32 0, i32 8
  %44 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %i_sb.i.i, align 4
  %call2.i.i = call zeroext i1 @nfs_sb_active(ptr noundef %45) #8
  %fh.i.i.i = getelementptr i8, ptr %43, i32 -440
  %fh.i.i = getelementptr inbounds %struct.nfs_removeargs, ptr %3, i32 0, i32 1
  %46 = ptrtoint ptr %fh.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %fh.i.i.i, ptr %fh.i.i, align 8
  %dir_attr.i.i = getelementptr inbounds %struct.nfs_unlinkdata, ptr %3, i32 0, i32 1, i32 2
  %47 = ptrtoint ptr %dir_attr.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dir_attr.i.i, align 4
  call void @nfs_fattr_init(ptr noundef %48) #8
  %49 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %50, i32 0, i32 33
  %51 = ptrtoint ptr %s_fs_info.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %s_fs_info.i.i.i.i.i, align 16
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 8
  %rpc_ops.i.i.i = getelementptr inbounds %struct.nfs_client, ptr %54, i32 0, i32 12
  %55 = ptrtoint ptr %rpc_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %rpc_ops.i.i.i, align 4
  %unlink_setup.i.i = getelementptr inbounds %struct.nfs_rpc_ops, ptr %56, i32 0, i32 17
  %57 = ptrtoint ptr %unlink_setup.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %unlink_setup.i.i, align 4
  %59 = ptrtoint ptr %dentry20.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dentry20.i, align 8
  call void %58(ptr noundef nonnull %msg.i.i, ptr noundef %60, ptr noundef %inode) #8
  %61 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i24.i.i = getelementptr inbounds %struct.super_block, ptr %62, i32 0, i32 33
  %63 = ptrtoint ptr %s_fs_info.i.i.i24.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %s_fs_info.i.i.i24.i.i, align 16
  %client.i.i.i = getelementptr inbounds %struct.nfs_server, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %client.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %client.i.i.i, align 4
  %67 = ptrtoint ptr %rpc_client.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %66, ptr %rpc_client.i.i, align 4
  %call10.i.i = call ptr @rpc_run_task(ptr noundef nonnull %task_setup_data.i.i) #8
  %cmp.i.i.i = icmp ugt ptr %call10.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.end19.i.nfs_call_unlink.exit.thread15_crit_edge, label %if.then.i.i

if.end19.i.nfs_call_unlink.exit.thread15_crit_edge: ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nfs_call_unlink.exit.thread15

if.then.i.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @rpc_put_task_async(ptr noundef %call10.i.i) #8
  br label %nfs_call_unlink.exit.thread15

nfs_call_unlink.exit.thread15:                    ; preds = %if.then.i.i, %if.end19.i.nfs_call_unlink.exit.thread15_crit_edge
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %task_setup_data.i.i) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg.i.i) #8
  br label %if.end

if.then.critedge:                                 ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref.i) #8
  tail call void @dput(ptr noundef %call3.i) #8
  tail call void @up_read_non_owner(ptr noundef %rmdir_sem.i) #8
  tail call void @kfree(ptr noundef null) #8
  br label %if.then

if.then.critedge18:                               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref.i) #8
  tail call void @dput(ptr noundef %call3.i) #8
  tail call void @up_read_non_owner(ptr noundef %rmdir_sem.i) #8
  tail call void @kfree(ptr noundef null) #8
  br label %if.then

if.then:                                          ; preds = %if.then.critedge18, %if.then.critedge, %nfs_call_unlink.exit.thread, %entry.if.then_crit_edge
  tail call fastcc void @nfs_free_unlinkdata(ptr noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %nfs_call_unlink.exit.thread15, %if.then11.i
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nfs_free_unlinkdata(ptr noundef %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cred = getelementptr inbounds %struct.nfs_unlinkdata, ptr %data, i32 0, i32 4
  %0 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cred, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.put_cred.exit_crit_edge, label %do.body.i

entry.put_cred.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_cred.exit

do.body.i:                                        ; preds = %entry
  %call.i.i = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %1) #8
  br i1 %call.i.i, label %if.then.i.i, label %do.body.i.__validate_creds.exit.i_crit_edge, !prof !49

do.body.i.__validate_creds.exit.i_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__validate_creds.exit.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__invalid_creds(ptr noundef nonnull %1, ptr noundef nonnull @.str.10, i32 noundef 286) #8
  br label %__validate_creds.exit.i

__validate_creds.exit.i:                          ; preds = %if.then.i.i, %do.body.i.__validate_creds.exit.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %1, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !50
  tail call void @llvm.prefetch.p0(ptr nonnull %1, i32 1, i32 3, i32 1) #8
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %1, ptr nonnull %1, i32 1, ptr nonnull elementtype(i32) %1) #8, !srcloc !51
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then1.i, label %__validate_creds.exit.i.put_cred.exit_crit_edge

__validate_creds.exit.i.put_cred.exit_crit_edge:  ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_cred.exit

if.then1.i:                                       ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__put_cred(ptr noundef nonnull %1) #8
  br label %put_cred.exit

put_cred.exit:                                    ; preds = %if.then1.i, %__validate_creds.exit.i.put_cred.exit_crit_edge, %entry.put_cred.exit_crit_edge
  %name1 = getelementptr inbounds %struct.nfs_removeargs, ptr %data, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name1, align 8
  tail call void @kfree(ptr noundef %4) #8
  tail call void @kfree(ptr noundef %data) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfs_async_rename(ptr noundef %old_dir, ptr noundef %new_dir, ptr noundef %old_dentry, ptr noundef %new_dentry, ptr noundef %complete) local_unnamed_addr #0 align 64 {
entry:
  %msg = alloca %struct.rpc_message, align 4
  %task_setup_data = alloca %struct.rpc_task_setup, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg) #8
  %0 = call ptr @memset(ptr %msg, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %task_setup_data) #8
  %1 = getelementptr inbounds i8, ptr %task_setup_data, i32 32
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !48
  %3 = ptrtoint ptr %task_setup_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %task_setup_data, align 4
  %rpc_client = getelementptr inbounds %struct.rpc_task_setup, ptr %task_setup_data, i32 0, i32 1
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %old_dir, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %client.i = getelementptr inbounds %struct.nfs_server, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %client.i, align 4
  %10 = ptrtoint ptr %rpc_client to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %rpc_client, align 4
  %rpc_xprt = getelementptr inbounds %struct.rpc_task_setup, ptr %task_setup_data, i32 0, i32 2
  %11 = ptrtoint ptr %rpc_xprt to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %rpc_xprt, align 4
  %rpc_op_cred = getelementptr inbounds %struct.rpc_task_setup, ptr %task_setup_data, i32 0, i32 3
  %12 = ptrtoint ptr %rpc_op_cred to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %rpc_op_cred, align 4
  %rpc_message = getelementptr inbounds %struct.rpc_task_setup, ptr %task_setup_data, i32 0, i32 4
  %13 = ptrtoint ptr %rpc_message to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %msg, ptr %rpc_message, align 4
  %callback_ops = getelementptr inbounds %struct.rpc_task_setup, ptr %task_setup_data, i32 0, i32 5
  %14 = ptrtoint ptr %callback_ops to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @nfs_rename_ops, ptr %callback_ops, align 4
  %workqueue = getelementptr inbounds %struct.rpc_task_setup, ptr %task_setup_data, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsiod_workqueue to i32))
  %15 = load ptr, ptr @nfsiod_workqueue, align 4
  %16 = ptrtoint ptr %workqueue to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %workqueue, align 4
  %flags = getelementptr inbounds %struct.rpc_task_setup, ptr %task_setup_data, i32 0, i32 8
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 -32767, ptr %flags, align 4
  %priority = getelementptr inbounds %struct.rpc_task_setup, ptr %task_setup_data, i32 0, i32 9
  %18 = ptrtoint ptr %priority to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %priority, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3520, i32 noundef 560) #11
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %callback_data = getelementptr inbounds %struct.rpc_task_setup, ptr %task_setup_data, i32 0, i32 6
  %20 = ptrtoint ptr %callback_data to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i, ptr %callback_data, align 4
  %21 = call i32 @llvm.read_register.i32(metadata !38) #8
  %and.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i to ptr
  %task5 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %task5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task5, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 99
  %25 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cred, align 16
  %tobool.not.i = icmp eq ptr %26, null
  br i1 %tobool.not.i, label %if.end.get_cred.exit_crit_edge, label %do.body.i

if.end.get_cred.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_cred.exit

do.body.i:                                        ; preds = %if.end
  %call.i.i = call zeroext i1 @creds_are_invalid(ptr noundef nonnull %26) #8
  br i1 %call.i.i, label %if.then.i.i, label %do.body.i.__validate_creds.exit.i_crit_edge, !prof !49

do.body.i.__validate_creds.exit.i_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__validate_creds.exit.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__invalid_creds(ptr noundef nonnull %26, ptr noundef nonnull @.str.10, i32 noundef 253) #8
  br label %__validate_creds.exit.i

__validate_creds.exit.i:                          ; preds = %if.then.i.i, %do.body.i.__validate_creds.exit.i_crit_edge
  %27 = getelementptr inbounds %struct.cred, ptr %26, i32 0, i32 28
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %27, align 4
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %26, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr nonnull %26, i32 1, i32 3, i32 1) #8
  %29 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %26, ptr nonnull %26, i32 1, ptr nonnull elementtype(i32) %26) #8, !srcloc !53
  br label %get_cred.exit

get_cred.exit:                                    ; preds = %__validate_creds.exit.i, %if.end.get_cred.exit_crit_edge
  %cred7 = getelementptr inbounds %struct.nfs_renamedata, ptr %call7.i.i, i32 0, i32 2
  %30 = ptrtoint ptr %cred7 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %26, ptr %cred7, align 8
  %rpc_argp = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 1
  %31 = ptrtoint ptr %rpc_argp to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call7.i.i, ptr %rpc_argp, align 4
  %res = getelementptr inbounds %struct.nfs_renamedata, ptr %call7.i.i, i32 0, i32 1
  %rpc_resp = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 2
  %32 = ptrtoint ptr %rpc_resp to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %res, ptr %rpc_resp, align 4
  %rpc_cred = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 3
  %33 = ptrtoint ptr %rpc_cred to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %26, ptr %rpc_cred, align 4
  %old_dir9 = getelementptr inbounds %struct.nfs_renamedata, ptr %call7.i.i, i32 0, i32 3
  %34 = ptrtoint ptr %old_dir9 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %old_dir, ptr %old_dir9, align 4
  call void @ihold(ptr noundef %old_dir) #8
  %new_dir10 = getelementptr inbounds %struct.nfs_renamedata, ptr %call7.i.i, i32 0, i32 6
  %35 = ptrtoint ptr %new_dir10 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %new_dir, ptr %new_dir10, align 8
  call void @ihold(ptr noundef %new_dir) #8
  %tobool.not.i68 = icmp eq ptr %old_dentry, null
  br i1 %tobool.not.i68, label %get_cred.exit.dget.exit_crit_edge, label %if.then.i

get_cred.exit.dget.exit_crit_edge:                ; preds = %get_cred.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %dget.exit

if.then.i:                                        ; preds = %get_cred.exit
  call void @__sanitizer_cov_trace_pc() #10
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 7
  call void @lockref_get(ptr noundef %d_lockref.i) #8
  br label %dget.exit

dget.exit:                                        ; preds = %if.then.i, %get_cred.exit.dget.exit_crit_edge
  %old_dentry12 = getelementptr inbounds %struct.nfs_renamedata, ptr %call7.i.i, i32 0, i32 4
  %36 = ptrtoint ptr %old_dentry12 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %old_dentry, ptr %old_dentry12, align 8
  %tobool.not.i69 = icmp eq ptr %new_dentry, null
  br i1 %tobool.not.i69, label %dget.exit.dget.exit72_crit_edge, label %if.then.i71

dget.exit.dget.exit72_crit_edge:                  ; preds = %dget.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %dget.exit72

if.then.i71:                                      ; preds = %dget.exit
  call void @__sanitizer_cov_trace_pc() #10
  %d_lockref.i70 = getelementptr inbounds %struct.dentry, ptr %new_dentry, i32 0, i32 7
  call void @lockref_get(ptr noundef %d_lockref.i70) #8
  br label %dget.exit72

dget.exit72:                                      ; preds = %if.then.i71, %dget.exit.dget.exit72_crit_edge
  %new_dentry14 = getelementptr inbounds %struct.nfs_renamedata, ptr %call7.i.i, i32 0, i32 7
  %37 = ptrtoint ptr %new_dentry14 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %new_dentry, ptr %new_dentry14, align 4
  %old_fattr = getelementptr inbounds %struct.nfs_renamedata, ptr %call7.i.i, i32 0, i32 5
  call void @nfs_fattr_init(ptr noundef %old_fattr) #8
  %new_fattr = getelementptr inbounds %struct.nfs_renamedata, ptr %call7.i.i, i32 0, i32 8
  call void @nfs_fattr_init(ptr noundef %new_fattr) #8
  %complete15 = getelementptr inbounds %struct.nfs_renamedata, ptr %call7.i.i, i32 0, i32 9
  %38 = ptrtoint ptr %complete15 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %complete, ptr %complete15, align 8
  %fh.i = getelementptr i8, ptr %old_dir, i32 -440
  %old_dir18 = getelementptr inbounds %struct.nfs_renameargs, ptr %call7.i.i, i32 0, i32 1
  %39 = ptrtoint ptr %old_dir18 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %fh.i, ptr %old_dir18, align 8
  %d_name = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 4
  %old_name = getelementptr inbounds %struct.nfs_renameargs, ptr %call7.i.i, i32 0, i32 3
  %40 = ptrtoint ptr %old_name to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %d_name, ptr %old_name, align 8
  %fh.i73 = getelementptr i8, ptr %new_dir, i32 -440
  %new_dir22 = getelementptr inbounds %struct.nfs_renameargs, ptr %call7.i.i, i32 0, i32 2
  %41 = ptrtoint ptr %new_dir22 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %fh.i73, ptr %new_dir22, align 4
  %d_name23 = getelementptr inbounds %struct.dentry, ptr %new_dentry, i32 0, i32 4
  %new_name = getelementptr inbounds %struct.nfs_renameargs, ptr %call7.i.i, i32 0, i32 4
  %42 = ptrtoint ptr %new_name to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %d_name23, ptr %new_name, align 4
  %old_fattr27 = getelementptr inbounds %struct.nfs_renamedata, ptr %call7.i.i, i32 0, i32 1, i32 3
  %43 = ptrtoint ptr %old_fattr27 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %old_fattr, ptr %old_fattr27, align 8
  %new_fattr30 = getelementptr inbounds %struct.nfs_renamedata, ptr %call7.i.i, i32 0, i32 1, i32 5
  %44 = ptrtoint ptr %new_fattr30 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %new_fattr, ptr %new_fattr30, align 8
  %45 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %i_sb.i.i, align 4
  %call31 = call zeroext i1 @nfs_sb_active(ptr noundef %46) #8
  %47 = ptrtoint ptr %old_dir9 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %old_dir9, align 4
  %i_sb.i.i74 = getelementptr inbounds %struct.inode, ptr %48, i32 0, i32 8
  %49 = ptrtoint ptr %i_sb.i.i74 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %i_sb.i.i74, align 4
  %s_fs_info.i.i.i75 = getelementptr inbounds %struct.super_block, ptr %50, i32 0, i32 33
  %51 = ptrtoint ptr %s_fs_info.i.i.i75 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %s_fs_info.i.i.i75, align 16
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 8
  %rpc_ops.i = getelementptr inbounds %struct.nfs_client, ptr %54, i32 0, i32 12
  %55 = ptrtoint ptr %rpc_ops.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %rpc_ops.i, align 4
  %rename_setup = getelementptr inbounds %struct.nfs_rpc_ops, ptr %56, i32 0, i32 20
  %57 = ptrtoint ptr %rename_setup to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rename_setup, align 4
  call void %58(ptr noundef nonnull %msg, ptr noundef %old_dentry, ptr noundef %new_dentry) #8
  %call34 = call ptr @rpc_run_task(ptr noundef nonnull %task_setup_data) #8
  br label %cleanup

cleanup:                                          ; preds = %dget.exit72, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call34, %dget.exit72 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %task_setup_data) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg) #8
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ihold(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_fattr_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfs_sb_active(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpc_run_task(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs_sillyrename(ptr noundef %dir, ptr noundef %dentry) local_unnamed_addr #0 align 64 {
entry:
  %silly = alloca [29 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 29, ptr nonnull %silly) #8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = call ptr @memset(ptr %silly, i32 255, i32 29)
  %1 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %d_inode.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %3 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end, !prof !54

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %count.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 7, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count.i, align 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %dentry, i32 noundef %5) #12
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %10 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !55
  %io_stats.i.i = getelementptr inbounds %struct.nfs_server, ptr %9, i32 0, i32 6
  %11 = ptrtoint ptr %io_stats.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %io_stats.i.i, align 8
  %arrayidx.i.i = getelementptr %struct.nfs_iostats, ptr %12, i32 0, i32 2, i32 21
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  %14 = tail call i32 @llvm.read_register.i32(metadata !38) #8
  %and.i.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cpu.i.i, align 4
  %arrayidx13.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx13.i.i, align 4
  %add.i.i = add i32 %19, %13
  %20 = inttoptr i32 %add.i.i to ptr
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %add14.i.i = add i32 %22, 1
  store i32 %add14.i.i, ptr %20, align 4
  %23 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !56
  %and.i.i.i.i = and i32 %23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.end7.nfs_inc_stats.exit_crit_edge, !prof !49

do.end7.nfs_inc_stats.exit_crit_edge:             ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %nfs_inc_stats.exit

if.then.i.i:                                      ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %nfs_inc_stats.exit

nfs_inc_stats.exit:                               ; preds = %if.then.i.i, %do.end7.nfs_inc_stats.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %10) #8, !srcloc !57
  %24 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dentry, align 8
  %and8 = and i32 %25, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end11, label %nfs_inc_stats.exit.cleanup60_crit_edge

nfs_inc_stats.exit.cleanup60_crit_edge:           ; preds = %nfs_inc_stats.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup60

if.end11:                                         ; preds = %nfs_inc_stats.exit
  %26 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %d_inode.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %27, i32 -448
  %28 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %add.ptr.i.i, align 8
  %d_parent = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 3
  br label %do.body14

do.body14:                                        ; preds = %do.cond40.do.body14_crit_edge, %if.end11
  %sdentry.0 = phi ptr [ null, %if.end11 ], [ %call36, %do.cond40.do.body14_crit_edge ]
  call void @dput(ptr noundef %sdentry.0) #8
  %30 = load i32, ptr @nfs_sillyrename.sillycounter, align 4
  %inc = add i32 %30, 1
  store i32 %inc, ptr @nfs_sillyrename.sillycounter, align 4
  %call15 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %silly, i32 noundef 29, ptr noundef nonnull @.str.3, i32 noundef 16, i64 noundef %29, i32 noundef 8, i32 noundef %inc) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %31 = load i32, ptr @nfs_debug, align 4
  %and17 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %do.body14.do.end34_crit_edge, label %do.end28, !prof !54

do.body14.do.end34_crit_edge:                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end34

do.end28:                                         ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #10
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %dentry, ptr noundef nonnull %silly) #12
  br label %do.end34

do.end34:                                         ; preds = %do.end28, %do.body14.do.end34_crit_edge
  %32 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %d_parent, align 8
  %call36 = call ptr @lookup_one_len(ptr noundef nonnull %silly, ptr noundef %33, i32 noundef %call15) #8
  %cmp.i.not = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.not, label %do.end34.cleanup60_crit_edge, label %do.cond40

do.end34.cleanup60_crit_edge:                     ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup60

do.cond40:                                        ; preds = %do.end34
  %d_inode.i100 = getelementptr inbounds %struct.dentry, ptr %call36, i32 0, i32 5
  %34 = ptrtoint ptr %d_inode.i100 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %d_inode.i100, align 8
  %cmp.not = icmp eq ptr %35, null
  br i1 %cmp.not, label %do.end42, label %do.cond40.do.body14_crit_edge

do.cond40.do.body14_crit_edge:                    ; preds = %do.cond40
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body14

do.end42:                                         ; preds = %do.cond40
  call void @ihold(ptr noundef %2) #8
  %d_name = getelementptr inbounds %struct.dentry, ptr %call36, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %36 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %36, i32 noundef 3520, i32 noundef 360) #11
  %cmp.i101 = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.i101, label %do.end42.out_dput_crit_edge, label %if.end.i

do.end42.out_dput_crit_edge:                      ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_dput

if.end.i:                                         ; preds = %do.end42
  %name1.i = getelementptr inbounds %struct.dentry, ptr %call36, i32 0, i32 4, i32 1
  %37 = ptrtoint ptr %name1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %name1.i, align 8
  %call2.i = call noalias ptr @kstrdup(ptr noundef %38, i32 noundef 3264) #8
  %name4.i = getelementptr inbounds %struct.nfs_removeargs, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %39 = ptrtoint ptr %name4.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call2.i, ptr %name4.i, align 8
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %if.end.i.out_free.i_crit_edge, label %if.end9.i

if.end.i.out_free.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free.i

if.end9.i:                                        ; preds = %if.end.i
  %name3.i = getelementptr inbounds %struct.nfs_removeargs, ptr %call7.i.i.i, i32 0, i32 2
  %40 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %d_name, align 8
  %42 = ptrtoint ptr %name3.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %name3.i, align 8
  %43 = call i32 @llvm.read_register.i32(metadata !38) #8
  %and.i.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 99
  %47 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cred.i, align 16
  %tobool.not.i.i102 = icmp eq ptr %48, null
  br i1 %tobool.not.i.i102, label %if.end9.i.get_cred.exit.i_crit_edge, label %do.body.i.i

if.end9.i.get_cred.exit.i_crit_edge:              ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_cred.exit.i

do.body.i.i:                                      ; preds = %if.end9.i
  %call.i.i.i = call zeroext i1 @creds_are_invalid(ptr noundef nonnull %48) #8
  br i1 %call.i.i.i, label %if.then.i.i.i, label %do.body.i.i.__validate_creds.exit.i.i_crit_edge, !prof !49

do.body.i.i.__validate_creds.exit.i.i_crit_edge:  ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__validate_creds.exit.i.i

if.then.i.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__invalid_creds(ptr noundef nonnull %48, ptr noundef nonnull @.str.10, i32 noundef 253) #8
  br label %__validate_creds.exit.i.i

__validate_creds.exit.i.i:                        ; preds = %if.then.i.i.i, %do.body.i.i.__validate_creds.exit.i.i_crit_edge
  %49 = getelementptr inbounds %struct.cred, ptr %48, i32 0, i32 28
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %49, align 4
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %48, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr nonnull %48, i32 1, i32 3, i32 1) #8
  %51 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %48, ptr nonnull %48, i32 1, ptr nonnull elementtype(i32) %48) #8, !srcloc !53
  br label %get_cred.exit.i

get_cred.exit.i:                                  ; preds = %__validate_creds.exit.i.i, %if.end9.i.get_cred.exit.i_crit_edge
  %cred15.i = getelementptr inbounds %struct.nfs_unlinkdata, ptr %call7.i.i.i, i32 0, i32 4
  %52 = ptrtoint ptr %cred15.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %48, ptr %cred15.i, align 8
  %dir_attr.i = getelementptr inbounds %struct.nfs_unlinkdata, ptr %call7.i.i.i, i32 0, i32 5
  %dir_attr16.i = getelementptr inbounds %struct.nfs_unlinkdata, ptr %call7.i.i.i, i32 0, i32 1, i32 2
  %53 = ptrtoint ptr %dir_attr16.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %dir_attr.i, ptr %dir_attr16.i, align 4
  %wq.i = getelementptr inbounds %struct.nfs_unlinkdata, ptr %call7.i.i.i, i32 0, i32 3
  call void @__init_waitqueue_head(ptr noundef %wq.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @nfs_async_unlink.__key) #8
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 7
  call void @_raw_spin_lock(ptr noundef %d_lockref.i) #8
  %54 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %dentry, align 8
  %and.i = and i32 %55, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool20.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool20.not.i, label %if.end46, label %out_unlock.i

out_unlock.i:                                     ; preds = %get_cred.exit.i
  call void @_raw_spin_unlock(ptr noundef %d_lockref.i) #8
  %56 = ptrtoint ptr %cred15.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %cred15.i, align 8
  %tobool.not.i53.i = icmp eq ptr %57, null
  br i1 %tobool.not.i53.i, label %out_unlock.i.put_cred.exit.i_crit_edge, label %do.body.i55.i

out_unlock.i.put_cred.exit.i_crit_edge:           ; preds = %out_unlock.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_cred.exit.i

do.body.i55.i:                                    ; preds = %out_unlock.i
  %call.i.i54.i = call zeroext i1 @creds_are_invalid(ptr noundef nonnull %57) #8
  br i1 %call.i.i54.i, label %if.then.i.i56.i, label %do.body.i55.i.__validate_creds.exit.i57.i_crit_edge, !prof !49

do.body.i55.i.__validate_creds.exit.i57.i_crit_edge: ; preds = %do.body.i55.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__validate_creds.exit.i57.i

if.then.i.i56.i:                                  ; preds = %do.body.i55.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__invalid_creds(ptr noundef nonnull %57, ptr noundef nonnull @.str.10, i32 noundef 286) #8
  br label %__validate_creds.exit.i57.i

__validate_creds.exit.i57.i:                      ; preds = %if.then.i.i56.i, %do.body.i55.i.__validate_creds.exit.i57.i_crit_edge
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %57, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !50
  call void @llvm.prefetch.p0(ptr nonnull %57, i32 1, i32 3, i32 1) #8
  %58 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %57, ptr nonnull %57, i32 1, ptr nonnull elementtype(i32) %57) #8, !srcloc !51
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %58, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.then1.i.i, label %__validate_creds.exit.i57.i.put_cred.exit.i_crit_edge

__validate_creds.exit.i57.i.put_cred.exit.i_crit_edge: ; preds = %__validate_creds.exit.i57.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_cred.exit.i

if.then1.i.i:                                     ; preds = %__validate_creds.exit.i57.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__put_cred(ptr noundef nonnull %57) #8
  br label %put_cred.exit.i

put_cred.exit.i:                                  ; preds = %if.then1.i.i, %__validate_creds.exit.i57.i.put_cred.exit.i_crit_edge, %out_unlock.i.put_cred.exit.i_crit_edge
  %59 = ptrtoint ptr %name4.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %name4.i, align 8
  call void @kfree(ptr noundef %60) #8
  br label %out_free.i

out_free.i:                                       ; preds = %put_cred.exit.i, %if.end.i.out_free.i_crit_edge
  %status.0.i = phi i32 [ -16, %put_cred.exit.i ], [ -12, %if.end.i.out_free.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  br label %out_dput

if.end46:                                         ; preds = %get_cred.exit.i
  %or.i = or i32 %55, 4096
  %61 = ptrtoint ptr %dentry to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %or.i, ptr %dentry, align 8
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %62 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %d_fsdata.i, align 4
  store ptr %call7.i.i.i, ptr %d_fsdata.i, align 4
  call void @_raw_spin_unlock(ptr noundef %d_lockref.i) #8
  call void @kfree(ptr noundef %63) #8
  %call47 = call ptr @nfs_async_rename(ptr noundef %dir, ptr noundef %dir, ptr noundef %dentry, ptr noundef %call36, ptr noundef nonnull @nfs_complete_sillyrename)
  %cmp.i103 = icmp ugt ptr %call47, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i103, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.end46
  call void @_raw_spin_lock(ptr noundef %d_lockref.i) #8
  %64 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %dentry, align 8
  %and.i105 = and i32 %65, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i105)
  %tobool.not.i106 = icmp eq i32 %and.i105, 0
  br i1 %tobool.not.i106, label %if.end.i108, label %if.then.i

if.then.i:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #10
  %66 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %d_fsdata.i, align 4
  %and2.i = and i32 %65, -4097
  %68 = ptrtoint ptr %dentry to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %and2.i, ptr %dentry, align 8
  store ptr null, ptr %d_fsdata.i, align 4
  call void @_raw_spin_unlock(ptr noundef %d_lockref.i) #8
  call fastcc void @nfs_free_unlinkdata(ptr noundef %67) #8
  br label %out_dput

if.end.i108:                                      ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #10
  call void @_raw_spin_unlock(ptr noundef %d_lockref.i) #8
  br label %out_dput

if.end50:                                         ; preds = %if.end46
  %call.i = call i32 @__rpc_wait_for_completion_task(ptr noundef %call47, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp52 = icmp eq i32 %call.i, 0
  br i1 %cmp52, label %if.then53, label %if.end50.if.end54_crit_edge

if.end50.if.end54_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.then53:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  %tk_status = getelementptr inbounds %struct.rpc_task, ptr %call47, i32 0, i32 1
  %69 = ptrtoint ptr %tk_status to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %tk_status, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %if.end50.if.end54_crit_edge
  %error.0 = phi i32 [ %70, %if.then53 ], [ %call.i, %if.end50.if.end54_crit_edge ]
  %71 = zext i32 %error.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values)
  switch i32 %error.0, label %if.end54.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 -512, label %sw.bb59
  ]

if.end54.sw.epilog_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  %72 = getelementptr i8, ptr %dir, i32 -264
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %72, align 8
  call void @nfs_set_verifier(ptr noundef %dentry, i32 noundef %74) #8
  %i_lock = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 18
  call void @_raw_spin_lock(ptr noundef %i_lock) #8
  %call56 = call i32 @nfs_inc_attr_generation_counter() #8
  %attr_gencount = getelementptr i8, ptr %2, i32 -288
  %75 = ptrtoint ptr %attr_gencount to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %call56, ptr %attr_gencount, align 8
  call void @nfs_set_cache_invalid(ptr noundef %2, i32 noundef 832) #8
  call void @_raw_spin_unlock(ptr noundef %i_lock) #8
  call void @d_move(ptr noundef %dentry, ptr noundef %call36) #8
  br label %sw.epilog

sw.bb59:                                          ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  call void @d_drop(ptr noundef %dentry) #8
  call void @d_drop(ptr noundef %call36) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb59, %sw.bb, %if.end54.sw.epilog_crit_edge
  call void @rpc_put_task(ptr noundef %call47) #8
  br label %out_dput

out_dput:                                         ; preds = %sw.epilog, %if.end.i108, %if.then.i, %out_free.i, %do.end42.out_dput_crit_edge
  %error.1 = phi i32 [ %error.0, %sw.epilog ], [ -16, %if.then.i ], [ -16, %if.end.i108 ], [ %status.0.i, %out_free.i ], [ -12, %do.end42.out_dput_crit_edge ]
  call void @iput(ptr noundef %2) #8
  call void @dput(ptr noundef %call36) #8
  br label %cleanup60

cleanup60:                                        ; preds = %out_dput, %do.end34.cleanup60_crit_edge, %nfs_inc_stats.exit.cleanup60_crit_edge
  %retval.0 = phi i32 [ -16, %nfs_inc_stats.exit.cleanup60_crit_edge ], [ %error.1, %out_dput ], [ -16, %do.end34.cleanup60_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 29, ptr nonnull %silly) #8
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lookup_one_len(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs_complete_sillyrename(ptr nocapture noundef readonly %task, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tk_status = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 1
  %0 = ptrtoint ptr %tk_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tk_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %entry
  %old_dentry = getelementptr inbounds %struct.nfs_renamedata, ptr %data, i32 0, i32 4
  %2 = ptrtoint ptr %old_dentry to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %old_dentry, align 8
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %d_lockref.i) #8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %and.i = and i32 %5, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_fsdata.i, align 4
  %and2.i = and i32 %5, -4097
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and2.i, ptr %3, align 8
  store ptr null, ptr %d_fsdata.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref.i) #8
  tail call fastcc void @nfs_free_unlinkdata(ptr noundef %7) #8
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.then.i, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_set_verifier(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_inc_attr_generation_counter() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_set_cache_invalid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_move(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_drop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_put_task(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read_non_owner(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_alloc_parallel(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read_non_owner(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_put_task_async(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs_unlink_prepare(ptr noundef %task, ptr noundef %calldata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry = getelementptr inbounds %struct.nfs_unlinkdata, ptr %calldata, i32 0, i32 2
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry, align 8
  %d_parent = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_parent, align 8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode.i, align 8
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %rpc_ops.i = getelementptr inbounds %struct.nfs_client, ptr %11, i32 0, i32 12
  %12 = ptrtoint ptr %rpc_ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rpc_ops.i, align 4
  %unlink_rpc_prepare = getelementptr inbounds %struct.nfs_rpc_ops, ptr %13, i32 0, i32 18
  %14 = ptrtoint ptr %unlink_rpc_prepare to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %unlink_rpc_prepare, align 4
  tail call void %15(ptr noundef %task, ptr noundef %calldata) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs_async_unlink_done(ptr noundef %task, ptr noundef %calldata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry = getelementptr inbounds %struct.nfs_unlinkdata, ptr %calldata, i32 0, i32 2
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry, align 8
  %d_parent = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_parent, align 8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode.i, align 8
  %tk_status = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 1
  %6 = ptrtoint ptr %tk_status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tk_status, align 4
  tail call fastcc void @trace_nfs_sillyrename_unlink(ptr noundef %calldata, i32 noundef %7)
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %8 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 33
  %10 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %rpc_ops.i = getelementptr inbounds %struct.nfs_client, ptr %13, i32 0, i32 12
  %14 = ptrtoint ptr %rpc_ops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rpc_ops.i, align 4
  %unlink_done = getelementptr inbounds %struct.nfs_rpc_ops, ptr %15, i32 0, i32 19
  %16 = ptrtoint ptr %unlink_done to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %unlink_done, align 4
  %call2 = tail call i32 %17(ptr noundef %task, ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call i32 @rpc_restart_call_prepare(ptr noundef %task) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs_async_unlink_release(ptr noundef %calldata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry1 = getelementptr inbounds %struct.nfs_unlinkdata, ptr %calldata, i32 0, i32 2
  %0 = ptrtoint ptr %dentry1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry1, align 8
  %d_sb = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_sb, align 4
  %d_parent = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_parent, align 8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_inode.i, align 8
  %rmdir_sem = getelementptr i8, ptr %7, i32 -252
  tail call void @up_read_non_owner(ptr noundef %rmdir_sem) #8
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 8
  %and.i.i = and i32 %9, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %entry.d_lookup_done.exit_crit_edge, label %if.then.i, !prof !54

entry.d_lookup_done.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %d_lookup_done.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %d_lockref.i) #8
  tail call void @__d_lookup_done(ptr noundef %1) #8
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref.i) #8
  br label %d_lookup_done.exit

d_lookup_done.exit:                               ; preds = %if.then.i, %entry.d_lookup_done.exit_crit_edge
  tail call fastcc void @nfs_free_unlinkdata(ptr noundef %calldata)
  tail call void @dput(ptr noundef %1) #8
  tail call void @nfs_sb_deactive(ptr noundef %3) #8
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfs_sillyrename_unlink(ptr noundef %data, i32 noundef %error) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_sillyrename_unlink, i32 0, i32 1), ptr blockaddress(@trace_nfs_sillyrename_unlink, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !58

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !38) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !54

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !38) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !59
  %call42 = tail call i32 @__traceiter_nfs_sillyrename_unlink(ptr noundef null, ptr noundef %data, i32 noundef %error) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !60
  %13 = tail call i32 @llvm.read_register.i32(metadata !38) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !38) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !54

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !38) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !61
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_sillyrename_unlink, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_sillyrename_unlink, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nfs_sillyrename_unlink.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_nfs_sillyrename_unlink.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 814, ptr noundef nonnull @.str.8) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !62
  %31 = tail call i32 @llvm.read_register.i32(metadata !38) #8
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
declare dso_local i32 @rpc_restart_call_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs_sillyrename_unlink(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_sb_deactive(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__d_lookup_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_cred(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @creds_are_invalid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__invalid_creds(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs_rename_prepare(ptr noundef %task, ptr noundef %calldata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %old_dir = getelementptr inbounds %struct.nfs_renamedata, ptr %calldata, i32 0, i32 3
  %0 = ptrtoint ptr %old_dir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %old_dir, align 4
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %rpc_ops.i = getelementptr inbounds %struct.nfs_client, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %rpc_ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rpc_ops.i, align 4
  %rename_rpc_prepare = getelementptr inbounds %struct.nfs_rpc_ops, ptr %9, i32 0, i32 21
  %10 = ptrtoint ptr %rename_rpc_prepare to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rename_rpc_prepare, align 4
  tail call void %11(ptr noundef %task, ptr noundef %calldata) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs_async_rename_done(ptr noundef %task, ptr noundef %calldata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %old_dir1 = getelementptr inbounds %struct.nfs_renamedata, ptr %calldata, i32 0, i32 3
  %0 = ptrtoint ptr %old_dir1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %old_dir1, align 4
  %new_dir2 = getelementptr inbounds %struct.nfs_renamedata, ptr %calldata, i32 0, i32 6
  %2 = ptrtoint ptr %new_dir2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %new_dir2, align 8
  %old_dentry3 = getelementptr inbounds %struct.nfs_renamedata, ptr %calldata, i32 0, i32 4
  %4 = ptrtoint ptr %old_dentry3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %old_dentry3, align 8
  %new_dentry = getelementptr inbounds %struct.nfs_renamedata, ptr %calldata, i32 0, i32 7
  %6 = ptrtoint ptr %new_dentry to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %new_dentry, align 4
  %tk_status = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 1
  %8 = ptrtoint ptr %tk_status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tk_status, align 4
  tail call fastcc void @trace_nfs_sillyrename_rename(ptr noundef %1, ptr noundef %5, ptr noundef %3, ptr noundef %7, i32 noundef %9)
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 33
  %12 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %rpc_ops.i = getelementptr inbounds %struct.nfs_client, ptr %15, i32 0, i32 12
  %16 = ptrtoint ptr %rpc_ops.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rpc_ops.i, align 4
  %rename_done = getelementptr inbounds %struct.nfs_rpc_ops, ptr %17, i32 0, i32 22
  %18 = ptrtoint ptr %rename_done to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rename_done, align 4
  %call4 = tail call i32 %19(ptr noundef %task, ptr noundef %1, ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call i32 @rpc_restart_call_prepare(ptr noundef %task) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %complete = getelementptr inbounds %struct.nfs_renamedata, ptr %calldata, i32 0, i32 9
  %20 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %complete, align 8
  %tobool6.not = icmp eq ptr %21, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.then7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %21(ptr noundef %task, ptr noundef %calldata) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs_async_rename_release(ptr noundef %calldata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %old_dir = getelementptr inbounds %struct.nfs_renamedata, ptr %calldata, i32 0, i32 3
  %0 = ptrtoint ptr %old_dir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %old_dir, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %old_dentry = getelementptr inbounds %struct.nfs_renamedata, ptr %calldata, i32 0, i32 4
  %4 = ptrtoint ptr %old_dentry to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %old_dentry, align 8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_inode.i, align 8
  %cmp.i.not = icmp eq ptr %7, null
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %i_lock.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock.i) #8
  %cache_validity.i = getelementptr i8, ptr %7, i32 -304
  %8 = ptrtoint ptr %cache_validity.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cache_validity.i, align 8
  %or.i = or i32 %9, 824
  store i32 %or.i, ptr %cache_validity.i, align 8
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %7, align 8
  %12 = and i16 %11, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %12)
  %cmp.i38 = icmp eq i16 %12, 16384
  br i1 %cmp.i38, label %if.then.i, label %if.then.nfs_mark_for_revalidate.exit_crit_edge

if.then.nfs_mark_for_revalidate.exit_crit_edge:   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %nfs_mark_for_revalidate.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %or3.i = or i32 %9, 826
  %13 = ptrtoint ptr %cache_validity.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or3.i, ptr %cache_validity.i, align 8
  br label %nfs_mark_for_revalidate.exit

nfs_mark_for_revalidate.exit:                     ; preds = %if.then.i, %if.then.nfs_mark_for_revalidate.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %i_lock.i) #8
  br label %if.end

if.end:                                           ; preds = %nfs_mark_for_revalidate.exit, %entry.if.end_crit_edge
  %cancelled = getelementptr inbounds %struct.nfs_renamedata, ptr %calldata, i32 0, i32 11
  %14 = ptrtoint ptr %cancelled to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %cancelled, align 8, !range !63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  br i1 %tobool.not, label %if.end.if.end16_crit_edge, label %if.then3

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then3:                                         ; preds = %if.end
  %16 = ptrtoint ptr %old_dir to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %old_dir, align 4
  %i_lock = getelementptr inbounds %struct.inode, ptr %17, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #8
  %18 = ptrtoint ptr %old_dir to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %old_dir, align 4
  tail call void @nfs_force_lookup_revalidate(ptr noundef %19) #8
  %20 = ptrtoint ptr %old_dir to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %old_dir, align 4
  %i_lock7 = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 18
  tail call void @_raw_spin_unlock(ptr noundef %i_lock7) #8
  %new_dir = getelementptr inbounds %struct.nfs_renamedata, ptr %calldata, i32 0, i32 6
  %22 = ptrtoint ptr %new_dir to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %new_dir, align 8
  %24 = ptrtoint ptr %old_dir to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %old_dir, align 4
  %cmp.not = icmp eq ptr %23, %25
  br i1 %cmp.not, label %if.then3.if.end16_crit_edge, label %if.then9

if.then3.if.end16_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then9:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  %i_lock11 = getelementptr inbounds %struct.inode, ptr %23, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock11) #8
  %26 = ptrtoint ptr %new_dir to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %new_dir, align 8
  tail call void @nfs_force_lookup_revalidate(ptr noundef %27) #8
  %28 = ptrtoint ptr %new_dir to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %new_dir, align 8
  %i_lock14 = getelementptr inbounds %struct.inode, ptr %29, i32 0, i32 18
  tail call void @_raw_spin_unlock(ptr noundef %i_lock14) #8
  br label %if.end16

if.end16:                                         ; preds = %if.then9, %if.then3.if.end16_crit_edge, %if.end.if.end16_crit_edge
  %30 = ptrtoint ptr %old_dentry to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %old_dentry, align 8
  tail call void @dput(ptr noundef %31) #8
  %new_dentry = getelementptr inbounds %struct.nfs_renamedata, ptr %calldata, i32 0, i32 7
  %32 = ptrtoint ptr %new_dentry to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %new_dentry, align 4
  tail call void @dput(ptr noundef %33) #8
  %34 = ptrtoint ptr %old_dir to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %old_dir, align 4
  tail call void @iput(ptr noundef %35) #8
  %new_dir19 = getelementptr inbounds %struct.nfs_renamedata, ptr %calldata, i32 0, i32 6
  %36 = ptrtoint ptr %new_dir19 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %new_dir19, align 8
  tail call void @iput(ptr noundef %37) #8
  tail call void @nfs_sb_deactive(ptr noundef %3) #8
  %cred = getelementptr inbounds %struct.nfs_renamedata, ptr %calldata, i32 0, i32 2
  %38 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cred, align 8
  %tobool.not.i = icmp eq ptr %39, null
  br i1 %tobool.not.i, label %if.end16.put_cred.exit_crit_edge, label %do.body.i

if.end16.put_cred.exit_crit_edge:                 ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_cred.exit

do.body.i:                                        ; preds = %if.end16
  %call.i.i = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %39) #8
  br i1 %call.i.i, label %if.then.i.i, label %do.body.i.__validate_creds.exit.i_crit_edge, !prof !49

do.body.i.__validate_creds.exit.i_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__validate_creds.exit.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__invalid_creds(ptr noundef nonnull %39, ptr noundef nonnull @.str.10, i32 noundef 286) #8
  br label %__validate_creds.exit.i

__validate_creds.exit.i:                          ; preds = %if.then.i.i, %do.body.i.__validate_creds.exit.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %39, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !50
  tail call void @llvm.prefetch.p0(ptr nonnull %39, i32 1, i32 3, i32 1) #8
  %40 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %39, ptr nonnull %39, i32 1, ptr nonnull elementtype(i32) %39) #8, !srcloc !51
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %40, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then1.i, label %__validate_creds.exit.i.put_cred.exit_crit_edge

__validate_creds.exit.i.put_cred.exit_crit_edge:  ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_cred.exit

if.then1.i:                                       ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__put_cred(ptr noundef nonnull %39) #8
  br label %put_cred.exit

put_cred.exit:                                    ; preds = %if.then1.i, %__validate_creds.exit.i.put_cred.exit_crit_edge, %if.end16.put_cred.exit_crit_edge
  tail call void @kfree(ptr noundef %calldata) #8
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfs_sillyrename_rename(ptr noundef %old_dir, ptr noundef %old_dentry, ptr noundef %new_dir, ptr noundef %new_dentry, i32 noundef %error) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_sillyrename_rename, i32 0, i32 1), ptr blockaddress(@trace_nfs_sillyrename_rename, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !58

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !38) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !54

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !38) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !64
  %call42 = tail call i32 @__traceiter_nfs_sillyrename_rename(ptr noundef null, ptr noundef %old_dir, ptr noundef %old_dentry, ptr noundef %new_dir, ptr noundef %new_dentry, i32 noundef %error) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !65
  %13 = tail call i32 @llvm.read_register.i32(metadata !38) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !38) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !54

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !38) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !61
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_sillyrename_rename, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_sillyrename_rename, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nfs_sillyrename_rename.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_nfs_sillyrename_rename.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 779, ptr noundef nonnull @.str.8) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !62
  %31 = tail call i32 @llvm.read_register.i32(metadata !38) #8
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
declare dso_local i32 @__traceiter_nfs_sillyrename_rename(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_force_lookup_revalidate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockref_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__rpc_wait_for_completion_task(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !14, !15, !16, !18, !20, !21, !22, !23, !25, !26, !28, !30, !32, !33, !35, !37}
!llvm.named.register.sp = !{!38}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../fs/nfs/unlink.c", i32 352, i32 15}
!2 = !{ptr @nfs_sillyrename.sillycounter, !3, !"sillycounter", i1 false, i1 false}
!3 = !{!"../fs/nfs/unlink.c", i32 433, i32 22}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/nfs/unlink.c", i32 441, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @nfs_sillyrename._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @nfs_sillyrename._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/nfs/unlink.c", i32 459, i32 5}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/nfs/unlink.c", i32 463, i32 3}
!14 = !{ptr @nfs_sillyrename._entry.4, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @nfs_sillyrename._entry_ptr.6, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @nfs_unlink_ops, !17, !"nfs_unlink_ops", i1 false, i1 false}
!17 = !{!"../fs/nfs/unlink.c", i32 83, i32 34}
!18 = distinct !{null, !19, !"__already_done", i1 false, i1 false}
!19 = !{!"../fs/nfs/nfstrace.h", i32 781, i32 1}
!20 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!21 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!22 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!25 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../include/linux/cred.h", i32 286, i32 3}
!28 = !{ptr @nfs_rename_ops, !29, !"nfs_rename_ops", i1 false, i1 false}
!29 = !{!"../fs/nfs/unlink.c", i32 316, i32 34}
!30 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!31 = !{!"../fs/nfs/nfstrace.h", i32 779, i32 1}
!32 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!33 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!34 = !{!"../fs/nfs/unlink.c", i32 181, i32 15}
!35 = !{ptr @nfs_async_unlink.__key, !36, !"__key", i1 false, i1 false}
!36 = !{!"../fs/nfs/unlink.c", i32 183, i32 2}
!37 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!38 = !{!"sp"}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{!"auto-init"}
!49 = !{!"branch_weights", i32 1, i32 2000}
!50 = !{i64 2148681371}
!51 = !{i64 2148596080, i64 2148596112, i64 2148596141, i64 2148596175, i64 2148596206, i64 2148596229}
!52 = !{i64 2148681600}
!53 = !{i64 2148592895, i64 2148592921, i64 2148592950, i64 2148592984, i64 2148593015, i64 2148593038}
!54 = !{!"branch_weights", i32 2000, i32 1}
!55 = !{i64 997575, i64 997636}
!56 = !{i64 1000307}
!57 = !{i64 1000592}
!58 = !{i64 2148213621, i64 2148213626, i64 2148213639, i64 2148213683, i64 2148213717, i64 2148213738}
!59 = !{i64 2158925099}
!60 = !{i64 2158925328}
!61 = !{i64 2149938325}
!62 = !{i64 2149939361}
!63 = !{i8 0, i8 2}
!64 = !{i64 2158907361}
!65 = !{i64 2158907674}
