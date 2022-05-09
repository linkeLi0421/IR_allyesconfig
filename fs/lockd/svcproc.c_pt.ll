; ModuleID = '/llk/IR_all_yes/fs/lockd/svcproc.c_pt.bc'
source_filename = "../fs/lockd/svcproc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.svc_procedure = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_manager_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rpc_call_ops = type { ptr, ptr, ptr, ptr }
%struct.nlm_rqst = type { %struct.refcount_struct, i32, ptr, %struct.nlm_args, %struct.nlm_res, ptr, i32, [74 x i8], ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.nlm_args = type { %struct.nlm_cookie, %struct.nlm_lock, i32, i32, i32, i32, i32, i32 }
%struct.nlm_cookie = type { [32 x i8], i32 }
%struct.nlm_lock = type { ptr, i32, %struct.nfs_fh, %struct.xdr_netobj, i32, %struct.file_lock }
%struct.nfs_fh = type { i16, [128 x i8] }
%struct.xdr_netobj = type { i32, ptr }
%struct.file_lock = type { ptr, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, ptr, i32, i8, i32, i32, %struct.wait_queue_head, ptr, i64, i64, ptr, i32, i32, ptr, ptr, %union.anon.69 }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.anon.69 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, ptr, %struct.list_head }
%struct.nlm_res = type { %struct.nlm_cookie, i32, %struct.nlm_lock }
%struct.svc_rqst = type { %struct.list_head, %struct.callback_head, ptr, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, ptr, ptr, %struct.svc_cred, ptr, ptr, i32, %struct.xdr_buf, %struct.xdr_stream, %struct.xdr_stream, ptr, %struct.xdr_buf, [260 x ptr], ptr, ptr, ptr, %struct.pagevec, [259 x %struct.kvec], [259 x %struct.bio_vec], i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, i64, %struct.cache_req, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.__kernel_sockaddr_storage = type { %union.anon }
%union.anon = type { ptr, [124 x i8] }
%struct.svc_cred = type { %struct.kuid_t, %struct.kgid_t, ptr, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.xdr_stream = type { ptr, ptr, ptr, ptr, %struct.kvec, ptr, i32, ptr }
%struct.kvec = type { ptr, i32 }
%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }
%struct.pagevec = type { i8, i8, [15 x ptr] }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.cache_req = type { ptr, i32 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.105 }
%union.anon.105 = type { [4 x i32] }
%struct.svc_xprt = type { ptr, ptr, %struct.kref, %struct.list_head, %struct.list_head, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.mutex, %struct.spinlock, ptr, %struct.list_head, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, [58 x i8], %struct.list_head, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nlm_file = type { %struct.hlist_node, %struct.nfs_fh, [2 x ptr], ptr, %struct.list_head, i32, i32, %struct.mutex }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.55, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.55 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NULL\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TEST\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LOCK\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CANCEL\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"UNLOCK\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GRANTED\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"TEST_MSG\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LOCK_MSG\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CANCEL_MSG\00", [21 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"UNLOCK_MSG\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"GRANTED_MSG\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"TEST_RES\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LOCK_RES\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CANCEL_RES\00", [21 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"UNLOCK_RES\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"GRANTED_RES\00", [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SM_NOTIFY\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"UNUSED\00", [25 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SHARE\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UNSHARE\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"NM_LOCK\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"FREE_ALL\00", [23 x i8] zeroinitializer }, align 32
@nlmsvc_procedures = dso_local constant { [24 x %struct.svc_procedure], [192 x i8] } { [24 x %struct.svc_procedure] [%struct.svc_procedure { ptr @nlmsvc_proc_null, ptr @nlmsvc_decode_void, ptr @nlmsvc_encode_void, ptr null, i32 4, i32 4, i32 0, i32 1, ptr @.str }, %struct.svc_procedure { ptr @nlmsvc_proc_test, ptr @nlmsvc_decode_testargs, ptr @nlmsvc_encode_testres, ptr null, i32 384, i32 360, i32 0, i32 271, ptr @.str.1 }, %struct.svc_procedure { ptr @nlmsvc_proc_lock, ptr @nlmsvc_decode_lockargs, ptr @nlmsvc_encode_res, ptr null, i32 384, i32 360, i32 0, i32 10, ptr @.str.2 }, %struct.svc_procedure { ptr @nlmsvc_proc_cancel, ptr @nlmsvc_decode_cancargs, ptr @nlmsvc_encode_res, ptr null, i32 384, i32 360, i32 0, i32 10, ptr @.str.3 }, %struct.svc_procedure { ptr @nlmsvc_proc_unlock, ptr @nlmsvc_decode_unlockargs, ptr @nlmsvc_encode_res, ptr null, i32 384, i32 360, i32 0, i32 10, ptr @.str.4 }, %struct.svc_procedure { ptr @nlmsvc_proc_granted, ptr @nlmsvc_decode_testargs, ptr @nlmsvc_encode_res, ptr null, i32 384, i32 360, i32 0, i32 10, ptr @.str.5 }, %struct.svc_procedure { ptr @nlmsvc_proc_test_msg, ptr @nlmsvc_decode_testargs, ptr @nlmsvc_encode_void, ptr null, i32 384, i32 4, i32 0, i32 1, ptr @.str.6 }, %struct.svc_procedure { ptr @nlmsvc_proc_lock_msg, ptr @nlmsvc_decode_lockargs, ptr @nlmsvc_encode_void, ptr null, i32 384, i32 4, i32 0, i32 1, ptr @.str.7 }, %struct.svc_procedure { ptr @nlmsvc_proc_cancel_msg, ptr @nlmsvc_decode_cancargs, ptr @nlmsvc_encode_void, ptr null, i32 384, i32 4, i32 0, i32 1, ptr @.str.8 }, %struct.svc_procedure { ptr @nlmsvc_proc_unlock_msg, ptr @nlmsvc_decode_unlockargs, ptr @nlmsvc_encode_void, ptr null, i32 384, i32 4, i32 0, i32 1, ptr @.str.9 }, %struct.svc_procedure { ptr @nlmsvc_proc_granted_msg, ptr @nlmsvc_decode_testargs, ptr @nlmsvc_encode_void, ptr null, i32 384, i32 4, i32 0, i32 1, ptr @.str.10 }, %struct.svc_procedure { ptr @nlmsvc_proc_null, ptr @nlmsvc_decode_void, ptr @nlmsvc_encode_void, ptr null, i32 360, i32 4, i32 0, i32 1, ptr @.str.11 }, %struct.svc_procedure { ptr @nlmsvc_proc_null, ptr @nlmsvc_decode_void, ptr @nlmsvc_encode_void, ptr null, i32 360, i32 4, i32 0, i32 1, ptr @.str.12 }, %struct.svc_procedure { ptr @nlmsvc_proc_null, ptr @nlmsvc_decode_void, ptr @nlmsvc_encode_void, ptr null, i32 360, i32 4, i32 0, i32 1, ptr @.str.13 }, %struct.svc_procedure { ptr @nlmsvc_proc_null, ptr @nlmsvc_decode_void, ptr @nlmsvc_encode_void, ptr null, i32 360, i32 4, i32 0, i32 1, ptr @.str.14 }, %struct.svc_procedure { ptr @nlmsvc_proc_granted_res, ptr @nlmsvc_decode_res, ptr @nlmsvc_encode_void, ptr null, i32 360, i32 4, i32 0, i32 1, ptr @.str.15 }, %struct.svc_procedure { ptr @nlmsvc_proc_sm_notify, ptr @nlmsvc_decode_reboot, ptr @nlmsvc_encode_void, ptr null, i32 28, i32 4, i32 0, i32 1, ptr @.str.16 }, %struct.svc_procedure { ptr @nlmsvc_proc_unused, ptr @nlmsvc_decode_void, ptr @nlmsvc_encode_void, ptr null, i32 4, i32 4, i32 0, i32 1, ptr @.str.17 }, %struct.svc_procedure { ptr @nlmsvc_proc_unused, ptr @nlmsvc_decode_void, ptr @nlmsvc_encode_void, ptr null, i32 4, i32 4, i32 0, i32 1, ptr @.str.17 }, %struct.svc_procedure { ptr @nlmsvc_proc_unused, ptr @nlmsvc_decode_void, ptr @nlmsvc_encode_void, ptr null, i32 4, i32 4, i32 0, i32 1, ptr @.str.17 }, %struct.svc_procedure { ptr @nlmsvc_proc_share, ptr @nlmsvc_decode_shareargs, ptr @nlmsvc_encode_shareres, ptr null, i32 384, i32 360, i32 0, i32 11, ptr @.str.18 }, %struct.svc_procedure { ptr @nlmsvc_proc_unshare, ptr @nlmsvc_decode_shareargs, ptr @nlmsvc_encode_shareres, ptr null, i32 384, i32 360, i32 0, i32 11, ptr @.str.19 }, %struct.svc_procedure { ptr @nlmsvc_proc_nm_lock, ptr @nlmsvc_decode_lockargs, ptr @nlmsvc_encode_res, ptr null, i32 384, i32 360, i32 0, i32 10, ptr @.str.20 }, %struct.svc_procedure { ptr @nlmsvc_proc_free_all, ptr @nlmsvc_decode_notify, ptr @nlmsvc_encode_void, ptr null, i32 384, i32 4, i32 0, i32 0, ptr @.str.21 }], [192 x i8] zeroinitializer }, align 32
@nlm_debug = external dso_local local_unnamed_addr global i32, align 4
@nlmsvc_proc_null._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.24, i32 106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"lockd: NULL          called\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nlmsvc_proc_null\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/lockd/svcproc.c\00", [45 x i8] zeroinitializer }, align 32
@nlmsvc_proc_null._entry_ptr = internal global ptr @nlmsvc_proc_null._entry, section ".printk_index", align 4
@__nlmsvc_proc_test._entry = internal constant %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.24, i32 121, ptr null, ptr null }, align 1
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"lockd: TEST          called\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"__nlmsvc_proc_test\00", [45 x i8] zeroinitializer }, align 32
@__nlmsvc_proc_test._entry_ptr = internal global ptr @__nlmsvc_proc_test._entry, section ".printk_index", align 4
@__nlmsvc_proc_test._entry.27 = internal constant %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.24, i32 134, ptr null, ptr null }, align 1
@.str.28 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"lockd: TEST          status %d vers %d\0A\00", [56 x i8] zeroinitializer }, align 32
@__nlmsvc_proc_test._entry_ptr.29 = internal global ptr @__nlmsvc_proc_test._entry.27, section ".printk_index", align 4
@nlmsvc_ops = external dso_local local_unnamed_addr global ptr, align 4
@nlmsvc_lock_operations = external dso_local constant %struct.lock_manager_operations, align 4
@__nlmsvc_proc_lock._entry = internal constant %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.24, i32 156, ptr null, ptr null }, align 1
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"lockd: LOCK          called\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"__nlmsvc_proc_lock\00", [45 x i8] zeroinitializer }, align 32
@__nlmsvc_proc_lock._entry_ptr = internal global ptr @__nlmsvc_proc_lock._entry, section ".printk_index", align 4
@__nlmsvc_proc_lock._entry.32 = internal constant %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.24, i32 183, ptr null, ptr null }, align 1
@.str.33 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"lockd: LOCK         status %d\0A\00", [33 x i8] zeroinitializer }, align 32
@__nlmsvc_proc_lock._entry_ptr.34 = internal global ptr @__nlmsvc_proc_lock._entry.32, section ".printk_index", align 4
@__nlmsvc_proc_cancel._entry = internal constant %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.24, i32 205, ptr null, ptr null }, align 1
@.str.35 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"lockd: CANCEL        called\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"__nlmsvc_proc_cancel\00", [43 x i8] zeroinitializer }, align 32
@__nlmsvc_proc_cancel._entry_ptr = internal global ptr @__nlmsvc_proc_cancel._entry, section ".printk_index", align 4
@__nlmsvc_proc_cancel._entry.37 = internal constant %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.24, i32 222, ptr null, ptr null }, align 1
@.str.38 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"lockd: CANCEL        status %d\0A\00", [32 x i8] zeroinitializer }, align 32
@__nlmsvc_proc_cancel._entry_ptr.39 = internal global ptr @__nlmsvc_proc_cancel._entry.37, section ".printk_index", align 4
@__nlmsvc_proc_unlock._entry = internal constant %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.24, i32 246, ptr null, ptr null }, align 1
@.str.40 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"lockd: UNLOCK        called\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"__nlmsvc_proc_unlock\00", [43 x i8] zeroinitializer }, align 32
@__nlmsvc_proc_unlock._entry_ptr = internal global ptr @__nlmsvc_proc_unlock._entry, section ".printk_index", align 4
@__nlmsvc_proc_unlock._entry.42 = internal constant %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.24, i32 263, ptr null, ptr null }, align 1
@.str.43 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"lockd: UNLOCK        status %d\0A\00", [32 x i8] zeroinitializer }, align 32
@__nlmsvc_proc_unlock._entry_ptr.44 = internal global ptr @__nlmsvc_proc_unlock._entry.42, section ".printk_index", align 4
@__nlmsvc_proc_granted._entry = internal constant %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.24, i32 287, ptr null, ptr null }, align 1
@.str.45 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"lockd: GRANTED       called\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"__nlmsvc_proc_granted\00", [42 x i8] zeroinitializer }, align 32
@__nlmsvc_proc_granted._entry_ptr = internal global ptr @__nlmsvc_proc_granted._entry, section ".printk_index", align 4
@__nlmsvc_proc_granted._entry.47 = internal constant %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.24, i32 289, ptr null, ptr null }, align 1
@.str.48 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"lockd: GRANTED       status %d\0A\00", [32 x i8] zeroinitializer }, align 32
@__nlmsvc_proc_granted._entry_ptr.49 = internal global ptr @__nlmsvc_proc_granted._entry.47, section ".printk_index", align 4
@nlmsvc_proc_test_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.24, i32 362, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"lockd: TEST_MSG      called\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nlmsvc_proc_test_msg\00", [43 x i8] zeroinitializer }, align 32
@nlmsvc_proc_test_msg._entry_ptr = internal global ptr @nlmsvc_proc_test_msg._entry, section ".printk_index", align 4
@nlmsvc_callback_ops = internal constant { %struct.rpc_call_ops, [16 x i8] } { %struct.rpc_call_ops { ptr null, ptr @nlmsvc_callback_exit, ptr null, ptr @nlmsvc_callback_release }, [16 x i8] zeroinitializer }, align 32
@nlmsvc_proc_lock_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.24, i32 368, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"lockd: LOCK_MSG      called\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nlmsvc_proc_lock_msg\00", [43 x i8] zeroinitializer }, align 32
@nlmsvc_proc_lock_msg._entry_ptr = internal global ptr @nlmsvc_proc_lock_msg._entry, section ".printk_index", align 4
@nlmsvc_proc_cancel_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.24, i32 374, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"lockd: CANCEL_MSG    called\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nlmsvc_proc_cancel_msg\00", [41 x i8] zeroinitializer }, align 32
@nlmsvc_proc_cancel_msg._entry_ptr = internal global ptr @nlmsvc_proc_cancel_msg._entry, section ".printk_index", align 4
@nlmsvc_proc_unlock_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.24, i32 381, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"lockd: UNLOCK_MSG    called\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nlmsvc_proc_unlock_msg\00", [41 x i8] zeroinitializer }, align 32
@nlmsvc_proc_unlock_msg._entry_ptr = internal global ptr @nlmsvc_proc_unlock_msg._entry, section ".printk_index", align 4
@nlmsvc_proc_granted_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.24, i32 388, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"lockd: GRANTED_MSG   called\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nlmsvc_proc_granted_msg\00", [40 x i8] zeroinitializer }, align 32
@nlmsvc_proc_granted_msg._entry_ptr = internal global ptr @nlmsvc_proc_granted_msg._entry, section ".printk_index", align 4
@nlmsvc_proc_granted_res._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.24, i32 526, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"lockd: GRANTED_RES   called\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nlmsvc_proc_granted_res\00", [40 x i8] zeroinitializer }, align 32
@nlmsvc_proc_granted_res._entry_ptr = internal global ptr @nlmsvc_proc_granted_res._entry, section ".printk_index", align 4
@nlmsvc_proc_sm_notify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.24, i32 502, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"lockd: SM_NOTIFY     called\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nlmsvc_proc_sm_notify\00", [42 x i8] zeroinitializer }, align 32
@nlmsvc_proc_sm_notify._entry_ptr = internal global ptr @nlmsvc_proc_sm_notify._entry, section ".printk_index", align 4
@nlmsvc_proc_sm_notify._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.63, ptr @.str.24, i32 507, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014lockd: rejected NSM callback from %s\0A\00", [56 x i8] zeroinitializer }, align 32
@nlmsvc_proc_sm_notify._entry_ptr.66 = internal global ptr @nlmsvc_proc_sm_notify._entry.64, section ".printk_index", align 4
@nlmsvc_proc_share._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.24, i32 403, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"lockd: SHARE         called\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nlmsvc_proc_share\00", [46 x i8] zeroinitializer }, align 32
@nlmsvc_proc_share._entry_ptr = internal global ptr @nlmsvc_proc_share._entry, section ".printk_index", align 4
@nlmsvc_proc_share._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.68, ptr @.str.24, i32 420, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"lockd: SHARE         status %d\0A\00", [32 x i8] zeroinitializer }, align 32
@nlmsvc_proc_share._entry_ptr.71 = internal global ptr @nlmsvc_proc_share._entry.69, section ".printk_index", align 4
@nlmsvc_proc_unshare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.24, i32 438, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"lockd: UNSHARE       called\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nlmsvc_proc_unshare\00", [44 x i8] zeroinitializer }, align 32
@nlmsvc_proc_unshare._entry_ptr = internal global ptr @nlmsvc_proc_unshare._entry, section ".printk_index", align 4
@nlmsvc_proc_unshare._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.73, ptr @.str.24, i32 455, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"lockd: UNSHARE       status %d\0A\00", [32 x i8] zeroinitializer }, align 32
@nlmsvc_proc_unshare._entry_ptr.76 = internal global ptr @nlmsvc_proc_unshare._entry.74, section ".printk_index", align 4
@nlmsvc_proc_nm_lock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.24, i32 470, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"lockd: NM_LOCK       called\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nlmsvc_proc_nm_lock\00", [44 x i8] zeroinitializer }, align 32
@nlmsvc_proc_nm_lock._entry_ptr = internal global ptr @nlmsvc_proc_nm_lock._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.79 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 30000]
@__sancov_gen_cov_switch_values.80 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 30000]
@__sancov_gen_cov_switch_values.81 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 30000]
@__sancov_gen_cov_switch_values.82 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 30000]
@__sancov_gen_cov_switch_values.83 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 30000]
@__sancov_gen_cov_switch_values.84 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 30000]
@__sancov_gen_cov_switch_values.85 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 30000]
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 557, i32 14 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 566, i32 14 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 575, i32 14 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 584, i32 14 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 593, i32 14 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 602, i32 14 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 611, i32 14 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 620, i32 14 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 629, i32 14 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 638, i32 14 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 647, i32 14 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 656, i32 14 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 665, i32 14 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 674, i32 14 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 683, i32 14 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 692, i32 14 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 701, i32 14 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 710, i32 14 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 737, i32 14 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 746, i32 14 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 755, i32 14 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 764, i32 14 }
@___asan_gen_.152 = private unnamed_addr constant [18 x i8] c"nlmsvc_procedures\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 549, i32 28 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 106, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 121, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 133, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 156, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 183, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 205, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 222, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 246, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 263, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 287, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 289, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 362, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant [20 x i8] c"nlmsvc_callback_ops\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 319, i32 34 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 368, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 374, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 381, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 388, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 526, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 502, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 506, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 403, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 420, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 438, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 455, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.320 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.321 = private constant [22 x i8] c"../fs/lockd/svcproc.c\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 470, i32 2 }
@llvm.compiler.used = appending global [113 x ptr] [ptr @__nlmsvc_proc_cancel._entry, ptr @__nlmsvc_proc_cancel._entry.37, ptr @__nlmsvc_proc_cancel._entry_ptr, ptr @__nlmsvc_proc_cancel._entry_ptr.39, ptr @__nlmsvc_proc_granted._entry, ptr @__nlmsvc_proc_granted._entry.47, ptr @__nlmsvc_proc_granted._entry_ptr, ptr @__nlmsvc_proc_granted._entry_ptr.49, ptr @__nlmsvc_proc_lock._entry, ptr @__nlmsvc_proc_lock._entry.32, ptr @__nlmsvc_proc_lock._entry_ptr, ptr @__nlmsvc_proc_lock._entry_ptr.34, ptr @__nlmsvc_proc_test._entry, ptr @__nlmsvc_proc_test._entry.27, ptr @__nlmsvc_proc_test._entry_ptr, ptr @__nlmsvc_proc_test._entry_ptr.29, ptr @__nlmsvc_proc_unlock._entry, ptr @__nlmsvc_proc_unlock._entry.42, ptr @__nlmsvc_proc_unlock._entry_ptr, ptr @__nlmsvc_proc_unlock._entry_ptr.44, ptr @nlmsvc_proc_cancel_msg._entry, ptr @nlmsvc_proc_cancel_msg._entry_ptr, ptr @nlmsvc_proc_granted_msg._entry, ptr @nlmsvc_proc_granted_msg._entry_ptr, ptr @nlmsvc_proc_granted_res._entry, ptr @nlmsvc_proc_granted_res._entry_ptr, ptr @nlmsvc_proc_lock_msg._entry, ptr @nlmsvc_proc_lock_msg._entry_ptr, ptr @nlmsvc_proc_nm_lock._entry, ptr @nlmsvc_proc_nm_lock._entry_ptr, ptr @nlmsvc_proc_null._entry, ptr @nlmsvc_proc_null._entry_ptr, ptr @nlmsvc_proc_share._entry, ptr @nlmsvc_proc_share._entry.69, ptr @nlmsvc_proc_share._entry_ptr, ptr @nlmsvc_proc_share._entry_ptr.71, ptr @nlmsvc_proc_sm_notify._entry, ptr @nlmsvc_proc_sm_notify._entry.64, ptr @nlmsvc_proc_sm_notify._entry_ptr, ptr @nlmsvc_proc_sm_notify._entry_ptr.66, ptr @nlmsvc_proc_test_msg._entry, ptr @nlmsvc_proc_test_msg._entry_ptr, ptr @nlmsvc_proc_unlock_msg._entry, ptr @nlmsvc_proc_unlock_msg._entry_ptr, ptr @nlmsvc_proc_unshare._entry, ptr @nlmsvc_proc_unshare._entry.74, ptr @nlmsvc_proc_unshare._entry_ptr, ptr @nlmsvc_proc_unshare._entry_ptr.76, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @nlmsvc_procedures, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @nlmsvc_callback_ops, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @.str.72, ptr @.str.73, ptr @.str.75, ptr @.str.77, ptr @.str.78], section "llvm.metadata"
@0 = internal global [79 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmsvc_procedures to i32), i32 864, i32 1056, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmsvc_proc_null._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmsvc_proc_test_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmsvc_callback_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmsvc_proc_lock_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmsvc_proc_cancel_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmsvc_proc_unlock_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmsvc_proc_granted_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmsvc_proc_granted_res._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmsvc_proc_sm_notify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmsvc_proc_sm_notify._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmsvc_proc_share._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmsvc_proc_share._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmsvc_proc_unshare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmsvc_proc_unshare._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmsvc_proc_nm_lock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nlmsvc_release_call(ptr noundef %call) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %call, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !171
  tail call void @llvm.prefetch.p0(ptr %call, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %call, ptr %call, i32 1, ptr elementtype(i32) %call) #7, !srcloc !172
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.end, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.return_crit_edge, label %if.then10.i.i.i, !prof !173

