; ModuleID = '/llk/IR_all_yes/fs/lockd/clntproc.c_pt.bc'
source_filename = "../fs/lockd/clntproc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+nlmclnt_proc\22, \22a\22\09"
module asm "\09.weak\09__crc_nlmclnt_proc\09\09\09\09"
module asm "\09.long\09__crc_nlmclnt_proc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nlmclnt_proc:\09\09\09\09\09"
module asm "\09.asciz \09\22nlmclnt_proc\22\09\09\09\09\09"
module asm "__kstrtabns_nlmclnt_proc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.file_lock_operations = type { ptr, ptr }
%struct.rpc_call_ops = type { ptr, ptr, ptr, ptr }
%struct.nlm_cookie = type { [32 x i8], i32 }
%struct.nlm_host = type { %struct.hlist_node, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, i32, i16, i8, %struct.wait_queue_head, %struct.rw_semaphore, i32, i32, i32, %struct.refcount_struct, %struct.mutex, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, [65 x i8], ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.__kernel_sockaddr_storage = type { %union.anon }
%union.anon = type { ptr, [124 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.file_lock = type { ptr, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, ptr, i32, i8, i32, i32, %struct.wait_queue_head, ptr, i64, i64, ptr, i32, i32, ptr, ptr, %union.anon.114 }
%union.anon.114 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, ptr, %struct.list_head }
%struct.nlm_lockowner = type { %struct.list_head, %struct.refcount_struct, ptr, ptr, i32 }
%struct.nlm_rqst = type { %struct.refcount_struct, i32, ptr, %struct.nlm_args, %struct.nlm_res, ptr, i32, [74 x i8], ptr }
%struct.nlm_args = type { %struct.nlm_cookie, %struct.nlm_lock, i32, i32, i32, i32, i32, i32 }
%struct.nlm_lock = type { ptr, i32, %struct.nfs_fh, %struct.xdr_netobj, i32, %struct.file_lock }
%struct.nfs_fh = type { i16, [128 x i8] }
%struct.xdr_netobj = type { i32, ptr }
%struct.nlm_res = type { %struct.nlm_cookie, i32, %struct.nlm_lock }
%struct.rpc_clnt = type { %struct.refcount_struct, i32, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.spinlock, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i8, ptr, ptr, %struct.atomic_t, i32, [65 x i8], %struct.rpc_pipe_dir_head, ptr, %struct.rpc_rtt, %struct.rpc_timeout, ptr, ptr, ptr, ptr, %union.anon.130, ptr, i32 }
%struct.rpc_pipe_dir_head = type { %struct.list_head, ptr }
%struct.rpc_rtt = type { i32, [5 x i32], [5 x i32], [5 x i32] }
%struct.rpc_timeout = type { i32, i32, i32, i32, i8 }
%union.anon.130 = type { %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.file = type { %union.anon.7, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.7 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.nfs_open_context = type { %struct.nfs_lock_context, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.callback_head }
%struct.nfs_lock_context = type { %struct.refcount_struct, %struct.list_head, ptr, ptr, %struct.atomic_t, %struct.callback_head }
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
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.100 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.nlmclnt_operations = type { ptr, ptr, ptr }
%struct.rpc_task_setup = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i8 }
%struct.rpc_message = type { ptr, ptr, ptr, ptr }
%struct.rpc_procinfo = type { i32, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.rpc_task = type { %struct.atomic_t, i32, %struct.list_head, ptr, ptr, i32, i32, ptr, %union.anon.4, i32, %struct.rpc_message, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i16, i16, i16, i8 }
%union.anon.4 = type { %struct.work_struct }

@nlm_cookie = internal global { %struct.atomic_t, [28 x i8] } { %struct.atomic_t { i32 4660 }, [28 x i8] zeroinitializer }, align 32
@nlm_debug = external dso_local local_unnamed_addr global i32, align 4
@nlmclnt_proc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 194, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"lockd: clnt proc returns %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nlmclnt_proc\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fs/lockd/clntproc.c\00", [44 x i8] zeroinitializer }, align 32
@nlmclnt_proc._entry_ptr = internal global ptr @nlmclnt_proc._entry, section ".printk_index", align 4
@__kstrtab_nlmclnt_proc = external dso_local constant [0 x i8], align 1
@__kstrtabns_nlmclnt_proc = external dso_local constant [0 x i8], align 1
@__ksymtab_nlmclnt_proc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nlmclnt_proc to i32), ptr @__kstrtab_nlmclnt_proc, ptr @__kstrtabns_nlmclnt_proc }, section "___ksymtab_gpl+nlmclnt_proc", align 4
@nlm_alloc_call._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 217, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"nlm_alloc_call: failed, waiting for memory\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nlm_alloc_call\00", [17 x i8] zeroinitializer }, align 32
@nlm_alloc_call._entry_ptr = internal global ptr @nlm_alloc_call._entry, section ".printk_index", align 4
@nlmclnt_reclaim._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 640, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\014lockd: failed to reclaim lock for pid %d (errno %d, status %d)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nlmclnt_reclaim\00", [16 x i8] zeroinitializer }, align 32
@nlmclnt_reclaim._entry_ptr = internal global ptr @nlmclnt_reclaim._entry, section ".printk_index", align 4
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%u@%s\00", [26 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nlmclnt_release_lockargs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__nlm_async_call._entry = internal constant %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 351, ptr null, ptr null }, align 1
@.str.8 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"lockd: call procedure %d on %s (async)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"__nlm_async_call\00", [47 x i8] zeroinitializer }, align 32
@__nlm_async_call._entry_ptr = internal global ptr @__nlm_async_call._entry, section ".printk_index", align 4
@nlm_stat_to_errno._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 843, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\015lockd: unexpected status NLM_BLOCKED\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nlm_stat_to_errno\00", [46 x i8] zeroinitializer }, align 32
@nlm_stat_to_errno._entry_ptr = internal global ptr @nlm_stat_to_errno._entry, section ".printk_index", align 4
@nlm_stat_to_errno._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.2, i32 859, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\015lockd: unexpected server status %d\0A\00", [58 x i8] zeroinitializer }, align 32
@nlm_stat_to_errno._entry_ptr.14 = internal global ptr @nlm_stat_to_errno._entry.12, section ".printk_index", align 4
@nlmclnt_lock_ops = internal constant { %struct.file_lock_operations, [24 x i8] } { %struct.file_lock_operations { ptr @nlmclnt_locks_copy_lock, ptr @nlmclnt_locks_release_private }, [24 x i8] zeroinitializer }, align 32
@nsm_local_state = external dso_local local_unnamed_addr global i32, align 4
@nlmclnt_lock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 579, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014%s: VFS is out of sync with lock manager!\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nlmclnt_lock\00", [19 x i8] zeroinitializer }, align 32
@nlmclnt_lock._entry_ptr = internal global ptr @nlmclnt_lock._entry, section ".printk_index", align 4
@nlmclnt_lock._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.2, i32 603, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"lockd: lock attempt ended in fatal error.\0A       Attempting to unlock.\0A\00", [56 x i8] zeroinitializer }, align 32
@nlmclnt_lock._entry_ptr.19 = internal global ptr @nlmclnt_lock._entry.17, section ".printk_index", align 4
@nlmclnt_unlock_ops = internal constant { %struct.rpc_call_ops, [16 x i8] } { %struct.rpc_call_ops { ptr @nlmclnt_unlock_prepare, ptr @nlmclnt_unlock_callback, ptr null, ptr @nlmclnt_rpc_release }, [16 x i8] zeroinitializer }, align 32
@nlmclnt_cancel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 764, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"lockd: blocking lock attempt was interrupted by a signal.\0A       Attempting to cancel lock.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nlmclnt_cancel\00", [17 x i8] zeroinitializer }, align 32
@nlmclnt_cancel._entry_ptr = internal global ptr @nlmclnt_cancel._entry, section ".printk_index", align 4
@nlmclnt_cancel_ops = internal constant { %struct.rpc_call_ops, [16 x i8] } { %struct.rpc_call_ops { ptr null, ptr @nlmclnt_cancel_callback, ptr null, ptr @nlmclnt_rpc_release }, [16 x i8] zeroinitializer }, align 32
@nlmclnt_cancel_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 793, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"lockd: CANCEL call error %d, retrying.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nlmclnt_cancel_callback\00", [40 x i8] zeroinitializer }, align 32
@nlmclnt_cancel_callback._entry_ptr = internal global ptr @nlmclnt_cancel_callback._entry, section ".printk_index", align 4
@nlmclnt_cancel_callback._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.2, i32 804, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"lockd: CANCEL failed (server has no locks)\0A\00", [52 x i8] zeroinitializer }, align 32
@nlmclnt_cancel_callback._entry_ptr.26 = internal global ptr @nlmclnt_cancel_callback._entry.24, section ".printk_index", align 4
@nlmclnt_cancel_callback._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.23, ptr @.str.2, i32 808, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\015lockd: weird return %d for CANCEL call\0A\00", [54 x i8] zeroinitializer }, align 32
@nlmclnt_cancel_callback._entry_ptr.29 = internal global ptr @nlmclnt_cancel_callback._entry.27, section ".printk_index", align 4
@nlmclnt_unlock_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 724, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"lockd: unlock failed (err = %d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nlmclnt_unlock_callback\00", [40 x i8] zeroinitializer }, align 32
@nlmclnt_unlock_callback._entry_ptr = internal global ptr @nlmclnt_unlock_callback._entry, section ".printk_index", align 4
@nlmclnt_unlock_callback._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.2, i32 738, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014lockd: unexpected unlock status: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@nlmclnt_unlock_callback._entry_ptr.34 = internal global ptr @nlmclnt_unlock_callback._entry.32, section ".printk_index", align 4
@nlmclnt_call._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 275, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"lockd: call procedure %d on %s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nlmclnt_call\00", [19 x i8] zeroinitializer }, align 32
@nlmclnt_call._entry_ptr = internal global ptr @nlmclnt_call._entry, section ".printk_index", align 4
@nlmclnt_call._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.2, i32 288, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"lockd: rpc_call returned error %d\0A\00", [61 x i8] zeroinitializer }, align 32
@nlmclnt_call._entry_ptr.39 = internal global ptr @nlmclnt_call._entry.37, section ".printk_index", align 4
@nlmclnt_call._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.36, ptr @.str.2, i32 307, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"lockd: server in grace period\0A\00", [33 x i8] zeroinitializer }, align 32
@nlmclnt_call._entry_ptr.42 = internal global ptr @nlmclnt_call._entry.40, section ".printk_index", align 4
@nlmclnt_call._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.36, ptr @.str.2, i32 310, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014lockd: spurious grace period reject?!\0A\00", [55 x i8] zeroinitializer }, align 32
@nlmclnt_call._entry_ptr.45 = internal global ptr @nlmclnt_call._entry.43, section ".printk_index", align 4
@nlmclnt_call._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.36, ptr @.str.2, i32 319, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"lockd: server returns status %d\0A\00", [63 x i8] zeroinitializer }, align 32
@nlmclnt_call._entry_ptr.48 = internal global ptr @nlmclnt_call._entry.46, section ".printk_index", align 4
@.str.49 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/freezer.h\00", [40 x i8] zeroinitializer }, align 32
@system_freezing_cnt = external dso_local global %struct.atomic_t, align 4
@nlmclnt_unlock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 694, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"lockd: unexpected unlock status: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nlmclnt_unlock\00", [17 x i8] zeroinitializer }, align 32
@nlmclnt_unlock._entry_ptr = internal global ptr @nlmclnt_unlock._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 5, i64 6, i64 7, i64 12, i64 13, i64 14]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@__sancov_gen_cov_switch_values.53 = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.55 = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.56 = internal global [7 x i64] [i64 5, i64 32, i64 4294966784, i64 4294967185, i64 4294967186, i64 4294967189, i64 4294967203]
@__sancov_gen_cov_switch_values.57 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 32, i64 4294967283, i64 4294967291]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@___asan_gen_.60 = private unnamed_addr constant [11 x i8] c"nlm_cookie\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 40, i32 17 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 194, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 217, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 638, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 136, i32 63 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 350, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 843, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 858, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant [17 x i8] c"nlmclnt_lock_ops\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 474, i32 42 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 579, i32 4 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 602, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant [19 x i8] c"nlmclnt_unlock_ops\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 747, i32 34 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 763, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant [19 x i8] c"nlmclnt_cancel_ops\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 823, i32 34 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 792, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 804, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 807, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 724, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 738, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 274, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 288, i32 4 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 307, i32 4 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 309, i32 5 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 318, i32 4 }
@___asan_gen_.220 = private unnamed_addr constant [27 x i8] c"../include/linux/freezer.h\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 57, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.228 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.229 = private constant [23 x i8] c"../fs/lockd/clntproc.c\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 693, i32 3 }
@llvm.compiler.used = appending global [79 x ptr] [ptr @__ksymtab_nlmclnt_proc, ptr @__nlm_async_call._entry, ptr @__nlm_async_call._entry_ptr, ptr @nlm_alloc_call._entry, ptr @nlm_alloc_call._entry_ptr, ptr @nlm_stat_to_errno._entry, ptr @nlm_stat_to_errno._entry.12, ptr @nlm_stat_to_errno._entry_ptr, ptr @nlm_stat_to_errno._entry_ptr.14, ptr @nlmclnt_call._entry, ptr @nlmclnt_call._entry.37, ptr @nlmclnt_call._entry.40, ptr @nlmclnt_call._entry.43, ptr @nlmclnt_call._entry.46, ptr @nlmclnt_call._entry_ptr, ptr @nlmclnt_call._entry_ptr.39, ptr @nlmclnt_call._entry_ptr.42, ptr @nlmclnt_call._entry_ptr.45, ptr @nlmclnt_call._entry_ptr.48, ptr @nlmclnt_cancel._entry, ptr @nlmclnt_cancel._entry_ptr, ptr @nlmclnt_cancel_callback._entry, ptr @nlmclnt_cancel_callback._entry.24, ptr @nlmclnt_cancel_callback._entry.27, ptr @nlmclnt_cancel_callback._entry_ptr, ptr @nlmclnt_cancel_callback._entry_ptr.26, ptr @nlmclnt_cancel_callback._entry_ptr.29, ptr @nlmclnt_lock._entry, ptr @nlmclnt_lock._entry.17, ptr @nlmclnt_lock._entry_ptr, ptr @nlmclnt_lock._entry_ptr.19, ptr @nlmclnt_proc._entry, ptr @nlmclnt_proc._entry_ptr, ptr @nlmclnt_reclaim._entry, ptr @nlmclnt_reclaim._entry_ptr, ptr @nlmclnt_unlock._entry, ptr @nlmclnt_unlock._entry_ptr, ptr @nlmclnt_unlock_callback._entry, ptr @nlmclnt_unlock_callback._entry.32, ptr @nlmclnt_unlock_callback._entry_ptr, ptr @nlmclnt_unlock_callback._entry_ptr.34, ptr @nlm_cookie, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @nlmclnt_lock_ops, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @nlmclnt_unlock_ops, ptr @.str.20, ptr @.str.21, ptr @nlmclnt_cancel_ops, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.51], section "llvm.metadata"
@0 = internal global [57 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlm_cookie to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmclnt_proc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlm_alloc_call._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmclnt_reclaim._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlm_stat_to_errno._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlm_stat_to_errno._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmclnt_lock_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmclnt_lock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmclnt_lock._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmclnt_unlock_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmclnt_cancel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmclnt_cancel_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmclnt_cancel_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmclnt_cancel_callback._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmclnt_cancel_callback._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmclnt_unlock_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmclnt_unlock_callback._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmclnt_call._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmclnt_call._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmclnt_call._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmclnt_call._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmclnt_call._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmclnt_unlock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nlmclnt_next_cookie(ptr nocapture noundef writeonly %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @nlm_cookie, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !118
  tail call void @llvm.prefetch.p0(ptr nonnull @nlm_cookie, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @nlm_cookie, ptr nonnull @nlm_cookie, i32 1, ptr nonnull elementtype(i32) @nlm_cookie) #8, !srcloc !119
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !120
  %1 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %asmresult.i.i.i.i, ptr %c, align 4
  %len = getelementptr inbounds %struct.nlm_cookie, ptr %c, i32 0, i32 1
  %2 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4, ptr %len, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nlmclnt_proc(ptr noundef %host, i32 noundef %cmd, ptr noundef %fl, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %h_nlmclnt_ops = getelementptr inbounds %struct.nlm_host, ptr %host, i32 0, i32 28
  %0 = ptrtoint ptr %h_nlmclnt_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %h_nlmclnt_ops, align 4
  %call1 = tail call ptr @nlm_alloc_call(ptr noundef %host)
  %cmp = icmp eq ptr %call1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.if.end5_crit_edge, label %land.lhs.true

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %land.lhs.true.if.end5_crit_edge, label %if.then3

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %3(ptr noundef %data) #8
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %fl_u.i = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 19
  %4 = ptrtoint ptr %fl_u.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %fl_u.i, align 4
  %fl_owner.i = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 5
  %5 = ptrtoint ptr %fl_owner.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fl_owner.i, align 4
  %h_lock.i.i = getelementptr inbounds %struct.nlm_host, ptr %host, i32 0, i32 20
  tail call void @_raw_spin_lock(ptr noundef %h_lock.i.i) #8
  %h_lockowners.i.i.i = getelementptr inbounds %struct.nlm_host, ptr %host, i32 0, i32 19
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i.for.cond.i.i.i_crit_edge, %if.end5
  %lockowner.0.in.i.i.i = phi ptr [ %h_lockowners.i.i.i, %if.end5 ], [ %lockowner.0.i.i.i, %for.body.i.i.i.for.cond.i.i.i_crit_edge ]
  %7 = ptrtoint ptr %lockowner.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %lockowner.0.i.i.i = load ptr, ptr %lockowner.0.in.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %lockowner.0.i.i.i, %h_lockowners.i.i.i
  br i1 %cmp.not.i.i.i, label %for.cond.i.i.i.if.then.i.i_crit_edge, label %for.body.i.i.i

for.cond.i.i.i.if.then.i.i_crit_edge:             ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %owner2.i.i.i = getelementptr inbounds %struct.nlm_lockowner, ptr %lockowner.0.i.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %owner2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %owner2.i.i.i, align 4
  %cmp3.not.i.i.i = icmp eq ptr %9, %6
  br i1 %cmp3.not.i.i.i, label %if.end.i.i.i, label %for.body.i.i.i.for.cond.i.i.i_crit_edge

for.body.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.i.i

if.end.i.i.i:                                     ; preds = %for.body.i.i.i
  %count.i.i.i.i = getelementptr inbounds %struct.nlm_lockowner, ptr %lockowner.0.i.i.i, i32 0, i32 1
  %call.i.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i.i.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %count.i.i.i.i, i32 1, i32 3, i32 1) #8
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i.i.i, ptr %count.i.i.i.i, i32 1, ptr elementtype(i32) %count.i.i.i.i) #8, !srcloc !121
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i.i, label %if.end.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i.i, !prof !122

if.end.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i:                            ; preds = %if.end.i.i.i
  %add.i.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  %11 = or i32 %add.i.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %11, -1
  br i1 %.not.i.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.i.__nlmclnt_find_lockowner.exit.i.i_crit_edge, label %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, !prof !123

if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i.__nlmclnt_find_lockowner.exit.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__nlmclnt_find_lockowner.exit.i.i

if.end15.sink.split.i.i.i.i.i.i.i:                ; preds = %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, %if.end.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i.i = phi i32 [ 2, %if.end.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count.i.i.i.i, i32 noundef %.sink.i.i.i.i.i.i.i) #8
  br label %__nlmclnt_find_lockowner.exit.i.i

__nlmclnt_find_lockowner.exit.i.i:                ; preds = %if.end15.sink.split.i.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.i.__nlmclnt_find_lockowner.exit.i.i_crit_edge
  %cmp.i.i = icmp eq ptr %lockowner.0.i.i.i, null
  br i1 %cmp.i.i, label %__nlmclnt_find_lockowner.exit.i.i.if.then.i.i_crit_edge, label %__nlmclnt_find_lockowner.exit.i.i.nlmclnt_locks_init_private.exit_crit_edge

__nlmclnt_find_lockowner.exit.i.i.nlmclnt_locks_init_private.exit_crit_edge: ; preds = %__nlmclnt_find_lockowner.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nlmclnt_locks_init_private.exit

__nlmclnt_find_lockowner.exit.i.i.if.then.i.i_crit_edge: ; preds = %__nlmclnt_find_lockowner.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %__nlmclnt_find_lockowner.exit.i.i.if.then.i.i_crit_edge, %for.cond.i.i.i.if.then.i.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %h_lock.i.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3264, i32 noundef 24) #11
  tail call void @_raw_spin_lock(ptr noundef %h_lock.i.i) #8
  br label %for.cond.i37.i.i

for.cond.i37.i.i:                                 ; preds = %for.body.i40.i.i.for.cond.i37.i.i_crit_edge, %if.then.i.i
  %lockowner.0.in.i34.i.i = phi ptr [ %h_lockowners.i.i.i, %if.then.i.i ], [ %lockowner.0.i35.i.i, %for.body.i40.i.i.for.cond.i37.i.i_crit_edge ]
  %13 = ptrtoint ptr %lockowner.0.in.i34.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %lockowner.0.i35.i.i = load ptr, ptr %lockowner.0.in.i34.i.i, align 4
  %cmp.not.i36.i.i = icmp eq ptr %lockowner.0.i35.i.i, %h_lockowners.i.i.i
  br i1 %cmp.not.i36.i.i, label %for.cond.i37.i.i.land.lhs.true.i.i_crit_edge, label %for.body.i40.i.i

for.cond.i37.i.i.land.lhs.true.i.i_crit_edge:     ; preds = %for.cond.i37.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i.i

for.body.i40.i.i:                                 ; preds = %for.cond.i37.i.i
  %owner2.i38.i.i = getelementptr inbounds %struct.nlm_lockowner, ptr %lockowner.0.i35.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %owner2.i38.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %owner2.i38.i.i, align 4
  %cmp3.not.i39.i.i = icmp eq ptr %15, %6
  br i1 %cmp3.not.i39.i.i, label %if.end.i45.i.i, label %for.body.i40.i.i.for.cond.i37.i.i_crit_edge

for.body.i40.i.i.for.cond.i37.i.i_crit_edge:      ; preds = %for.body.i40.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i37.i.i

if.end.i45.i.i:                                   ; preds = %for.body.i40.i.i
  %count.i.i41.i.i = getelementptr inbounds %struct.nlm_lockowner, ptr %lockowner.0.i35.i.i, i32 0, i32 1
  %call.i.i.i.i.i.i.i42.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i41.i.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %count.i.i41.i.i, i32 1, i32 3, i32 1) #8
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i41.i.i, ptr %count.i.i41.i.i, i32 1, ptr elementtype(i32) %count.i.i41.i.i) #8, !srcloc !121
  %asmresult.i.i.i.i.i.i.i43.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i43.i.i)
  %tobool1.not.i.i.i.i.i44.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i43.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i44.i.i, label %if.end.i45.i.i.if.end15.sink.split.i.i.i.i.i50.i.i_crit_edge, label %if.else.i.i.i.i.i48.i.i, !prof !122

if.end.i45.i.i.if.end15.sink.split.i.i.i.i.i50.i.i_crit_edge: ; preds = %if.end.i45.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i50.i.i

if.else.i.i.i.i.i48.i.i:                          ; preds = %if.end.i45.i.i
  %add.i.i.i.i.i46.i.i = add i32 %asmresult.i.i.i.i.i.i.i43.i.i, 1
  %17 = or i32 %add.i.i.i.i.i46.i.i, %asmresult.i.i.i.i.i.i.i43.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %.not.i.i.i.i.i47.i.i = icmp sgt i32 %17, -1
  br i1 %.not.i.i.i.i.i47.i.i, label %if.else.i.i.i.i.i48.i.i.__nlmclnt_find_lockowner.exit52.i.i_crit_edge, label %if.else.i.i.i.i.i48.i.i.if.end15.sink.split.i.i.i.i.i50.i.i_crit_edge, !prof !123

if.else.i.i.i.i.i48.i.i.if.end15.sink.split.i.i.i.i.i50.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i48.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i50.i.i

if.else.i.i.i.i.i48.i.i.__nlmclnt_find_lockowner.exit52.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i48.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__nlmclnt_find_lockowner.exit52.i.i

if.end15.sink.split.i.i.i.i.i50.i.i:              ; preds = %if.else.i.i.i.i.i48.i.i.if.end15.sink.split.i.i.i.i.i50.i.i_crit_edge, %if.end.i45.i.i.if.end15.sink.split.i.i.i.i.i50.i.i_crit_edge
  %.sink.i.i.i.i.i49.i.i = phi i32 [ 2, %if.end.i45.i.i.if.end15.sink.split.i.i.i.i.i50.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i48.i.i.if.end15.sink.split.i.i.i.i.i50.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count.i.i41.i.i, i32 noundef %.sink.i.i.i.i.i49.i.i) #8
  br label %__nlmclnt_find_lockowner.exit52.i.i

__nlmclnt_find_lockowner.exit52.i.i:              ; preds = %if.end15.sink.split.i.i.i.i.i50.i.i, %if.else.i.i.i.i.i48.i.i.__nlmclnt_find_lockowner.exit52.i.i_crit_edge
  %cmp5.i.i = icmp eq ptr %lockowner.0.i35.i.i, null
  br i1 %cmp5.i.i, label %__nlmclnt_find_lockowner.exit52.i.i.land.lhs.true.i.i_crit_edge, label %__nlmclnt_find_lockowner.exit52.i.i.nlmclnt_locks_init_private.exit_crit_edge

__nlmclnt_find_lockowner.exit52.i.i.nlmclnt_locks_init_private.exit_crit_edge: ; preds = %__nlmclnt_find_lockowner.exit52.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nlmclnt_locks_init_private.exit

__nlmclnt_find_lockowner.exit52.i.i.land.lhs.true.i.i_crit_edge: ; preds = %__nlmclnt_find_lockowner.exit52.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %__nlmclnt_find_lockowner.exit52.i.i.land.lhs.true.i.i_crit_edge, %for.cond.i37.i.i.land.lhs.true.i.i_crit_edge
  %cmp6.not.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp6.not.i.i, label %land.lhs.true.i.i.nlmclnt_locks_init_private.exit_crit_edge, label %if.then7.i.i

land.lhs.true.i.i.nlmclnt_locks_init_private.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nlmclnt_locks_init_private.exit

if.then7.i.i:                                     ; preds = %land.lhs.true.i.i
  %count.i.i = getelementptr inbounds %struct.nlm_lockowner, ptr %call7.i.i.i, i32 0, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #8
  %18 = ptrtoint ptr %count.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 1, ptr %count.i.i, align 8
  %owner8.i.i = getelementptr inbounds %struct.nlm_lockowner, ptr %call7.i.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %owner8.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %6, ptr %owner8.i.i, align 8
  %h_pidcount.i.i.i = getelementptr inbounds %struct.nlm_host, ptr %host, i32 0, i32 14
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %for.body.i.i.i.i.do.body.i.i.i_crit_edge, %if.then7.i.i
  %20 = ptrtoint ptr %h_pidcount.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %h_pidcount.i.i.i, align 4
  %inc.i.i.i = add i32 %21, 1
  store i32 %inc.i.i.i, ptr %h_pidcount.i.i.i, align 4
  br label %for.cond.i.i.i.i

for.cond.i.i.i.i:                                 ; preds = %for.body.i.i.i.i.for.cond.i.i.i.i_crit_edge, %do.body.i.i.i
  %lockowner.0.in.i.i.i.i = phi ptr [ %h_lockowners.i.i.i, %do.body.i.i.i ], [ %lockowner.0.i.i.i.i, %for.body.i.i.i.i.for.cond.i.i.i.i_crit_edge ]
  %22 = ptrtoint ptr %lockowner.0.in.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %lockowner.0.i.i.i.i = load ptr, ptr %lockowner.0.in.i.i.i.i, align 4
  %cmp.not.i.i.i.i = icmp eq ptr %lockowner.0.i.i.i.i, %h_lockowners.i.i.i
  br i1 %cmp.not.i.i.i.i, label %__nlm_alloc_pid.exit.i.i, label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.cond.i.i.i.i
  %pid2.i.i.i.i = getelementptr inbounds %struct.nlm_lockowner, ptr %lockowner.0.i.i.i.i, i32 0, i32 4
  %23 = ptrtoint ptr %pid2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pid2.i.i.i.i, align 4
  %cmp3.i.i.i.i = icmp eq i32 %24, %21
  br i1 %cmp3.i.i.i.i, label %for.body.i.i.i.i.do.body.i.i.i_crit_edge, label %for.body.i.i.i.i.for.cond.i.i.i.i_crit_edge

for.body.i.i.i.i.for.cond.i.i.i.i_crit_edge:      ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.i.i.i

for.body.i.i.i.i.do.body.i.i.i_crit_edge:         ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i

__nlm_alloc_pid.exit.i.i:                         ; preds = %for.cond.i.i.i.i
  %pid.i.i = getelementptr inbounds %struct.nlm_lockowner, ptr %call7.i.i.i, i32 0, i32 4
  %25 = ptrtoint ptr %pid.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %21, ptr %pid.i.i, align 4
  %call10.i.i = tail call ptr @nlm_get_host(ptr noundef %host) #8
  %host11.i.i = getelementptr inbounds %struct.nlm_lockowner, ptr %call7.i.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %host11.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call10.i.i, ptr %host11.i.i, align 4
  %27 = ptrtoint ptr %h_lockowners.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %h_lockowners.i.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %h_lockowners.i.i.i, ptr noundef %28) #8
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__nlm_alloc_pid.exit.i.i.nlmclnt_locks_init_private.exit_crit_edge

__nlm_alloc_pid.exit.i.i.nlmclnt_locks_init_private.exit_crit_edge: ; preds = %__nlm_alloc_pid.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nlmclnt_locks_init_private.exit

if.end.i.i.i.i:                                   ; preds = %__nlm_alloc_pid.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call7.i.i.i, ptr %prev1.i.i.i.i, align 4
  %30 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %28, ptr %call7.i.i.i, align 8
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %h_lockowners.i.i.i, ptr %prev3.i.i.i.i, align 4
  %32 = ptrtoint ptr %h_lockowners.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %call7.i.i.i, ptr %h_lockowners.i.i.i, align 4
  br label %nlmclnt_locks_init_private.exit

nlmclnt_locks_init_private.exit:                  ; preds = %if.end.i.i.i.i, %__nlm_alloc_pid.exit.i.i.nlmclnt_locks_init_private.exit_crit_edge, %land.lhs.true.i.i.nlmclnt_locks_init_private.exit_crit_edge, %__nlmclnt_find_lockowner.exit52.i.i.nlmclnt_locks_init_private.exit_crit_edge, %__nlmclnt_find_lockowner.exit.i.i.nlmclnt_locks_init_private.exit_crit_edge
  %res.0.i.i = phi ptr [ null, %land.lhs.true.i.i.nlmclnt_locks_init_private.exit_crit_edge ], [ %lockowner.0.i35.i.i, %__nlmclnt_find_lockowner.exit52.i.i.nlmclnt_locks_init_private.exit_crit_edge ], [ %lockowner.0.i.i.i, %__nlmclnt_find_lockowner.exit.i.i.nlmclnt_locks_init_private.exit_crit_edge ], [ %call7.i.i.i, %__nlm_alloc_pid.exit.i.i.nlmclnt_locks_init_private.exit_crit_edge ], [ %call7.i.i.i, %if.end.i.i.i.i ]
  %new.0.i.i = phi ptr [ null, %land.lhs.true.i.i.nlmclnt_locks_init_private.exit_crit_edge ], [ %call7.i.i.i, %__nlmclnt_find_lockowner.exit52.i.i.nlmclnt_locks_init_private.exit_crit_edge ], [ null, %__nlmclnt_find_lockowner.exit.i.i.nlmclnt_locks_init_private.exit_crit_edge ], [ null, %__nlm_alloc_pid.exit.i.i.nlmclnt_locks_init_private.exit_crit_edge ], [ null, %if.end.i.i.i.i ]
  tail call void @_raw_spin_unlock(ptr noundef %h_lock.i.i) #8
  tail call void @kfree(ptr noundef %new.0.i.i) #8
  %owner.i = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 19, i32 0, i32 1
  %33 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %res.0.i.i, ptr %owner.i, align 4
  %list.i = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 19, i32 0, i32 2
  %34 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %list.i, ptr %list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 19, i32 0, i32 2, i32 1
  %35 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %list.i, ptr %prev.i.i, align 4
  %fl_ops.i = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 17
  %36 = ptrtoint ptr %fl_ops.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @nlmclnt_lock_ops, ptr %fl_ops.i, align 4
  %tobool6.not = icmp eq ptr %res.0.i.i, null
  br i1 %tobool6.not, label %if.then7, label %if.end8

if.then7:                                         ; preds = %nlmclnt_locks_init_private.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @nlmclnt_release_call(ptr noundef nonnull %call1)
  br label %cleanup

if.end8:                                          ; preds = %nlmclnt_locks_init_private.exit
  %a_args.i = getelementptr inbounds %struct.nlm_rqst, ptr %call1, i32 0, i32 3
  %lock1.i = getelementptr inbounds %struct.nlm_rqst, ptr %call1, i32 0, i32 3, i32 1
  %a_host.i = getelementptr inbounds %struct.nlm_rqst, ptr %call1, i32 0, i32 2
  %37 = ptrtoint ptr %a_host.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %a_host.i, align 8
  %h_rpcclnt.i = getelementptr inbounds %struct.nlm_host, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %h_rpcclnt.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %h_rpcclnt.i, align 4
  %cl_nodename.i = getelementptr inbounds %struct.rpc_clnt, ptr %40, i32 0, i32 19
  %call.i.i.i.i79 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @nlm_cookie, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !118
  tail call void @llvm.prefetch.p0(ptr nonnull @nlm_cookie, i32 1, i32 3, i32 1) #8
  %41 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @nlm_cookie, ptr nonnull @nlm_cookie, i32 1, ptr nonnull elementtype(i32) @nlm_cookie) #8, !srcloc !119
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %41, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !120
  %42 = ptrtoint ptr %a_args.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %asmresult.i.i.i.i.i.i, ptr %a_args.i, align 4
  %len.i.i = getelementptr inbounds %struct.nlm_rqst, ptr %call1, i32 0, i32 3, i32 0, i32 1
  %43 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 4, ptr %len.i.i, align 4
  %fh.i = getelementptr inbounds %struct.nlm_rqst, ptr %call1, i32 0, i32 3, i32 1, i32 2
  %fl_file.i = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 11
  %44 = ptrtoint ptr %fl_file.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %fl_file.i, align 4
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %f_inode.i.i, align 8
  %fh.i.i = getelementptr i8, ptr %47, i32 -440
  %48 = call ptr @memcpy(ptr %fh.i, ptr %fh.i.i, i32 130)
  %49 = ptrtoint ptr %lock1.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %cl_nodename.i, ptr %lock1.i, align 8
  %a_owner.i = getelementptr inbounds %struct.nlm_rqst, ptr %call1, i32 0, i32 7
  %oh.i = getelementptr inbounds %struct.nlm_rqst, ptr %call1, i32 0, i32 3, i32 1, i32 3
  %data.i = getelementptr inbounds %struct.nlm_rqst, ptr %call1, i32 0, i32 3, i32 1, i32 3, i32 1
  %50 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %a_owner.i, ptr %data.i, align 4
  %51 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %owner.i, align 4
  %pid.i = getelementptr inbounds %struct.nlm_lockowner, ptr %52, i32 0, i32 4
  %53 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %pid.i, align 4
  %call6.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %a_owner.i, i32 noundef 74, ptr noundef nonnull @.str.7, i32 noundef %54, ptr noundef %cl_nodename.i) #8
  %55 = ptrtoint ptr %oh.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %call6.i, ptr %oh.i, align 4
  %56 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %owner.i, align 4
  %pid10.i = getelementptr inbounds %struct.nlm_lockowner, ptr %57, i32 0, i32 4
  %58 = ptrtoint ptr %pid10.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %pid10.i, align 4
  %svid.i = getelementptr inbounds %struct.nlm_rqst, ptr %call1, i32 0, i32 3, i32 1, i32 4
  %60 = ptrtoint ptr %svid.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %svid.i, align 4
  %fl_start.i = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 12
  %61 = ptrtoint ptr %fl_start.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %fl_start.i, align 8
  %fl_start12.i = getelementptr inbounds %struct.nlm_rqst, ptr %call1, i32 0, i32 3, i32 1, i32 5, i32 12
  %63 = ptrtoint ptr %fl_start12.i to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %62, ptr %fl_start12.i, align 8
  %fl_end.i = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 13
  %64 = ptrtoint ptr %fl_end.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %fl_end.i, align 8
  %fl_end14.i = getelementptr inbounds %struct.nlm_rqst, ptr %call1, i32 0, i32 3, i32 1, i32 5, i32 13
  %66 = ptrtoint ptr %fl_end14.i to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %65, ptr %fl_end14.i, align 8
  %fl_type.i = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 7
  %67 = ptrtoint ptr %fl_type.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %fl_type.i, align 4
  %fl_type16.i = getelementptr inbounds %struct.nlm_rqst, ptr %call1, i32 0, i32 3, i32 1, i32 5, i32 7
  %69 = ptrtoint ptr %fl_type16.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %fl_type16.i, align 4
  %a_callback_data = getelementptr inbounds %struct.nlm_rqst, ptr %call1, i32 0, i32 8
  %70 = ptrtoint ptr %a_callback_data to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %data, ptr %a_callback_data, align 4
  %71 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %if.end8.if.end36_crit_edge [
    i32 6, label %if.end8.if.then15_crit_edge
    i32 13, label %if.end8.if.then15_crit_edge157
    i32 7, label %if.end8.if.then15_crit_edge158
    i32 14, label %if.end8.if.then15_crit_edge159
    i32 5, label %if.end8.if.then32_crit_edge
    i32 12, label %if.end8.if.then32_crit_edge160
  ]