if.end5.i.i.i.return_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %call, i32 noundef 3) #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !174
  %a_host = getelementptr inbounds %struct.nlm_rqst, ptr %call, i32 0, i32 2
  %1 = ptrtoint ptr %a_host to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %a_host, align 8
  tail call void @nlmsvc_release_host(ptr noundef %2) #7
  tail call void @kfree(ptr noundef %call) #7
  br label %return

return:                                           ; preds = %if.end, %if.then10.i.i.i, %if.end5.i.i.i.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nlmsvc_release_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nlmsvc_proc_null(ptr nocapture noundef readnone %rqstp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %0 = load i32, ptr @nlm_debug, align 4
  %and = and i32 %0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end, !prof !173

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nlmsvc_decode_void(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nlmsvc_encode_void(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nlmsvc_proc_test(ptr noundef %rqstp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_resp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 36
  %0 = ptrtoint ptr %rq_resp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_resp, align 4
  %call = tail call i32 @__nlmsvc_proc_test(ptr noundef %rqstp, ptr noundef %1)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nlmsvc_decode_testargs(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nlmsvc_encode_testres(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nlmsvc_proc_lock(ptr noundef %rqstp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_resp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 36
  %0 = ptrtoint ptr %rq_resp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_resp, align 4
  %call = tail call i32 @__nlmsvc_proc_lock(ptr noundef %rqstp, ptr noundef %1)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nlmsvc_decode_lockargs(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nlmsvc_encode_res(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nlmsvc_proc_cancel(ptr noundef %rqstp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_resp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 36
  %0 = ptrtoint ptr %rq_resp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_resp, align 4
  %call = tail call i32 @__nlmsvc_proc_cancel(ptr noundef %rqstp, ptr noundef %1)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nlmsvc_decode_cancargs(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nlmsvc_proc_unlock(ptr noundef %rqstp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_resp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 36
  %0 = ptrtoint ptr %rq_resp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_resp, align 4
  %call = tail call i32 @__nlmsvc_proc_unlock(ptr noundef %rqstp, ptr noundef %1)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nlmsvc_decode_unlockargs(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nlmsvc_proc_granted(ptr noundef %rqstp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_resp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 36
  %0 = ptrtoint ptr %rq_resp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_resp, align 4
  %rq_argp.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 35
  %2 = ptrtoint ptr %rq_argp.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rq_argp.i, align 8
  %4 = call ptr @memcpy(ptr %1, ptr %3, i32 36)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %5 = load i32, ptr @nlm_debug, align 4
  %and.i = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.do.end6.i_crit_edge, label %do.end.i, !prof !173

entry.do.end6.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end6.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #10
  br label %do.end6.i

do.end6.i:                                        ; preds = %do.end.i, %entry.do.end6.i_crit_edge
  %rq_addr.i.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 3
  %lock.i = getelementptr inbounds %struct.nlm_args, ptr %3, i32 0, i32 1
  %call8.i = tail call i32 @nlmclnt_grant(ptr noundef %rq_addr.i.i, ptr noundef %lock.i) #7
  %status.i = getelementptr inbounds %struct.nlm_res, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call8.i, ptr %status.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %7 = load i32, ptr @nlm_debug, align 4
  %and10.i = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %do.end6.i.__nlmsvc_proc_granted.exit_crit_edge, label %do.end21.i, !prof !173

do.end6.i.__nlmsvc_proc_granted.exit_crit_edge:   ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__nlmsvc_proc_granted.exit

do.end21.i:                                       ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  %call24.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef %call8.i) #10
  br label %__nlmsvc_proc_granted.exit

__nlmsvc_proc_granted.exit:                       ; preds = %do.end21.i, %do.end6.i.__nlmsvc_proc_granted.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nlmsvc_proc_test_msg(ptr noundef %rqstp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %0 = load i32, ptr @nlm_debug, align 4
  %and = and i32 %0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end, !prof !173

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %call5 = tail call fastcc i32 @nlmsvc_callback(ptr noundef %rqstp, i32 noundef 11, ptr noundef nonnull @__nlmsvc_proc_test)
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nlmsvc_proc_lock_msg(ptr noundef %rqstp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %0 = load i32, ptr @nlm_debug, align 4
  %and = and i32 %0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end, !prof !173

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %call5 = tail call fastcc i32 @nlmsvc_callback(ptr noundef %rqstp, i32 noundef 12, ptr noundef nonnull @__nlmsvc_proc_lock)
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nlmsvc_proc_cancel_msg(ptr noundef %rqstp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %0 = load i32, ptr @nlm_debug, align 4
  %and = and i32 %0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end, !prof !173

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %call5 = tail call fastcc i32 @nlmsvc_callback(ptr noundef %rqstp, i32 noundef 13, ptr noundef nonnull @__nlmsvc_proc_cancel)
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nlmsvc_proc_unlock_msg(ptr noundef %rqstp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %0 = load i32, ptr @nlm_debug, align 4
  %and = and i32 %0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end, !prof !173

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %call5 = tail call fastcc i32 @nlmsvc_callback(ptr noundef %rqstp, i32 noundef 14, ptr noundef nonnull @__nlmsvc_proc_unlock)
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nlmsvc_proc_granted_msg(ptr noundef %rqstp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %0 = load i32, ptr @nlm_debug, align 4
  %and = and i32 %0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end, !prof !173

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %call5 = tail call fastcc i32 @nlmsvc_callback(ptr noundef %rqstp, i32 noundef 15, ptr noundef nonnull @__nlmsvc_proc_granted)
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nlmsvc_proc_granted_res(ptr nocapture noundef readonly %rqstp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_argp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 35
  %0 = ptrtoint ptr %rq_argp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_argp, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlmsvc_ops to i32))
  %2 = load ptr, ptr @nlmsvc_ops, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %3 = load i32, ptr @nlm_debug, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %do.body.do.end8_crit_edge, label %do.end, !prof !173

do.body.do.end8_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60) #10
  br label %do.end8

do.end8:                                          ; preds = %do.end, %do.body.do.end8_crit_edge
  %status = getelementptr inbounds %struct.nlm_res, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  tail call void @nlmsvc_grant_reply(ptr noundef %1, i32 noundef %5) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end8, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nlmsvc_decode_res(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nlmsvc_proc_sm_notify(ptr noundef %rqstp) #0 align 64 {
entry:
  %buf = alloca [63 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_argp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 35
  %0 = ptrtoint ptr %rq_argp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_argp, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %2 = load i32, ptr @nlm_debug, align 4
  %and = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end, !prof !173

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62) #10
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %rq_addr.i.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 3
  %3 = ptrtoint ptr %rq_addr.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %rq_addr.i.i, align 2
  %5 = zext i16 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i16 %4, label %do.end5.if.then8_crit_edge [
    i16 2, label %sw.bb.i
    i16 10, label %sw.bb2.i
  ]

do.end5.if.then8_crit_edge:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8

sw.bb.i:                                          ; preds = %do.end5
  %sin_port.i.i = getelementptr inbounds %struct.sockaddr_in, ptr %rq_addr.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %sin_port.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %sin_port.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1023, i16 %7)
  %cmp.i.i = icmp ugt i16 %7, 1023
  br i1 %cmp.i.i, label %sw.bb.i.if.then8_crit_edge, label %if.end.i.i

sw.bb.i.if.then8_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8

if.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  %sin_addr.i.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 3, i32 0, i32 1
  %8 = ptrtoint ptr %sin_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sin_addr.i.i, align 4
  %and.i.i.i = and i32 %9, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 2130706432, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 2130706432
  %conv2.i.i = zext i1 %cmp.i.i.i to i32
  br label %nlm_privileged_requester.exit

sw.bb2.i:                                         ; preds = %do.end5
  %sin6_port.i.i = getelementptr inbounds %struct.sockaddr_in6, ptr %rq_addr.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %sin6_port.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %sin6_port.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1023, i16 %11)
  %cmp.i6.i = icmp ugt i16 %11, 1023
  br i1 %cmp.i6.i, label %sw.bb2.i.if.then8_crit_edge, label %if.end.i7.i

sw.bb2.i.if.then8_crit_edge:                      ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8

if.end.i7.i:                                      ; preds = %sw.bb2.i
  %sin6_addr.i.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 3, i32 0, i32 1, i32 4
  %call.i.i.i = tail call i32 @__ipv6_addr_type(ptr noundef %sin6_addr.i.i) #7
  %and.i.i = and i32 %call.i.i.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end6.i.i, label %if.then2.i.i

if.then2.i.i:                                     ; preds = %if.end.i7.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i = getelementptr %struct.svc_rqst, ptr %rqstp, i32 0, i32 3, i32 0, i32 1, i32 16
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.i, align 4
  %and.i13.i.i = and i32 %13, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 2130706432, i32 %and.i13.i.i)
  %cmp.i.i8.i = icmp eq i32 %and.i13.i.i, 2130706432
  %conv5.i.i = zext i1 %cmp.i.i8.i to i32
  br label %nlm_privileged_requester.exit

if.end6.i.i:                                      ; preds = %if.end.i7.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i14.i.i = tail call i32 @__ipv6_addr_type(ptr noundef %sin6_addr.i.i) #7
  %and9.i.i = and i32 %call.i14.i.i, 16
  br label %nlm_privileged_requester.exit

nlm_privileged_requester.exit:                    ; preds = %if.end6.i.i, %if.then2.i.i, %if.end.i.i
  %retval.0.i = phi i32 [ %conv2.i.i, %if.end.i.i ], [ %conv5.i.i, %if.then2.i.i ], [ %and9.i.i, %if.end6.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool7.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool7.not, label %nlm_privileged_requester.exit.if.then8_crit_edge, label %if.end15

nlm_privileged_requester.exit.if.then8_crit_edge: ; preds = %nlm_privileged_requester.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8

if.then8:                                         ; preds = %nlm_privileged_requester.exit.if.then8_crit_edge, %sw.bb2.i.if.then8_crit_edge, %sw.bb.i.if.then8_crit_edge, %do.end5.if.then8_crit_edge
  call void @llvm.lifetime.start.p0(i64 63, ptr nonnull %buf) #7
  %14 = call ptr @memset(ptr %buf, i32 255, i32 63)
  %call13 = call ptr @svc_print_addr(ptr noundef %rqstp, ptr noundef nonnull %buf, i32 noundef 63) #7
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef %call13) #10
  call void @llvm.lifetime.end.p0(i64 63, ptr nonnull %buf) #7
  br label %cleanup

if.end15:                                         ; preds = %nlm_privileged_requester.exit
  call void @__sanitizer_cov_trace_pc() #9
  %rq_xprt = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 2
  %15 = ptrtoint ptr %rq_xprt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rq_xprt, align 8
  %tobool16.not = icmp eq ptr %16, null
  %xpt_net = getelementptr inbounds %struct.svc_xprt, ptr %16, i32 0, i32 19
  %rq_bc_net = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 48
  %cond.in = select i1 %tobool16.not, ptr %rq_bc_net, ptr %xpt_net
  %17 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %17)
  %cond = load ptr, ptr %cond.in, align 4
  tail call void @nlm_host_rebooted(ptr noundef %cond, ptr noundef %1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then8
  %retval.0 = phi i32 [ 0, %if.end15 ], [ 5, %if.then8 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nlmsvc_decode_reboot(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nlmsvc_proc_unused(ptr nocapture noundef readnone %rqstp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nlmsvc_proc_share(ptr noundef %rqstp) #0 align 64 {
entry:
  %host = alloca ptr, align 4
  %file = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_argp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 35
  %0 = ptrtoint ptr %rq_argp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_argp, align 8
  %rq_resp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 36
  %2 = ptrtoint ptr %rq_resp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rq_resp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %host) #7
  %4 = ptrtoint ptr %host to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %host, align 4, !annotation !175
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %file) #7
  %5 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %file, align 4, !annotation !175
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %6 = load i32, ptr @nlm_debug, align 4
  %and = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end, !prof !173

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67) #10
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %7 = call ptr @memcpy(ptr %3, ptr %1, i32 36)
  %rq_xprt = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 2
  %8 = ptrtoint ptr %rq_xprt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rq_xprt, align 8
  %tobool7.not = icmp eq ptr %9, null
  %xpt_net = getelementptr inbounds %struct.svc_xprt, ptr %9, i32 0, i32 19
  %rq_bc_net = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 48
  %cond.in = select i1 %tobool7.not, ptr %rq_bc_net, ptr %xpt_net
  %10 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %10)
  %cond = load ptr, ptr %cond.in, align 4
  %call9 = tail call zeroext i1 @locks_in_grace(ptr noundef %cond) #7
  br i1 %call9, label %land.lhs.true, label %do.end5.if.end12_crit_edge

do.end5.if.end12_crit_edge:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

land.lhs.true:                                    ; preds = %do.end5
  %reclaim = getelementptr inbounds %struct.nlm_args, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %reclaim to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reclaim, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool10.not = icmp eq i32 %12, 0
  br i1 %tobool10.not, label %if.then11, label %land.lhs.true.if.end12_crit_edge

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %status = getelementptr inbounds %struct.nlm_res, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 4, ptr %status, align 4
  br label %cleanup

if.end12:                                         ; preds = %land.lhs.true.if.end12_crit_edge, %do.end5.if.end12_crit_edge
  %call13 = call fastcc i32 @nlmsvc_retrieve_args(ptr noundef %rqstp, ptr noundef %1, ptr noundef nonnull %host, ptr noundef nonnull %file)
  %status14 = getelementptr inbounds %struct.nlm_res, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %status14 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call13, ptr %status14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool15.not = icmp eq i32 %call13, 0
  br i1 %tobool15.not, label %if.end19, label %if.then16

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000, i32 %call13)
  %cmp = icmp eq i32 %call13, 30000
  %cond18 = select i1 %cmp, i32 60000, i32 0
  br label %cleanup

if.end19:                                         ; preds = %if.end12
  %15 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %host, align 4
  %17 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %file, align 4
  %call20 = call i32 @nlmsvc_share_file(ptr noundef %16, ptr noundef %18, ptr noundef %1) #7
  %rq_vers = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 29
  %19 = ptrtoint ptr %rq_vers to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rq_vers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %20)
  %cmp.not.i = icmp eq i32 %20, 4
  br i1 %cmp.not.i, label %if.end19.cast_to_nlm.exit_crit_edge, label %if.then.i

if.end19.cast_to_nlm.exit_crit_edge:              ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cast_to_nlm.exit

if.then.i:                                        ; preds = %if.end19
  %21 = zext i32 %call20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %call20, label %sw.default.i [
    i32 0, label %if.then.i.cast_to_nlm.exit_crit_edge
    i32 1, label %if.then.i.cast_to_nlm.exit_crit_edge60
    i32 2, label %if.then.i.cast_to_nlm.exit_crit_edge61
    i32 3, label %if.then.i.cast_to_nlm.exit_crit_edge62
    i32 4, label %if.then.i.cast_to_nlm.exit_crit_edge63
    i32 30000, label %if.then.i.cast_to_nlm.exit_crit_edge64
    i32 5, label %sw.bb1.i
  ]

if.then.i.cast_to_nlm.exit_crit_edge64:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cast_to_nlm.exit

if.then.i.cast_to_nlm.exit_crit_edge63:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cast_to_nlm.exit

if.then.i.cast_to_nlm.exit_crit_edge62:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cast_to_nlm.exit

if.then.i.cast_to_nlm.exit_crit_edge61:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cast_to_nlm.exit

if.then.i.cast_to_nlm.exit_crit_edge60:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cast_to_nlm.exit

if.then.i.cast_to_nlm.exit_crit_edge:             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cast_to_nlm.exit

sw.bb1.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cast_to_nlm.exit

sw.default.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cast_to_nlm.exit

cast_to_nlm.exit:                                 ; preds = %sw.default.i, %sw.bb1.i, %if.then.i.cast_to_nlm.exit_crit_edge, %if.then.i.cast_to_nlm.exit_crit_edge60, %if.then.i.cast_to_nlm.exit_crit_edge61, %if.then.i.cast_to_nlm.exit_crit_edge62, %if.then.i.cast_to_nlm.exit_crit_edge63, %if.then.i.cast_to_nlm.exit_crit_edge64, %if.end19.cast_to_nlm.exit_crit_edge
  %status.addr.0.i = phi i32 [ 2, %sw.default.i ], [ 1, %sw.bb1.i ], [ %call20, %if.then.i.cast_to_nlm.exit_crit_edge ], [ %call20, %if.then.i.cast_to_nlm.exit_crit_edge60 ], [ %call20, %if.then.i.cast_to_nlm.exit_crit_edge61 ], [ %call20, %if.then.i.cast_to_nlm.exit_crit_edge62 ], [ %call20, %if.then.i.cast_to_nlm.exit_crit_edge63 ], [ %call20, %if.then.i.cast_to_nlm.exit_crit_edge64 ], [ %call20, %if.end19.cast_to_nlm.exit_crit_edge ]
  %22 = ptrtoint ptr %status14 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %status.addr.0.i, ptr %status14, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %23 = load i32, ptr @nlm_debug, align 4
  %and24 = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %cast_to_nlm.exit.do.end41_crit_edge, label %do.end35, !prof !173

cast_to_nlm.exit.do.end41_crit_edge:              ; preds = %cast_to_nlm.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end41

do.end35:                                         ; preds = %cast_to_nlm.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef %status.addr.0.i) #10
  br label %do.end41

do.end41:                                         ; preds = %do.end35, %cast_to_nlm.exit.do.end41_crit_edge
  %lock = getelementptr inbounds %struct.nlm_args, ptr %1, i32 0, i32 1
  call void @nlmsvc_release_lockowner(ptr noundef %lock) #7
  call void @nlmsvc_release_host(ptr noundef %16) #7
  %24 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %file, align 4
  call void @nlm_release_file(ptr noundef %25) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end41, %if.then16, %if.then11
  %retval.0 = phi i32 [ %cond18, %if.then16 ], [ 0, %do.end41 ], [ 0, %if.then11 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %file) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %host) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nlmsvc_decode_shareargs(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nlmsvc_encode_shareres(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nlmsvc_proc_unshare(ptr noundef %rqstp) #0 align 64 {
entry:
  %host = alloca ptr, align 4
  %file = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_argp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 35
  %0 = ptrtoint ptr %rq_argp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_argp, align 8
  %rq_resp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 36
  %2 = ptrtoint ptr %rq_resp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rq_resp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %host) #7
  %4 = ptrtoint ptr %host to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %host, align 4, !annotation !175
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %file) #7
  %5 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %file, align 4, !annotation !175
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %6 = load i32, ptr @nlm_debug, align 4
  %and = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end, !prof !173

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72) #10
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %7 = call ptr @memcpy(ptr %3, ptr %1, i32 36)
  %rq_xprt = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 2
  %8 = ptrtoint ptr %rq_xprt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rq_xprt, align 8
  %tobool7.not = icmp eq ptr %9, null
  %xpt_net = getelementptr inbounds %struct.svc_xprt, ptr %9, i32 0, i32 19
  %rq_bc_net = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 48
  %cond.in = select i1 %tobool7.not, ptr %rq_bc_net, ptr %xpt_net
  %10 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %10)
  %cond = load ptr, ptr %cond.in, align 4
  %call9 = tail call zeroext i1 @locks_in_grace(ptr noundef %cond) #7
  br i1 %call9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #9
  %status = getelementptr inbounds %struct.nlm_res, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4, ptr %status, align 4
  br label %cleanup

if.end11:                                         ; preds = %do.end5
  %call12 = call fastcc i32 @nlmsvc_retrieve_args(ptr noundef %rqstp, ptr noundef %1, ptr noundef nonnull %host, ptr noundef nonnull %file)
  %status13 = getelementptr inbounds %struct.nlm_res, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %status13 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call12, ptr %status13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool14.not = icmp eq i32 %call12, 0
  br i1 %tobool14.not, label %if.end18, label %if.then15

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000, i32 %call12)
  %cmp = icmp eq i32 %call12, 30000
  %cond17 = select i1 %cmp, i32 60000, i32 0
  br label %cleanup

if.end18:                                         ; preds = %if.end11
  %13 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %host, align 4
  %15 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %file, align 4
  %call19 = call i32 @nlmsvc_unshare_file(ptr noundef %14, ptr noundef %16, ptr noundef %1) #7
  %rq_vers = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 29
  %17 = ptrtoint ptr %rq_vers to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rq_vers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %18)
  %cmp.not.i = icmp eq i32 %18, 4
  br i1 %cmp.not.i, label %if.end18.cast_to_nlm.exit_crit_edge, label %if.then.i

if.end18.cast_to_nlm.exit_crit_edge:              ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cast_to_nlm.exit

if.then.i:                                        ; preds = %if.end18
  %19 = zext i32 %call19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %call19, label %sw.default.i [
    i32 0, label %if.then.i.cast_to_nlm.exit_crit_edge
    i32 1, label %if.then.i.cast_to_nlm.exit_crit_edge58
    i32 2, label %if.then.i.cast_to_nlm.exit_crit_edge59
    i32 3, label %if.then.i.cast_to_nlm.exit_crit_edge60
    i32 4, label %if.then.i.cast_to_nlm.exit_crit_edge61
    i32 30000, label %if.then.i.cast_to_nlm.exit_crit_edge62
    i32 5, label %sw.bb1.i
  ]

if.then.i.cast_to_nlm.exit_crit_edge62:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cast_to_nlm.exit

if.then.i.cast_to_nlm.exit_crit_edge61:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cast_to_nlm.exit

if.then.i.cast_to_nlm.exit_crit_edge60:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cast_to_nlm.exit

if.then.i.cast_to_nlm.exit_crit_edge59:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cast_to_nlm.exit

if.then.i.cast_to_nlm.exit_crit_edge58:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cast_to_nlm.exit

if.then.i.cast_to_nlm.exit_crit_edge:             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cast_to_nlm.exit

sw.bb1.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cast_to_nlm.exit

sw.default.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cast_to_nlm.exit

cast_to_nlm.exit:                                 ; preds = %sw.default.i, %sw.bb1.i, %if.then.i.cast_to_nlm.exit_crit_edge, %if.then.i.cast_to_nlm.exit_crit_edge58, %if.then.i.cast_to_nlm.exit_crit_edge59, %if.then.i.cast_to_nlm.exit_crit_edge60, %if.then.i.cast_to_nlm.exit_crit_edge61, %if.then.i.cast_to_nlm.exit_crit_edge62, %if.end18.cast_to_nlm.exit_crit_edge
  %status.addr.0.i = phi i32 [ 2, %sw.default.i ], [ 1, %sw.bb1.i ], [ %call19, %if.then.i.cast_to_nlm.exit_crit_edge ], [ %call19, %if.then.i.cast_to_nlm.exit_crit_edge58 ], [ %call19, %if.then.i.cast_to_nlm.exit_crit_edge59 ], [ %call19, %if.then.i.cast_to_nlm.exit_crit_edge60 ], [ %call19, %if.then.i.cast_to_nlm.exit_crit_edge61 ], [ %call19, %if.then.i.cast_to_nlm.exit_crit_edge62 ], [ %call19, %if.end18.cast_to_nlm.exit_crit_edge ]
  %20 = ptrtoint ptr %status13 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %status.addr.0.i, ptr %status13, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %21 = load i32, ptr @nlm_debug, align 4
  %and23 = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %cast_to_nlm.exit.do.end40_crit_edge, label %do.end34, !prof !173

cast_to_nlm.exit.do.end40_crit_edge:              ; preds = %cast_to_nlm.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end40

do.end34:                                         ; preds = %cast_to_nlm.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, i32 noundef %status.addr.0.i) #10
  br label %do.end40

do.end40:                                         ; preds = %do.end34, %cast_to_nlm.exit.do.end40_crit_edge
  %lock = getelementptr inbounds %struct.nlm_args, ptr %1, i32 0, i32 1
  call void @nlmsvc_release_lockowner(ptr noundef %lock) #7
  call void @nlmsvc_release_host(ptr noundef %14) #7
  %22 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %file, align 4
  call void @nlm_release_file(ptr noundef %23) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end40, %if.then15, %if.then10
  %retval.0 = phi i32 [ 0, %if.then10 ], [ %cond17, %if.then15 ], [ 0, %do.end40 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %file) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %host) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nlmsvc_proc_nm_lock(ptr noundef %rqstp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_argp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 35
  %0 = ptrtoint ptr %rq_argp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_argp, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %2 = load i32, ptr @nlm_debug, align 4
  %and = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end, !prof !173

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77) #10
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %monitor = getelementptr inbounds %struct.nlm_args, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %monitor to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %monitor, align 4
  %rq_resp.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 36
  %4 = ptrtoint ptr %rq_resp.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rq_resp.i, align 4
  %call.i = tail call i32 @__nlmsvc_proc_lock(ptr noundef %rqstp, ptr noundef %5) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nlmsvc_proc_free_all(ptr noundef %rqstp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_argp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 35
  %0 = ptrtoint ptr %rq_argp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_argp, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlmsvc_ops to i32))
  %2 = load ptr, ptr @nlmsvc_ops, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %lock1.i = getelementptr inbounds %struct.nlm_args, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %lock1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lock1.i, align 8
  %len.i = getelementptr inbounds %struct.nlm_args, ptr %1, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len.i, align 4
  %call.i = tail call ptr @nlmsvc_lookup_host(ptr noundef %rqstp, ptr noundef %4, i32 noundef %6) #7
  %tobool2.not.i = icmp eq ptr %call.i, null
  br i1 %tobool2.not.i, label %if.end.i._crit_edge, label %lor.lhs.false.i

if.end.i._crit_edge:                              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %9

lor.lhs.false.i:                                  ; preds = %if.end.i
  %monitor.i = getelementptr inbounds %struct.nlm_args, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %monitor.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %monitor.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool3.not.i = icmp eq i32 %8, 0
  br i1 %tobool3.not.i, label %lor.lhs.false.i.if.end_crit_edge, label %land.lhs.true.i

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call4.i = tail call i32 @nsm_monitor(ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i = icmp slt i32 %call4.i, 0
  br i1 %cmp.i, label %land.lhs.true.i._crit_edge, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.i._crit_edge:                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %9

9:                                                ; preds = %land.lhs.true.i._crit_edge, %if.end.i._crit_edge
  tail call void @nlmsvc_release_host(ptr noundef %call.i) #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.i.if.end_crit_edge, %lor.lhs.false.i.if.end_crit_edge
  tail call void @nlmsvc_free_host_resources(ptr noundef nonnull %call.i) #7
  tail call void @nlmsvc_release_host(ptr noundef nonnull %call.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %9, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nlmsvc_decode_notify(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__nlmsvc_proc_test(ptr noundef %rqstp, ptr noundef %resp) #0 align 64 {
entry:
  %host = alloca ptr, align 4
  %file = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_argp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 35
  %0 = ptrtoint ptr %rq_argp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_argp, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %host) #7
  %2 = ptrtoint ptr %host to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %host, align 4, !annotation !175
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %file) #7
  %3 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %file, align 4, !annotation !175
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %4 = load i32, ptr @nlm_debug, align 4
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end, !prof !173

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #10
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %5 = call ptr @memcpy(ptr %resp, ptr %1, i32 36)
  %call7 = call fastcc i32 @nlmsvc_retrieve_args(ptr noundef %rqstp, ptr noundef %1, ptr noundef nonnull %host, ptr noundef nonnull %file)
  %status = getelementptr inbounds %struct.nlm_res, ptr %resp, i32 0, i32 1
  %6 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call7, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end11, label %if.then9

if.then9:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000, i32 %call7)
  %cmp = icmp eq i32 %call7, 30000
  %cond = select i1 %cmp, i32 60000, i32 0
  br label %cleanup

if.end11:                                         ; preds = %do.end5
  %7 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %file, align 4
  %9 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %host, align 4
  %lock = getelementptr inbounds %struct.nlm_args, ptr %1, i32 0, i32 1
  %lock12 = getelementptr inbounds %struct.nlm_res, ptr %resp, i32 0, i32 2
  %call14 = call i32 @nlmsvc_testlock(ptr noundef %rqstp, ptr noundef %8, ptr noundef %10, ptr noundef %lock, ptr noundef %lock12, ptr noundef %resp) #7
  %rq_vers = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 29
  %11 = ptrtoint ptr %rq_vers to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rq_vers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %12)
  %cmp.not.i = icmp eq i32 %12, 4
  br i1 %cmp.not.i, label %if.end11.cast_to_nlm.exit_crit_edge, label %if.then.i

if.end11.cast_to_nlm.exit_crit_edge:              ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cast_to_nlm.exit

if.then.i:                                        ; preds = %if.end11
  %13 = zext i32 %call14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %call14, label %sw.default.i [
    i32 0, label %if.then.i.cast_to_nlm.exit_crit_edge
    i32 1, label %if.then.i.cast_to_nlm.exit_crit_edge62
    i32 2, label %if.then.i.cast_to_nlm.exit_crit_edge63
    i32 3, label %if.then.i.cast_to_nlm.exit_crit_edge64
    i32 4, label %if.then.i.cast_to_nlm.exit_crit_edge65
    i32 30000, label %if.then.i.cast_to_nlm.exit_crit_edge66
    i32 5, label %if.then.i.cast_to_nlm.exit.thread_crit_edge
  ]

if.then.i.cast_to_nlm.exit.thread_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cast_to_nlm.exit.thread

if.then.i.cast_to_nlm.exit_crit_edge66:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cast_to_nlm.exit

if.then.i.cast_to_nlm.exit_crit_edge65:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cast_to_nlm.exit

if.then.i.cast_to_nlm.exit_crit_edge64:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cast_to_nlm.exit

if.then.i.cast_to_nlm.exit_crit_edge63:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cast_to_nlm.exit

if.then.i.cast_to_nlm.exit_crit_edge62:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cast_to_nlm.exit

if.then.i.cast_to_nlm.exit_crit_edge:             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cast_to_nlm.exit

sw.default.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cast_to_nlm.exit.thread

cast_to_nlm.exit.thread:                          ; preds = %sw.default.i, %if.then.i.cast_to_nlm.exit.thread_crit_edge
  %status.addr.0.i.ph = phi i32 [ 2, %sw.default.i ], [ 1, %if.then.i.cast_to_nlm.exit.thread_crit_edge ]
  %14 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %status.addr.0.i.ph, ptr %status, align 4
  br label %do.body20

cast_to_nlm.exit:                                 ; preds = %if.then.i.cast_to_nlm.exit_crit_edge, %if.then.i.cast_to_nlm.exit_crit_edge62, %if.then.i.cast_to_nlm.exit_crit_edge63, %if.then.i.cast_to_nlm.exit_crit_edge64, %if.then.i.cast_to_nlm.exit_crit_edge65, %if.then.i.cast_to_nlm.exit_crit_edge66, %if.end11.cast_to_nlm.exit_crit_edge
  %15 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call14, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000, i32 %call14)
  %cmp18 = icmp eq i32 %call14, 30000
  br i1 %cmp18, label %cast_to_nlm.exit.if.end40_crit_edge, label %cast_to_nlm.exit.do.body20_crit_edge