if.end8.if.then32_crit_edge160:                   ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then32

if.end8.if.then32_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then32

if.end8.if.then15_crit_edge159:                   ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then15

if.end8.if.then15_crit_edge158:                   ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then15

if.end8.if.then15_crit_edge157:                   ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then15

if.end8.if.then15_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then15

if.end8.if.end36_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then15:                                        ; preds = %if.end8.if.then15_crit_edge, %if.end8.if.then15_crit_edge157, %if.end8.if.then15_crit_edge158, %if.end8.if.then15_crit_edge159
  %72 = ptrtoint ptr %fl_type.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %fl_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %73)
  %cmp16.not = icmp eq i8 %73, 2
  br i1 %cmp16.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %cmd)
  %cmp19 = icmp eq i32 %cmd, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %cmd)
  %cmp21 = icmp eq i32 %cmd, 14
  %narrow = or i1 %cmp19, %cmp21
  %74 = zext i1 %narrow to i32
  %block = getelementptr inbounds %struct.nlm_rqst, ptr %call1, i32 0, i32 3, i32 2
  %75 = ptrtoint ptr %block to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %block, align 8
  %76 = ptrtoint ptr %fl_file.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %fl_file.i, align 4
  %cmp.not.i.i = icmp eq ptr %77, null
  br i1 %cmp.not.i.i, label %if.then18.nfs_file_cred.exit.i_crit_edge, label %if.then.i.i82

if.then18.nfs_file_cred.exit.i_crit_edge:         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %nfs_file_cred.exit.i

if.then.i.i82:                                    ; preds = %if.then18
  %private_data.i.i.i = getelementptr inbounds %struct.file, ptr %77, i32 0, i32 16
  %78 = ptrtoint ptr %private_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %private_data.i.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %79, null
  br i1 %tobool.not.i.i, label %if.then.i.i82.nfs_file_cred.exit.i_crit_edge, label %cleanup.i.i

if.then.i.i82.nfs_file_cred.exit.i_crit_edge:     ; preds = %if.then.i.i82
  call void @__sanitizer_cov_trace_pc() #10
  br label %nfs_file_cred.exit.i

cleanup.i.i:                                      ; preds = %if.then.i.i82
  call void @__sanitizer_cov_trace_pc() #10
  %cred.i.i = getelementptr inbounds %struct.nfs_open_context, ptr %79, i32 0, i32 3
  %80 = ptrtoint ptr %cred.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %cred.i.i, align 4
  br label %nfs_file_cred.exit.i

nfs_file_cred.exit.i:                             ; preds = %cleanup.i.i, %if.then.i.i82.nfs_file_cred.exit.i_crit_edge, %if.then18.nfs_file_cred.exit.i_crit_edge
  %retval.1.i.i = phi ptr [ %81, %cleanup.i.i ], [ null, %if.then18.nfs_file_cred.exit.i_crit_edge ], [ null, %if.then.i.i82.nfs_file_cred.exit.i_crit_edge ]
  %82 = ptrtoint ptr %a_host.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %a_host.i, align 8
  %fl_flags1.i = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 6
  %84 = ptrtoint ptr %fl_flags1.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %fl_flags1.i, align 8
  %call2.i = tail call i32 @nsm_monitor(ptr noundef %83) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %nfs_file_cred.exit.i.out.i_crit_edge, label %if.end.i

nfs_file_cred.exit.i.out.i_crit_edge:             ; preds = %nfs_file_cred.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i

if.end.i:                                         ; preds = %nfs_file_cred.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nsm_local_state to i32))
  %86 = load i32, ptr @nsm_local_state, align 4
  %state.i = getelementptr inbounds %struct.nlm_rqst, ptr %call1, i32 0, i32 3, i32 4
  %87 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %state.i, align 8
  %88 = ptrtoint ptr %fl_flags1.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %fl_flags1.i, align 8
  %or.i = or i32 %89, 8
  store i32 %or.i, ptr %fl_flags1.i, align 8
  %90 = ptrtoint ptr %fl_file.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %fl_file.i, align 4
  %f_inode.i.i.i.i = getelementptr inbounds %struct.file, ptr %91, i32 0, i32 2
  %92 = ptrtoint ptr %f_inode.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %f_inode.i.i.i.i, align 8
  %call1.i.i.i = tail call i32 @locks_lock_inode_wait(ptr noundef %93, ptr noundef %fl) #8
  %conv6.i = and i32 %85, 255
  %94 = ptrtoint ptr %fl_flags1.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %conv6.i, ptr %fl_flags1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %cmp8.i = icmp slt i32 %call1.i.i.i, 0
  br i1 %cmp8.i, label %if.end.i.out.i_crit_edge, label %if.end11.i

if.end.i.out.i_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i

if.end11.i:                                       ; preds = %if.end.i
  %call12.i = tail call ptr @nlmclnt_prepare_block(ptr noundef %83, ptr noundef %fl) #8
  %status13.i = getelementptr inbounds %struct.nlm_rqst, ptr %call1, i32 0, i32 4, i32 1
  %h_state.i = getelementptr inbounds %struct.nlm_host, ptr %83, i32 0, i32 12
  %h_rwsem.i = getelementptr inbounds %struct.nlm_host, ptr %83, i32 0, i32 11
  br label %again.i

again.i:                                          ; preds = %if.then65.i, %if.end11.i
  %95 = ptrtoint ptr %status13.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 3, ptr %status13.i, align 4
  %96 = ptrtoint ptr %h_state.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %h_state.i, align 4
  %98 = ptrtoint ptr %fl_u.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %fl_u.i, align 4
  %call15212.i = tail call fastcc i32 @nlmclnt_call(ptr noundef %retval.1.i.i, ptr noundef %call1, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15212.i)
  %cmp16213.i = icmp slt i32 %call15212.i, 0
  br i1 %cmp16213.i, label %again.i.for.end.i_crit_edge, label %again.i.if.end19.i_crit_edge

again.i.if.end19.i_crit_edge:                     ; preds = %again.i
  br label %if.end19.i

again.i.for.end.i_crit_edge:                      ; preds = %again.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

if.end19.i:                                       ; preds = %for.cond.backedge.i.if.end19.i_crit_edge, %again.i.if.end19.i_crit_edge
  %call15214.i = phi i32 [ %call15.i, %for.cond.backedge.i.if.end19.i_crit_edge ], [ %call15212.i, %again.i.if.end19.i_crit_edge ]
  %99 = ptrtoint ptr %status13.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %status13.i, align 4
  %101 = zext i32 %100 to i64
  call void @__sanitizer_cov_trace_switch(i64 %101, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %100, label %if.end19.i.if.end55thread-pre-split.i_crit_edge [
    i32 4, label %if.end19.i.for.cond.backedge.i_crit_edge
    i32 3, label %if.end29.i
  ]

if.end19.i.for.cond.backedge.i_crit_edge:         ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.backedge.i

if.end19.i.if.end55thread-pre-split.i_crit_edge:  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55thread-pre-split.i

if.end29.i:                                       ; preds = %if.end19.i
  %call30.i = tail call i32 @nlmclnt_block(ptr noundef %call12.i, ptr noundef %call1, i32 noundef 3000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %cmp31.i = icmp slt i32 %call30.i, 0
  br i1 %cmp31.i, label %if.end29.i.for.end.i_crit_edge, label %if.end34.i

if.end29.i.for.end.i_crit_edge:                   ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

if.end34.i:                                       ; preds = %if.end29.i
  %102 = ptrtoint ptr %status13.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %status13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %103)
  %cmp36.not.i = icmp eq i32 %103, 3
  br i1 %cmp36.not.i, label %if.end34.i.for.cond.backedge.i_crit_edge, label %if.end34.i.if.end55thread-pre-split.i_crit_edge

if.end34.i.if.end55thread-pre-split.i_crit_edge:  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55thread-pre-split.i

if.end34.i.for.cond.backedge.i_crit_edge:         ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.backedge.i

for.cond.backedge.i:                              ; preds = %if.end34.i.for.cond.backedge.i_crit_edge, %if.end19.i.for.cond.backedge.i_crit_edge
  %104 = ptrtoint ptr %h_state.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %h_state.i, align 4
  %106 = ptrtoint ptr %fl_u.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %fl_u.i, align 4
  %call15.i = tail call fastcc i32 @nlmclnt_call(ptr noundef %retval.1.i.i, ptr noundef %call1, i32 noundef 2) #8
  %cmp16.i = icmp slt i32 %call15.i, 0
  br i1 %cmp16.i, label %for.cond.backedge.i.for.end.i_crit_edge, label %for.cond.backedge.i.if.end19.i_crit_edge

for.cond.backedge.i.if.end19.i_crit_edge:         ; preds = %for.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i

for.cond.backedge.i.for.end.i_crit_edge:          ; preds = %for.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.cond.backedge.i.for.end.i_crit_edge, %if.end29.i.for.end.i_crit_edge, %again.i.for.end.i_crit_edge
  %status.0.ph.i = phi i32 [ %call15212.i, %again.i.for.end.i_crit_edge ], [ %call15.i, %for.cond.backedge.i.for.end.i_crit_edge ], [ %call30.i, %if.end29.i.for.end.i_crit_edge ]
  %107 = ptrtoint ptr %status13.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %.pr.i = load i32, ptr %status13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr.i)
  %cmp41.i = icmp eq i32 %.pr.i, 3
  br i1 %cmp41.i, label %if.then43.i, label %for.end.i.if.end55.i_crit_edge

for.end.i.if.end55.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55.i

if.then43.i:                                      ; preds = %for.end.i
  %108 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %block, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool.not.i = icmp eq i32 %109, 0
  br i1 %tobool.not.i, label %if.then43.i.do.body93.i_crit_edge, label %if.end47.i

if.then43.i.do.body93.i_crit_edge:                ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body93.i

if.end47.i:                                       ; preds = %if.then43.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %110 = load i32, ptr @nlm_debug, align 4
  %and.i.i = and i32 %110, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i174.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i174.i, label %if.end47.i.do.end5.i.i_crit_edge, label %do.end.i.i, !prof !123

if.end47.i.do.end5.i.i_crit_edge:                 ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5.i.i

do.end.i.i:                                       ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #12
  br label %do.end5.i.i

do.end5.i.i:                                      ; preds = %do.end.i.i, %if.end47.i.do.end5.i.i_crit_edge
  %call6.i.i = tail call ptr @nlm_alloc_call(ptr noundef %83) #8
  %tobool7.not.i.i = icmp eq ptr %call6.i.i, null
  br i1 %tobool7.not.i.i, label %do.end5.i.i.if.end55thread-pre-split.i_crit_edge, label %if.end9.i.i

do.end5.i.i.if.end55thread-pre-split.i_crit_edge: ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55thread-pre-split.i

if.end9.i.i:                                      ; preds = %do.end5.i.i
  %a_flags.i.i = getelementptr inbounds %struct.nlm_rqst, ptr %call6.i.i, i32 0, i32 1
  %111 = ptrtoint ptr %a_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 1, ptr %a_flags.i.i, align 4
  %a_args.i.i.i = getelementptr inbounds %struct.nlm_rqst, ptr %call6.i.i, i32 0, i32 3
  %lock1.i.i.i = getelementptr inbounds %struct.nlm_rqst, ptr %call6.i.i, i32 0, i32 3, i32 1
  %a_host.i.i.i = getelementptr inbounds %struct.nlm_rqst, ptr %call6.i.i, i32 0, i32 2
  %112 = ptrtoint ptr %a_host.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %a_host.i.i.i, align 8
  %h_rpcclnt.i.i.i = getelementptr inbounds %struct.nlm_host, ptr %113, i32 0, i32 5
  %114 = ptrtoint ptr %h_rpcclnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %h_rpcclnt.i.i.i, align 4
  %cl_nodename.i.i.i = getelementptr inbounds %struct.rpc_clnt, ptr %115, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @nlm_cookie, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !118
  tail call void @llvm.prefetch.p0(ptr nonnull @nlm_cookie, i32 1, i32 3, i32 1) #8
  %116 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @nlm_cookie, ptr nonnull @nlm_cookie, i32 1, ptr nonnull elementtype(i32) @nlm_cookie) #8, !srcloc !119
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %116, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !120
  %117 = ptrtoint ptr %a_args.i.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %asmresult.i.i.i.i.i.i.i.i, ptr %a_args.i.i.i, align 4
  %len.i.i.i.i = getelementptr inbounds %struct.nlm_rqst, ptr %call6.i.i, i32 0, i32 3, i32 0, i32 1
  %118 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 4, ptr %len.i.i.i.i, align 4
  %fh.i.i.i = getelementptr inbounds %struct.nlm_rqst, ptr %call6.i.i, i32 0, i32 3, i32 1, i32 2
  %119 = ptrtoint ptr %fl_file.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %fl_file.i, align 4
  %f_inode.i.i.i175.i = getelementptr inbounds %struct.file, ptr %120, i32 0, i32 2
  %121 = ptrtoint ptr %f_inode.i.i.i175.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %f_inode.i.i.i175.i, align 8
  %fh.i.i.i.i = getelementptr i8, ptr %122, i32 -440
  %123 = call ptr @memcpy(ptr %fh.i.i.i, ptr %fh.i.i.i.i, i32 130)
  %124 = ptrtoint ptr %lock1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %cl_nodename.i.i.i, ptr %lock1.i.i.i, align 8
  %a_owner.i.i.i = getelementptr inbounds %struct.nlm_rqst, ptr %call6.i.i, i32 0, i32 7
  %oh.i.i.i = getelementptr inbounds %struct.nlm_rqst, ptr %call6.i.i, i32 0, i32 3, i32 1, i32 3
  %data.i.i.i = getelementptr inbounds %struct.nlm_rqst, ptr %call6.i.i, i32 0, i32 3, i32 1, i32 3, i32 1
  %125 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %a_owner.i.i.i, ptr %data.i.i.i, align 4
  %126 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %owner.i, align 4
  %pid.i.i.i = getelementptr inbounds %struct.nlm_lockowner, ptr %127, i32 0, i32 4
  %128 = ptrtoint ptr %pid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %pid.i.i.i, align 4
  %call6.i.i.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %a_owner.i.i.i, i32 noundef 74, ptr noundef nonnull @.str.7, i32 noundef %129, ptr noundef %cl_nodename.i.i.i) #8
  %130 = ptrtoint ptr %oh.i.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %call6.i.i.i, ptr %oh.i.i.i, align 4
  %131 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %owner.i, align 4
  %pid10.i.i.i = getelementptr inbounds %struct.nlm_lockowner, ptr %132, i32 0, i32 4
  %133 = ptrtoint ptr %pid10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %pid10.i.i.i, align 4
  %svid.i.i.i = getelementptr inbounds %struct.nlm_rqst, ptr %call6.i.i, i32 0, i32 3, i32 1, i32 4
  %135 = ptrtoint ptr %svid.i.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %134, ptr %svid.i.i.i, align 4
  %136 = ptrtoint ptr %fl_start.i to i32
  call void @__asan_load8_noabort(i32 %136)
  %137 = load i64, ptr %fl_start.i, align 8
  %fl_start12.i.i.i = getelementptr inbounds %struct.nlm_rqst, ptr %call6.i.i, i32 0, i32 3, i32 1, i32 5, i32 12
  %138 = ptrtoint ptr %fl_start12.i.i.i to i32
  call void @__asan_store8_noabort(i32 %138)
  store i64 %137, ptr %fl_start12.i.i.i, align 8
  %139 = ptrtoint ptr %fl_end.i to i32
  call void @__asan_load8_noabort(i32 %139)
  %140 = load i64, ptr %fl_end.i, align 8
  %fl_end14.i.i.i = getelementptr inbounds %struct.nlm_rqst, ptr %call6.i.i, i32 0, i32 3, i32 1, i32 5, i32 13
  %141 = ptrtoint ptr %fl_end14.i.i.i to i32
  call void @__asan_store8_noabort(i32 %141)
  store i64 %140, ptr %fl_end14.i.i.i, align 8
  %142 = ptrtoint ptr %fl_type.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %fl_type.i, align 4
  %fl_type16.i.i.i = getelementptr inbounds %struct.nlm_rqst, ptr %call6.i.i, i32 0, i32 3, i32 1, i32 5, i32 7
  %144 = ptrtoint ptr %fl_type16.i.i.i to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 %143, ptr %fl_type16.i.i.i, align 4
  %block10.i.i = getelementptr inbounds %struct.nlm_rqst, ptr %call6.i.i, i32 0, i32 3, i32 2
  %145 = ptrtoint ptr %block10.i.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %109, ptr %block10.i.i, align 8
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call6.i.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr nonnull %call6.i.i, i32 1, i32 3, i32 1) #8
  %146 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call6.i.i, ptr nonnull %call6.i.i, i32 1, ptr nonnull elementtype(i32) %call6.i.i) #8, !srcloc !121
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %146, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end9.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !122

if.end9.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end9.i.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %147 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %147)
  %.not.i.i.i.i.i = icmp sgt i32 %147, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.refcount_inc.exit.i.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !123

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.refcount_inc.exit.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %refcount_inc.exit.i.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end9.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end9.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call6.i.i, i32 noundef %.sink.i.i.i.i.i) #8
  br label %refcount_inc.exit.i.i

refcount_inc.exit.i.i:                            ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.refcount_inc.exit.i.i_crit_edge
  %148 = ptrtoint ptr %fl_file.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %fl_file.i, align 4
  %cmp.not.i.i.i85 = icmp eq ptr %149, null
  br i1 %cmp.not.i.i.i85, label %refcount_inc.exit.i.i.nfs_file_cred.exit.i.i_crit_edge, label %if.then.i.i.i

refcount_inc.exit.i.i.nfs_file_cred.exit.i.i_crit_edge: ; preds = %refcount_inc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nfs_file_cred.exit.i.i

if.then.i.i.i:                                    ; preds = %refcount_inc.exit.i.i
  %private_data.i.i.i.i = getelementptr inbounds %struct.file, ptr %149, i32 0, i32 16
  %150 = ptrtoint ptr %private_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %private_data.i.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %151, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i.nfs_file_cred.exit.i.i_crit_edge, label %cleanup.i.i.i

if.then.i.i.i.nfs_file_cred.exit.i.i_crit_edge:   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nfs_file_cred.exit.i.i

cleanup.i.i.i:                                    ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %cred.i.i.i = getelementptr inbounds %struct.nfs_open_context, ptr %151, i32 0, i32 3
  %152 = ptrtoint ptr %cred.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %cred.i.i.i, align 4
  br label %nfs_file_cred.exit.i.i

nfs_file_cred.exit.i.i:                           ; preds = %cleanup.i.i.i, %if.then.i.i.i.nfs_file_cred.exit.i.i_crit_edge, %refcount_inc.exit.i.i.nfs_file_cred.exit.i.i_crit_edge
  %retval.1.i.i.i = phi ptr [ %153, %cleanup.i.i.i ], [ null, %refcount_inc.exit.i.i.nfs_file_cred.exit.i.i_crit_edge ], [ null, %if.then.i.i.i.nfs_file_cred.exit.i.i_crit_edge ]
  %call12.i.i = tail call fastcc i32 @nlmclnt_async_call(ptr noundef %retval.1.i.i.i, ptr noundef nonnull %call6.i.i, i32 noundef 3, ptr noundef nonnull @nlmclnt_cancel_ops) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %cmp.i.i86 = icmp eq i32 %call12.i.i, 0
  br i1 %cmp.i.i86, label %land.lhs.true.i.i87, label %nfs_file_cred.exit.i.i.nlmclnt_cancel.exit.thread193.i_crit_edge

nfs_file_cred.exit.i.i.nlmclnt_cancel.exit.thread193.i_crit_edge: ; preds = %nfs_file_cred.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nlmclnt_cancel.exit.thread193.i

land.lhs.true.i.i87:                              ; preds = %nfs_file_cred.exit.i.i
  %status13.i.i = getelementptr inbounds %struct.nlm_rqst, ptr %call6.i.i, i32 0, i32 4, i32 1
  %154 = ptrtoint ptr %status13.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %status13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %155)
  %cmp14.i.i = icmp eq i32 %155, 1
  br i1 %cmp14.i.i, label %land.lhs.true.i.i87.nlmclnt_cancel.exit.thread193.i_crit_edge, label %nlmclnt_cancel.exit.i

land.lhs.true.i.i87.nlmclnt_cancel.exit.thread193.i_crit_edge: ; preds = %land.lhs.true.i.i87
  call void @__sanitizer_cov_trace_pc() #10
  br label %nlmclnt_cancel.exit.thread193.i

nlmclnt_cancel.exit.thread193.i:                  ; preds = %land.lhs.true.i.i87.nlmclnt_cancel.exit.thread193.i_crit_edge, %nfs_file_cred.exit.i.i.nlmclnt_cancel.exit.thread193.i_crit_edge
  tail call void @nlmclnt_release_call(ptr noundef nonnull %call6.i.i) #8
  br label %if.end55thread-pre-split.i

nlmclnt_cancel.exit.i:                            ; preds = %land.lhs.true.i.i87
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @nlmclnt_release_call(ptr noundef nonnull %call6.i.i) #8
  br label %out_unblock.i

if.end55thread-pre-split.i:                       ; preds = %nlmclnt_cancel.exit.thread193.i, %do.end5.i.i.if.end55thread-pre-split.i_crit_edge, %if.end34.i.if.end55thread-pre-split.i_crit_edge, %if.end19.i.if.end55thread-pre-split.i_crit_edge
  %status.0190.ph.i = phi i32 [ %status.0.ph.i, %nlmclnt_cancel.exit.thread193.i ], [ %status.0.ph.i, %do.end5.i.i.if.end55thread-pre-split.i_crit_edge ], [ %call30.i, %if.end34.i.if.end55thread-pre-split.i_crit_edge ], [ %call15214.i, %if.end19.i.if.end55thread-pre-split.i_crit_edge ]
  %156 = ptrtoint ptr %status13.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %.pr196.i = load i32, ptr %status13.i, align 4
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.end55thread-pre-split.i, %for.end.i.if.end55.i_crit_edge
  %157 = phi i32 [ %.pr196.i, %if.end55thread-pre-split.i ], [ %.pr.i, %for.end.i.if.end55.i_crit_edge ]
  %status.0190.i = phi i32 [ %status.0190.ph.i, %if.end55thread-pre-split.i ], [ %status.0.ph.i, %for.end.i.if.end55.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %157)
  %cmp57.i = icmp eq i32 %157, 0
  br i1 %cmp57.i, label %if.then59.i, label %if.end79.i

if.then59.i:                                      ; preds = %if.end55.i
  tail call void @down_read(ptr noundef %h_rwsem.i) #8
  %158 = ptrtoint ptr %fl_u.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %fl_u.i, align 4
  %160 = ptrtoint ptr %h_state.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %h_state.i, align 4
  %cmp63.not.i = icmp eq i32 %159, %161
  br i1 %cmp63.not.i, label %if.end67.i, label %if.then65.i

if.then65.i:                                      ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @up_read(ptr noundef %h_rwsem.i) #8
  br label %again.i

if.end67.i:                                       ; preds = %if.then59.i
  %162 = ptrtoint ptr %fl_flags1.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %fl_flags1.i, align 8
  %or69.i = or i32 %163, 128
  store i32 %or69.i, ptr %fl_flags1.i, align 8
  %164 = ptrtoint ptr %fl_file.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %fl_file.i, align 4
  %f_inode.i.i.i178.i = getelementptr inbounds %struct.file, ptr %165, i32 0, i32 2
  %166 = ptrtoint ptr %f_inode.i.i.i178.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %f_inode.i.i.i178.i, align 8
  %call1.i.i179.i = tail call i32 @locks_lock_inode_wait(ptr noundef %167, ptr noundef %fl) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i179.i)
  %cmp71.i = icmp slt i32 %call1.i.i179.i, 0
  br i1 %cmp71.i, label %do.end.i, label %if.end67.i.if.end79.thread.i_crit_edge

if.end67.i.if.end79.thread.i_crit_edge:           ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79.thread.i

do.end.i:                                         ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #10
  %call74.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16) #12
  br label %if.end79.thread.i

if.end79.thread.i:                                ; preds = %do.end.i, %if.end67.i.if.end79.thread.i_crit_edge
  tail call void @up_read(ptr noundef %h_rwsem.i) #8
  %168 = ptrtoint ptr %fl_flags1.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %conv6.i, ptr %fl_flags1.i, align 8
  br label %if.end83.i

if.end79.i:                                       ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0190.i)
  %cmp80.i = icmp slt i32 %status.0190.i, 0
  br i1 %cmp80.i, label %if.end79.i.do.body93.i_crit_edge, label %if.end79.i.if.end83.i_crit_edge

if.end79.i.if.end83.i_crit_edge:                  ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end83.i

if.end79.i.do.body93.i_crit_edge:                 ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body93.i

if.end83.i:                                       ; preds = %if.end79.i.if.end83.i_crit_edge, %if.end79.thread.i
  %169 = ptrtoint ptr %status13.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %status13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %170)
  %cmp85.i = icmp ne i32 %170, 1
  %and.i = and i32 %85, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool88.not.i = icmp eq i32 %and.i, 0
  %or.cond.i = select i1 %cmp85.i, i1 true, i1 %tobool88.not.i
  br i1 %or.cond.i, label %if.else.i, label %if.end83.i.out_unblock.i_crit_edge

if.end83.i.out_unblock.i_crit_edge:               ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unblock.i

if.else.i:                                        ; preds = %if.end83.i
  %171 = zext i32 %170 to i64
  call void @__sanitizer_cov_trace_switch(i64 %171, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %170, label %do.end10.i.i [
    i32 0, label %if.else.i.out_unblock.i_crit_edge
    i32 1, label %sw.bb1.i.i
    i32 2, label %if.else.i.sw.bb2.i.i_crit_edge
    i32 4, label %if.else.i.sw.bb2.i.i_crit_edge161
    i32 3, label %do.end.i181.i
    i32 5, label %sw.bb4.i.i
    i32 6, label %sw.bb5.i.i
    i32 7, label %sw.bb6.i.i
    i32 8, label %sw.bb7.i.i
    i32 9, label %sw.bb8.i.i
  ]

if.else.i.sw.bb2.i.i_crit_edge161:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2.i.i

if.else.i.sw.bb2.i.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2.i.i

if.else.i.out_unblock.i_crit_edge:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unblock.i

sw.bb1.i.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unblock.i

sw.bb2.i.i:                                       ; preds = %if.else.i.sw.bb2.i.i_crit_edge, %if.else.i.sw.bb2.i.i_crit_edge161
  br label %out_unblock.i

do.end.i181.i:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i180.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #12
  br label %out_unblock.i

sw.bb4.i.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unblock.i

sw.bb5.i.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unblock.i

sw.bb6.i.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unblock.i

sw.bb7.i.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unblock.i

sw.bb8.i.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unblock.i

do.end10.i.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %call12.i182.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %170) #12
  br label %out_unblock.i

out_unblock.i:                                    ; preds = %do.end10.i.i, %sw.bb8.i.i, %sw.bb7.i.i, %sw.bb6.i.i, %sw.bb5.i.i, %sw.bb4.i.i, %do.end.i181.i, %sw.bb2.i.i, %sw.bb1.i.i, %if.else.i.out_unblock.i_crit_edge, %if.end83.i.out_unblock.i_crit_edge, %nlmclnt_cancel.exit.i
  %status.2.i = phi i32 [ %status.0.ph.i, %nlmclnt_cancel.exit.i ], [ -37, %if.end83.i.out_unblock.i_crit_edge ], [ -37, %do.end10.i.i ], [ -37, %sw.bb8.i.i ], [ -75, %sw.bb7.i.i ], [ -116, %sw.bb6.i.i ], [ -30, %sw.bb5.i.i ], [ -35, %sw.bb4.i.i ], [ -37, %do.end.i181.i ], [ -37, %sw.bb2.i.i ], [ -11, %sw.bb1.i.i ], [ %170, %if.else.i.out_unblock.i_crit_edge ]
  tail call void @nlmclnt_finish_block(ptr noundef %call12.i) #8
  br label %out.i

out.i:                                            ; preds = %out_unblock.i, %if.end.i.out.i_crit_edge, %nfs_file_cred.exit.i.out.i_crit_edge
  %status.3.i = phi i32 [ -37, %nfs_file_cred.exit.i.out.i_crit_edge ], [ %call1.i.i.i, %if.end.i.out.i_crit_edge ], [ %status.2.i, %out_unblock.i ]
  tail call void @nlmclnt_release_call(ptr noundef %call1) #8
  br label %if.end36

do.body93.i:                                      ; preds = %if.end79.i.do.body93.i_crit_edge, %if.then43.i.do.body93.i_crit_edge
  %status.4.i = phi i32 [ %status.0190.i, %if.end79.i.do.body93.i_crit_edge ], [ %status.0.ph.i, %if.then43.i.do.body93.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %172 = load i32, ptr @nlm_debug, align 4
  %and94.i = and i32 %172, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94.i)
  %tobool95.not.i = icmp eq i32 %and94.i, 0
  br i1 %tobool95.not.i, label %do.body93.i.do.end106.i_crit_edge, label %do.end101.i, !prof !123

do.body93.i.do.end106.i_crit_edge:                ; preds = %do.body93.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end106.i

do.end101.i:                                      ; preds = %do.body93.i
  call void @__sanitizer_cov_trace_pc() #10
  %call103.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #12
  br label %do.end106.i

do.end106.i:                                      ; preds = %do.end101.i, %do.body93.i.do.end106.i_crit_edge
  tail call void @nlmclnt_finish_block(ptr noundef %call12.i) #8
  %173 = ptrtoint ptr %fl_type.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %fl_type.i, align 4
  store i8 2, ptr %fl_type.i, align 4
  tail call void @down_read(ptr noundef %h_rwsem.i) #8
  %175 = ptrtoint ptr %fl_file.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %fl_file.i, align 4
  %f_inode.i.i.i185.i = getelementptr inbounds %struct.file, ptr %176, i32 0, i32 2
  %177 = ptrtoint ptr %f_inode.i.i.i185.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %f_inode.i.i.i185.i, align 8
  %call1.i.i186.i = tail call i32 @locks_lock_inode_wait(ptr noundef %178, ptr noundef %fl) #8
  tail call void @up_read(ptr noundef %h_rwsem.i) #8
  %179 = ptrtoint ptr %fl_type.i to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 %174, ptr %fl_type.i, align 4
  %180 = ptrtoint ptr %fl_flags1.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %conv6.i, ptr %fl_flags1.i, align 8
  %call115.i = tail call fastcc i32 @nlmclnt_async_call(ptr noundef %retval.1.i.i, ptr noundef %call1, i32 noundef 4, ptr noundef nonnull @nlmclnt_unlock_ops) #8
  br label %if.end36

if.else:                                          ; preds = %if.then15
  %181 = ptrtoint ptr %a_host.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %a_host.i, align 8
  %fl_flags1.i89 = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 6
  %183 = ptrtoint ptr %fl_flags1.i89 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %fl_flags1.i89, align 8
  %or.i90 = or i32 %184, 16
  store i32 %or.i90, ptr %fl_flags1.i89, align 8
  %h_rwsem.i91 = getelementptr inbounds %struct.nlm_host, ptr %182, i32 0, i32 11
  tail call void @down_read(ptr noundef %h_rwsem.i91) #8
  %185 = ptrtoint ptr %fl_file.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %fl_file.i, align 4
  %f_inode.i.i.i.i92 = getelementptr inbounds %struct.file, ptr %186, i32 0, i32 2
  %187 = ptrtoint ptr %f_inode.i.i.i.i92 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %f_inode.i.i.i.i92, align 8
  %call1.i.i.i93 = tail call i32 @locks_lock_inode_wait(ptr noundef %188, ptr noundef %fl) #8
  tail call void @up_read(ptr noundef %h_rwsem.i91) #8
  %conv4.i = and i32 %184, 255
  %189 = ptrtoint ptr %fl_flags1.i89 to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %conv4.i, ptr %fl_flags1.i89, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call1.i.i.i93)
  %cmp.i94 = icmp eq i32 %call1.i.i.i93, -2
  br i1 %cmp.i94, label %if.else.nlmclnt_unlock.exit_crit_edge, label %if.end.i97

if.else.nlmclnt_unlock.exit_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %nlmclnt_unlock.exit

if.end.i97:                                       ; preds = %if.else
  %call.i.i.i.i.i.i95 = tail call zeroext i1 @__kasan_check_write(ptr noundef %call1, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %call1, i32 1, i32 3, i32 1) #8
  %190 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %call1, ptr %call1, i32 1, ptr elementtype(i32) %call1) #8, !srcloc !121
  %asmresult.i.i.i.i.i.i96 = extractvalue { i32, i32, i32 } %190, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i96)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i96, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end.i97.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !122

if.end.i97.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.end.i97
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end.i97
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i96, 1
  %191 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i96
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %191)
  %.not.i.i.i.i = icmp sgt i32 %191, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.refcount_inc.exit.i_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !123

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.refcount_inc.exit.i_crit_edge:    ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %refcount_inc.exit.i

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end.i97.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end.i97.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %call1, i32 noundef %.sink.i.i.i.i) #8
  br label %refcount_inc.exit.i

refcount_inc.exit.i:                              ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.refcount_inc.exit.i_crit_edge
  %192 = ptrtoint ptr %fl_file.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %fl_file.i, align 4
  %cmp.not.i.i98 = icmp eq ptr %193, null
  br i1 %cmp.not.i.i98, label %refcount_inc.exit.i.nfs_file_cred.exit.i105_crit_edge, label %if.then.i.i101

refcount_inc.exit.i.nfs_file_cred.exit.i105_crit_edge: ; preds = %refcount_inc.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nfs_file_cred.exit.i105

if.then.i.i101:                                   ; preds = %refcount_inc.exit.i
  %private_data.i.i.i99 = getelementptr inbounds %struct.file, ptr %193, i32 0, i32 16
  %194 = ptrtoint ptr %private_data.i.i.i99 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %private_data.i.i.i99, align 4
  %tobool.not.i.i100 = icmp eq ptr %195, null
  br i1 %tobool.not.i.i100, label %if.then.i.i101.nfs_file_cred.exit.i105_crit_edge, label %cleanup.i.i103