cast_to_nlm.exit.do.body20_crit_edge:             ; preds = %cast_to_nlm.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body20

cast_to_nlm.exit.if.end40_crit_edge:              ; preds = %cast_to_nlm.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

do.body20:                                        ; preds = %cast_to_nlm.exit.do.body20_crit_edge, %cast_to_nlm.exit.thread
  %status.addr.0.i61 = phi i32 [ %status.addr.0.i.ph, %cast_to_nlm.exit.thread ], [ %call14, %cast_to_nlm.exit.do.body20_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %16 = load i32, ptr @nlm_debug, align 4
  %and21 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %do.body20.if.end40_crit_edge, label %do.end32, !prof !173

do.body20.if.end40_crit_edge:                     ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

do.end32:                                         ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %rq_vers to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rq_vers, align 4
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %status.addr.0.i61, i32 noundef %18) #10
  br label %if.end40

if.end40:                                         ; preds = %do.end32, %do.body20.if.end40_crit_edge, %cast_to_nlm.exit.if.end40_crit_edge
  %rc.0 = phi i32 [ 0, %do.end32 ], [ 0, %do.body20.if.end40_crit_edge ], [ 60000, %cast_to_nlm.exit.if.end40_crit_edge ]
  call void @nlmsvc_release_lockowner(ptr noundef %lock) #7
  call void @nlmsvc_release_host(ptr noundef %10) #7
  %19 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %file, align 4
  call void @nlm_release_file(ptr noundef %20) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.then9
  %retval.0 = phi i32 [ %cond, %if.then9 ], [ %rc.0, %if.end40 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %file) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %host) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nlmsvc_retrieve_args(ptr noundef %rqstp, ptr noundef %argp, ptr nocapture noundef writeonly %hostp, ptr noundef writeonly %filp) unnamed_addr #0 align 64 {
entry:
  %file = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %file) #7
  %0 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %file, align 4
  %lock1 = getelementptr inbounds %struct.nlm_args, ptr %argp, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlmsvc_ops to i32))
  %1 = load ptr, ptr @nlmsvc_ops, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %lock1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock1, align 8
  %len = getelementptr inbounds %struct.nlm_args, ptr %argp, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %call = tail call ptr @nlmsvc_lookup_host(ptr noundef %rqstp, ptr noundef %3, i32 noundef %5) #7
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.end._crit_edge, label %lor.lhs.false

if.end._crit_edge:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %32

lor.lhs.false:                                    ; preds = %if.end
  %monitor = getelementptr inbounds %struct.nlm_args, ptr %argp, i32 0, i32 5
  %6 = ptrtoint ptr %monitor to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %monitor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  br i1 %tobool3.not, label %lor.lhs.false.if.end6_crit_edge, label %land.lhs.true

lor.lhs.false.if.end6_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call4 = tail call i32 @nsm_monitor(ptr noundef nonnull %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %land.lhs.true._crit_edge, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

land.lhs.true._crit_edge:                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %32

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %lor.lhs.false.if.end6_crit_edge
  %8 = ptrtoint ptr %hostp to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %hostp, align 4
  %cmp7.not = icmp eq ptr %filp, null
  br i1 %cmp7.not, label %if.end6.cleanup_crit_edge, label %if.then8

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then8:                                         ; preds = %if.end6
  %call9 = call i32 @nlm_lookup_file(ptr noundef %rqstp, ptr noundef nonnull %file, ptr noundef %lock1) #7
  %rq_vers = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 29
  %9 = ptrtoint ptr %rq_vers to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rq_vers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %10)
  %cmp.not.i = icmp eq i32 %10, 4
  br i1 %cmp.not.i, label %cast_to_nlm.exit, label %if.then.i