if.then.i.i101.nfs_file_cred.exit.i105_crit_edge: ; preds = %if.then.i.i101
  call void @__sanitizer_cov_trace_pc() #10
  br label %nfs_file_cred.exit.i105

cleanup.i.i103:                                   ; preds = %if.then.i.i101
  call void @__sanitizer_cov_trace_pc() #10
  %cred.i.i102 = getelementptr inbounds %struct.nfs_open_context, ptr %195, i32 0, i32 3
  %196 = ptrtoint ptr %cred.i.i102 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %cred.i.i102, align 4
  br label %nfs_file_cred.exit.i105

nfs_file_cred.exit.i105:                          ; preds = %cleanup.i.i103, %if.then.i.i101.nfs_file_cred.exit.i105_crit_edge, %refcount_inc.exit.i.nfs_file_cred.exit.i105_crit_edge
  %retval.1.i.i104 = phi ptr [ %197, %cleanup.i.i103 ], [ null, %refcount_inc.exit.i.nfs_file_cred.exit.i105_crit_edge ], [ null, %if.then.i.i101.nfs_file_cred.exit.i105_crit_edge ]
  %call8.i = tail call fastcc i32 @nlmclnt_async_call(ptr noundef %retval.1.i.i104, ptr noundef %call1, i32 noundef 4, ptr noundef nonnull @nlmclnt_unlock_ops) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp slt i32 %call8.i, 0
  br i1 %cmp9.i, label %nfs_file_cred.exit.i105.nlmclnt_unlock.exit_crit_edge, label %if.end12.i

nfs_file_cred.exit.i105.nlmclnt_unlock.exit_crit_edge: ; preds = %nfs_file_cred.exit.i105
  call void @__sanitizer_cov_trace_pc() #10
  br label %nlmclnt_unlock.exit

if.end12.i:                                       ; preds = %nfs_file_cred.exit.i105
  %status13.i106 = getelementptr inbounds %struct.nlm_rqst, ptr %call1, i32 0, i32 4, i32 1
  %198 = ptrtoint ptr %status13.i106 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %status13.i106, align 4
  %200 = zext i32 %199 to i64
  call void @__sanitizer_cov_trace_switch(i64 %200, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %199, label %do.end.i107 [
    i32 0, label %if.end12.i.nlmclnt_unlock.exit_crit_edge
    i32 2, label %if.end12.i.if.end24.i_crit_edge
  ]

if.end12.i.if.end24.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24.i

if.end12.i.nlmclnt_unlock.exit_crit_edge:         ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nlmclnt_unlock.exit

do.end.i107:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  %call23.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %199) #12
  br label %if.end24.i

if.end24.i:                                       ; preds = %do.end.i107, %if.end12.i.if.end24.i_crit_edge
  br label %nlmclnt_unlock.exit

nlmclnt_unlock.exit:                              ; preds = %if.end24.i, %if.end12.i.nlmclnt_unlock.exit_crit_edge, %nfs_file_cred.exit.i105.nlmclnt_unlock.exit_crit_edge, %if.else.nlmclnt_unlock.exit_crit_edge
  %status.0.i = phi i32 [ %call8.i, %nfs_file_cred.exit.i105.nlmclnt_unlock.exit_crit_edge ], [ %call8.i, %if.end12.i.nlmclnt_unlock.exit_crit_edge ], [ -37, %if.end24.i ], [ 0, %if.else.nlmclnt_unlock.exit_crit_edge ]
  tail call void @nlmclnt_release_call(ptr noundef %call1) #8
  br label %if.end36

if.then32:                                        ; preds = %if.end8.if.then32_crit_edge, %if.end8.if.then32_crit_edge160
  %201 = ptrtoint ptr %fl_file.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %fl_file.i, align 4
  %cmp.not.i.i110 = icmp eq ptr %202, null
  br i1 %cmp.not.i.i110, label %if.then32.nfs_file_cred.exit.i118_crit_edge, label %if.then.i.i113

if.then32.nfs_file_cred.exit.i118_crit_edge:      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  br label %nfs_file_cred.exit.i118

if.then.i.i113:                                   ; preds = %if.then32
  %private_data.i.i.i111 = getelementptr inbounds %struct.file, ptr %202, i32 0, i32 16
  %203 = ptrtoint ptr %private_data.i.i.i111 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %private_data.i.i.i111, align 4
  %tobool.not.i.i112 = icmp eq ptr %204, null
  br i1 %tobool.not.i.i112, label %if.then.i.i113.nfs_file_cred.exit.i118_crit_edge, label %cleanup.i.i115

if.then.i.i113.nfs_file_cred.exit.i118_crit_edge: ; preds = %if.then.i.i113
  call void @__sanitizer_cov_trace_pc() #10
  br label %nfs_file_cred.exit.i118

cleanup.i.i115:                                   ; preds = %if.then.i.i113
  call void @__sanitizer_cov_trace_pc() #10
  %cred.i.i114 = getelementptr inbounds %struct.nfs_open_context, ptr %204, i32 0, i32 3
  %205 = ptrtoint ptr %cred.i.i114 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %cred.i.i114, align 4
  br label %nfs_file_cred.exit.i118

nfs_file_cred.exit.i118:                          ; preds = %cleanup.i.i115, %if.then.i.i113.nfs_file_cred.exit.i118_crit_edge, %if.then32.nfs_file_cred.exit.i118_crit_edge
  %retval.1.i.i116 = phi ptr [ %206, %cleanup.i.i115 ], [ null, %if.then32.nfs_file_cred.exit.i118_crit_edge ], [ null, %if.then.i.i113.nfs_file_cred.exit.i118_crit_edge ]
  %call1.i = tail call fastcc i32 @nlmclnt_call(ptr noundef %retval.1.i.i116, ptr noundef %call1, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i117 = icmp slt i32 %call1.i, 0
  br i1 %cmp.i117, label %nfs_file_cred.exit.i118.nlmclnt_test.exit_crit_edge, label %if.end.i119

nfs_file_cred.exit.i118.nlmclnt_test.exit_crit_edge: ; preds = %nfs_file_cred.exit.i118
  call void @__sanitizer_cov_trace_pc() #10
  br label %nlmclnt_test.exit

if.end.i119:                                      ; preds = %nfs_file_cred.exit.i118
  %status2.i = getelementptr inbounds %struct.nlm_rqst, ptr %call1, i32 0, i32 4, i32 1
  %207 = ptrtoint ptr %status2.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %status2.i, align 4
  %209 = zext i32 %208 to i64
  call void @__sanitizer_cov_trace_switch(i64 %209, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %208, label %do.end10.i.i130 [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb3.i
    i32 9, label %if.end.i119.nlmclnt_test.exit_crit_edge
    i32 8, label %sw.bb7.i.i128
    i32 2, label %if.end.i119.nlmclnt_test.exit_crit_edge162
    i32 4, label %if.end.i119.nlmclnt_test.exit_crit_edge163
    i32 3, label %do.end.i.i124
    i32 5, label %sw.bb4.i.i125
    i32 6, label %sw.bb5.i.i126
    i32 7, label %sw.bb6.i.i127
  ]

if.end.i119.nlmclnt_test.exit_crit_edge163:       ; preds = %if.end.i119
  call void @__sanitizer_cov_trace_pc() #10
  br label %nlmclnt_test.exit

if.end.i119.nlmclnt_test.exit_crit_edge162:       ; preds = %if.end.i119
  call void @__sanitizer_cov_trace_pc() #10
  br label %nlmclnt_test.exit

if.end.i119.nlmclnt_test.exit_crit_edge:          ; preds = %if.end.i119
  call void @__sanitizer_cov_trace_pc() #10
  br label %nlmclnt_test.exit

sw.bb.i:                                          ; preds = %if.end.i119
  call void @__sanitizer_cov_trace_pc() #10
  %210 = ptrtoint ptr %fl_type.i to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 2, ptr %fl_type.i, align 4
  br label %nlmclnt_test.exit

sw.bb3.i:                                         ; preds = %if.end.i119
  call void @__sanitizer_cov_trace_pc() #10
  %fl_start.i121 = getelementptr inbounds %struct.nlm_rqst, ptr %call1, i32 0, i32 4, i32 2, i32 5, i32 12
  %211 = ptrtoint ptr %fl_start.i121 to i32
  call void @__asan_load8_noabort(i32 %211)
  %212 = load i64, ptr %fl_start.i121, align 8
  %213 = ptrtoint ptr %fl_start.i to i32
  call void @__asan_store8_noabort(i32 %213)
  store i64 %212, ptr %fl_start.i, align 8
  %fl_end.i122 = getelementptr inbounds %struct.nlm_rqst, ptr %call1, i32 0, i32 4, i32 2, i32 5, i32 13
  %214 = ptrtoint ptr %fl_end.i122 to i32
  call void @__asan_load8_noabort(i32 %214)
  %215 = load i64, ptr %fl_end.i122, align 8
  %216 = ptrtoint ptr %fl_end.i to i32
  call void @__asan_store8_noabort(i32 %216)
  store i64 %215, ptr %fl_end.i, align 8
  %fl_type14.i = getelementptr inbounds %struct.nlm_rqst, ptr %call1, i32 0, i32 4, i32 2, i32 5, i32 7
  %217 = ptrtoint ptr %fl_type14.i to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %fl_type14.i, align 4
  %219 = ptrtoint ptr %fl_type.i to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 %218, ptr %fl_type.i, align 4
  %fl_pid.i = getelementptr inbounds %struct.nlm_rqst, ptr %call1, i32 0, i32 4, i32 2, i32 5, i32 8
  %220 = ptrtoint ptr %fl_pid.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %fl_pid.i, align 8
  %sub.i = sub i32 0, %221
  %fl_pid19.i = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 8
  %222 = ptrtoint ptr %fl_pid19.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 %sub.i, ptr %fl_pid19.i, align 8
  br label %nlmclnt_test.exit

do.end.i.i124:                                    ; preds = %if.end.i119
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i123 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #12
  br label %nlmclnt_test.exit

sw.bb4.i.i125:                                    ; preds = %if.end.i119
  call void @__sanitizer_cov_trace_pc() #10
  br label %nlmclnt_test.exit

sw.bb5.i.i126:                                    ; preds = %if.end.i119
  call void @__sanitizer_cov_trace_pc() #10
  br label %nlmclnt_test.exit

sw.bb6.i.i127:                                    ; preds = %if.end.i119
  call void @__sanitizer_cov_trace_pc() #10
  br label %nlmclnt_test.exit

sw.bb7.i.i128:                                    ; preds = %if.end.i119
  call void @__sanitizer_cov_trace_pc() #10
  br label %nlmclnt_test.exit

do.end10.i.i130:                                  ; preds = %if.end.i119
  call void @__sanitizer_cov_trace_pc() #10
  %call12.i.i129 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %208) #12
  br label %nlmclnt_test.exit

nlmclnt_test.exit:                                ; preds = %do.end10.i.i130, %sw.bb7.i.i128, %sw.bb6.i.i127, %sw.bb5.i.i126, %sw.bb4.i.i125, %do.end.i.i124, %sw.bb3.i, %sw.bb.i, %if.end.i119.nlmclnt_test.exit_crit_edge, %if.end.i119.nlmclnt_test.exit_crit_edge162, %if.end.i119.nlmclnt_test.exit_crit_edge163, %nfs_file_cred.exit.i118.nlmclnt_test.exit_crit_edge
  %status.0.i131 = phi i32 [ %call1.i, %nfs_file_cred.exit.i118.nlmclnt_test.exit_crit_edge ], [ %call1.i, %sw.bb3.i ], [ %call1.i, %sw.bb.i ], [ -37, %do.end10.i.i130 ], [ -75, %sw.bb7.i.i128 ], [ -116, %sw.bb6.i.i127 ], [ -30, %sw.bb5.i.i126 ], [ -35, %sw.bb4.i.i125 ], [ -37, %do.end.i.i124 ], [ -37, %if.end.i119.nlmclnt_test.exit_crit_edge ], [ -37, %if.end.i119.nlmclnt_test.exit_crit_edge162 ], [ -37, %if.end.i119.nlmclnt_test.exit_crit_edge163 ]
  tail call void @nlmclnt_release_call(ptr noundef %call1) #8
  br label %if.end36

if.end36:                                         ; preds = %nlmclnt_test.exit, %nlmclnt_unlock.exit, %do.end106.i, %out.i, %if.end8.if.end36_crit_edge
  %status.0 = phi i32 [ %status.0.i, %nlmclnt_unlock.exit ], [ %status.0.i131, %nlmclnt_test.exit ], [ -22, %if.end8.if.end36_crit_edge ], [ %status.3.i, %out.i ], [ %status.4.i, %do.end106.i ]
  %223 = ptrtoint ptr %fl_ops.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %fl_ops.i, align 4
  %fl_release_private = getelementptr inbounds %struct.file_lock_operations, ptr %224, i32 0, i32 1
  %225 = ptrtoint ptr %fl_release_private to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %fl_release_private, align 4
  tail call void %226(ptr noundef %fl) #8
  %227 = ptrtoint ptr %fl_ops.i to i32
  call void @__asan_store4_noabort(i32 %227)
  store ptr null, ptr %fl_ops.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %228 = load i32, ptr @nlm_debug, align 4
  %and = and i32 %228, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool38.not = icmp eq i32 %and, 0
  br i1 %tobool38.not, label %if.end36.cleanup_crit_edge, label %do.end, !prof !123

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %status.0) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end36.cleanup_crit_edge, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then7 ], [ -12, %entry.cleanup_crit_edge ], [ %status.0, %do.end ], [ %status.0, %if.end36.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nlm_alloc_call(ptr noundef %host) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i20 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 848) #11
  %cmp.not21 = icmp eq ptr %call7.i.i20, null
  br i1 %cmp.not21, label %entry.if.end_crit_edge, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

if.then:                                          ; preds = %do.end.if.then_crit_edge, %entry.if.then_crit_edge
  %call7.i.i.lcssa = phi ptr [ %call7.i.i20, %entry.if.then_crit_edge ], [ %call7.i.i, %do.end.if.then_crit_edge ]
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i.lcssa, i32 noundef 4) #8
  %1 = ptrtoint ptr %call7.i.i.lcssa to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 1, ptr %call7.i.i.lcssa, align 8
  %fl = getelementptr inbounds %struct.nlm_rqst, ptr %call7.i.i.lcssa, i32 0, i32 3, i32 1, i32 5
  tail call void @locks_init_lock(ptr noundef %fl) #8
  %fl3 = getelementptr inbounds %struct.nlm_rqst, ptr %call7.i.i.lcssa, i32 0, i32 4, i32 2, i32 5
  tail call void @locks_init_lock(ptr noundef %fl3) #8
  %call4 = tail call ptr @nlm_get_host(ptr noundef %host) #8
  %a_host = getelementptr inbounds %struct.nlm_rqst, ptr %call7.i.i.lcssa, i32 0, i32 2
  %2 = ptrtoint ptr %a_host to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call4, ptr %a_host, align 8
  br label %cleanup

if.end:                                           ; preds = %do.end.if.end_crit_edge, %entry.if.end_crit_edge
  %3 = tail call i32 @llvm.read_register.i32(metadata !108) #8
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %stack.i.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 4
  %11 = and i32 %10, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.end.cleanup_crit_edge, !prof !123

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

signal_pending.exit:                              ; preds = %if.end
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %8, align 4
  %and1.i.i.i.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool.not, label %do.end, label %signal_pending.exit.cleanup_crit_edge

signal_pending.exit.cleanup_crit_edge:            ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %signal_pending.exit
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #12
  %call10 = tail call i32 @schedule_timeout_interruptible(i32 noundef 500) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 848) #11
  %cmp.not = icmp eq ptr %call7.i.i, null
  br i1 %cmp.not, label %do.end.if.end_crit_edge, label %do.end.if.then_crit_edge

do.end.if.then_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

do.end.if.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

cleanup:                                          ; preds = %signal_pending.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %call7.i.i19 = phi ptr [ %call7.i.i.lcssa, %if.then ], [ null, %signal_pending.exit.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %call7.i.i19
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nlmclnt_release_call(ptr noundef %call) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %a_host = getelementptr inbounds %struct.nlm_rqst, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %a_host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %a_host, align 8
  %h_nlmclnt_ops = getelementptr inbounds %struct.nlm_host, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %h_nlmclnt_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %h_nlmclnt_ops, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %call, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !124
  tail call void @llvm.prefetch.p0(ptr %call, i32 1, i32 3, i32 1) #8
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %call, ptr %call, i32 1, ptr elementtype(i32) %call) #8, !srcloc !125
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.end, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i, !prof !123

if.end5.i.i.i.cleanup_crit_edge:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %call, i32 noundef 3) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !126
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.if.end5_crit_edge, label %land.lhs.true

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %nlmclnt_release_call = getelementptr inbounds %struct.nlmclnt_operations, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %nlmclnt_release_call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nlmclnt_release_call, align 4
  %tobool2.not = icmp eq ptr %6, null
  br i1 %tobool2.not, label %land.lhs.true.if.end5_crit_edge, label %if.then3

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %a_callback_data = getelementptr inbounds %struct.nlm_rqst, ptr %call, i32 0, i32 8
  %7 = ptrtoint ptr %a_callback_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %a_callback_data, align 4
  tail call void %6(ptr noundef %8) #8
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %9 = ptrtoint ptr %a_host to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %a_host, align 8
  tail call void @nlmclnt_release_host(ptr noundef %10) #8
  %fl_ops.i = getelementptr inbounds %struct.nlm_rqst, ptr %call, i32 0, i32 3, i32 1, i32 5, i32 17
  %11 = ptrtoint ptr %fl_ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fl_ops.i, align 4
  %cmp.not.i = icmp eq ptr %12, null
  br i1 %cmp.not.i, label %if.end5.nlmclnt_release_lockargs.exit_crit_edge, label %land.rhs.i

if.end5.nlmclnt_release_lockargs.exit_crit_edge:  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %nlmclnt_release_lockargs.exit

land.rhs.i:                                       ; preds = %if.end5
  %.b37.i = load i1, ptr @nlmclnt_release_lockargs.__already_done, align 1
  br i1 %.b37.i, label %land.rhs.i.nlmclnt_release_lockargs.exit_crit_edge, label %if.then.i, !prof !123

land.rhs.i.nlmclnt_release_lockargs.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nlmclnt_release_lockargs.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @nlmclnt_release_lockargs.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 147, i32 noundef 9, ptr noundef null) #8
  br label %nlmclnt_release_lockargs.exit

nlmclnt_release_lockargs.exit:                    ; preds = %if.then.i, %land.rhs.i.nlmclnt_release_lockargs.exit_crit_edge, %if.end5.nlmclnt_release_lockargs.exit_crit_edge
  tail call void @kfree(ptr noundef %call) #8
  br label %cleanup

cleanup:                                          ; preds = %nlmclnt_release_lockargs.exit, %if.then10.i.i.i, %if.end5.i.i.i.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @locks_init_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nlm_get_host(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_interruptible(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nlmclnt_release_host(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nlm_async_call(ptr noundef %req, i32 noundef %proc, ptr noundef %tk_ops) local_unnamed_addr #0 align 64 {
entry:
  %task_setup_data.i.i = alloca %struct.rpc_task_setup, align 4
  %msg = alloca %struct.rpc_message, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg) #8
  %0 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 1
  %1 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 2
  %2 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 3
  %3 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %msg, align 4
  %a_args = getelementptr inbounds %struct.nlm_rqst, ptr %req, i32 0, i32 3
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %a_args, ptr %0, align 4
  %a_res = getelementptr inbounds %struct.nlm_rqst, ptr %req, i32 0, i32 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %a_res, ptr %1, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %2, align 4
  %a_host.i.i = getelementptr inbounds %struct.nlm_rqst, ptr %req, i32 0, i32 2
  %7 = ptrtoint ptr %a_host.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %a_host.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %task_setup_data.i.i) #8
  %9 = getelementptr inbounds i8, ptr %task_setup_data.i.i, i32 32
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 65791, ptr %9, align 4, !annotation !127
  %rpc_client.i.i = getelementptr inbounds %struct.rpc_task_setup, ptr %task_setup_data.i.i, i32 0, i32 1
  %rpc_message.i.i = getelementptr inbounds %struct.rpc_task_setup, ptr %task_setup_data.i.i, i32 0, i32 4
  %11 = call ptr @memset(ptr %task_setup_data.i.i, i32 0, i32 16)
  %12 = ptrtoint ptr %rpc_message.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %msg, ptr %rpc_message.i.i, align 4
  %callback_ops.i.i = getelementptr inbounds %struct.rpc_task_setup, ptr %task_setup_data.i.i, i32 0, i32 5
  %13 = ptrtoint ptr %callback_ops.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %tk_ops, ptr %callback_ops.i.i, align 4
  %callback_data.i.i = getelementptr inbounds %struct.rpc_task_setup, ptr %task_setup_data.i.i, i32 0, i32 6
  %14 = ptrtoint ptr %callback_data.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %req, ptr %callback_data.i.i, align 4
  %workqueue.i.i = getelementptr inbounds %struct.rpc_task_setup, ptr %task_setup_data.i.i, i32 0, i32 7
  %15 = ptrtoint ptr %workqueue.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %workqueue.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %16 = load i32, ptr @nlm_debug, align 4
  %and.i.i = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %entry.do.end5.i.i_crit_edge, label %do.end.i.i, !prof !123

entry.do.end5.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5.i.i

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %h_name.i.i = getelementptr inbounds %struct.nlm_host, ptr %8, i32 0, i32 6
  %17 = ptrtoint ptr %h_name.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %h_name.i.i, align 4
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %proc, ptr noundef %18) #12
  br label %do.end5.i.i

do.end5.i.i:                                      ; preds = %do.end.i.i, %entry.do.end5.i.i_crit_edge
  %call6.i.i = call ptr @nlm_bind_host(ptr noundef %8) #8
  %cmp.i.i = icmp eq ptr %call6.i.i, null
  br i1 %cmp.i.i, label %__nlm_async_call.exit.thread.i, label %__nlm_async_call.exit.i

__nlm_async_call.exit.thread.i:                   ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %rpc_release.i.i = getelementptr inbounds %struct.rpc_call_ops, ptr %tk_ops, i32 0, i32 3
  %19 = ptrtoint ptr %rpc_release.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rpc_release.i.i, align 4
  call void %20(ptr noundef %req) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %task_setup_data.i.i) #8
  br label %if.then.i

__nlm_async_call.exit.i:                          ; preds = %do.end5.i.i
  %cl_procinfo.i.i = getelementptr inbounds %struct.rpc_clnt, ptr %call6.i.i, i32 0, i32 7
  %21 = ptrtoint ptr %cl_procinfo.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cl_procinfo.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.rpc_procinfo, ptr %22, i32 %proc
  %23 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %arrayidx.i.i, ptr %msg, align 4
  %24 = ptrtoint ptr %rpc_client.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call6.i.i, ptr %rpc_client.i.i, align 4
  %call10.i.i = call ptr @rpc_run_task(ptr noundef nonnull %task_setup_data.i.i) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %task_setup_data.i.i) #8
  %cmp.i5.i = icmp ugt ptr %call10.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i5.i, label %__nlm_async_call.exit.i.if.then.i_crit_edge, label %if.end.i

__nlm_async_call.exit.i.if.then.i_crit_edge:      ; preds = %__nlm_async_call.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %__nlm_async_call.exit.i.if.then.i_crit_edge, %__nlm_async_call.exit.thread.i
  %retval.0.i8.i = phi ptr [ inttoptr (i32 -37 to ptr), %__nlm_async_call.exit.thread.i ], [ %call10.i.i, %__nlm_async_call.exit.i.if.then.i_crit_edge ]
  %25 = ptrtoint ptr %retval.0.i8.i to i32
  br label %nlm_do_async_call.exit

if.end.i:                                         ; preds = %__nlm_async_call.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @rpc_put_task(ptr noundef %call10.i.i) #8
  br label %nlm_do_async_call.exit

nlm_do_async_call.exit:                           ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %25, %if.then.i ], [ 0, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg) #8
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nlm_async_reply(ptr noundef %req, i32 noundef %proc, ptr noundef %tk_ops) local_unnamed_addr #0 align 64 {
entry:
  %task_setup_data.i.i = alloca %struct.rpc_task_setup, align 4
  %msg = alloca %struct.rpc_message, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg) #8
  %0 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 1
  %1 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 2
  %2 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 3
  %3 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %msg, align 4
  %a_res = getelementptr inbounds %struct.nlm_rqst, ptr %req, i32 0, i32 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %a_res, ptr %0, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %1, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %2, align 4
  %a_host.i.i = getelementptr inbounds %struct.nlm_rqst, ptr %req, i32 0, i32 2
  %7 = ptrtoint ptr %a_host.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %a_host.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %task_setup_data.i.i) #8
  %9 = getelementptr inbounds i8, ptr %task_setup_data.i.i, i32 32
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 65791, ptr %9, align 4, !annotation !127
  %rpc_client.i.i = getelementptr inbounds %struct.rpc_task_setup, ptr %task_setup_data.i.i, i32 0, i32 1
  %rpc_message.i.i = getelementptr inbounds %struct.rpc_task_setup, ptr %task_setup_data.i.i, i32 0, i32 4
  %11 = call ptr @memset(ptr %task_setup_data.i.i, i32 0, i32 16)
  %12 = ptrtoint ptr %rpc_message.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %msg, ptr %rpc_message.i.i, align 4
  %callback_ops.i.i = getelementptr inbounds %struct.rpc_task_setup, ptr %task_setup_data.i.i, i32 0, i32 5
  %13 = ptrtoint ptr %callback_ops.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %tk_ops, ptr %callback_ops.i.i, align 4
  %callback_data.i.i = getelementptr inbounds %struct.rpc_task_setup, ptr %task_setup_data.i.i, i32 0, i32 6
  %14 = ptrtoint ptr %callback_data.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %req, ptr %callback_data.i.i, align 4
  %workqueue.i.i = getelementptr inbounds %struct.rpc_task_setup, ptr %task_setup_data.i.i, i32 0, i32 7
  %15 = ptrtoint ptr %workqueue.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %workqueue.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %16 = load i32, ptr @nlm_debug, align 4
  %and.i.i = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %entry.do.end5.i.i_crit_edge, label %do.end.i.i, !prof !123

entry.do.end5.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5.i.i

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %h_name.i.i = getelementptr inbounds %struct.nlm_host, ptr %8, i32 0, i32 6
  %17 = ptrtoint ptr %h_name.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %h_name.i.i, align 4
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %proc, ptr noundef %18) #12
  br label %do.end5.i.i

do.end5.i.i:                                      ; preds = %do.end.i.i, %entry.do.end5.i.i_crit_edge
  %call6.i.i = call ptr @nlm_bind_host(ptr noundef %8) #8
  %cmp.i.i = icmp eq ptr %call6.i.i, null
  br i1 %cmp.i.i, label %__nlm_async_call.exit.thread.i, label %__nlm_async_call.exit.i

__nlm_async_call.exit.thread.i:                   ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %rpc_release.i.i = getelementptr inbounds %struct.rpc_call_ops, ptr %tk_ops, i32 0, i32 3
  %19 = ptrtoint ptr %rpc_release.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rpc_release.i.i, align 4
  call void %20(ptr noundef %req) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %task_setup_data.i.i) #8
  br label %if.then.i

__nlm_async_call.exit.i:                          ; preds = %do.end5.i.i
  %cl_procinfo.i.i = getelementptr inbounds %struct.rpc_clnt, ptr %call6.i.i, i32 0, i32 7
  %21 = ptrtoint ptr %cl_procinfo.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cl_procinfo.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.rpc_procinfo, ptr %22, i32 %proc
  %23 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %arrayidx.i.i, ptr %msg, align 4
  %24 = ptrtoint ptr %rpc_client.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call6.i.i, ptr %rpc_client.i.i, align 4
  %call10.i.i = call ptr @rpc_run_task(ptr noundef nonnull %task_setup_data.i.i) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %task_setup_data.i.i) #8
  %cmp.i5.i = icmp ugt ptr %call10.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i5.i, label %__nlm_async_call.exit.i.if.then.i_crit_edge, label %if.end.i

__nlm_async_call.exit.i.if.then.i_crit_edge:      ; preds = %__nlm_async_call.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %__nlm_async_call.exit.i.if.then.i_crit_edge, %__nlm_async_call.exit.thread.i
  %retval.0.i8.i = phi ptr [ inttoptr (i32 -37 to ptr), %__nlm_async_call.exit.thread.i ], [ %call10.i.i, %__nlm_async_call.exit.i.if.then.i_crit_edge ]
  %25 = ptrtoint ptr %retval.0.i8.i to i32
  br label %nlm_do_async_call.exit

if.end.i:                                         ; preds = %__nlm_async_call.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @rpc_put_task(ptr noundef %call10.i.i) #8
  br label %nlm_do_async_call.exit

nlm_do_async_call.exit:                           ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %25, %if.then.i ], [ 0, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg) #8
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nlmclnt_reclaim(ptr noundef %host, ptr nocapture noundef readonly %fl, ptr noundef %req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %req, i32 0, i32 848)
  %fl1 = getelementptr inbounds %struct.nlm_rqst, ptr %req, i32 0, i32 3, i32 1, i32 5
  tail call void @locks_init_lock(ptr noundef %fl1) #8
  %fl3 = getelementptr inbounds %struct.nlm_rqst, ptr %req, i32 0, i32 4, i32 2, i32 5
  tail call void @locks_init_lock(ptr noundef %fl3) #8
  %a_host = getelementptr inbounds %struct.nlm_rqst, ptr %req, i32 0, i32 2
  %1 = ptrtoint ptr %a_host to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %host, ptr %a_host, align 8
  %a_args.i = getelementptr inbounds %struct.nlm_rqst, ptr %req, i32 0, i32 3
  %lock1.i = getelementptr inbounds %struct.nlm_rqst, ptr %req, i32 0, i32 3, i32 1
  %h_rpcclnt.i = getelementptr inbounds %struct.nlm_host, ptr %host, i32 0, i32 5
  %2 = ptrtoint ptr %h_rpcclnt.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %h_rpcclnt.i, align 4
  %cl_nodename.i = getelementptr inbounds %struct.rpc_clnt, ptr %3, i32 0, i32 19
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @nlm_cookie, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !118
  tail call void @llvm.prefetch.p0(ptr nonnull @nlm_cookie, i32 1, i32 3, i32 1) #8
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @nlm_cookie, ptr nonnull @nlm_cookie, i32 1, ptr nonnull elementtype(i32) @nlm_cookie) #8, !srcloc !119
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !120
  %5 = ptrtoint ptr %a_args.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %asmresult.i.i.i.i.i.i, ptr %a_args.i, align 4
  %len.i.i = getelementptr inbounds %struct.nlm_rqst, ptr %req, i32 0, i32 3, i32 0, i32 1
  %6 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %len.i.i, align 4
  %fh.i = getelementptr inbounds %struct.nlm_rqst, ptr %req, i32 0, i32 3, i32 1, i32 2
  %fl_file.i = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 11
  %7 = ptrtoint ptr %fl_file.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fl_file.i, align 4
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %f_inode.i.i, align 8
  %fh.i.i = getelementptr i8, ptr %10, i32 -440
  %11 = call ptr @memcpy(ptr %fh.i, ptr %fh.i.i, i32 130)
  %12 = ptrtoint ptr %lock1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %cl_nodename.i, ptr %lock1.i, align 8
  %a_owner.i = getelementptr inbounds %struct.nlm_rqst, ptr %req, i32 0, i32 7
  %oh.i = getelementptr inbounds %struct.nlm_rqst, ptr %req, i32 0, i32 3, i32 1, i32 3
  %data.i = getelementptr inbounds %struct.nlm_rqst, ptr %req, i32 0, i32 3, i32 1, i32 3, i32 1
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %a_owner.i, ptr %data.i, align 4
  %owner.i = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 19, i32 0, i32 1
  %14 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %owner.i, align 4
  %pid.i = getelementptr inbounds %struct.nlm_lockowner, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pid.i, align 4
  %call6.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %a_owner.i, i32 noundef 74, ptr noundef nonnull @.str.7, i32 noundef %17, ptr noundef %cl_nodename.i) #8
  %18 = ptrtoint ptr %oh.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call6.i, ptr %oh.i, align 4
  %19 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %owner.i, align 4
  %pid10.i = getelementptr inbounds %struct.nlm_lockowner, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %pid10.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pid10.i, align 4
  %svid.i = getelementptr inbounds %struct.nlm_rqst, ptr %req, i32 0, i32 3, i32 1, i32 4
  %23 = ptrtoint ptr %svid.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %svid.i, align 4
  %fl_start.i = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 12
  %24 = ptrtoint ptr %fl_start.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %fl_start.i, align 8
  %fl_start12.i = getelementptr inbounds %struct.nlm_rqst, ptr %req, i32 0, i32 3, i32 1, i32 5, i32 12
  %26 = ptrtoint ptr %fl_start12.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %fl_start12.i, align 8
  %fl_end.i = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 13
  %27 = ptrtoint ptr %fl_end.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %fl_end.i, align 8
  %fl_end14.i = getelementptr inbounds %struct.nlm_rqst, ptr %req, i32 0, i32 3, i32 1, i32 5, i32 13
  %29 = ptrtoint ptr %fl_end14.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %fl_end14.i, align 8
  %fl_type.i = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 7
  %30 = ptrtoint ptr %fl_type.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %fl_type.i, align 4
  %fl_type16.i = getelementptr inbounds %struct.nlm_rqst, ptr %req, i32 0, i32 3, i32 1, i32 5, i32 7
  %32 = ptrtoint ptr %fl_type16.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %fl_type16.i, align 4
  %reclaim = getelementptr inbounds %struct.nlm_rqst, ptr %req, i32 0, i32 3, i32 3
  %33 = ptrtoint ptr %reclaim to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %reclaim, align 4
  %34 = ptrtoint ptr %fl_file.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fl_file.i, align 4
  %cmp.not.i = icmp eq ptr %35, null
  br i1 %cmp.not.i, label %entry.nfs_file_cred.exit_crit_edge, label %if.then.i

entry.nfs_file_cred.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %nfs_file_cred.exit

if.then.i:                                        ; preds = %entry
  %private_data.i.i = getelementptr inbounds %struct.file, ptr %35, i32 0, i32 16
  %36 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %private_data.i.i, align 4
  %tobool.not.i = icmp eq ptr %37, null
  br i1 %tobool.not.i, label %if.then.i.nfs_file_cred.exit_crit_edge, label %cleanup.i

if.then.i.nfs_file_cred.exit_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nfs_file_cred.exit

cleanup.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %cred.i = getelementptr inbounds %struct.nfs_open_context, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cred.i, align 4
  br label %nfs_file_cred.exit

nfs_file_cred.exit:                               ; preds = %cleanup.i, %if.then.i.nfs_file_cred.exit_crit_edge, %entry.nfs_file_cred.exit_crit_edge
  %retval.1.i = phi ptr [ %39, %cleanup.i ], [ null, %entry.nfs_file_cred.exit_crit_edge ], [ null, %if.then.i.nfs_file_cred.exit_crit_edge ]
  %call5 = tail call fastcc i32 @nlmclnt_call(ptr noundef %retval.1.i, ptr noundef %req, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call5)
  %cmp = icmp sgt i32 %call5, -1
  br i1 %cmp, label %land.lhs.true, label %nfs_file_cred.exit.do.end_crit_edge