if.then.i:                                        ; preds = %if.then8
  %11 = zext i32 %call9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %call9, label %sw.default.i [
    i32 5, label %if.then.i.no_locks_crit_edge
    i32 0, label %if.then.i.if.end13_crit_edge
    i32 1, label %if.then.i.no_locks.fold.split_crit_edge
    i32 2, label %if.then.i.no_locks.fold.split_crit_edge55
    i32 3, label %if.then.i.no_locks.fold.split_crit_edge56
    i32 4, label %if.then.i.no_locks.fold.split_crit_edge57
    i32 30000, label %if.then.i.no_locks.fold.split_crit_edge58
  ]

if.then.i.no_locks.fold.split_crit_edge58:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %no_locks.fold.split

if.then.i.no_locks.fold.split_crit_edge57:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %no_locks.fold.split

if.then.i.no_locks.fold.split_crit_edge56:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %no_locks.fold.split

if.then.i.no_locks.fold.split_crit_edge55:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %no_locks.fold.split

if.then.i.no_locks.fold.split_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %no_locks.fold.split

if.then.i.if.end13_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then.i.no_locks_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %no_locks

sw.default.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %no_locks

cast_to_nlm.exit:                                 ; preds = %if.then8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp11.not = icmp eq i32 %call9, 0
  br i1 %cmp11.not, label %cast_to_nlm.exit.if.end13_crit_edge, label %cast_to_nlm.exit.no_locks.fold.split_crit_edge

cast_to_nlm.exit.no_locks.fold.split_crit_edge:   ; preds = %cast_to_nlm.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %no_locks.fold.split

cast_to_nlm.exit.if.end13_crit_edge:              ; preds = %cast_to_nlm.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.end13:                                         ; preds = %cast_to_nlm.exit.if.end13_crit_edge, %if.then.i.if.end13_crit_edge
  %12 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %file, align 4
  %14 = ptrtoint ptr %filp to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %filp, align 4
  %fl = getelementptr inbounds %struct.nlm_args, ptr %argp, i32 0, i32 1, i32 5
  %call14 = call i32 @lock_to_openmode(ptr noundef %fl) #7
  %15 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %file, align 4
  %arrayidx = getelementptr %struct.nlm_file, ptr %16, i32 0, i32 2, i32 %call14
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 4
  %fl_file = getelementptr inbounds %struct.nlm_args, ptr %argp, i32 0, i32 1, i32 5, i32 11
  %19 = ptrtoint ptr %fl_file to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %fl_file, align 4
  %20 = call i32 @llvm.read_register.i32(metadata !161) #7
  %and.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task, align 8
  %tgid = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 69
  %24 = ptrtoint ptr %tgid to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tgid, align 4
  %fl_pid = getelementptr inbounds %struct.nlm_args, ptr %argp, i32 0, i32 1, i32 5, i32 8
  %26 = ptrtoint ptr %fl_pid to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %fl_pid, align 8
  %fl_lmops = getelementptr inbounds %struct.nlm_args, ptr %argp, i32 0, i32 1, i32 5, i32 18
  %27 = ptrtoint ptr %fl_lmops to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @nlmsvc_lock_operations, ptr %fl_lmops, align 8
  %svid = getelementptr inbounds %struct.nlm_args, ptr %argp, i32 0, i32 1, i32 4
  %28 = ptrtoint ptr %svid to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %svid, align 4
  call void @nlmsvc_locks_init_private(ptr noundef %fl, ptr noundef nonnull %call, i32 noundef %29) #7
  %fl_owner = getelementptr inbounds %struct.nlm_args, ptr %argp, i32 0, i32 1, i32 5, i32 5
  %30 = ptrtoint ptr %fl_owner to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fl_owner, align 4
  %tobool21.not = icmp eq ptr %31, null
  br i1 %tobool21.not, label %if.then22, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then22:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  call void @nlmsvc_release_host(ptr noundef nonnull %call) #7
  br label %cleanup

no_locks.fold.split:                              ; preds = %cast_to_nlm.exit.no_locks.fold.split_crit_edge, %if.then.i.no_locks.fold.split_crit_edge, %if.then.i.no_locks.fold.split_crit_edge55, %if.then.i.no_locks.fold.split_crit_edge56, %if.then.i.no_locks.fold.split_crit_edge57, %if.then.i.no_locks.fold.split_crit_edge58
  br label %no_locks

no_locks:                                         ; preds = %no_locks.fold.split, %sw.default.i, %if.then.i.no_locks_crit_edge
  %error.0 = phi i32 [ 2, %sw.default.i ], [ 1, %if.then.i.no_locks_crit_edge ], [ %call9, %no_locks.fold.split ]
  call void @nlmsvc_release_host(ptr noundef nonnull %call) #7
  br label %cleanup

32:                                               ; preds = %land.lhs.true._crit_edge, %if.end._crit_edge
  tail call void @nlmsvc_release_host(ptr noundef %call) #7
  br label %cleanup

cleanup:                                          ; preds = %32, %no_locks, %if.then22, %if.end13.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %if.then22 ], [ 2, %entry.cleanup_crit_edge ], [ 0, %if.end13.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ], [ 2, %32 ], [ %error.0, %no_locks ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %file) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nlmsvc_testlock(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nlmsvc_release_lockowner(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nlm_release_file(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nlmsvc_lookup_host(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nsm_monitor(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nlm_lookup_file(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_to_openmode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nlmsvc_locks_init_private(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__nlmsvc_proc_lock(ptr noundef %rqstp, ptr nocapture noundef writeonly %resp) #0 align 64 {
entry:
  %host = alloca ptr, align 4
  %file = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_argp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 35
  %0 = ptrtoint ptr %rq_argp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_argp, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %host) #7
  %2 = ptrtoint ptr %host to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %host, align 4, !annotation !175
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %file) #7
  %3 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %file, align 4, !annotation !175
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %4 = load i32, ptr @nlm_debug, align 4
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end, !prof !173

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #10
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %5 = call ptr @memcpy(ptr %resp, ptr %1, i32 36)
  %call7 = call fastcc i32 @nlmsvc_retrieve_args(ptr noundef %rqstp, ptr noundef %1, ptr noundef nonnull %host, ptr noundef nonnull %file)
  %status = getelementptr inbounds %struct.nlm_res, ptr %resp, i32 0, i32 1
  %6 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call7, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end11, label %if.then9

if.then9:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000, i32 %call7)
  %cmp = icmp eq i32 %call7, 30000
  %cond = select i1 %cmp, i32 60000, i32 0
  br label %cleanup

if.end11:                                         ; preds = %do.end5
  %7 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %file, align 4
  %9 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %host, align 4
  %lock = getelementptr inbounds %struct.nlm_args, ptr %1, i32 0, i32 1
  %block = getelementptr inbounds %struct.nlm_args, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %block, align 8
  %reclaim = getelementptr inbounds %struct.nlm_args, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %reclaim to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reclaim, align 4
  %call13 = call i32 @nlmsvc_lock(ptr noundef %rqstp, ptr noundef %8, ptr noundef %10, ptr noundef %lock, i32 noundef %12, ptr noundef %1, i32 noundef %14) #7
  %rq_vers = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 29
  %15 = ptrtoint ptr %rq_vers to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rq_vers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %16)
  %cmp.not.i = icmp eq i32 %16, 4
  br i1 %cmp.not.i, label %if.end11.cast_to_nlm.exit_crit_edge, label %if.then.i

if.end11.cast_to_nlm.exit_crit_edge:              ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cast_to_nlm.exit

if.then.i:                                        ; preds = %if.end11
  %17 = zext i32 %call13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %call13, label %sw.default.i [
    i32 0, label %if.then.i.cast_to_nlm.exit_crit_edge
    i32 1, label %if.then.i.cast_to_nlm.exit_crit_edge60
    i32 2, label %if.then.i.cast_to_nlm.exit_crit_edge61
    i32 3, label %if.then.i.cast_to_nlm.exit_crit_edge62
    i32 4, label %if.then.i.cast_to_nlm.exit_crit_edge63
    i32 30000, label %if.then.i.cast_to_nlm.exit_crit_edge64
    i32 5, label %if.then.i.cast_to_nlm.exit.thread_crit_edge
  ]

if.then.i.cast_to_nlm.exit.thread_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cast_to_nlm.exit.thread

if.then.i.cast_to_nlm.exit_crit_edge64:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cast_to_nlm.exit

if.then.i.cast_to_nlm.exit_crit_edge63:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cast_to_nlm.exit

if.then.i.cast_to_nlm.exit_crit_edge62:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cast_to_nlm.exit

if.then.i.cast_to_nlm.exit_crit_edge61:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cast_to_nlm.exit

if.then.i.cast_to_nlm.exit_crit_edge60:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cast_to_nlm.exit

if.then.i.cast_to_nlm.exit_crit_edge:             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cast_to_nlm.exit

sw.default.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cast_to_nlm.exit.thread

cast_to_nlm.exit.thread:                          ; preds = %sw.default.i, %if.then.i.cast_to_nlm.exit.thread_crit_edge
  %status.addr.0.i.ph = phi i32 [ 2, %sw.default.i ], [ 1, %if.then.i.cast_to_nlm.exit.thread_crit_edge ]
  %18 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %status.addr.0.i.ph, ptr %status, align 4
  br label %do.body19

cast_to_nlm.exit:                                 ; preds = %if.then.i.cast_to_nlm.exit_crit_edge, %if.then.i.cast_to_nlm.exit_crit_edge60, %if.then.i.cast_to_nlm.exit_crit_edge61, %if.then.i.cast_to_nlm.exit_crit_edge62, %if.then.i.cast_to_nlm.exit_crit_edge63, %if.then.i.cast_to_nlm.exit_crit_edge64, %if.end11.cast_to_nlm.exit_crit_edge
  %19 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call13, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000, i32 %call13)
  %cmp17 = icmp eq i32 %call13, 30000
  br i1 %cmp17, label %cast_to_nlm.exit.if.end38_crit_edge, label %cast_to_nlm.exit.do.body19_crit_edge

cast_to_nlm.exit.do.body19_crit_edge:             ; preds = %cast_to_nlm.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body19

cast_to_nlm.exit.if.end38_crit_edge:              ; preds = %cast_to_nlm.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

do.body19:                                        ; preds = %cast_to_nlm.exit.do.body19_crit_edge, %cast_to_nlm.exit.thread
  %status.addr.0.i59 = phi i32 [ %status.addr.0.i.ph, %cast_to_nlm.exit.thread ], [ %call13, %cast_to_nlm.exit.do.body19_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %20 = load i32, ptr @nlm_debug, align 4
  %and20 = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %do.body19.if.end38_crit_edge, label %do.end31, !prof !173

do.body19.if.end38_crit_edge:                     ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

do.end31:                                         ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #9
  %call34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %status.addr.0.i59) #10
  br label %if.end38

if.end38:                                         ; preds = %do.end31, %do.body19.if.end38_crit_edge, %cast_to_nlm.exit.if.end38_crit_edge
  %rc.0 = phi i32 [ 0, %do.end31 ], [ 0, %do.body19.if.end38_crit_edge ], [ 60000, %cast_to_nlm.exit.if.end38_crit_edge ]
  call void @nlmsvc_release_lockowner(ptr noundef %lock) #7
  call void @nlmsvc_release_host(ptr noundef %10) #7
  %21 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %file, align 4
  call void @nlm_release_file(ptr noundef %22) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.then9
  %retval.0 = phi i32 [ %cond, %if.then9 ], [ %rc.0, %if.end38 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %file) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %host) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nlmsvc_lock(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__nlmsvc_proc_cancel(ptr noundef %rqstp, ptr nocapture noundef writeonly %resp) #0 align 64 {
entry:
  %host = alloca ptr, align 4
  %file = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_argp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 35
  %0 = ptrtoint ptr %rq_argp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_argp, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %host) #7
  %2 = ptrtoint ptr %host to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %host, align 4, !annotation !175
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %file) #7
  %3 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %file, align 4, !annotation !175
  %rq_xprt = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 2
  %4 = ptrtoint ptr %rq_xprt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rq_xprt, align 8
  %tobool.not = icmp eq ptr %5, null
  %xpt_net = getelementptr inbounds %struct.svc_xprt, ptr %5, i32 0, i32 19
  %rq_bc_net = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 48
  %cond.in = select i1 %tobool.not, ptr %rq_bc_net, ptr %xpt_net
  %6 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %cond = load ptr, ptr %cond.in, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %7 = load i32, ptr @nlm_debug, align 4
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %entry.do.end7_crit_edge, label %do.end, !prof !173

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #10
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %8 = call ptr @memcpy(ptr %resp, ptr %1, i32 36)
  %call9 = tail call zeroext i1 @locks_in_grace(ptr noundef %cond) #7
  br i1 %call9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #9
  %status = getelementptr inbounds %struct.nlm_res, ptr %resp, i32 0, i32 1
  %9 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %status, align 4
  br label %cleanup