nfs_file_cred.exit.do.end_crit_edge:              ; preds = %nfs_file_cred.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true:                                    ; preds = %nfs_file_cred.exit
  %status7 = getelementptr inbounds %struct.nlm_rqst, ptr %req, i32 0, i32 4, i32 1
  %40 = ptrtoint ptr %status7 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %status7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp8 = icmp eq i32 %41, 0
  br i1 %cmp8, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %land.lhs.true.do.end_crit_edge, %nfs_file_cred.exit.do.end_crit_edge
  %fl_pid = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 8
  %42 = ptrtoint ptr %fl_pid to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %fl_pid, align 8
  %status10 = getelementptr inbounds %struct.nlm_rqst, ptr %req, i32 0, i32 4, i32 1
  %44 = ptrtoint ptr %status10 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %status10, align 4
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %43, i32 noundef %call5, i32 noundef %45) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -37, %do.end ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nlmclnt_call(ptr noundef %cred, ptr noundef %req, i32 noundef %proc) unnamed_addr #0 align 64 {
entry:
  %wait.i = alloca %struct.wait_queue_entry, align 4
  %msg = alloca %struct.rpc_message, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %a_host = getelementptr inbounds %struct.nlm_rqst, ptr %req, i32 0, i32 2
  %0 = ptrtoint ptr %a_host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %a_host, align 8
  %a_args = getelementptr inbounds %struct.nlm_rqst, ptr %req, i32 0, i32 3
  %a_res = getelementptr inbounds %struct.nlm_rqst, ptr %req, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg) #8
  %2 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 1
  %3 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 2
  %4 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 3
  %5 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %msg, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %a_args, ptr %2, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %a_res, ptr %3, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %cred, ptr %4, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %9 = load i32, ptr @nlm_debug, align 4
  %and = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end, !prof !123

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %h_name = getelementptr inbounds %struct.nlm_host, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %h_name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %h_name, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %proc, ptr noundef %11) #12
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %h_reclaiming = getelementptr inbounds %struct.nlm_host, ptr %1, i32 0, i32 9
  %reclaim = getelementptr inbounds %struct.nlm_rqst, ptr %req, i32 0, i32 3, i32 3
  %status43 = getelementptr inbounds %struct.nlm_rqst, ptr %req, i32 0, i32 4, i32 1
  %h_gracewait100 = getelementptr inbounds %struct.nlm_host, ptr %1, i32 0, i32 10
  %12 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 1
  %13 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 2
  %14 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 3
  %15 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 3, i32 1
  br label %do.body6

do.body6:                                         ; preds = %nlm_wait_on_grace.exit, %do.end5
  %16 = ptrtoint ptr %h_reclaiming to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load = load i8, ptr %h_reclaiming, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool7.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool7.not, label %do.body6.if.end10_crit_edge, label %land.lhs.true

do.body6.if.end10_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

land.lhs.true:                                    ; preds = %do.body6
  %17 = ptrtoint ptr %reclaim to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %reclaim, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool8.not = icmp eq i32 %18, 0
  br i1 %tobool8.not, label %land.lhs.true.in_grace_period_crit_edge, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

land.lhs.true.in_grace_period_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %in_grace_period

if.end10:                                         ; preds = %land.lhs.true.if.end10_crit_edge, %do.body6.if.end10_crit_edge
  %call11 = call ptr @nlm_bind_host(ptr noundef %1) #8
  %cmp = icmp eq ptr %call11, null
  br i1 %cmp, label %if.end10.cleanup_crit_edge, label %if.end14

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %cl_procinfo = getelementptr inbounds %struct.rpc_clnt, ptr %call11, i32 0, i32 7
  %19 = ptrtoint ptr %cl_procinfo to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cl_procinfo, align 4
  %arrayidx = getelementptr %struct.rpc_procinfo, ptr %20, i32 %proc
  %21 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %arrayidx, ptr %msg, align 4
  %call16 = call i32 @rpc_call_sync(ptr noundef nonnull %call11, ptr noundef nonnull %msg, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %do.body20, label %if.else

do.body20:                                        ; preds = %if.end14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %22 = load i32, ptr @nlm_debug, align 4
  %and21 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %do.body20.do.end37_crit_edge, label %do.end32, !prof !123

do.body20.do.end37_crit_edge:                     ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end37

do.end32:                                         ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #10
  %sub = sub i32 0, %call16
  %call34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %sub) #12
  br label %do.end37

do.end37:                                         ; preds = %do.end32, %do.body20.do.end37_crit_edge
  %23 = zext i32 %call16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %call16, label %do.end37.cleanup_crit_edge [
    i32 -93, label %sw.bb
    i32 -111, label %do.end37.sw.bb38_crit_edge
    i32 -110, label %do.end37.sw.bb38_crit_edge147
    i32 -107, label %do.end37.sw.bb38_crit_edge148
    i32 -512, label %sw.bb39
  ]

do.end37.sw.bb38_crit_edge148:                    ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb38

do.end37.sw.bb38_crit_edge147:                    ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb38

do.end37.sw.bb38_crit_edge:                       ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb38

do.end37.cleanup_crit_edge:                       ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb38:                                          ; preds = %do.end37.sw.bb38_crit_edge, %do.end37.sw.bb38_crit_edge147, %do.end37.sw.bb38_crit_edge148
  call void @nlm_rebind_host(ptr noundef %1) #8
  br label %cleanup

sw.bb39:                                          ; preds = %do.end37
  %24 = call i32 @llvm.read_register.i32(metadata !108) #8
  %and.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %stack.i.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %29, align 4
  %32 = and i32 %31, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i = icmp eq i32 %32, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %sw.bb39.cleanup_crit_edge, !prof !123

sw.bb39.cleanup_crit_edge:                        ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

signal_pending.exit:                              ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %29, align 4
  %and1.i.i.i.i.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool42.not = icmp eq i32 %and1.i.i.i.i.i, 0
  %spec.select = select i1 %tobool42.not, i32 -512, i32 -4
  br label %cleanup

if.else:                                          ; preds = %if.end14
  %35 = ptrtoint ptr %status43 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %status43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %36)
  %cmp44 = icmp eq i32 %36, 4
  br i1 %cmp44, label %do.body47, label %if.else74

do.body47:                                        ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %37 = load i32, ptr @nlm_debug, align 4
  %and48 = and i32 %37, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %do.body47.do.end64_crit_edge, label %do.end59, !prof !123

do.body47.do.end64_crit_edge:                     ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end64

do.end59:                                         ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #10
  %call61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #12
  br label %do.end64

do.end64:                                         ; preds = %do.end59, %do.body47.do.end64_crit_edge
  %38 = ptrtoint ptr %reclaim to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %reclaim, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool66.not = icmp eq i32 %39, 0
  br i1 %tobool66.not, label %do.end64.in_grace_period_crit_edge, label %do.end70

do.end64.in_grace_period_crit_edge:               ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %in_grace_period

do.end70:                                         ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #10
  %call72 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #12
  br label %cleanup

if.else74:                                        ; preds = %if.else
  %40 = ptrtoint ptr %reclaim to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %reclaim, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool76.not = icmp eq i32 %41, 0
  br i1 %tobool76.not, label %if.then77, label %if.else74.do.body79_crit_edge

if.else74.do.body79_crit_edge:                    ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body79

if.then77:                                        ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #10
  call void @__wake_up(ptr noundef %h_gracewait100, i32 noundef 3, i32 noundef 0, ptr noundef null) #8
  br label %do.body79

do.body79:                                        ; preds = %if.then77, %if.else74.do.body79_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %42 = load i32, ptr @nlm_debug, align 4
  %and80 = and i32 %42, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %do.body79.cleanup_crit_edge, label %do.end91, !prof !123

do.body79.cleanup_crit_edge:                      ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end91:                                         ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %status43 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %status43, align 4
  %call94 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef %44) #12
  br label %cleanup

in_grace_period:                                  ; preds = %do.end64.in_grace_period_crit_edge, %land.lhs.true.in_grace_period_crit_edge
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait.i) #8
  %45 = ptrtoint ptr %wait.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %wait.i, align 4
  %46 = call i32 @llvm.read_register.i32(metadata !108) #8
  %and.i.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %task.i, align 8
  %50 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %12, align 4
  %51 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @autoremove_wake_function, ptr %13, align 4
  %52 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %14, ptr %14, align 4
  %53 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %14, ptr %15, align 4
  call void @prepare_to_wait(ptr noundef %h_gracewait100, ptr noundef nonnull %wait.i, i32 noundef 1) #8
  %54 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %task.i, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %stack.i.i.i, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %57, align 4
  %60 = and i32 %59, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool.not.i.i = icmp eq i32 %60, 0
  br i1 %tobool.not.i.i, label %signal_pending.exit.i, label %in_grace_period.nlm_wait_on_grace.exit.thread_crit_edge, !prof !123

in_grace_period.nlm_wait_on_grace.exit.thread_crit_edge: ; preds = %in_grace_period
  call void @__sanitizer_cov_trace_pc() #10
  br label %nlm_wait_on_grace.exit.thread

signal_pending.exit.i:                            ; preds = %in_grace_period
  %61 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %57, align 4
  %and1.i.i.i.i.i.i = and i32 %62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool.not.i129 = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool.not.i129, label %if.then.i, label %signal_pending.exit.i.nlm_wait_on_grace.exit.thread_crit_edge

signal_pending.exit.i.nlm_wait_on_grace.exit.thread_crit_edge: ; preds = %signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nlm_wait_on_grace.exit.thread

if.then.i:                                        ; preds = %signal_pending.exit.i
  %call7.i = call i32 @schedule_timeout(i32 noundef 500) #8
  %63 = call i32 @llvm.read_register.i32(metadata !108) #8
  %and.i.i.i = and i32 %63, -16384
  %64 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %task.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.task_struct, ptr %66, i32 0, i32 3
  %67 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %flags.i.i, align 4
  %and.i16.i = and i32 %68, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %tobool.not.i17.i, label %if.then.i.i, label %if.then.i.if.end.i18.i_crit_edge

if.then.i.if.end.i18.i_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i18.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @debug_check_no_locks_held() #8
  br label %if.end.i18.i

if.end.i18.i:                                     ; preds = %if.then.i.i, %if.then.i.if.end.i18.i_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str.49, i32 noundef 57) #8
  %69 = call i32 @llvm.read_register.i32(metadata !108) #8
  %and.i.i.i.i = and i32 %69, -16384
  %70 = inttoptr i32 %and.i.i.i.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %task.i.i.i, align 8
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %73 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool.not.i.i.i.i = icmp eq i32 %73, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i18.i.try_to_freeze.exit.i_crit_edge, label %freezing.exit.i.i.i, !prof !123

if.end.i18.i.try_to_freeze.exit.i_crit_edge:      ; preds = %if.end.i18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %try_to_freeze.exit.i

freezing.exit.i.i.i:                              ; preds = %if.end.i18.i
  %call4.i.i.i.i = call zeroext i1 @freezing_slow_path(ptr noundef %72) #8
  br i1 %call4.i.i.i.i, label %if.end.i.i.i, label %freezing.exit.i.i.i.try_to_freeze.exit.i_crit_edge, !prof !122

freezing.exit.i.i.i.try_to_freeze.exit.i_crit_edge: ; preds = %freezing.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %try_to_freeze.exit.i

if.end.i.i.i:                                     ; preds = %freezing.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i.i.i = call zeroext i1 @__refrigerator(i1 noundef zeroext false) #8
  br label %try_to_freeze.exit.i

try_to_freeze.exit.i:                             ; preds = %if.end.i.i.i, %freezing.exit.i.i.i.try_to_freeze.exit.i_crit_edge, %if.end.i18.i.try_to_freeze.exit.i_crit_edge
  %74 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %task.i, align 8
  %stack.i.i19.i = getelementptr inbounds %struct.task_struct, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %stack.i.i19.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %stack.i.i19.i, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %77, align 4
  %80 = and i32 %79, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool.not.i20.i = icmp eq i32 %80, 0
  br i1 %tobool.not.i20.i, label %signal_pending.exit24.i, label %try_to_freeze.exit.i.nlm_wait_on_grace.exit.thread_crit_edge, !prof !123

try_to_freeze.exit.i.nlm_wait_on_grace.exit.thread_crit_edge: ; preds = %try_to_freeze.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nlm_wait_on_grace.exit.thread

signal_pending.exit24.i:                          ; preds = %try_to_freeze.exit.i
  %81 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %77, align 4
  %and1.i.i.i.i.i21.i = and i32 %82, 1
  %tobool12.not.i = icmp eq i32 %and1.i.i.i.i.i21.i, 0
  br i1 %tobool12.not.i, label %nlm_wait_on_grace.exit, label %signal_pending.exit24.i.nlm_wait_on_grace.exit.thread_crit_edge

signal_pending.exit24.i.nlm_wait_on_grace.exit.thread_crit_edge: ; preds = %signal_pending.exit24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nlm_wait_on_grace.exit.thread

nlm_wait_on_grace.exit.thread:                    ; preds = %signal_pending.exit24.i.nlm_wait_on_grace.exit.thread_crit_edge, %try_to_freeze.exit.i.nlm_wait_on_grace.exit.thread_crit_edge, %signal_pending.exit.i.nlm_wait_on_grace.exit.thread_crit_edge, %in_grace_period.nlm_wait_on_grace.exit.thread_crit_edge
  call void @finish_wait(ptr noundef %h_gracewait100, ptr noundef nonnull %wait.i) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait.i) #8
  br label %cleanup

nlm_wait_on_grace.exit:                           ; preds = %signal_pending.exit24.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @finish_wait(ptr noundef %h_gracewait100, ptr noundef nonnull %wait.i) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait.i) #8
  br label %do.body6