if.end11:                                         ; preds = %do.end7
  %call12 = call fastcc i32 @nlmsvc_retrieve_args(ptr noundef %rqstp, ptr noundef %1, ptr noundef nonnull %host, ptr noundef nonnull %file)
  %status13 = getelementptr inbounds %struct.nlm_res, ptr %resp, i32 0, i32 1
  %10 = ptrtoint ptr %status13 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call12, ptr %status13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool14.not = icmp eq i32 %call12, 0
  br i1 %tobool14.not, label %if.end18, label %if.then15

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000, i32 %call12)
  %cmp = icmp eq i32 %call12, 30000
  %cond17 = select i1 %cmp, i32 60000, i32 0
  br label %cleanup

if.end18:                                         ; preds = %if.end11
  %11 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %file, align 4
  %lock = getelementptr inbounds %struct.nlm_args, ptr %1, i32 0, i32 1
  %call19 = call i32 @nlmsvc_cancel_blocked(ptr noundef %cond, ptr noundef %12, ptr noundef %lock) #7
  %rq_vers = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 29
  %13 = ptrtoint ptr %rq_vers to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rq_vers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %14)
  %cmp.not.i = icmp eq i32 %14, 4
  br i1 %cmp.not.i, label %if.end18.cast_to_nlm.exit_crit_edge, label %if.then.i

if.end18.cast_to_nlm.exit_crit_edge:              ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cast_to_nlm.exit

if.then.i:                                        ; preds = %if.end18
  %15 = zext i32 %call19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %call19, label %sw.default.i [
    i32 0, label %if.then.i.cast_to_nlm.exit_crit_edge
    i32 1, label %if.then.i.cast_to_nlm.exit_crit_edge59
    i32 2, label %if.then.i.cast_to_nlm.exit_crit_edge60
    i32 3, label %if.then.i.cast_to_nlm.exit_crit_edge61
    i32 4, label %if.then.i.cast_to_nlm.exit_crit_edge62
    i32 30000, label %if.then.i.cast_to_nlm.exit_crit_edge63
    i32 5, label %sw.bb1.i
  ]

if.then.i.cast_to_nlm.exit_crit_edge63:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cast_to_nlm.exit

if.then.i.cast_to_nlm.exit_crit_edge62:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cast_to_nlm.exit

if.then.i.cast_to_nlm.exit_crit_edge61:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cast_to_nlm.exit

if.then.i.cast_to_nlm.exit_crit_edge60:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cast_to_nlm.exit

if.then.i.cast_to_nlm.exit_crit_edge59:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cast_to_nlm.exit

if.then.i.cast_to_nlm.exit_crit_edge:             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cast_to_nlm.exit

sw.bb1.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cast_to_nlm.exit

sw.default.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cast_to_nlm.exit

cast_to_nlm.exit:                                 ; preds = %sw.default.i, %sw.bb1.i, %if.then.i.cast_to_nlm.exit_crit_edge, %if.then.i.cast_to_nlm.exit_crit_edge59, %if.then.i.cast_to_nlm.exit_crit_edge60, %if.then.i.cast_to_nlm.exit_crit_edge61, %if.then.i.cast_to_nlm.exit_crit_edge62, %if.then.i.cast_to_nlm.exit_crit_edge63, %if.end18.cast_to_nlm.exit_crit_edge
  %status.addr.0.i = phi i32 [ 2, %sw.default.i ], [ 1, %sw.bb1.i ], [ %call19, %if.then.i.cast_to_nlm.exit_crit_edge ], [ %call19, %if.then.i.cast_to_nlm.exit_crit_edge59 ], [ %call19, %if.then.i.cast_to_nlm.exit_crit_edge60 ], [ %call19, %if.then.i.cast_to_nlm.exit_crit_edge61 ], [ %call19, %if.then.i.cast_to_nlm.exit_crit_edge62 ], [ %call19, %if.then.i.cast_to_nlm.exit_crit_edge63 ], [ %call19, %if.end18.cast_to_nlm.exit_crit_edge ]
  %16 = ptrtoint ptr %status13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %status.addr.0.i, ptr %status13, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %17 = load i32, ptr @nlm_debug, align 4
  %and23 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %cast_to_nlm.exit.do.end40_crit_edge, label %do.end34, !prof !173

cast_to_nlm.exit.do.end40_crit_edge:              ; preds = %cast_to_nlm.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end40

do.end34:                                         ; preds = %cast_to_nlm.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %status.addr.0.i) #10
  br label %do.end40

do.end40:                                         ; preds = %do.end34, %cast_to_nlm.exit.do.end40_crit_edge
  call void @nlmsvc_release_lockowner(ptr noundef %lock) #7
  %18 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %host, align 4
  call void @nlmsvc_release_host(ptr noundef %19) #7
  %20 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %file, align 4
  call void @nlm_release_file(ptr noundef %21) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end40, %if.then15, %if.then10
  %retval.0 = phi i32 [ 0, %if.then10 ], [ %cond17, %if.then15 ], [ 0, %do.end40 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %file) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %host) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @locks_in_grace(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nlmsvc_cancel_blocked(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__nlmsvc_proc_unlock(ptr noundef %rqstp, ptr nocapture noundef writeonly %resp) #0 align 64 {
entry:
  %host = alloca ptr, align 4
  %file = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_argp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 35
  %0 = ptrtoint ptr %rq_argp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_argp, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %host) #7
  %2 = ptrtoint ptr %host to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %host, align 4, !annotation !175
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %file) #7
  %3 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %file, align 4, !annotation !175
  %rq_xprt = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 2
  %4 = ptrtoint ptr %rq_xprt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rq_xprt, align 8
  %tobool.not = icmp eq ptr %5, null
  %xpt_net = getelementptr inbounds %struct.svc_xprt, ptr %5, i32 0, i32 19
  %rq_bc_net = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 48
  %cond.in = select i1 %tobool.not, ptr %rq_bc_net, ptr %xpt_net
  %6 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %cond = load ptr, ptr %cond.in, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %7 = load i32, ptr @nlm_debug, align 4
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %entry.do.end7_crit_edge, label %do.end, !prof !173

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #10
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %8 = call ptr @memcpy(ptr %resp, ptr %1, i32 36)
  %call9 = tail call zeroext i1 @locks_in_grace(ptr noundef %cond) #7
  br i1 %call9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #9
  %status = getelementptr inbounds %struct.nlm_res, ptr %resp, i32 0, i32 1
  %9 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %status, align 4
  br label %cleanup

if.end11:                                         ; preds = %do.end7
  %call12 = call fastcc i32 @nlmsvc_retrieve_args(ptr noundef %rqstp, ptr noundef %1, ptr noundef nonnull %host, ptr noundef nonnull %file)
  %status13 = getelementptr inbounds %struct.nlm_res, ptr %resp, i32 0, i32 1
  %10 = ptrtoint ptr %status13 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call12, ptr %status13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool14.not = icmp eq i32 %call12, 0
  br i1 %tobool14.not, label %if.end18, label %if.then15

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000, i32 %call12)
  %cmp = icmp eq i32 %call12, 30000
  %cond17 = select i1 %cmp, i32 60000, i32 0
  br label %cleanup

if.end18:                                         ; preds = %if.end11
  %11 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %file, align 4
  %lock = getelementptr inbounds %struct.nlm_args, ptr %1, i32 0, i32 1
  %call19 = call i32 @nlmsvc_unlock(ptr noundef %cond, ptr noundef %12, ptr noundef %lock) #7
  %rq_vers = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 29
  %13 = ptrtoint ptr %rq_vers to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rq_vers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %14)
  %cmp.not.i = icmp eq i32 %14, 4
  br i1 %cmp.not.i, label %if.end18.cast_to_nlm.exit_crit_edge, label %if.then.i

if.end18.cast_to_nlm.exit_crit_edge:              ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cast_to_nlm.exit

if.then.i:                                        ; preds = %if.end18
  %15 = zext i32 %call19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %call19, label %sw.default.i [
    i32 0, label %if.then.i.cast_to_nlm.exit_crit_edge
    i32 1, label %if.then.i.cast_to_nlm.exit_crit_edge59
    i32 2, label %if.then.i.cast_to_nlm.exit_crit_edge60
    i32 3, label %if.then.i.cast_to_nlm.exit_crit_edge61
    i32 4, label %if.then.i.cast_to_nlm.exit_crit_edge62
    i32 30000, label %if.then.i.cast_to_nlm.exit_crit_edge63
    i32 5, label %sw.bb1.i
  ]

if.then.i.cast_to_nlm.exit_crit_edge63:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cast_to_nlm.exit

if.then.i.cast_to_nlm.exit_crit_edge62:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cast_to_nlm.exit

if.then.i.cast_to_nlm.exit_crit_edge61:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cast_to_nlm.exit

if.then.i.cast_to_nlm.exit_crit_edge60:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cast_to_nlm.exit

if.then.i.cast_to_nlm.exit_crit_edge59:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cast_to_nlm.exit

if.then.i.cast_to_nlm.exit_crit_edge:             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cast_to_nlm.exit

sw.bb1.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cast_to_nlm.exit

sw.default.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cast_to_nlm.exit

cast_to_nlm.exit:                                 ; preds = %sw.default.i, %sw.bb1.i, %if.then.i.cast_to_nlm.exit_crit_edge, %if.then.i.cast_to_nlm.exit_crit_edge59, %if.then.i.cast_to_nlm.exit_crit_edge60, %if.then.i.cast_to_nlm.exit_crit_edge61, %if.then.i.cast_to_nlm.exit_crit_edge62, %if.then.i.cast_to_nlm.exit_crit_edge63, %if.end18.cast_to_nlm.exit_crit_edge
  %status.addr.0.i = phi i32 [ 2, %sw.default.i ], [ 1, %sw.bb1.i ], [ %call19, %if.then.i.cast_to_nlm.exit_crit_edge ], [ %call19, %if.then.i.cast_to_nlm.exit_crit_edge59 ], [ %call19, %if.then.i.cast_to_nlm.exit_crit_edge60 ], [ %call19, %if.then.i.cast_to_nlm.exit_crit_edge61 ], [ %call19, %if.then.i.cast_to_nlm.exit_crit_edge62 ], [ %call19, %if.then.i.cast_to_nlm.exit_crit_edge63 ], [ %call19, %if.end18.cast_to_nlm.exit_crit_edge ]
  %16 = ptrtoint ptr %status13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %status.addr.0.i, ptr %status13, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %17 = load i32, ptr @nlm_debug, align 4
  %and23 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %cast_to_nlm.exit.do.end40_crit_edge, label %do.end34, !prof !173

cast_to_nlm.exit.do.end40_crit_edge:              ; preds = %cast_to_nlm.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end40

do.end34:                                         ; preds = %cast_to_nlm.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %status.addr.0.i) #10
  br label %do.end40

do.end40:                                         ; preds = %do.end34, %cast_to_nlm.exit.do.end40_crit_edge
  call void @nlmsvc_release_lockowner(ptr noundef %lock) #7
  %18 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %host, align 4
  call void @nlmsvc_release_host(ptr noundef %19) #7
  %20 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %file, align 4
  call void @nlm_release_file(ptr noundef %21) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end40, %if.then15, %if.then10
  %retval.0 = phi i32 [ 0, %if.then10 ], [ %cond17, %if.then15 ], [ 0, %do.end40 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %file) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %host) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nlmsvc_unlock(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__nlmsvc_proc_granted(ptr noundef %rqstp, ptr nocapture noundef writeonly %resp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_argp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 35
  %0 = ptrtoint ptr %rq_argp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_argp, align 8
  %2 = call ptr @memcpy(ptr %resp, ptr %1, i32 36)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %3 = load i32, ptr @nlm_debug, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !173

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #10
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %rq_addr.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 3
  %lock = getelementptr inbounds %struct.nlm_args, ptr %1, i32 0, i32 1
  %call8 = tail call i32 @nlmclnt_grant(ptr noundef %rq_addr.i, ptr noundef %lock) #7
  %status = getelementptr inbounds %struct.nlm_res, ptr %resp, i32 0, i32 1
  %4 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call8, ptr %status, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %5 = load i32, ptr @nlm_debug, align 4
  %and10 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %do.end6.do.end27_crit_edge, label %do.end21, !prof !173

do.end6.do.end27_crit_edge:                       ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end27

do.end21:                                         ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #9
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef %call8) #10
  br label %do.end27

do.end27:                                         ; preds = %do.end21, %do.end6.do.end27_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nlmclnt_grant(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nlmsvc_callback(ptr noundef %rqstp, i32 noundef %proc, ptr nocapture noundef readonly %func) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_argp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 35
  %0 = ptrtoint ptr %rq_argp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_argp, align 8
  %lock = getelementptr inbounds %struct.nlm_args, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock, align 8
  %len = getelementptr inbounds %struct.nlm_args, ptr %1, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %call2 = tail call ptr @nlmsvc_lookup_host(ptr noundef %rqstp, ptr noundef %3, i32 noundef %5) #7
  %cmp = icmp eq ptr %call2, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @nlm_alloc_call(ptr noundef nonnull %call2) #7
  tail call void @nlmsvc_release_host(ptr noundef nonnull %call2) #7
  %cmp4 = icmp eq ptr %call3, null
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %a_res = getelementptr inbounds %struct.nlm_rqst, ptr %call3, i32 0, i32 4
  %call7 = tail call i32 %func(ptr noundef %rqstp, ptr noundef %a_res) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8.not = icmp eq i32 %call7, 0
  br i1 %cmp8.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end6
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call3, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !171
  tail call void @llvm.prefetch.p0(ptr nonnull %call3, i32 1, i32 3, i32 1) #7
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call3, ptr nonnull %call3, i32 1, ptr nonnull elementtype(i32) %call3) #7, !srcloc !172
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.end.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !173

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call3, i32 noundef 3) #7
  br label %cleanup

if.end.i:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !174
  %a_host.i = getelementptr inbounds %struct.nlm_rqst, ptr %call3, i32 0, i32 2
  %7 = ptrtoint ptr %a_host.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %a_host.i, align 8
  tail call void @nlmsvc_release_host(ptr noundef %8) #7
  tail call void @kfree(ptr noundef nonnull %call3) #7
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %a_flags = getelementptr inbounds %struct.nlm_rqst, ptr %call3, i32 0, i32 1
  %9 = ptrtoint ptr %a_flags to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %a_flags, align 4
  %call11 = tail call i32 @nlm_async_reply(ptr noundef nonnull %call3, i32 noundef %proc, ptr noundef nonnull @nlmsvc_callback_ops) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  %. = select i1 %cmp12, i32 5, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 5, %entry.cleanup_crit_edge ], [ 5, %if.end.cleanup_crit_edge ], [ %., %if.end10 ], [ %call7, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %call7, %if.then10.i.i.i.i ], [ %call7, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nlm_alloc_call(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nlm_async_reply(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @nlmsvc_callback_exit(ptr nocapture noundef %task, ptr nocapture noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nlmsvc_callback_release(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %data, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !171
  tail call void @llvm.prefetch.p0(ptr %data, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %data, ptr %data, i32 1, ptr elementtype(i32) %data) #7, !srcloc !172
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.end.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.nlmsvc_release_call.exit_crit_edge, label %if.then10.i.i.i.i, !prof !173

if.end5.i.i.i.i.nlmsvc_release_call.exit_crit_edge: ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nlmsvc_release_call.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %data, i32 noundef 3) #7
  br label %nlmsvc_release_call.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !174
  %a_host.i = getelementptr inbounds %struct.nlm_rqst, ptr %data, i32 0, i32 2
  %1 = ptrtoint ptr %a_host.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %a_host.i, align 8
  tail call void @nlmsvc_release_host(ptr noundef %2) #7
  tail call void @kfree(ptr noundef %data) #7
  br label %nlmsvc_release_call.exit

nlmsvc_release_call.exit:                         ; preds = %if.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.nlmsvc_release_call.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nlmsvc_grant_reply(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @svc_print_addr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nlm_host_rebooted(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nlmsvc_share_file(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nlmsvc_unshare_file(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nlmsvc_free_host_resources(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 79)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 79)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !49, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70, !72, !73, !74, !75, !77, !78, !79, !81, !82, !83, !84, !86, !87, !88, !90, !91, !92, !93, !95, !96, !97, !99, !100, !101, !102, !104, !106, !107, !108, !109, !111, !112, !113, !114, !116, !117, !118, !119, !121, !122, !123, !124, !126, !127, !128, !129, !131, !132, !133, !134, !136, !137, !138, !140, !141, !142, !143, !145, !146, !147, !149, !150, !151, !152, !154, !155, !156, !158, !159, !160}
!llvm.named.register.sp = !{!161}
!llvm.module.flags = !{!162, !163, !164, !165, !166, !167, !168, !169}
!llvm.ident = !{!170}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/lockd/svcproc.c", i32 557, i32 14}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/lockd/svcproc.c", i32 566, i32 14}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/lockd/svcproc.c", i32 575, i32 14}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/lockd/svcproc.c", i32 584, i32 14}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/lockd/svcproc.c", i32 593, i32 14}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/lockd/svcproc.c", i32 602, i32 14}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/lockd/svcproc.c", i32 611, i32 14}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/lockd/svcproc.c", i32 620, i32 14}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/lockd/svcproc.c", i32 629, i32 14}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/lockd/svcproc.c", i32 638, i32 14}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/lockd/svcproc.c", i32 647, i32 14}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/lockd/svcproc.c", i32 656, i32 14}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/lockd/svcproc.c", i32 665, i32 14}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/lockd/svcproc.c", i32 674, i32 14}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/lockd/svcproc.c", i32 683, i32 14}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/lockd/svcproc.c", i32 692, i32 14}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/lockd/svcproc.c", i32 701, i32 14}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/lockd/svcproc.c", i32 710, i32 14}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/lockd/svcproc.c", i32 737, i32 14}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/lockd/svcproc.c", i32 746, i32 14}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/lockd/svcproc.c", i32 755, i32 14}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/lockd/svcproc.c", i32 764, i32 14}
!44 = !{ptr @nlmsvc_procedures, !45, !"nlmsvc_procedures", i1 false, i1 false}
!45 = !{!"../fs/lockd/svcproc.c", i32 549, i32 28}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/lockd/svcproc.c", i32 106, i32 2}
!48 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @nlmsvc_proc_null._entry, !47, !"_entry", i1 false, i1 false}
!51 = !{ptr @nlmsvc_proc_null._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/lockd/svcproc.c", i32 121, i32 2}
!54 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @__nlmsvc_proc_test._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @__nlmsvc_proc_test._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/lockd/svcproc.c", i32 133, i32 3}
!59 = !{ptr @__nlmsvc_proc_test._entry.27, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @__nlmsvc_proc_test._entry_ptr.29, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/lockd/svcproc.c", i32 156, i32 2}
!63 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @__nlmsvc_proc_lock._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @__nlmsvc_proc_lock._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/lockd/svcproc.c", i32 183, i32 3}
!68 = !{ptr @__nlmsvc_proc_lock._entry.32, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @__nlmsvc_proc_lock._entry_ptr.34, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/lockd/svcproc.c", i32 205, i32 2}
!72 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @__nlmsvc_proc_cancel._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @__nlmsvc_proc_cancel._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.38, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/lockd/svcproc.c", i32 222, i32 2}
!77 = !{ptr @__nlmsvc_proc_cancel._entry.37, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @__nlmsvc_proc_cancel._entry_ptr.39, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.40, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../fs/lockd/svcproc.c", i32 246, i32 2}
!81 = !{ptr @.str.41, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @__nlmsvc_proc_unlock._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @__nlmsvc_proc_unlock._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.43, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../fs/lockd/svcproc.c", i32 263, i32 2}
!86 = !{ptr @__nlmsvc_proc_unlock._entry.42, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @__nlmsvc_proc_unlock._entry_ptr.44, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.45, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../fs/lockd/svcproc.c", i32 287, i32 2}
!90 = !{ptr @.str.46, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @__nlmsvc_proc_granted._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @__nlmsvc_proc_granted._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.48, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../fs/lockd/svcproc.c", i32 289, i32 2}
!95 = !{ptr @__nlmsvc_proc_granted._entry.47, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @__nlmsvc_proc_granted._entry_ptr.49, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.50, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../fs/lockd/svcproc.c", i32 362, i32 2}
!99 = !{ptr @.str.51, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @nlmsvc_proc_test_msg._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @nlmsvc_proc_test_msg._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @nlmsvc_callback_ops, !103, !"nlmsvc_callback_ops", i1 false, i1 false}
!103 = !{!"../fs/lockd/svcproc.c", i32 319, i32 34}
!104 = !{ptr @.str.52, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../fs/lockd/svcproc.c", i32 368, i32 2}
!106 = !{ptr @.str.53, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @nlmsvc_proc_lock_msg._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @nlmsvc_proc_lock_msg._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.54, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../fs/lockd/svcproc.c", i32 374, i32 2}
!111 = !{ptr @.str.55, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @nlmsvc_proc_cancel_msg._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @nlmsvc_proc_cancel_msg._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.56, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../fs/lockd/svcproc.c", i32 381, i32 2}
!116 = !{ptr @.str.57, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @nlmsvc_proc_unlock_msg._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @nlmsvc_proc_unlock_msg._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.58, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../fs/lockd/svcproc.c", i32 388, i32 2}
!121 = !{ptr @.str.59, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @nlmsvc_proc_granted_msg._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @nlmsvc_proc_granted_msg._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.60, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../fs/lockd/svcproc.c", i32 526, i32 2}
!126 = !{ptr @.str.61, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @nlmsvc_proc_granted_res._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @nlmsvc_proc_granted_res._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.62, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../fs/lockd/svcproc.c", i32 502, i32 2}
!131 = !{ptr @.str.63, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @nlmsvc_proc_sm_notify._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @nlmsvc_proc_sm_notify._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.65, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../fs/lockd/svcproc.c", i32 506, i32 3}
!136 = !{ptr @nlmsvc_proc_sm_notify._entry.64, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @nlmsvc_proc_sm_notify._entry_ptr.66, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.67, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../fs/lockd/svcproc.c", i32 403, i32 2}
!140 = !{ptr @.str.68, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @nlmsvc_proc_share._entry, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @nlmsvc_proc_share._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.70, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../fs/lockd/svcproc.c", i32 420, i32 2}
!145 = !{ptr @nlmsvc_proc_share._entry.69, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @nlmsvc_proc_share._entry_ptr.71, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.72, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../fs/lockd/svcproc.c", i32 438, i32 2}
!149 = !{ptr @.str.73, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @nlmsvc_proc_unshare._entry, !148, !"_entry", i1 false, i1 false}
!151 = !{ptr @nlmsvc_proc_unshare._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.75, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../fs/lockd/svcproc.c", i32 455, i32 2}
!154 = !{ptr @nlmsvc_proc_unshare._entry.74, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @nlmsvc_proc_unshare._entry_ptr.76, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.77, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../fs/lockd/svcproc.c", i32 470, i32 2}
!158 = !{ptr @.str.78, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @nlmsvc_proc_nm_lock._entry, !157, !"_entry", i1 false, i1 false}
!160 = !{ptr @nlmsvc_proc_nm_lock._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!161 = !{!"sp"}
!162 = !{i32 1, !"wchar_size", i32 2}
!163 = !{i32 1, !"min_enum_size", i32 4}
!164 = !{i32 8, !"branch-target-enforcement", i32 0}
!165 = !{i32 8, !"sign-return-address", i32 0}
!166 = !{i32 8, !"sign-return-address-all", i32 0}
!167 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!168 = !{i32 7, !"uwtable", i32 1}
!169 = !{i32 7, !"frame-pointer", i32 2}
!170 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!171 = !{i64 2148307487}
!172 = !{i64 2148221951, i64 2148221983, i64 2148222012, i64 2148222046, i64 2148222077, i64 2148222100}
!173 = !{!"branch_weights", i32 2000, i32 1}
!174 = !{i64 2149347829}
!175 = !{!"auto-init"}