cleanup:                                          ; preds = %nlm_wait_on_grace.exit.thread, %do.end91, %do.body79.cleanup_crit_edge, %do.end70, %signal_pending.exit, %sw.bb39.cleanup_crit_edge, %sw.bb38, %sw.bb, %do.end37.cleanup_crit_edge, %if.end10.cleanup_crit_edge
  %retval.0 = phi i32 [ -37, %do.end70 ], [ 0, %do.end91 ], [ 0, %do.body79.cleanup_crit_edge ], [ %call16, %do.end37.cleanup_crit_edge ], [ -11, %sw.bb38 ], [ -22, %sw.bb ], [ -4, %nlm_wait_on_grace.exit.thread ], [ -4, %sw.bb39.cleanup_crit_edge ], [ %spec.select, %signal_pending.exit ], [ -37, %if.end10.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_put_task(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nlm_bind_host(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpc_run_task(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nlmclnt_locks_copy_lock(ptr noundef %new, ptr nocapture noundef readonly %fl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fl_u = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 19
  %owner = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 19, i32 0, i32 1
  %0 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %owner, align 4
  %host = getelementptr inbounds %struct.nlm_lockowner, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %h_lock = getelementptr inbounds %struct.nlm_host, ptr %3, i32 0, i32 20
  tail call void @_raw_spin_lock(ptr noundef %h_lock) #8
  %4 = ptrtoint ptr %fl_u to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fl_u, align 4
  %fl_u2 = getelementptr inbounds %struct.file_lock, ptr %new, i32 0, i32 19
  %6 = ptrtoint ptr %fl_u2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %fl_u2, align 4
  %7 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %owner, align 4
  %count.i = getelementptr inbounds %struct.nlm_lockowner, ptr %8, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #8
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #8, !srcloc !121
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !122

entry.if.end15.sink.split.i.i.i.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %entry
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %10 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %.not.i.i.i.i = icmp sgt i32 %10, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.nlmclnt_get_lockowner.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !123

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.nlmclnt_get_lockowner.exit_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nlmclnt_get_lockowner.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef %.sink.i.i.i.i) #8
  br label %nlmclnt_get_lockowner.exit

nlmclnt_get_lockowner.exit:                       ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.nlmclnt_get_lockowner.exit_crit_edge
  %owner7 = getelementptr inbounds %struct.file_lock, ptr %new, i32 0, i32 19, i32 0, i32 1
  %11 = ptrtoint ptr %owner7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %owner7, align 4
  %list = getelementptr inbounds %struct.file_lock, ptr %new, i32 0, i32 19, i32 0, i32 2
  %12 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %owner, align 4
  %host11 = getelementptr inbounds %struct.nlm_lockowner, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %host11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %host11, align 4
  %h_granted = getelementptr inbounds %struct.nlm_host, ptr %15, i32 0, i32 21
  %prev.i = getelementptr inbounds %struct.nlm_host, ptr %15, i32 0, i32 21, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %17, ptr noundef %h_granted) #8
  br i1 %call.i.i, label %if.end.i.i, label %nlmclnt_get_lockowner.exit.list_add_tail.exit_crit_edge

nlmclnt_get_lockowner.exit.list_add_tail.exit_crit_edge: ; preds = %nlmclnt_get_lockowner.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %nlmclnt_get_lockowner.exit
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %list, ptr %prev.i, align 4
  %19 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %h_granted, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.file_lock, ptr %new, i32 0, i32 19, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev3.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %list, ptr %17, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %nlmclnt_get_lockowner.exit.list_add_tail.exit_crit_edge
  %22 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %owner, align 4
  %host14 = getelementptr inbounds %struct.nlm_lockowner, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %host14 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %host14, align 4
  %h_lock15 = getelementptr inbounds %struct.nlm_host, ptr %25, i32 0, i32 20
  tail call void @_raw_spin_unlock(ptr noundef %h_lock15) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nlmclnt_locks_release_private(ptr noundef %fl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %owner = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 19, i32 0, i32 1
  %0 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %owner, align 4
  %host = getelementptr inbounds %struct.nlm_lockowner, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %h_lock = getelementptr inbounds %struct.nlm_host, ptr %3, i32 0, i32 20
  tail call void @_raw_spin_lock(ptr noundef %h_lock) #8
  %list = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 19, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #8
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 19, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %10 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 19, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %12 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %owner, align 4
  %host4 = getelementptr inbounds %struct.nlm_lockowner, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %host4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %host4, align 4
  %h_lock5 = getelementptr inbounds %struct.nlm_host, ptr %15, i32 0, i32 20
  tail call void @_raw_spin_unlock(ptr noundef %h_lock5) #8
  %16 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %owner, align 4
  %count.i = getelementptr inbounds %struct.nlm_lockowner, ptr %17, i32 0, i32 1
  %host.i = getelementptr inbounds %struct.nlm_lockowner, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %host.i, align 4
  %h_lock.i = getelementptr inbounds %struct.nlm_host, ptr %19, i32 0, i32 20
  %call.i = tail call zeroext i1 @refcount_dec_and_lock(ptr noundef %count.i, ptr noundef %h_lock.i) #8
  br i1 %call.i, label %if.end.i, label %list_del.exit.nlmclnt_put_lockowner.exit_crit_edge

list_del.exit.nlmclnt_put_lockowner.exit_crit_edge: ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %nlmclnt_put_lockowner.exit

if.end.i:                                         ; preds = %list_del.exit
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %17) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del.exit.i_crit_edge

if.end.i.list_del.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i.i, align 4
  %22 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %17, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i.list_del.exit.i_crit_edge
  %26 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 256 to ptr), ptr %17, align 4
  %prev.i.i11 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i.i11 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i11, align 4
  %28 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %host.i, align 4
  %h_lock2.i = getelementptr inbounds %struct.nlm_host, ptr %29, i32 0, i32 20
  tail call void @_raw_spin_unlock(ptr noundef %h_lock2.i) #8
  %30 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %host.i, align 4
  tail call void @nlmclnt_release_host(ptr noundef %31) #8
  tail call void @kfree(ptr noundef %17) #8
  br label %nlmclnt_put_lockowner.exit

nlmclnt_put_lockowner.exit:                       ; preds = %list_del.exit.i, %list_del.exit.nlmclnt_put_lockowner.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @refcount_dec_and_lock(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nsm_monitor(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nlmclnt_prepare_block(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nlmclnt_block(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nlmclnt_finish_block(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nlmclnt_async_call(ptr noundef %cred, ptr noundef %req, i32 noundef %proc, ptr noundef %tk_ops) unnamed_addr #0 align 64 {
entry:
  %task_setup_data.i = alloca %struct.rpc_task_setup, align 4
  %msg = alloca %struct.rpc_message, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg) #8
  %0 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 1
  %1 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 2
  %2 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 3
  %3 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %msg, align 4
  %a_args = getelementptr inbounds %struct.nlm_rqst, ptr %req, i32 0, i32 3
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %a_args, ptr %0, align 4
  %a_res = getelementptr inbounds %struct.nlm_rqst, ptr %req, i32 0, i32 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %a_res, ptr %1, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %cred, ptr %2, align 4
  %a_host.i = getelementptr inbounds %struct.nlm_rqst, ptr %req, i32 0, i32 2
  %7 = ptrtoint ptr %a_host.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %a_host.i, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %task_setup_data.i) #8
  %9 = getelementptr inbounds i8, ptr %task_setup_data.i, i32 32
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 65791, ptr %9, align 4, !annotation !127
  %rpc_client.i = getelementptr inbounds %struct.rpc_task_setup, ptr %task_setup_data.i, i32 0, i32 1
  %rpc_message.i = getelementptr inbounds %struct.rpc_task_setup, ptr %task_setup_data.i, i32 0, i32 4
  %11 = call ptr @memset(ptr %task_setup_data.i, i32 0, i32 16)
  %12 = ptrtoint ptr %rpc_message.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %msg, ptr %rpc_message.i, align 4
  %callback_ops.i = getelementptr inbounds %struct.rpc_task_setup, ptr %task_setup_data.i, i32 0, i32 5
  %13 = ptrtoint ptr %callback_ops.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %tk_ops, ptr %callback_ops.i, align 4
  %callback_data.i = getelementptr inbounds %struct.rpc_task_setup, ptr %task_setup_data.i, i32 0, i32 6
  %14 = ptrtoint ptr %callback_data.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %req, ptr %callback_data.i, align 4
  %workqueue.i = getelementptr inbounds %struct.rpc_task_setup, ptr %task_setup_data.i, i32 0, i32 7
  %15 = ptrtoint ptr %workqueue.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %workqueue.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %16 = load i32, ptr @nlm_debug, align 4
  %and.i = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.do.end5.i_crit_edge, label %do.end.i, !prof !123

entry.do.end5.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %h_name.i = getelementptr inbounds %struct.nlm_host, ptr %8, i32 0, i32 6
  %17 = ptrtoint ptr %h_name.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %h_name.i, align 4
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %proc, ptr noundef %18) #12
  br label %do.end5.i

do.end5.i:                                        ; preds = %do.end.i, %entry.do.end5.i_crit_edge
  %call6.i = call ptr @nlm_bind_host(ptr noundef %8) #8
  %cmp.i = icmp eq ptr %call6.i, null
  br i1 %cmp.i, label %__nlm_async_call.exit.thread, label %__nlm_async_call.exit

__nlm_async_call.exit.thread:                     ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  %rpc_release.i = getelementptr inbounds %struct.rpc_call_ops, ptr %tk_ops, i32 0, i32 3
  %19 = ptrtoint ptr %rpc_release.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rpc_release.i, align 4
  call void %20(ptr noundef %req) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %task_setup_data.i) #8
  br label %if.then

__nlm_async_call.exit:                            ; preds = %do.end5.i
  %cl_procinfo.i = getelementptr inbounds %struct.rpc_clnt, ptr %call6.i, i32 0, i32 7
  %21 = ptrtoint ptr %cl_procinfo.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cl_procinfo.i, align 4
  %arrayidx.i = getelementptr %struct.rpc_procinfo, ptr %22, i32 %proc
  %23 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %arrayidx.i, ptr %msg, align 4
  %24 = ptrtoint ptr %rpc_client.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call6.i, ptr %rpc_client.i, align 4
  %call10.i = call ptr @rpc_run_task(ptr noundef nonnull %task_setup_data.i) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %task_setup_data.i) #8
  %cmp.i11 = icmp ugt ptr %call10.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i11, label %__nlm_async_call.exit.if.then_crit_edge, label %if.end

__nlm_async_call.exit.if.then_crit_edge:          ; preds = %__nlm_async_call.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %__nlm_async_call.exit.if.then_crit_edge, %__nlm_async_call.exit.thread
  %retval.0.i15 = phi ptr [ inttoptr (i32 -37 to ptr), %__nlm_async_call.exit.thread ], [ %call10.i, %__nlm_async_call.exit.if.then_crit_edge ]
  %25 = ptrtoint ptr %retval.0.i15 to i32
  br label %cleanup

if.end:                                           ; preds = %__nlm_async_call.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call.i12 = call i32 @__rpc_wait_for_completion_task(ptr noundef %call10.i, ptr noundef null) #8
  call void @rpc_put_task(ptr noundef %call10.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %25, %if.then ], [ %call.i12, %if.end ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @locks_lock_inode_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nlmclnt_cancel_callback(ptr noundef %task, ptr nocapture noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %status1 = getelementptr inbounds %struct.nlm_rqst, ptr %data, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status1, align 4
  %tk_runstate = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 6
  %2 = ptrtoint ptr %tk_runstate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %tk_runstate, align 4
  %4 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %tk_status = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 1
  %5 = ptrtoint ptr %tk_status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tk_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %do.body, label %if.end13

do.body:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %7 = load i32, ptr @nlm_debug, align 4
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %do.body.retry_cancel_crit_edge, label %do.end, !prof !123

do.body.retry_cancel_crit_edge:                   ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %retry_cancel

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %6) #12
  br label %retry_cancel

if.end13:                                         ; preds = %if.end
  %8 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %1, label %do.end35 [
    i32 0, label %if.end13.cleanup_crit_edge
    i32 4, label %if.end13.cleanup_crit_edge50
    i32 1, label %if.end13.cleanup_crit_edge51
    i32 2, label %do.body15
  ]

if.end13.cleanup_crit_edge51:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13.cleanup_crit_edge50:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body15:                                        ; preds = %if.end13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %9 = load i32, ptr @nlm_debug, align 4
  %and16 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %do.body15.retry_cancel_crit_edge, label %do.end27, !prof !123

do.body15.retry_cancel_crit_edge:                 ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #10
  br label %retry_cancel

do.end27:                                         ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #10
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #12
  br label %retry_cancel

do.end35:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %1) #12
  br label %cleanup

retry_cancel:                                     ; preds = %do.end27, %do.body15.retry_cancel_crit_edge, %do.end, %do.body.retry_cancel_crit_edge
  %a_retries = getelementptr inbounds %struct.nlm_rqst, ptr %data, i32 0, i32 6
  %10 = ptrtoint ptr %a_retries to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %a_retries, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %a_retries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp38 = icmp ugt i32 %11, 2
  br i1 %cmp38, label %retry_cancel.cleanup_crit_edge, label %if.end40

retry_cancel.cleanup_crit_edge:                   ; preds = %retry_cancel
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end40:                                         ; preds = %retry_cancel
  call void @__sanitizer_cov_trace_pc() #10
  %a_host = getelementptr inbounds %struct.nlm_rqst, ptr %data, i32 0, i32 2
  %12 = ptrtoint ptr %a_host to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %a_host, align 8
  tail call void @nlm_rebind_host(ptr noundef %13) #8
  %call41 = tail call i32 @rpc_restart_call(ptr noundef %task) #8
  tail call void @rpc_delay(ptr noundef %task, i32 noundef 3000) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %retry_cancel.cleanup_crit_edge, %do.end35, %if.end13.cleanup_crit_edge, %if.end13.cleanup_crit_edge50, %if.end13.cleanup_crit_edge51, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nlmclnt_rpc_release(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @nlmclnt_release_call(ptr noundef %data)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nlm_rebind_host(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_restart_call(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_delay(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__rpc_wait_for_completion_task(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nlmclnt_unlock_prepare(ptr noundef %task, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %a_host = getelementptr inbounds %struct.nlm_rqst, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %a_host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %a_host, align 8
  %h_nlmclnt_ops = getelementptr inbounds %struct.nlm_host, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %h_nlmclnt_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %h_nlmclnt_ops, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.then4_crit_edge, label %land.lhs.true

entry.if.then4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

land.lhs.true:                                    ; preds = %entry
  %nlmclnt_unlock_prepare = getelementptr inbounds %struct.nlmclnt_operations, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %nlmclnt_unlock_prepare to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nlmclnt_unlock_prepare, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %land.lhs.true.if.then4_crit_edge, label %if.then

land.lhs.true.if.then4_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

if.then:                                          ; preds = %land.lhs.true
  %a_callback_data = getelementptr inbounds %struct.nlm_rqst, ptr %data, i32 0, i32 8
  %6 = ptrtoint ptr %a_callback_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %a_callback_data, align 4
  %call = tail call zeroext i1 %5(ptr noundef %task, ptr noundef %7) #8
  br i1 %call, label %if.then.if.end5_crit_edge, label %if.then.if.then4_crit_edge

if.then.if.then4_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then4:                                         ; preds = %if.then.if.then4_crit_edge, %land.lhs.true.if.then4_crit_edge, %entry.if.then4_crit_edge
  tail call void @rpc_call_start(ptr noundef %task) #8
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.then.if.end5_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nlmclnt_unlock_callback(ptr noundef %task, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %status1 = getelementptr inbounds %struct.nlm_rqst, ptr %data, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status1, align 4
  %tk_runstate = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 6
  %2 = ptrtoint ptr %tk_runstate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %tk_runstate, align 4
  %4 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %tk_status = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 1
  %5 = ptrtoint ptr %tk_status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tk_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %do.body, label %if.end14

do.body:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %7 = load i32, ptr @nlm_debug, align 4
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %do.body.do.end12_crit_edge, label %do.end, !prof !123

do.body.do.end12_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end12

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %sub = sub i32 0, %6
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %sub) #12
  br label %do.end12

do.end12:                                         ; preds = %do.end, %do.body.do.end12_crit_edge
  %8 = ptrtoint ptr %tk_status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tk_status, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %9, label %retry_rebind [
    i32 -13, label %do.end12.cleanup_crit_edge
    i32 -5, label %do.end12.cleanup_crit_edge37
  ]

do.end12.cleanup_crit_edge37:                     ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end12.cleanup_crit_edge:                       ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %11 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %1, label %do.end22 [
    i32 4, label %if.then16
    i32 0, label %if.end14.cleanup_crit_edge
  ]

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rpc_delay(ptr noundef %task, i32 noundef 500) #8
  br label %retry_unlock

do.end22:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %1) #12
  br label %cleanup

retry_rebind:                                     ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #10
  %a_host = getelementptr inbounds %struct.nlm_rqst, ptr %data, i32 0, i32 2
  %12 = ptrtoint ptr %a_host to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %a_host, align 8
  tail call void @nlm_rebind_host(ptr noundef %13) #8
  br label %retry_unlock

retry_unlock:                                     ; preds = %retry_rebind, %if.then16
  %call26 = tail call i32 @rpc_restart_call(ptr noundef %task) #8
  br label %cleanup

cleanup:                                          ; preds = %retry_unlock, %do.end22, %if.end14.cleanup_crit_edge, %do.end12.cleanup_crit_edge, %do.end12.cleanup_crit_edge37, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_call_start(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_call_sync(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_check_no_locks_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__refrigerator(i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freezing_slow_path(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !12, !13, !15, !16, !17, !18, !20, !22, !24, !26, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !40, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !54, !56, !58, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !73, !74, !75, !76, !78, !79, !80, !82, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !105, !106, !107}
!llvm.named.register.sp = !{!108}
!llvm.module.flags = !{!109, !110, !111, !112, !113, !114, !115, !116}
!llvm.ident = !{!117}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/lockd/clntproc.c", i32 194, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @nlmclnt_proc._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @nlmclnt_proc._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @__ksymtab_nlmclnt_proc, !7, !"__ksymtab_nlmclnt_proc", i1 false, i1 false}
!7 = !{!"../fs/lockd/clntproc.c", i32 197, i32 1}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/lockd/clntproc.c", i32 217, i32 3}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @nlm_alloc_call._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @nlm_alloc_call._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/lockd/clntproc.c", i32 638, i32 2}
!15 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @nlmclnt_reclaim._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @nlmclnt_reclaim._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @nlm_cookie, !19, !"nlm_cookie", i1 false, i1 false}
!19 = !{!"../fs/lockd/clntproc.c", i32 40, i32 17}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/lockd/clntproc.c", i32 136, i32 63}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../fs/lockd/clntproc.c", i32 147, i32 2}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/lockd/clntproc.c", i32 350, i32 2}
!26 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @__nlm_async_call._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @__nlm_async_call._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/lockd/clntproc.c", i32 843, i32 3}
!31 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @nlm_stat_to_errno._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @nlm_stat_to_errno._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/lockd/clntproc.c", i32 858, i32 2}
!36 = !{ptr @nlm_stat_to_errno._entry.12, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @nlm_stat_to_errno._entry_ptr.14, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @nlmclnt_lock_ops, !39, !"nlmclnt_lock_ops", i1 false, i1 false}
!39 = !{!"../fs/lockd/clntproc.c", i32 474, i32 42}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/lockd/clntproc.c", i32 579, i32 4}
!42 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @nlmclnt_lock._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @nlmclnt_lock._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/lockd/clntproc.c", i32 602, i32 2}
!47 = !{ptr @nlmclnt_lock._entry.17, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @nlmclnt_lock._entry_ptr.19, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/lockd/clntproc.c", i32 763, i32 2}
!51 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @nlmclnt_cancel._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @nlmclnt_cancel._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @nlmclnt_cancel_ops, !55, !"nlmclnt_cancel_ops", i1 false, i1 false}
!55 = !{!"../fs/lockd/clntproc.c", i32 823, i32 34}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/lockd/clntproc.c", i32 792, i32 3}
!58 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @nlmclnt_cancel_callback._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @nlmclnt_cancel_callback._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/lockd/clntproc.c", i32 804, i32 3}
!63 = !{ptr @nlmclnt_cancel_callback._entry.24, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @nlmclnt_cancel_callback._entry_ptr.26, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/lockd/clntproc.c", i32 807, i32 3}
!67 = !{ptr @nlmclnt_cancel_callback._entry.27, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @nlmclnt_cancel_callback._entry_ptr.29, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @nlmclnt_unlock_ops, !70, !"nlmclnt_unlock_ops", i1 false, i1 false}
!70 = !{!"../fs/lockd/clntproc.c", i32 747, i32 34}
!71 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/lockd/clntproc.c", i32 724, i32 3}
!73 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @nlmclnt_unlock_callback._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @nlmclnt_unlock_callback._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../fs/lockd/clntproc.c", i32 738, i32 3}
!78 = !{ptr @nlmclnt_unlock_callback._entry.32, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @nlmclnt_unlock_callback._entry_ptr.34, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../fs/lockd/clntproc.c", i32 274, i32 2}
!82 = !{ptr @.str.36, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @nlmclnt_call._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @nlmclnt_call._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.38, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../fs/lockd/clntproc.c", i32 288, i32 4}
!87 = !{ptr @nlmclnt_call._entry.37, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @nlmclnt_call._entry_ptr.39, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.41, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../fs/lockd/clntproc.c", i32 307, i32 4}
!91 = !{ptr @nlmclnt_call._entry.40, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @nlmclnt_call._entry_ptr.42, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.44, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../fs/lockd/clntproc.c", i32 309, i32 5}
!95 = !{ptr @nlmclnt_call._entry.43, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @nlmclnt_call._entry_ptr.45, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.47, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../fs/lockd/clntproc.c", i32 318, i32 4}
!99 = !{ptr @nlmclnt_call._entry.46, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @nlmclnt_call._entry_ptr.48, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.49, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../include/linux/freezer.h", i32 57, i32 2}
!103 = !{ptr @.str.50, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../fs/lockd/clntproc.c", i32 693, i32 3}
!105 = !{ptr @.str.51, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @nlmclnt_unlock._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @nlmclnt_unlock._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{!"sp"}
!109 = !{i32 1, !"wchar_size", i32 2}
!110 = !{i32 1, !"min_enum_size", i32 4}
!111 = !{i32 8, !"branch-target-enforcement", i32 0}
!112 = !{i32 8, !"sign-return-address", i32 0}
!113 = !{i32 8, !"sign-return-address-all", i32 0}
!114 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!115 = !{i32 7, !"uwtable", i32 1}
!116 = !{i32 7, !"frame-pointer", i32 2}
!117 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!118 = !{i64 2148445679}
!119 = !{i64 2148360964, i64 2148360996, i64 2148361025, i64 2148361059, i64 2148361090, i64 2148361113}
!120 = !{i64 2148445908}
!121 = !{i64 2148361774, i64 2148361806, i64 2148361835, i64 2148361869, i64 2148361900, i64 2148361923}
!122 = !{!"branch_weights", i32 1, i32 2000}
!123 = !{!"branch_weights", i32 2000, i32 1}
!124 = !{i64 2148449799}
!125 = !{i64 2148364239, i64 2148364271, i64 2148364300, i64 2148364334, i64 2148364365, i64 2148364388}
!126 = !{i64 2149325913}
!127 = !{!"auto-init"}
