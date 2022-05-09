; ModuleID = '/llk/IR_all_yes/fs/nfsd/nfs4proc.c_pt.bc'
source_filename = "../fs/nfsd/nfs4proc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.130 }
%union.anon.130 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.svc_procedure = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.svc_version = type { i32, i32, ptr, ptr, i32, i8, i8, i8, ptr }
%struct.nfsd4_operation = type { ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.131 }
%struct.atomic_t = type { i32 }
%union.anon.131 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.nfs4_verifier = type { [8 x i8] }
%struct.nfsd4_callback_ops = type { ptr, ptr, ptr }
%struct.nfs_ssc_client_ops_tbl = type { ptr, ptr }
%struct.nfsd_stats = type { [82 x %struct.percpu_counter], %struct.atomic_t }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.nfsd4_copy = type { %struct.stateid_t, %struct.stateid_t, i64, i64, i64, %struct.nl4_server, i8, i32, %struct.nfsd42_write_res, %struct.nfsd4_callback, i32, %struct.knfsd_fh, ptr, ptr, ptr, %struct.copy_stateid_t, %struct.list_head, ptr, %struct.refcount_struct, i8, ptr, %struct.nfs_fh, %struct.nfs4_stateid_struct, i8 }
%struct.stateid_t = type { i32, %struct.stateid_opaque_t }
%struct.stateid_opaque_t = type { %struct.clientid_t, i32 }
%struct.clientid_t = type { i32, i32 }
%struct.nl4_server = type { i32, %union.anon.154 }
%union.anon.154 = type { %struct.anon.155 }
%struct.anon.155 = type { i32, [1025 x i8] }
%struct.nfsd42_write_res = type { i64, i32, %struct.nfs4_verifier, %struct.stateid_t }
%struct.nfsd4_callback = type { ptr, %struct.rpc_message, ptr, %struct.work_struct, i32, i32, i8, i8 }
%struct.rpc_message = type { ptr, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.knfsd_fh = type { i32, %union.anon.166 }
%union.anon.166 = type { %struct.anon.167, [124 x i8] }
%struct.anon.167 = type { i8, i8, i8, i8, [0 x i32] }
%struct.copy_stateid_t = type { %struct.stateid_t, i8, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nfs_fh = type { i16, [128 x i8] }
%struct.nfs4_stateid_struct = type { %union.anon.170, i32 }
%union.anon.170 = type { %struct.anon.171 }
%struct.anon.171 = type { i32, [12 x i8] }
%struct.nfs4_client = type { %struct.list_head, %struct.rb_node, ptr, %struct.list_head, %struct.idr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.xdr_netobj, %struct.nfs4_verifier, i64, %struct.__kernel_sockaddr_storage, i8, %struct.svc_cred, %struct.clientid_t, %struct.nfs4_verifier, i32, %struct.xdr_netobj, %struct.xdr_netobj, %struct.timespec64, %struct.nfs4_cb_conn, i32, ptr, ptr, i32, i32, %struct.nfsd4_callback, ptr, %struct.spinlock, %struct.list_head, %struct.nfsd4_clid_slot, i32, %struct.atomic_t, %struct.nfsdfs_client, %struct.nfs4_op_map, ptr, ptr, i32, %struct.rpc_wait_queue, ptr, %struct.list_head, %struct.spinlock, %struct.atomic_t }
%struct.rb_node = type { i32, ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.__kernel_sockaddr_storage = type { %union.anon.156 }
%union.anon.156 = type { ptr, [124 x i8] }
%struct.svc_cred = type { %struct.kuid_t, %struct.kgid_t, ptr, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.xdr_netobj = type { i32, ptr }
%struct.timespec64 = type { i64, i32 }
%struct.nfs4_cb_conn = type { %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, i32, i32, i32, ptr }
%struct.nfsd4_clid_slot = type { i32, i32, %struct.nfsd4_create_session }
%struct.nfsd4_create_session = type { %struct.clientid_t, %struct.nfs4_sessionid, i32, i32, %struct.nfsd4_channel_attrs, %struct.nfsd4_channel_attrs, i32, %struct.nfsd4_cb_sec }
%struct.nfs4_sessionid = type { [16 x i8] }
%struct.nfsd4_channel_attrs = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nfsd4_cb_sec = type { i32, %struct.kuid_t, %struct.kgid_t }
%struct.nfsdfs_client = type { %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.nfs4_op_map = type { %union.anon.168 }
%union.anon.168 = type { [3 x i32] }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.svc_rqst = type { %struct.list_head, %struct.callback_head, ptr, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, ptr, ptr, %struct.svc_cred, ptr, ptr, i32, %struct.xdr_buf, %struct.xdr_stream, %struct.xdr_stream, ptr, %struct.xdr_buf, [260 x ptr], ptr, ptr, ptr, %struct.pagevec, [259 x %struct.kvec], [259 x %struct.bio_vec], i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, i64, %struct.cache_req, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.xdr_stream = type { ptr, ptr, ptr, ptr, %struct.kvec, ptr, i32, ptr }
%struct.kvec = type { ptr, i32 }
%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }
%struct.pagevec = type { i8, i8, [15 x ptr] }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.cache_req = type { ptr, i32 }
%struct.nfsd4_compoundres = type { ptr, ptr, ptr, i32, ptr, i32, %struct.nfsd4_compound_state }
%struct.nfsd4_compound_state = type { %struct.svc_fh, %struct.svc_fh, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, %struct.stateid_t, %struct.stateid_t, i32 }
%struct.svc_fh = type { %struct.knfsd_fh, i32, ptr, ptr, i8, i8, i8, i8, i32, i8, i8, i64, %struct.timespec64, %struct.timespec64, i64, %struct.kstat, i64 }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.nfsd4_compoundargs = type { ptr, ptr, ptr, i32, ptr, i32, i32, ptr, [8 x %struct.nfsd4_op], i32, [28 x i8] }
%struct.nfsd4_op = type { i32, ptr, i32, [20 x i8], %union.nfsd4_op_u, ptr, [28 x i8] }
%union.nfsd4_op_u = type { %struct.nfsd4_copy_notify, [24 x i8] }
%struct.nfsd4_copy_notify = type { %struct.stateid_t, %struct.nl4_server, %struct.stateid_t, i64, i32, %struct.nl4_server }
%struct.nfsd4_access = type { i32, i32, i32 }
%struct.nfsd4_commit = type { i64, i32, %struct.nfs4_verifier }
%struct.nfsd4_create = type { i32, ptr, i32, %union.anon.173, [3 x i32], %struct.iattr, i32, %struct.nfsd4_change_info, ptr, %struct.xdr_netobj }
%union.anon.173 = type { %struct.anon.174 }
%struct.anon.174 = type { i32, ptr, %struct.kvec }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%struct.nfsd4_change_info = type { i32, i64, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.110, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
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
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.22 }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.110 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.fs_struct = type { i32, %struct.spinlock, %struct.seqcount_spinlock, i32, i32, %struct.path, %struct.path }
%struct.path = type { ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.123, %struct.list_head, %struct.list_head, %union.anon.124 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.16, ptr }
%union.anon.16 = type { i64 }
%struct.lockref = type { %union.anon.18 }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { %struct.spinlock, i32 }
%union.anon.123 = type { %struct.list_head }
%union.anon.124 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.133, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.134, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.135, ptr, %struct.address_space, %struct.list_head, %union.anon.136, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.133 = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.134 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.135 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.136 = type { ptr }
%struct.cache_head = type { %struct.hlist_node, i64, i64, %struct.kref, i32 }
%struct.nfsd4_getattr = type { [3 x i32], ptr }
%struct.nfsd4_link = type { i32, ptr, %struct.nfsd4_change_info }
%struct.nfsd4_lookup = type { i32, ptr }
%struct.svc_xprt = type { ptr, ptr, %struct.kref, %struct.list_head, %struct.list_head, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.mutex, %struct.spinlock, ptr, %struct.list_head, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, [58 x i8], %struct.list_head, ptr, ptr, ptr, ptr }
%struct.nfsd4_open = type { i32, i32, ptr, i32, %struct.stateid_t, i32, i32, i32, i32, [3 x i32], %struct.iattr, [16 x i8], %struct.nfs4_verifier, %struct.clientid_t, %struct.xdr_netobj, i32, i32, i32, i32, %struct.stateid_t, i32, i32, %struct.nfsd4_change_info, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, %struct.xdr_netobj }
%struct.nfsd4_session = type { %struct.atomic_t, %struct.list_head, %struct.list_head, i32, ptr, %struct.nfs4_sessionid, %struct.nfsd4_channel_attrs, %struct.nfsd4_channel_attrs, %struct.nfsd4_cb_sec, %struct.list_head, i32, i32, [0 x ptr] }
%struct.nfs4_stateowner = type { %struct.list_head, %struct.list_head, ptr, ptr, %struct.atomic_t, i32, %struct.xdr_netobj, %struct.nfs4_replay, i8 }
%struct.nfs4_replay = type { i32, i32, ptr, %struct.knfsd_fh, %struct.mutex, [112 x i8] }
%struct.nfs4_openowner = type { %struct.nfs4_stateowner, %struct.list_head, %struct.list_head, ptr, i64, i8 }
%struct.nfsd_net = type { ptr, ptr, ptr, ptr, ptr, %struct.lock_manager, i8, i64, ptr, ptr, i32, ptr, %struct.rb_root, ptr, %struct.rb_root, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.delayed_work, %struct.spinlock, %struct.spinlock, ptr, i8, ptr, i64, i64, i8, i8, %struct.atomic_t, i8, i8, %struct.seqlock_t, [8 x i8], i32, i32, i32, i32, ptr, i32, i32, %struct.idr, %struct.spinlock, ptr, ptr, ptr, i32, i32, i32, %struct.atomic_t, [2 x %struct.percpu_counter], i32, i32, %struct.shrinker, %struct.spinlock, %struct.list_head, %struct.wait_queue_head, [65 x i8], ptr, %struct.siphash_key_t }
%struct.lock_manager = type { %struct.list_head, i8 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.siphash_key_t = type { [2 x i64] }
%struct.nfsd4_putfh = type { i32, ptr, i8 }
%struct.nfsd4_read = type { %struct.stateid_t, i64, i32, i32, ptr, ptr, ptr }
%struct.nfsd4_readdir = type { i64, %struct.nfs4_verifier, i32, i32, [3 x i32], ptr, ptr, %struct.readdir_cd, ptr, i32 }
%struct.readdir_cd = type { i32 }
%struct.nfsd4_readlink = type { ptr, ptr }
%struct.nfsd4_remove = type { i32, ptr, %struct.nfsd4_change_info }
%struct.nfsd4_rename = type { i32, ptr, i32, ptr, %struct.nfsd4_change_info, %struct.nfsd4_change_info }
%struct.nfsd4_secinfo = type { i32, ptr, ptr }
%struct.svc_export = type { %struct.cache_head, ptr, i32, %struct.path, %struct.kuid_t, %struct.kgid_t, i32, ptr, %struct.nfsd4_fs_locations, i32, [8 x %struct.exp_flavor_info], i32, ptr, ptr, %struct.callback_head, %struct.export_stats }
%struct.nfsd4_fs_locations = type { i32, ptr, i32 }
%struct.exp_flavor_info = type { i32, i32 }
%struct.export_stats = type { i64, [3 x %struct.percpu_counter] }
%struct.cache_detail = type { ptr, i32, ptr, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, %struct.list_head, i64, i32, %struct.list_head, %struct.atomic_t, i64, i64, %union.anon.172, ptr }
%union.anon.172 = type { ptr }
%struct.nfsd4_setattr = type { %struct.stateid_t, [3 x i32], %struct.iattr, ptr, %struct.xdr_netobj }
%struct.nfsd4_write = type { %struct.stateid_t, i64, i32, i32, %struct.xdr_buf, i32, i32, %struct.nfs4_verifier }
%struct.nfsd4_getdeviceinfo = type { %struct.nfsd4_deviceid, i32, i32, i32, ptr }
%struct.nfsd4_deviceid = type { i64, i32, i32 }
%struct.nfsd4_deviceid_map = type { %struct.list_head, i64, i32, [0 x i32] }
%struct.nfsd4_layout_ops = type { i32, i8, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.nfsd4_layoutcommit = type { %struct.stateid_t, %struct.nfsd4_layout_seg, i32, i32, i64, %struct.timespec64, i32, i32, ptr, i32, i64 }
%struct.nfsd4_layout_seg = type { i32, i64, i64 }
%struct.nfs4_layout_stateid = type { %struct.nfs4_stid, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.list_head, i32, ptr, %struct.nfsd4_callback, %struct.stateid_t, i8, %struct.mutex }
%struct.nfs4_stid = type { %struct.refcount_struct, %struct.list_head, i8, %struct.stateid_t, %struct.spinlock, ptr, ptr, ptr }
%struct.nfsd4_layoutget = type { i64, i32, i32, i32, %struct.stateid_t, %struct.nfsd4_layout_seg, ptr }
%struct.nfs4_file = type { %struct.refcount_struct, ptr, i8, %struct.spinlock, %struct.hlist_node, %struct.list_head, %union.anon.182, %struct.list_head, [3 x ptr], [2 x %struct.atomic_t], i32, ptr, i32, %struct.knfsd_fh, i8, %struct.list_head, %struct.atomic_t }
%union.anon.182 = type { %struct.list_head }
%struct.nfsd4_layoutreturn = type { i32, i32, %struct.nfsd4_layout_seg, i32, i32, ptr, %struct.stateid_t, i32 }
%struct.nfsd4_secinfo_no_name = type { i32, ptr }
%struct.nfsd_file = type { %struct.hlist_node, %struct.list_head, %struct.callback_head, ptr, ptr, ptr, i32, ptr, i32, %struct.refcount_struct, i8, ptr }
%struct.nfsd4_fallocate = type { %struct.stateid_t, i64, i64 }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.nfs4_cpntf_state = type { %struct.copy_stateid_t, %struct.list_head, %struct.stateid_t, %struct.clientid_t, i64 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
%struct.nfsd4_offload_status = type { %struct.stateid_t, i64, i32 }
%struct.nfsd4_seek = type { %struct.stateid_t, i64, i32, i32, i64 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.nfsd4_clone = type { %struct.stateid_t, %struct.stateid_t, i64, i64, i64 }
%struct.nfsd4_getxattr = type { ptr, i32, ptr }
%struct.nfsd4_setxattr = type { i32, ptr, ptr, i32, %struct.nfsd4_change_info }
%struct.nfsd4_listxattrs = type { i64, i32, ptr, i32 }
%struct.nfsd4_removexattr = type { ptr, %struct.nfsd4_change_info }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.nfsd4_verify = type { [3 x i32], i32, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.37, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.37 = type { %struct.anon.38 }
%struct.anon.38 = type { ptr, i32, i32, i32 }
%struct.raw_notifier_head = type { ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.netns_unix = type { i32, ptr }
%struct.netns_nexthop = type { %struct.rb_root, ptr, i32, i32, %struct.blocking_notifier_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.netns_ipv4 = type { %struct.inet_timewait_death_row, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i32, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, i32, %struct.local_ports, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, ptr, ptr, i32, %struct.atomic_t, i32, i32, i32, i8, i8, i8, i32, i32, i32, %struct.ping_group_range, %struct.atomic_t, ptr, i32, %struct.list_head, ptr, i32, i8, i8, ptr, i32, ptr, i32, %struct.atomic_t, %struct.siphash_key_t, [96 x i8] }
%struct.inet_timewait_death_row = type { %struct.atomic_t, [124 x i8], ptr, i32 }
%struct.local_ports = type { %struct.seqlock_t, [2 x i32], i8 }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.90, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.90 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_ieee802154_lowpan = type { %struct.netns_sysctl_lowpan, ptr }
%struct.netns_sysctl_lowpan = type { ptr }
%struct.netns_sctp = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.timer_list, %struct.list_head, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netns_nf = type { ptr, [13 x ptr], ptr, [5 x ptr], [5 x ptr], [3 x ptr], [5 x ptr], [7 x ptr], i32, i32 }
%struct.netns_ct = type { i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.nf_ip_net, i32 }
%struct.nf_ip_net = type { %struct.nf_generic_net, %struct.nf_tcp_net, %struct.nf_udp_net, %struct.nf_icmp_net, %struct.nf_icmp_net, %struct.nf_dccp_net, %struct.nf_sctp_net, %struct.nf_gre_net }
%struct.nf_generic_net = type { i32 }
%struct.nf_tcp_net = type { [14 x i32], i8, i8, i8, i8, i32 }
%struct.nf_udp_net = type { [2 x i32], i32 }
%struct.nf_icmp_net = type { i32 }
%struct.nf_dccp_net = type { i8, [10 x i32] }
%struct.nf_sctp_net = type { [10 x i32] }
%struct.nf_gre_net = type { %struct.list_head, [2 x i32] }
%struct.netns_nftables = type { i8 }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.nfs4_ssc_client_ops = type { ptr, ptr }
%struct.nfsd4_ssc_umount_item = type { %struct.list_head, i8, %struct.refcount_struct, i32, ptr, [63 x i8] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@__param_str_inter_copy_offload_enable = internal constant [31 x i8] c"nfsd.inter_copy_offload_enable\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@inter_copy_offload_enable = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_inter_copy_offload_enable = internal constant %struct.kernel_param { ptr @__param_str_inter_copy_offload_enable, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.130 { ptr @inter_copy_offload_enable } }, section "__param", align 4
@__UNIQUE_ID_inter_copy_offload_enabletype651 = internal constant [45 x i8] c"nfsd.parmtype=inter_copy_offload_enable:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_inter_copy_offload_enable652 = internal constant [95 x i8] c"nfsd.parm=inter_copy_offload_enable:Enable inter server to server copy offload. Default: false\00", section ".modinfo", align 1
@__param_str_nfsd4_ssc_umount_timeout = internal constant [30 x i8] c"nfsd.nfsd4_ssc_umount_timeout\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@nfsd4_ssc_umount_timeout = internal global { i32, [28 x i8] } { i32 900000, [28 x i8] zeroinitializer }, align 32
@__param_nfsd4_ssc_umount_timeout = internal constant %struct.kernel_param { ptr @__param_str_nfsd4_ssc_umount_timeout, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.130 { ptr @nfsd4_ssc_umount_timeout } }, section "__param", align 4
@__UNIQUE_ID_nfsd4_ssc_umount_timeouttype653 = internal constant [43 x i8] c"nfsd.parmtype=nfsd4_ssc_umount_timeout:int\00", section ".modinfo", align 1
@__UNIQUE_ID_nfsd4_ssc_umount_timeout654 = internal constant [87 x i8] c"nfsd.parm=nfsd4_ssc_umount_timeout:idle msecs before unmount export from source server\00", section ".modinfo", align 1
@warn_on_nonidempotent_op._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 3421, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013unable to encode reply to nonidempotent op %u (%s)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"warn_on_nonidempotent_op\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/nfsd/nfs4proc.c\00", [45 x i8] zeroinitializer }, align 32
@warn_on_nonidempotent_op._entry_ptr = internal global ptr @warn_on_nonidempotent_op._entry, section ".printk_index", align 4
@warn_on_nonidempotent_op.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@nfsd_procedures4 = internal constant { [2 x %struct.svc_procedure], [56 x i8] } { [2 x %struct.svc_procedure] [%struct.svc_procedure { ptr @nfsd4_proc_null, ptr @nfssvc_decode_voidarg, ptr @nfssvc_encode_voidres, ptr null, i32 0, i32 0, i32 0, i32 1, ptr @.str.142 }, %struct.svc_procedure { ptr @nfsd4_proc_compound, ptr @nfs4svc_decode_compoundargs, ptr @nfs4svc_encode_compoundres, ptr @nfsd4_release_compoundargs, i32 17728, i32 816, i32 0, i32 262380, ptr @.str.143 }], [56 x i8] zeroinitializer }, align 32
@nfsd_count3 = internal global { [2 x i32], [24 x i8] } zeroinitializer, align 32
@nfsd_version4 = dso_local constant { %struct.svc_version, [36 x i8] } { %struct.svc_version { i32 4, i32 2, ptr @nfsd_procedures4, ptr @nfsd_count3, i32 17728, i8 0, i8 1, i8 1, ptr @nfsd_dispatch }, [36 x i8] zeroinitializer }, align 32
@nfsd4_ops = internal constant { [76 x %struct.nfsd4_operation], [528 x i8] } { [76 x %struct.nfsd4_operation] [%struct.nfsd4_operation zeroinitializer, %struct.nfsd4_operation zeroinitializer, %struct.nfsd4_operation zeroinitializer, %struct.nfsd4_operation { ptr @nfsd4_access, ptr null, i32 0, ptr @.str.4, ptr @nfsd4_access_rsize, ptr null, ptr null }, %struct.nfsd4_operation { ptr @nfsd4_close, ptr null, i32 32, ptr @.str.5, ptr @nfsd4_status_stateid_rsize, ptr @nfsd4_get_closestateid, ptr @nfsd4_set_closestateid }, %struct.nfsd4_operation { ptr @nfsd4_commit, ptr null, i32 32, ptr @.str.6, ptr @nfsd4_commit_rsize, ptr null, ptr null }, %struct.nfsd4_operation { ptr @nfsd4_create, ptr null, i32 224, ptr @.str.7, ptr @nfsd4_create_rsize, ptr null, ptr null }, %struct.nfsd4_operation zeroinitializer, %struct.nfsd4_operation { ptr @nfsd4_delegreturn, ptr null, i32 32, ptr @.str.8, ptr @nfsd4_only_status_rsize, ptr @nfsd4_get_delegreturnstateid, ptr null }, %struct.nfsd4_operation { ptr @nfsd4_getattr, ptr null, i32 2, ptr @.str.9, ptr @nfsd4_getattr_rsize, ptr null, ptr null }, %struct.nfsd4_operation { ptr @nfsd4_getfh, ptr null, i32 0, ptr @.str.10, ptr @nfsd4_getfh_rsize, ptr null, ptr null }, %struct.nfsd4_operation { ptr @nfsd4_link, ptr null, i32 98, ptr @.str.11, ptr @nfsd4_link_rsize, ptr null, ptr null }, %struct.nfsd4_operation { ptr @nfsd4_lock, ptr null, i32 288, ptr @.str.12, ptr @nfsd4_lock_rsize, ptr null, ptr @nfsd4_set_lockstateid }, %struct.nfsd4_operation { ptr @nfsd4_lockt, ptr null, i32 256, ptr @.str.13, ptr @nfsd4_lock_rsize, ptr null, ptr null }, %struct.nfsd4_operation { ptr @nfsd4_locku, ptr null, i32 32, ptr @.str.14, ptr @nfsd4_status_stateid_rsize, ptr @nfsd4_get_lockustateid, ptr null }, %struct.nfsd4_operation { ptr @nfsd4_lookup, ptr null, i32 136, ptr @.str.15, ptr @nfsd4_only_status_rsize, ptr null, ptr null }, %struct.nfsd4_operation { ptr @nfsd4_lookupp, ptr null, i32 136, ptr @.str.16, ptr @nfsd4_only_status_rsize, ptr null, ptr null }, %struct.nfsd4_operation { ptr @nfsd4_nverify, ptr null, i32 0, ptr @.str.17, ptr @nfsd4_only_status_rsize, ptr null, ptr null }, %struct.nfsd4_operation { ptr @nfsd4_open, ptr null, i32 40, ptr @.str.18, ptr @nfsd4_open_rsize, ptr null, ptr @nfsd4_set_openstateid }, %struct.nfsd4_operation zeroinitializer, %struct.nfsd4_operation { ptr @nfsd4_open_confirm, ptr null, i32 32, ptr @.str.19, ptr @nfsd4_status_stateid_rsize, ptr null, ptr null }, %struct.nfsd4_operation { ptr @nfsd4_open_downgrade, ptr null, i32 32, ptr @.str.20, ptr @nfsd4_status_stateid_rsize, ptr @nfsd4_get_opendowngradestateid, ptr @nfsd4_set_opendowngradestateid }, %struct.nfsd4_operation { ptr @nfsd4_putfh, ptr null, i32 147, ptr @.str.21, ptr @nfsd4_only_status_rsize, ptr null, ptr null }, %struct.nfsd4_operation { ptr @nfsd4_putrootfh, ptr null, i32 147, ptr @.str.22, ptr @nfsd4_only_status_rsize, ptr null, ptr null }, %struct.nfsd4_operation { ptr @nfsd4_putrootfh, ptr null, i32 147, ptr @.str.23, ptr @nfsd4_only_status_rsize, ptr null, ptr null }, %struct.nfsd4_operation { ptr @nfsd4_read, ptr @nfsd4_read_release, i32 0, ptr @.str.24, ptr @nfsd4_read_rsize, ptr @nfsd4_get_readstateid, ptr null }, %struct.nfsd4_operation { ptr @nfsd4_readdir, ptr null, i32 0, ptr @.str.25, ptr @nfsd4_readdir_rsize, ptr null, ptr null }, %struct.nfsd4_operation { ptr @nfsd4_readlink, ptr null, i32 0, ptr @.str.26, ptr @nfsd4_readlink_rsize, ptr null, ptr null }, %struct.nfsd4_operation { ptr @nfsd4_remove, ptr null, i32 96, ptr @.str.27, ptr @nfsd4_remove_rsize, ptr null, ptr null }, %struct.nfsd4_operation { ptr @nfsd4_rename, ptr null, i32 96, ptr @.str.28, ptr @nfsd4_rename_rsize, ptr null, ptr null }, %struct.nfsd4_operation { ptr @nfsd4_renew, ptr null, i32 35, ptr @.str.29, ptr @nfsd4_only_status_rsize, ptr null, ptr null }, %struct.nfsd4_operation { ptr @nfsd4_restorefh, ptr null, i32 51, ptr @.str.30, ptr @nfsd4_only_status_rsize, ptr null, ptr null }, %struct.nfsd4_operation { ptr @nfsd4_savefh, ptr null, i32 40, ptr @.str.31, ptr @nfsd4_only_status_rsize, ptr null, ptr null }, %struct.nfsd4_operation { ptr @nfsd4_secinfo, ptr @nfsd4_secinfo_release, i32 8, ptr @.str.32, ptr @nfsd4_secinfo_rsize, ptr null, ptr null }, %struct.nfsd4_operation { ptr @nfsd4_setattr, ptr null, i32 352, ptr @.str.33, ptr @nfsd4_setattr_rsize, ptr @nfsd4_get_setattrstateid, ptr null }, %struct.nfsd4_operation { ptr @nfsd4_setclientid, ptr null, i32 355, ptr @.str.34, ptr @nfsd4_setclientid_rsize, ptr null, ptr null }, %struct.nfsd4_operation { ptr @nfsd4_setclientid_confirm, ptr null, i32 99, ptr @.str.35, ptr @nfsd4_only_status_rsize, ptr null, ptr null }, %struct.nfsd4_operation { ptr @nfsd4_verify, ptr null, i32 0, ptr @.str.36, ptr @nfsd4_only_status_rsize, ptr null, ptr null }, %struct.nfsd4_operation { ptr @nfsd4_write, ptr null, i32 96, ptr @.str.37, ptr @nfsd4_write_rsize, ptr @nfsd4_get_writestateid, ptr null }, %struct.nfsd4_operation { ptr @nfsd4_release_lockowner, ptr null, i32 35, ptr @.str.38, ptr @nfsd4_only_status_rsize, ptr null, ptr null }, %struct.nfsd4_operation { ptr @nfsd4_backchannel_ctl, ptr null, i32 33, ptr @.str.39, ptr @nfsd4_only_status_rsize, ptr null, ptr null }, %struct.nfsd4_operation { ptr @nfsd4_bind_conn_to_session, ptr null, i32 37, ptr @.str.40, ptr @nfsd4_bind_conn_to_session_rsize, ptr null, ptr null }, %struct.nfsd4_operation { ptr @nfsd4_exchange_id, ptr null, i32 37, ptr @.str.41, ptr @nfsd4_exchange_id_rsize, ptr null, ptr null }, %struct.nfsd4_operation { ptr @nfsd4_create_session, ptr null, i32 37, ptr @.str.42, ptr @nfsd4_create_session_rsize, ptr null, ptr null }, %struct.nfsd4_operation { ptr @nfsd4_destroy_session, ptr null, i32 37, ptr @.str.43, ptr @nfsd4_only_status_rsize, ptr null, ptr null }, %struct.nfsd4_operation { ptr @nfsd4_free_stateid, ptr null, i32 33, ptr @.str.44, ptr @nfsd4_only_status_rsize, ptr @nfsd4_get_freestateid, ptr null }, %struct.nfsd4_operation zeroinitializer, %struct.nfsd4_operation { ptr @nfsd4_getdeviceinfo, ptr @nfsd4_getdeviceinfo_release, i32 1, ptr @.str.45, ptr @nfsd4_getdeviceinfo_rsize, ptr null, ptr null }, %struct.nfsd4_operation zeroinitializer, %struct.nfsd4_operation { ptr @nfsd4_layoutcommit, ptr null, i32 32, ptr @.str.46, ptr @nfsd4_layoutcommit_rsize, ptr null, ptr null }, %struct.nfsd4_operation { ptr @nfsd4_layoutget, ptr @nfsd4_layoutget_release, i32 32, ptr @.str.47, ptr @nfsd4_layoutget_rsize, ptr null, ptr null }, %struct.nfsd4_operation { ptr @nfsd4_layoutreturn, ptr null, i32 32, ptr @.str.48, ptr @nfsd4_layoutreturn_rsize, ptr null, ptr null }, %struct.nfsd4_operation { ptr @nfsd4_secinfo_no_name, ptr @nfsd4_secinfo_no_name_release, i32 8, ptr @.str.49, ptr @nfsd4_secinfo_rsize, ptr null, ptr null }, %struct.nfsd4_operation { ptr @nfsd4_sequence, ptr null, i32 5, ptr @.str.50, ptr @nfsd4_sequence_rsize, ptr null, ptr null }, %struct.nfsd4_operation zeroinitializer, %struct.nfsd4_operation { ptr @nfsd4_test_stateid, ptr null, i32 1, ptr @.str.51, ptr @nfsd4_test_stateid_rsize, ptr null, ptr null }, %struct.nfsd4_operation zeroinitializer, %struct.nfsd4_operation { ptr @nfsd4_destroy_clientid, ptr null, i32 37, ptr @.str.52, ptr @nfsd4_only_status_rsize, ptr null, ptr null }, %struct.nfsd4_operation { ptr @nfsd4_reclaim_complete, ptr null, i32 33, ptr @.str.53, ptr @nfsd4_only_status_rsize, ptr null, ptr null }, %struct.nfsd4_operation { ptr @nfsd4_allocate, ptr null, i32 32, ptr @.str.54, ptr @nfsd4_only_status_rsize, ptr null, ptr null }, %struct.nfsd4_operation { ptr @nfsd4_copy, ptr null, i32 32, ptr @.str.55, ptr @nfsd4_copy_rsize, ptr null, ptr null }, %struct.nfsd4_operation { ptr @nfsd4_copy_notify, ptr null, i32 32, ptr @.str.56, ptr @nfsd4_copy_notify_rsize, ptr null, ptr null }, %struct.nfsd4_operation { ptr @nfsd4_deallocate, ptr null, i32 32, ptr @.str.57, ptr @nfsd4_only_status_rsize, ptr null, ptr null }, %struct.nfsd4_operation zeroinitializer, %struct.nfsd4_operation zeroinitializer, %struct.nfsd4_operation zeroinitializer, %struct.nfsd4_operation { ptr @nfsd4_offload_cancel, ptr null, i32 32, ptr @.str.58, ptr @nfsd4_only_status_rsize, ptr null, ptr null }, %struct.nfsd4_operation { ptr @nfsd4_offload_status, ptr null, i32 0, ptr @.str.59, ptr @nfsd4_offload_status_rsize, ptr null, ptr null }, %struct.nfsd4_operation { ptr @nfsd4_read, ptr @nfsd4_read_release, i32 0, ptr @.str.60, ptr @nfsd4_read_plus_rsize, ptr @nfsd4_get_readstateid, ptr null }, %struct.nfsd4_operation { ptr @nfsd4_seek, ptr null, i32 0, ptr @.str.61, ptr @nfsd4_seek_rsize, ptr null, ptr null }, %struct.nfsd4_operation zeroinitializer, %struct.nfsd4_operation { ptr @nfsd4_clone, ptr null, i32 32, ptr @.str.62, ptr @nfsd4_only_status_rsize, ptr null, ptr null }, %struct.nfsd4_operation { ptr @nfsd4_getxattr, ptr null, i32 0, ptr @.str.63, ptr @nfsd4_getxattr_rsize, ptr null, ptr null }, %struct.nfsd4_operation { ptr @nfsd4_setxattr, ptr null, i32 96, ptr @.str.64, ptr @nfsd4_setxattr_rsize, ptr null, ptr null }, %struct.nfsd4_operation { ptr @nfsd4_listxattrs, ptr null, i32 0, ptr @.str.65, ptr @nfsd4_listxattrs_rsize, ptr null, ptr null }, %struct.nfsd4_operation { ptr @nfsd4_removexattr, ptr null, i32 96, ptr @.str.66, ptr @nfsd4_removexattr_rsize, ptr null, ptr null }], [528 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"OP_ACCESS\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"OP_CLOSE\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"OP_COMMIT\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"OP_CREATE\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"OP_DELEGRETURN\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"OP_GETATTR\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"OP_GETFH\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"OP_LINK\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"OP_LOCK\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"OP_LOCKT\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"OP_LOCKU\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"OP_LOOKUP\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"OP_LOOKUPP\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"OP_NVERIFY\00", [21 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"OP_OPEN\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"OP_OPEN_CONFIRM\00", [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"OP_OPEN_DOWNGRADE\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"OP_PUTFH\00", [23 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"OP_PUTPUBFH\00", [20 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"OP_PUTROOTFH\00", [19 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"OP_READ\00", [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"OP_READDIR\00", [21 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"OP_READLINK\00", [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"OP_REMOVE\00", [22 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"OP_RENAME\00", [22 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"OP_RENEW\00", [23 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"OP_RESTOREFH\00", [19 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"OP_SAVEFH\00", [22 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"OP_SECINFO\00", [21 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"OP_SETATTR\00", [21 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"OP_SETCLIENTID\00", [17 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"OP_SETCLIENTID_CONFIRM\00", [41 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"OP_VERIFY\00", [22 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"OP_WRITE\00", [23 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"OP_RELEASE_LOCKOWNER\00", [43 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"OP_BACKCHANNEL_CTL\00", [45 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"OP_BIND_CONN_TO_SESSION\00", [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"OP_EXCHANGE_ID\00", [17 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"OP_CREATE_SESSION\00", [46 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"OP_DESTROY_SESSION\00", [45 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"OP_FREE_STATEID\00", [16 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"OP_GETDEVICEINFO\00", [47 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"OP_LAYOUTCOMMIT\00", [16 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"OP_LAYOUTGET\00", [19 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"OP_LAYOUTRETURN\00", [16 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"OP_SECINFO_NO_NAME\00", [45 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"OP_SEQUENCE\00", [20 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"OP_TEST_STATEID\00", [16 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"OP_DESTROY_CLIENTID\00", [44 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"OP_RECLAIM_COMPLETE\00", [44 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"OP_ALLOCATE\00", [20 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"OP_COPY\00", [24 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"OP_COPY_NOTIFY\00", [17 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"OP_DEALLOCATE\00", [18 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"OP_OFFLOAD_CANCEL\00", [46 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"OP_OFFLOAD_STATUS\00", [46 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"OP_READ_PLUS\00", [19 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"OP_SEEK\00", [24 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"OP_CLONE\00", [23 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"OP_GETXATTR\00", [20 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"OP_SETXATTR\00", [20 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"OP_LISTXATTRS\00", [18 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"OP_REMOVEXATTR\00", [17 x i8] zeroinitializer }, align 32
@nfsd_attrmask = internal global { [3 x i32], [20 x i8] } { [3 x i32] [i32 4112, i32 4259890, i32 196608], [20 x i8] zeroinitializer }, align 32
@nfsd_suppattrs = external dso_local local_unnamed_addr constant [3 x [3 x i32]], align 4
@.str.67 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"..\00", [29 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nfsd_net_id = external dso_local local_unnamed_addr global i32, align 4
@nfsd_debug = external dso_local local_unnamed_addr global i32, align 4
@nfsd4_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.2, i32 376, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"NFSD: nfsd4_open filename %.*s op_openowner %p\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nfsd4_open\00", [21 x i8] zeroinitializer }, align 32
@nfsd4_open._entry_ptr = internal global ptr @nfsd4_open._entry, section ".printk_index", align 4
@nfsd4_open._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.69, ptr @.str.2, i32 405, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"nfsd4_open: replay failed restoring previous filehandle\0A\00", [39 x i8] zeroinitializer }, align 32
@nfsd4_open._entry_ptr.72 = internal global ptr @nfsd4_open._entry.70, section ".printk_index", align 4
@nfsd4_open._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.69, ptr @.str.2, i32 453, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"NFSD: unsupported OPEN claim type %d\0A\00", [58 x i8] zeroinitializer }, align 32
@nfsd4_open._entry_ptr.75 = internal global ptr @nfsd4_open._entry.73, section ".printk_index", align 4
@nfsd4_open._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.69, ptr @.str.2, i32 458, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"NFSD: Invalid OPEN claim type %d\0A\00", [62 x i8] zeroinitializer }, align 32
@nfsd4_open._entry_ptr.78 = internal global ptr @nfsd4_open._entry.76, section ".printk_index", align 4
@.str.79 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"nfsd4_process_open2 failed to open newly-created file! status=%u\0A\00", [62 x i8] zeroinitializer }, align 32
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.80 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.82 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.84 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@nfsd41_ex_attrmask = internal global { [3 x i32], [20 x i8] } { [3 x i32] [i32 4112, i32 50, i32 196608], [20 x i8] zeroinitializer }, align 32
@nfsd4_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.2, i32 811, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"NFSD: nfsd4_read: couldn't process stateid!\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nfsd4_read\00", [21 x i8] zeroinitializer }, align 32
@nfsd4_read._entry_ptr = internal global ptr @nfsd4_read._entry, section ".printk_index", align 4
@__tracepoint_nfsd_read_start = external dso_local global %struct.tracepoint, align 4
@.str.87 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/nfsd/trace.h\00", [16 x i8] zeroinitializer }, align 32
@trace_nfsd_read_start.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.88 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_nfsd_read_done = external dso_local global %struct.tracepoint, align 4
@trace_nfsd_read_done.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nfsd4_readdir.zeroverf = internal constant { %struct.nfs4_verifier, [24 x i8] } zeroinitializer, align 32
@nfsd4_setattr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.2, i32 983, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"NFSD: nfsd4_setattr: couldn't process stateid!\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nfsd4_setattr\00", [18 x i8] zeroinitializer }, align 32
@nfsd4_setattr._entry_ptr = internal global ptr @nfsd4_setattr._entry, section ".printk_index", align 4
@nfsd4_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.2, i32 1035, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"NFSD: nfsd4_write: couldn't process stateid!\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nfsd4_write\00", [20 x i8] zeroinitializer }, align 32
@nfsd4_write._entry_ptr = internal global ptr @nfsd4_write._entry, section ".printk_index", align 4
@nfsd4_write.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_nfsd_write_start = external dso_local global %struct.tracepoint, align 4
@trace_nfsd_write_start.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_nfsd_write_done = external dso_local global %struct.tracepoint, align 4
@trace_nfsd_write_done.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nfsd4_getdeviceinfo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.2, i32 2017, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s: layout_type %u dev_id [0x%llx:0x%x] maxcnt %u\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nfsd4_getdeviceinfo\00", [44 x i8] zeroinitializer }, align 32
@nfsd4_getdeviceinfo._entry_ptr = internal global ptr @nfsd4_getdeviceinfo._entry, section ".printk_index", align 4
@nfsd4_getdeviceinfo._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.94, ptr @.str.2, i32 2022, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: couldn't find device ID to export mapping!\0A\00", [48 x i8] zeroinitializer }, align 32
@nfsd4_getdeviceinfo._entry_ptr.97 = internal global ptr @nfsd4_getdeviceinfo._entry.95, section ".printk_index", align 4
@nfsd4_getdeviceinfo._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.94, ptr @.str.2, i32 2028, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: could not find device id\0A\00", [34 x i8] zeroinitializer }, align 32
@nfsd4_getdeviceinfo._entry_ptr.100 = internal global ptr @nfsd4_getdeviceinfo._entry.98, section ".printk_index", align 4
@nfsd4_layout_verify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.102, ptr @.str.2, i32 1989, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: export does not support pNFS\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nfsd4_layout_verify\00", [44 x i8] zeroinitializer }, align 32
@nfsd4_layout_verify._entry_ptr = internal global ptr @nfsd4_layout_verify._entry, section ".printk_index", align 4
@nfsd4_layout_verify._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.102, ptr @.str.2, i32 1996, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: layout type %d not supported\0A\00", [62 x i8] zeroinitializer }, align 32
@nfsd4_layout_verify._entry_ptr.105 = internal global ptr @nfsd4_layout_verify._entry.103, section ".printk_index", align 4
@nfsd4_layout_ops = external dso_local local_unnamed_addr global [0 x ptr], align 4
@nfsd4_layoutcommit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.107, ptr @.str.2, i32 2166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"pnfsd: last write before layout segment\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nfsd4_layoutcommit\00", [45 x i8] zeroinitializer }, align 32
@nfsd4_layoutcommit._entry_ptr = internal global ptr @nfsd4_layoutcommit._entry, section ".printk_index", align 4
@nfsd4_layoutcommit._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.107, ptr @.str.2, i32 2170, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"pnfsd: last write beyond layout segment\0A\00", [55 x i8] zeroinitializer }, align 32
@nfsd4_layoutcommit._entry_ptr.110 = internal global ptr @nfsd4_layoutcommit._entry.108, section ".printk_index", align 4
@nfsd4_layoutcommit._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.107, ptr @.str.2, i32 2174, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"pnfsd: layoutcommit beyond EOF\0A\00", [32 x i8] zeroinitializer }, align 32
@nfsd4_layoutcommit._entry_ptr.113 = internal global ptr @nfsd4_layoutcommit._entry.111, section ".printk_index", align 4
@__tracepoint_nfsd_layout_commit_lookup_fail = external dso_local global %struct.tracepoint, align 4
@trace_nfsd_layout_commit_lookup_fail.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nfsd4_layoutget._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.115, ptr @.str.2, i32 2075, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: invalid iomode %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nfsd4_layoutget\00", [16 x i8] zeroinitializer }, align 32
@nfsd4_layoutget._entry_ptr = internal global ptr @nfsd4_layoutget._entry, section ".printk_index", align 4
@__tracepoint_nfsd_layout_get_lookup_fail = external dso_local global %struct.tracepoint, align 4
@trace_nfsd_layout_get_lookup_fail.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nfsd4_layoutreturn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.116, ptr @.str.2, i32 2228, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nfsd4_layoutreturn\00", [45 x i8] zeroinitializer }, align 32
@nfsd4_layoutreturn._entry_ptr = internal global ptr @nfsd4_layoutreturn._entry, section ".printk_index", align 4
@nfsd4_layoutreturn._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.116, ptr @.str.2, i32 2243, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: invalid return_type %d\0A\00", [36 x i8] zeroinitializer }, align 32
@nfsd4_layoutreturn._entry_ptr.119 = internal global ptr @nfsd4_layoutreturn._entry.117, section ".printk_index", align 4
@nfsd4_fallocate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.121, ptr @.str.2, i32 1811, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"NFSD: nfsd4_fallocate: couldn't process stateid!\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nfsd4_fallocate\00", [16 x i8] zeroinitializer }, align 32
@nfsd4_fallocate._entry_ptr = internal global ptr @nfsd4_fallocate._entry, section ".printk_index", align 4
@.str.122 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"copy thread\00", [20 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.125 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tcp\00", [28 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"[\00", [30 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"]\00", [30 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tcp6\00", [27 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"vers=4.2,addr=%s,sec=sys\00", [39 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"nfs\00", [28 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s%s%s:/\00", [23 x i8] zeroinitializer }, align 32
@nfsd4_verify_copy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.133, ptr @.str.2, i32 1069, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"NFSD: %s: couldn't process src stateid!\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nfsd4_verify_copy\00", [46 x i8] zeroinitializer }, align 32
@nfsd4_verify_copy._entry_ptr = internal global ptr @nfsd4_verify_copy._entry, section ".printk_index", align 4
@nfsd4_verify_copy._entry.134 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.133, ptr @.str.2, i32 1076, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"NFSD: %s: couldn't process dst stateid!\0A\00", [55 x i8] zeroinitializer }, align 32
@nfsd4_verify_copy._entry_ptr.136 = internal global ptr @nfsd4_verify_copy._entry.134, section ".printk_index", align 4
@nfsd4_cb_offload_ops = internal constant { %struct.nfsd4_callback_ops, [20 x i8] } { %struct.nfsd4_callback_ops { ptr null, ptr @nfsd4_cb_offload_done, ptr @nfsd4_cb_offload_release }, [20 x i8] zeroinitializer }, align 32
@nfs_ssc_client_tbl = external dso_local local_unnamed_addr global %struct.nfs_ssc_client_ops_tbl, align 4
@__tracepoint_nfsd_cb_offload = external dso_local global %struct.tracepoint, align 4
@trace_nfsd_cb_offload.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@nfsd4_copy_notify.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.137 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c".%u.%u\00", [25 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/nfsd/nfsd.h\00", [17 x i8] zeroinitializer }, align 32
@nfsd4_seek._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.140, ptr @.str.2, i32 1870, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"NFSD: nfsd4_seek: couldn't process stateid!\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nfsd4_seek\00", [21 x i8] zeroinitializer }, align 32
@nfsd4_seek._entry_ptr = internal global ptr @nfsd4_seek._entry, section ".printk_index", align 4
@.str.141 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"unknown_operation\00", [46 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NULL\00", [27 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"COMPOUND\00", [23 x i8] zeroinitializer }, align 32
@nfsd4_proc_compound._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.145, ptr @.str.2, i32 2565, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s NFS4.1 replay from cache\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nfsd4_proc_compound\00", [44 x i8] zeroinitializer }, align 32
@nfsd4_proc_compound._entry_ptr = internal global ptr @nfsd4_proc_compound._entry, section ".printk_index", align 4
@__tracepoint_nfsd_compound = external dso_local global %struct.tracepoint, align 4
@trace_nfsd_compound.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_nfsd_compound_status = external dso_local global %struct.tracepoint, align 4
@trace_nfsd_compound_status.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nfsdstats = external dso_local global %struct.nfsd_stats, align 8
@percpu_counter_batch = external dso_local local_unnamed_addr global i32, align 4
@switch.table.nfsd4_proc_compound = internal constant { [19 x i32], [52 x i8] } { [19 x i32] [i32 10018, i32 10019, i32 10020, i32 10022, i32 10022, i32 10023, i32 10022, i32 10025, i32 10026, i32 10022, i32 10022, i32 10022, i32 10022, i32 10022, i32 10022, i32 10022, i32 10022, i32 10022, i32 10036], [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.146 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 11001]
@__sancov_gen_cov_switch_values.147 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.148 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.149 = internal global [5 x i64] [i64 3, i64 64, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.150 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.151 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.152 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.153 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.154 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.155 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.156 = internal global [6 x i64] [i64 4, i64 32, i64 22, i64 31, i64 32, i64 60]
@___asan_gen_.157 = private unnamed_addr constant [26 x i8] c"inter_copy_offload_enable\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 53, i32 13 }
@___asan_gen_.160 = private unnamed_addr constant [25 x i8] c"nfsd4_ssc_umount_timeout\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 59, i32 12 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 3420, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant [17 x i8] c"nfsd_procedures4\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 3433, i32 35 }
@___asan_gen_.178 = private unnamed_addr constant [12 x i8] c"nfsd_count3\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 3457, i32 21 }
@___asan_gen_.181 = private unnamed_addr constant [14 x i8] c"nfsd_version4\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 3458, i32 26 }
@___asan_gen_.184 = private unnamed_addr constant [10 x i8] c"nfsd4_ops\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 2957, i32 37 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 2960, i32 14 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 2966, i32 14 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 2974, i32 14 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 2980, i32 14 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 2986, i32 14 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 2994, i32 14 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 2998, i32 14 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 3005, i32 14 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 3012, i32 14 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 3019, i32 14 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 3025, i32 14 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 3032, i32 14 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 3038, i32 14 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 3043, i32 14 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 3049, i32 14 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 3056, i32 14 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 3062, i32 14 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 3071, i32 14 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 3078, i32 14 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 3085, i32 14 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 3091, i32 14 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 3097, i32 14 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 3102, i32 14 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 3108, i32 14 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 3114, i32 14 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 3121, i32 14 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 3129, i32 14 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 3135, i32 14 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 3142, i32 14 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 3147, i32 14 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 3158, i32 14 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 3165, i32 14 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 3170, i32 14 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 3176, i32 14 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 3184, i32 14 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 3199, i32 14 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 3206, i32 14 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 3193, i32 14 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 3213, i32 14 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 3220, i32 14 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 3258, i32 14 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 3267, i32 14 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 3280, i32 14 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 3274, i32 14 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 3286, i32 14 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 3246, i32 14 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 3226, i32 14 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 3252, i32 14 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 3233, i32 14 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 3239, i32 14 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 3295, i32 14 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 3313, i32 14 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 3342, i32 14 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 3301, i32 14 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 3336, i32 14 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 3330, i32 14 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 3319, i32 14 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 3325, i32 14 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 3307, i32 14 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 3347, i32 14 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 3353, i32 14 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 3358, i32 14 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 3364, i32 14 }
@___asan_gen_.376 = private unnamed_addr constant [14 x i8] c"nfsd_attrmask\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 97, i32 12 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 758, i32 32 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 374, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 404, i32 4 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 452, i32 4 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 457, i32 4 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 468, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 45, i32 7 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 695, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 723, i32 2 }
@___asan_gen_.427 = private unnamed_addr constant [19 x i8] c"nfsd41_ex_attrmask\00", align 1
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 103, i32 12 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 811, i32 3 }
@___asan_gen_.440 = private unnamed_addr constant [19 x i8] c"../fs/nfsd/trace.h\00", align 1
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 337, i32 1 }
@___asan_gen_.443 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 108, i32 2 }
@___asan_gen_.445 = private unnamed_addr constant [9 x i8] c"zeroverf\00", align 1
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 837, i32 29 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 983, i32 4 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1035, i32 3 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 2013, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 2021, i32 3 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 2028, i32 3 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1989, i32 3 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1995, i32 3 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 2166, i32 3 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 2170, i32 3 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 2174, i32 3 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 2074, i32 3 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 2227, i32 3 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 2242, i32 3 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1811, i32 3 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1695, i32 27 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1266, i32 19 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1266, i32 52 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1282, i32 14 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1283, i32 12 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1284, i32 17 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1307, i32 30 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1310, i32 21 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1318, i32 30 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1069, i32 3 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1076, i32 3 }
@___asan_gen_.598 = private unnamed_addr constant [21 x i8] c"nfsd4_cb_offload_ops\00", align 1
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1503, i32 40 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 432, i32 8 }
@___asan_gen_.605 = private unnamed_addr constant [18 x i8] c"../fs/nfsd/nfsd.h\00", align 1
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 433, i32 2 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1870, i32 3 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 3430, i32 9 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 3442, i32 14 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 3453, i32 14 }
@___asan_gen_.625 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.631 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.632 = private constant [22 x i8] c"../fs/nfsd/nfs4proc.c\00", align 1
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 2565, i32 4 }
@___asan_gen_.634 = private unnamed_addr constant [33 x i8] c"switch.table.nfsd4_proc_compound\00", align 1
@llvm.compiler.used = appending global [190 x ptr] [ptr @__UNIQUE_ID_inter_copy_offload_enable652, ptr @__UNIQUE_ID_inter_copy_offload_enabletype651, ptr @__UNIQUE_ID_nfsd4_ssc_umount_timeout654, ptr @__UNIQUE_ID_nfsd4_ssc_umount_timeouttype653, ptr @__param_inter_copy_offload_enable, ptr @__param_nfsd4_ssc_umount_timeout, ptr @nfsd4_fallocate._entry, ptr @nfsd4_fallocate._entry_ptr, ptr @nfsd4_getdeviceinfo._entry, ptr @nfsd4_getdeviceinfo._entry.95, ptr @nfsd4_getdeviceinfo._entry.98, ptr @nfsd4_getdeviceinfo._entry_ptr, ptr @nfsd4_getdeviceinfo._entry_ptr.100, ptr @nfsd4_getdeviceinfo._entry_ptr.97, ptr @nfsd4_layout_verify._entry, ptr @nfsd4_layout_verify._entry.103, ptr @nfsd4_layout_verify._entry_ptr, ptr @nfsd4_layout_verify._entry_ptr.105, ptr @nfsd4_layoutcommit._entry, ptr @nfsd4_layoutcommit._entry.108, ptr @nfsd4_layoutcommit._entry.111, ptr @nfsd4_layoutcommit._entry_ptr, ptr @nfsd4_layoutcommit._entry_ptr.110, ptr @nfsd4_layoutcommit._entry_ptr.113, ptr @nfsd4_layoutget._entry, ptr @nfsd4_layoutget._entry_ptr, ptr @nfsd4_layoutreturn._entry, ptr @nfsd4_layoutreturn._entry.117, ptr @nfsd4_layoutreturn._entry_ptr, ptr @nfsd4_layoutreturn._entry_ptr.119, ptr @nfsd4_open._entry, ptr @nfsd4_open._entry.70, ptr @nfsd4_open._entry.73, ptr @nfsd4_open._entry.76, ptr @nfsd4_open._entry_ptr, ptr @nfsd4_open._entry_ptr.72, ptr @nfsd4_open._entry_ptr.75, ptr @nfsd4_open._entry_ptr.78, ptr @nfsd4_proc_compound._entry, ptr @nfsd4_proc_compound._entry_ptr, ptr @nfsd4_read._entry, ptr @nfsd4_read._entry_ptr, ptr @nfsd4_seek._entry, ptr @nfsd4_seek._entry_ptr, ptr @nfsd4_setattr._entry, ptr @nfsd4_setattr._entry_ptr, ptr @nfsd4_verify_copy._entry, ptr @nfsd4_verify_copy._entry.134, ptr @nfsd4_verify_copy._entry_ptr, ptr @nfsd4_verify_copy._entry_ptr.136, ptr @nfsd4_write._entry, ptr @nfsd4_write._entry_ptr, ptr @warn_on_nonidempotent_op._entry, ptr @warn_on_nonidempotent_op._entry_ptr, ptr @inter_copy_offload_enable, ptr @nfsd4_ssc_umount_timeout, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @nfsd_procedures4, ptr @nfsd_count3, ptr @nfsd_version4, ptr @nfsd4_ops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @nfsd_attrmask, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.71, ptr @.str.74, ptr @.str.77, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @nfsd41_ex_attrmask, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @nfsd4_readdir.zeroverf, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.96, ptr @.str.99, ptr @.str.101, ptr @.str.102, ptr @.str.104, ptr @.str.106, ptr @.str.107, ptr @.str.109, ptr @.str.112, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.118, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.135, ptr @nfsd4_cb_offload_ops, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @switch.table.nfsd4_proc_compound], section "llvm.metadata"
@0 = internal global [160 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inter_copy_offload_enable to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_ssc_umount_timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @warn_on_nonidempotent_op._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_procedures4 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_count3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_version4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_ops to i32), i32 2128, i32 2656, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_attrmask to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_open._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_open._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_open._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd41_ex_attrmask to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_readdir.zeroverf to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_setattr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_getdeviceinfo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_getdeviceinfo._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_getdeviceinfo._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_layout_verify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_layout_verify._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_layoutcommit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_layoutcommit._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_layoutcommit._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_layoutget._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_layoutreturn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_layoutreturn._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_fallocate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_verify_copy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_verify_copy._entry.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_cb_offload_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_seek._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_proc_compound._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nfsd4_proc_compound to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs4_put_copy(ptr noundef %copy) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %refcount = getelementptr inbounds %struct.nfsd4_copy, ptr %copy, i32 0, i32 18
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !359
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #22
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #22, !srcloc !360
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.end, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.return_crit_edge, label %if.then10.i.i.i, !prof !361

if.end5.i.i.i.return_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %return

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #22
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !362
  tail call void @kfree(ptr noundef %copy) #22
  br label %return

return:                                           ; preds = %if.end, %if.then10.i.i.i, %if.end5.i.i.i.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfsd4_shutdown_copy(ptr noundef %clp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %async_lock.i = getelementptr inbounds %struct.nfs4_client, ptr %clp, i32 0, i32 42
  tail call void @_raw_spin_lock(ptr noundef %async_lock.i) #22
  %async_copies.i = getelementptr inbounds %struct.nfs4_client, ptr %clp, i32 0, i32 41
  %0 = ptrtoint ptr %async_copies.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %async_copies.i, align 4
  %cmp.i.not.i4 = icmp eq ptr %1, %async_copies.i
  br i1 %cmp.i.not.i4, label %entry.nfsd4_get_copy.exit.thread_crit_edge, label %entry.if.then.i_crit_edge

entry.if.then.i_crit_edge:                        ; preds = %entry
  br label %if.then.i

entry.nfsd4_get_copy.exit.thread_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %nfsd4_get_copy.exit.thread

nfsd4_get_copy.exit.thread:                       ; preds = %while.body.nfsd4_get_copy.exit.thread_crit_edge, %entry.nfsd4_get_copy.exit.thread_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %async_lock.i) #22
  br label %while.end

if.then.i:                                        ; preds = %while.body.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %2 = phi ptr [ %6, %while.body.if.then.i_crit_edge ], [ %1, %entry.if.then.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %2, i32 -1396
  %refcount.i = getelementptr i8, ptr %2, i32 12
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #22
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #22
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #22, !srcloc !363
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !364

if.then.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %4 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %.not.i.i.i.i = icmp sgt i32 %4, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.nfsd4_get_copy.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !361

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.nfsd4_get_copy.exit_crit_edge:    ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %nfsd4_get_copy.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i) #22
  br label %nfsd4_get_copy.exit

nfsd4_get_copy.exit:                              ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.nfsd4_get_copy.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %async_lock.i) #22
  %cmp.not = icmp eq ptr %add.ptr.i, null
  br i1 %cmp.not, label %nfsd4_get_copy.exit.while.end_crit_edge, label %while.body

nfsd4_get_copy.exit.while.end_crit_edge:          ; preds = %nfsd4_get_copy.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %while.end

while.body:                                       ; preds = %nfsd4_get_copy.exit
  tail call fastcc void @nfsd4_stop_copy(ptr noundef nonnull %add.ptr.i)
  tail call void @_raw_spin_lock(ptr noundef %async_lock.i) #22
  %5 = ptrtoint ptr %async_copies.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %async_copies.i, align 4
  %cmp.i.not.i = icmp eq ptr %6, %async_copies.i
  br i1 %cmp.i.not.i, label %while.body.nfsd4_get_copy.exit.thread_crit_edge, label %while.body.if.then.i_crit_edge

while.body.if.then.i_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then.i

while.body.nfsd4_get_copy.exit.thread_crit_edge:  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %nfsd4_get_copy.exit.thread

while.end:                                        ; preds = %nfsd4_get_copy.exit.while.end_crit_edge, %nfsd4_get_copy.exit.thread
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nfsd4_stop_copy(ptr noundef %copy) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %cp_clp.i = getelementptr inbounds %struct.nfsd4_copy, ptr %copy, i32 0, i32 12
  %0 = ptrtoint ptr %cp_clp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cp_clp.i, align 8
  %async_lock.i = getelementptr inbounds %struct.nfs4_client, ptr %1, i32 0, i32 42
  tail call void @_raw_spin_lock(ptr noundef %async_lock.i) #22
  %stopped.i = getelementptr inbounds %struct.nfsd4_copy, ptr %copy, i32 0, i32 19
  %2 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %stopped.i, align 4, !range !365
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.i.not = icmp eq i8 %3, 0
  br i1 %tobool.i.not, label %if.then, label %check_and_set_stop_copy.exit.thread

check_and_set_stop_copy.exit.thread:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  %4 = ptrtoint ptr %cp_clp.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cp_clp.i, align 8
  %async_lock5.i4 = getelementptr inbounds %struct.nfs4_client, ptr %5, i32 0, i32 42
  tail call void @_raw_spin_unlock(ptr noundef %async_lock5.i4) #22
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  %6 = ptrtoint ptr %stopped.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %stopped.i, align 4
  %7 = ptrtoint ptr %cp_clp.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cp_clp.i, align 8
  %async_lock5.i = getelementptr inbounds %struct.nfs4_client, ptr %8, i32 0, i32 42
  tail call void @_raw_spin_unlock(ptr noundef %async_lock5.i) #22
  %copy_task = getelementptr inbounds %struct.nfsd4_copy, ptr %copy, i32 0, i32 17
  %9 = ptrtoint ptr %copy_task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %copy_task, align 4
  %call1 = tail call i32 @kthread_stop(ptr noundef %10) #22
  br label %if.end

if.end:                                           ; preds = %if.then, %check_and_set_stop_copy.exit.thread
  %refcount.i = getelementptr inbounds %struct.nfsd4_copy, ptr %copy, i32 0, i32 18
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !359
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #22
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #22, !srcloc !360
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.end.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.nfs4_put_copy.exit_crit_edge, label %if.then10.i.i.i.i, !prof !361

if.end5.i.i.i.i.nfs4_put_copy.exit_crit_edge:     ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %nfs4_put_copy.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #22
  br label %nfs4_put_copy.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !362
  tail call void @kfree(ptr noundef %copy) #22
  br label %nfs4_put_copy.exit

nfs4_put_copy.exit:                               ; preds = %if.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.nfs4_put_copy.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @find_async_copy(ptr noundef %clp, ptr nocapture noundef readonly %stateid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %async_lock = getelementptr inbounds %struct.nfs4_client, ptr %clp, i32 0, i32 42
  tail call void @_raw_spin_lock(ptr noundef %async_lock) #22
  %async_copies = getelementptr inbounds %struct.nfs4_client, ptr %clp, i32 0, i32 41
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %async_copies, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %async_copies
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %cp_stateid = getelementptr i8, ptr %.pn, i32 -24
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(16) %cp_stateid, ptr noundef dereferenceable(16) %stateid, i32 16) #25
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.end, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.cond

if.end:                                           ; preds = %for.body
  %copy.0.le = getelementptr i8, ptr %.pn, i32 -1396
  %refcount = getelementptr i8, ptr %.pn, i32 12
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #22
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #22
  %1 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #22, !srcloc !363
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.end.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !364

if.end.if.end15.sink.split.i.i.i_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.end
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %2 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %.not.i.i.i = icmp sgt i32 %2, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.cleanup_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !361

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.cleanup_crit_edge:                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.end.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.end.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i) #22
  br label %cleanup

cleanup:                                          ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ %copy.0.le, %if.else.i.i.i.cleanup_crit_edge ], [ %copy.0.le, %if.end15.sink.split.i.i.i ], [ null, %for.cond.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %async_lock) #22
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @OPDESC(ptr nocapture noundef readonly %op) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %op, align 32
  %arrayidx = getelementptr [0 x %struct.nfsd4_operation], ptr @nfsd4_ops, i32 0, i32 %1
  ret ptr %arrayidx
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @nfsd4_cache_this_op(ptr nocapture noundef readonly %op) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %op, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 10044, i32 %1)
  %cmp = icmp eq i32 %1, 10044
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  %op_flags = getelementptr [0 x %struct.nfsd4_operation], ptr @nfsd4_ops, i32 0, i32 %1, i32 2
  %2 = ptrtoint ptr %op_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %op_flags, align 4
  %and = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i1 [ %tobool, %if.end ], [ false, %entry.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nfsd4_spo_must_allow(ptr noundef %rqstp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_resp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 36
  %0 = ptrtoint ptr %rq_resp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_resp, align 4
  %rq_argp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 35
  %2 = ptrtoint ptr %rq_argp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rq_argp, align 8
  %clp = getelementptr inbounds %struct.nfsd4_compoundres, ptr %1, i32 0, i32 6, i32 3
  %4 = ptrtoint ptr %clp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clp, align 4
  %cl_spo_must_allow = getelementptr inbounds %struct.nfs4_client, ptr %5, i32 0, i32 35
  %minorversion = getelementptr inbounds %struct.nfsd4_compoundres, ptr %1, i32 0, i32 6, i32 9
  %6 = ptrtoint ptr %minorversion to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %minorversion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end:                                           ; preds = %entry
  %spo_must_allowed = getelementptr inbounds %struct.nfsd4_compoundres, ptr %1, i32 0, i32 6, i32 7
  %8 = ptrtoint ptr %spo_must_allowed to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %spo_must_allowed, align 4, !range !365
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool2.not = icmp eq i8 %9, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %opcnt = getelementptr inbounds %struct.nfsd4_compoundres, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %opcnt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %opcnt, align 4
  %opcnt5 = getelementptr inbounds %struct.nfsd4_compoundargs, ptr %3, i32 0, i32 6
  %12 = ptrtoint ptr %opcnt5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %opcnt5, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp32 = icmp ult i32 %11, %13
  br i1 %cmp32, label %while.body.lr.ph, label %if.end4.cleanup.sink.split_crit_edge

if.end4.cleanup.sink.split_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup.sink.split

while.body.lr.ph:                                 ; preds = %if.end4
  %ops = getelementptr inbounds %struct.nfsd4_compoundargs, ptr %3, i32 0, i32 7
  br label %while.body

while.body:                                       ; preds = %if.end14.while.body_crit_edge, %while.body.lr.ph
  %opiter.033 = phi i32 [ %11, %while.body.lr.ph ], [ %inc, %if.end14.while.body_crit_edge ]
  %14 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops, align 4
  %inc = add nuw i32 %opiter.033, 1
  %arrayidx = getelementptr %struct.nfsd4_op, ptr %15, i32 %opiter.033
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 32
  %div3.i = lshr i32 %17, 5
  %arrayidx.i = getelementptr i32, ptr %cl_spo_must_allow, i32 %div3.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %17, 31
  %20 = shl nuw i32 1, %and.i
  %21 = and i32 %20, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool6.not = icmp eq i32 %21, 0
  br i1 %tobool6.not, label %while.body.if.end14_crit_edge, label %land.lhs.true

while.body.if.end14_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end14

land.lhs.true:                                    ; preds = %while.body
  %22 = ptrtoint ptr %clp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clp, align 4
  %cl_mach_cred = getelementptr inbounds %struct.nfs4_client, ptr %23, i32 0, i32 13
  %24 = ptrtoint ptr %cl_mach_cred to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %cl_mach_cred, align 8, !range !365
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool8.not = icmp eq i8 %25, 0
  br i1 %tobool8.not, label %land.lhs.true.if.end14_crit_edge, label %land.lhs.true9

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end14

land.lhs.true9:                                   ; preds = %land.lhs.true
  %call11 = tail call zeroext i1 @nfsd4_mach_creds_match(ptr noundef %23, ptr noundef %rqstp) #22
  br i1 %call11, label %land.lhs.true9.cleanup.sink.split_crit_edge, label %land.lhs.true9.if.end14_crit_edge

land.lhs.true9.if.end14_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end14

land.lhs.true9.cleanup.sink.split_crit_edge:      ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup.sink.split

if.end14:                                         ; preds = %land.lhs.true9.if.end14_crit_edge, %land.lhs.true.if.end14_crit_edge, %while.body.if.end14_crit_edge
  %26 = ptrtoint ptr %opcnt5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %opcnt5, align 8
  %cmp = icmp ult i32 %inc, %27
  br i1 %cmp, label %if.end14.while.body_crit_edge, label %if.end14.cleanup.sink.split_crit_edge

if.end14.cleanup.sink.split_crit_edge:            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup.sink.split

if.end14.while.body_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #24
  br label %while.body

cleanup.sink.split:                               ; preds = %if.end14.cleanup.sink.split_crit_edge, %land.lhs.true9.cleanup.sink.split_crit_edge, %if.end4.cleanup.sink.split_crit_edge
  %.sink = phi i8 [ 0, %if.end4.cleanup.sink.split_crit_edge ], [ 1, %land.lhs.true9.cleanup.sink.split_crit_edge ], [ 0, %if.end14.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i1 [ false, %if.end4.cleanup.sink.split_crit_edge ], [ true, %land.lhs.true9.cleanup.sink.split_crit_edge ], [ false, %if.end14.cleanup.sink.split_crit_edge ]
  %28 = ptrtoint ptr %spo_must_allowed to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %.sink, ptr %spo_must_allowed, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ true, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfsd4_mach_creds_match(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfsd4_max_reply(ptr noundef %rqstp, ptr noundef %op) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %op, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 10044, i32 %1)
  %cmp = icmp eq i32 %1, 10044
  br i1 %cmp, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %status = getelementptr inbounds %struct.nfsd4_op, ptr %op, i32 0, i32 2
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10004, i32 %3)
  %cmp1 = icmp eq i32 %3, 10004
  br i1 %cmp1, label %lor.lhs.false.return_crit_edge, label %do.body

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #24
  br label %return

do.body:                                          ; preds = %lor.lhs.false
  %op_rsize_bop = getelementptr [0 x %struct.nfsd4_operation], ptr @nfsd4_ops, i32 0, i32 %1, i32 4
  %4 = ptrtoint ptr %op_rsize_bop to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %op_rsize_bop, align 4
  %cmp2 = icmp eq ptr %5, null
  br i1 %cmp2, label %do.body5, label %do.end9, !prof !364

do.body5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #24
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfsd/nfs4proc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3413, 0\0A.popsection", ""() #22, !srcloc !366
  unreachable

do.end9:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #24
  %call12 = tail call i32 %5(ptr noundef %rqstp, ptr noundef %op) #22
  br label %return

return:                                           ; preds = %do.end9, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call12, %do.end9 ], [ 8, %lor.lhs.false.return_crit_edge ], [ 8, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @warn_on_nonidempotent_op(ptr nocapture noundef readonly %op) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %op, align 32
  %op_flags = getelementptr [0 x %struct.nfsd4_operation], ptr @nfsd4_ops, i32 0, i32 %1, i32 2
  %2 = ptrtoint ptr %op_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %op_flags, align 4
  %and = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end41_crit_edge, label %do.end

entry.if.end41_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end41

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 76, i32 %1)
  %cmp.i = icmp ult i32 %1, 76
  br i1 %cmp.i, label %if.then.i, label %do.end.nfsd4_op_name.exit_crit_edge

do.end.nfsd4_op_name.exit_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %nfsd4_op_name.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #24
  %op_name.i = getelementptr [76 x %struct.nfsd4_operation], ptr @nfsd4_ops, i32 0, i32 %1, i32 3
  %4 = ptrtoint ptr %op_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %op_name.i, align 4
  br label %nfsd4_op_name.exit

nfsd4_op_name.exit:                               ; preds = %if.then.i, %do.end.nfsd4_op_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.then.i ], [ @.str.141, %do.end.nfsd4_op_name.exit_crit_edge ]
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %1, ptr noundef %retval.0.i) #26
  %.b46 = load i1, ptr @warn_on_nonidempotent_op.__already_done, align 1
  br i1 %.b46, label %nfsd4_op_name.exit.if.end41_crit_edge, label %if.then9, !prof !361

nfsd4_op_name.exit.if.end41_crit_edge:            ; preds = %nfsd4_op_name.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end41

if.then9:                                         ; preds = %nfsd4_op_name.exit
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @warn_on_nonidempotent_op.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 3422, i32 noundef 9, ptr noundef null) #22
  br label %if.end41

if.end41:                                         ; preds = %if.then9, %nfsd4_op_name.exit.if.end41_crit_edge, %entry.if.end41_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd_dispatch(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd4_access(ptr noundef %rqstp, ptr noundef %cstate, ptr noundef %u) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %minorversion = getelementptr inbounds %struct.nfsd4_compound_state, ptr %cstate, i32 0, i32 9
  %0 = ptrtoint ptr %minorversion to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %minorversion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp ugt i32 %1, 1
  %spec.select = select i1 %cmp, i32 -512, i32 -64
  %2 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %u, align 4
  %and = and i32 %spec.select, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end2, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end2:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  %ac_resp_access = getelementptr inbounds %struct.nfsd4_access, ptr %u, i32 0, i32 2
  %4 = ptrtoint ptr %ac_resp_access to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %ac_resp_access, align 4
  %ac_supported = getelementptr inbounds %struct.nfsd4_access, ptr %u, i32 0, i32 1
  %call = tail call i32 @nfsd_access(ptr noundef %rqstp, ptr noundef %cstate, ptr noundef %ac_resp_access, ptr noundef %ac_supported) #22
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end2 ], [ 22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nfsd4_access_rsize(ptr nocapture noundef readnone %rqstp, ptr nocapture noundef readnone %op) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  ret i32 16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd4_close(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nfsd4_status_stateid_rsize(ptr nocapture noundef readnone %rqstp, ptr nocapture noundef readnone %op) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  ret i32 24
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfsd4_get_closestateid(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfsd4_set_closestateid(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd4_commit(ptr noundef %rqstp, ptr noundef %cstate, ptr noundef %u) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %u to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %u, align 8
  %co_count = getelementptr inbounds %struct.nfsd4_commit, ptr %u, i32 0, i32 1
  %2 = ptrtoint ptr %co_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %co_count, align 8
  %co_verf = getelementptr inbounds %struct.nfsd4_commit, ptr %u, i32 0, i32 2
  %call = tail call i32 @nfsd_commit(ptr noundef %rqstp, ptr noundef %cstate, i64 noundef %1, i32 noundef %3, ptr noundef %co_verf) #22
  ret i32 %call
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nfsd4_commit_rsize(ptr nocapture noundef readnone %rqstp, ptr nocapture noundef readnone %op) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  ret i32 16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd4_create(ptr noundef %rqstp, ptr noundef %cstate, ptr noundef %u) #0 align 64 {
entry:
  %resfh = alloca %struct.svc_fh, align 8
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 360, ptr nonnull %resfh) #22
  %0 = call ptr @memset(ptr %resfh, i32 0, i32 360)
  %fh_maxsize.i = getelementptr inbounds %struct.svc_fh, ptr %resfh, i32 0, i32 1
  %1 = ptrtoint ptr %fh_maxsize.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 128, ptr %fh_maxsize.i, align 4
  %call1 = tail call i32 @fh_verify(ptr noundef %rqstp, ptr noundef %cstate, i16 noundef zeroext 16384, i32 noundef 0) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end:                                           ; preds = %entry
  %cr_bmval = getelementptr inbounds %struct.nfsd4_create, ptr %u, i32 0, i32 4
  %call2 = tail call fastcc i32 @check_attr_support(ptr noundef %cstate, ptr noundef %cr_bmval, ptr noundef nonnull @nfsd_attrmask)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %cr_umask = getelementptr inbounds %struct.nfsd4_create, ptr %u, i32 0, i32 6
  %2 = ptrtoint ptr %cr_umask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cr_umask, align 8
  %4 = tail call i32 @llvm.read_register.i32(metadata !349) #22
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %fs = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 107
  %8 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fs, align 128
  %umask = getelementptr inbounds %struct.fs_struct, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %umask to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %3, ptr %umask, align 4
  %cr_type = getelementptr inbounds %struct.nfsd4_create, ptr %u, i32 0, i32 2
  %11 = ptrtoint ptr %cr_type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cr_type, align 8
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %12, label %if.end5.out_crit_edge [
    i32 5, label %sw.bb
    i32 3, label %sw.bb10
    i32 4, label %sw.bb24
    i32 6, label %sw.bb47
    i32 7, label %sw.bb53
    i32 2, label %sw.bb59
  ]

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #24
  br label %out

sw.bb:                                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #24
  %cr_name = getelementptr inbounds %struct.nfsd4_create, ptr %u, i32 0, i32 1
  %14 = ptrtoint ptr %cr_name to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cr_name, align 4
  %16 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %u, align 8
  %data = getelementptr inbounds %struct.nfsd4_create, ptr %u, i32 0, i32 3, i32 0, i32 1
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  %call9 = call i32 @nfsd_symlink(ptr noundef %rqstp, ptr noundef %cstate, ptr noundef %15, i32 noundef %17, ptr noundef %19, ptr noundef nonnull %resfh) #22
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end5
  %u11 = getelementptr inbounds %struct.nfsd4_create, ptr %u, i32 0, i32 3
  %20 = ptrtoint ptr %u11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %u11, align 4
  %shl = shl i32 %21, 20
  %specdata2 = getelementptr inbounds %struct.nfsd4_create, ptr %u, i32 0, i32 3, i32 0, i32 1
  %22 = ptrtoint ptr %specdata2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %specdata2, align 4
  %or = or i32 %shl, %23
  %shr = lshr i32 %or, 20
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %21)
  %cmp.not = icmp eq i32 %shr, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %23)
  %24 = icmp ult i32 %23, 1048576
  %or.cond = select i1 %cmp.not, i1 %24, i1 false
  br i1 %or.cond, label %if.end19, label %sw.bb10.out_umask_crit_edge

sw.bb10.out_umask_crit_edge:                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #24
  br label %out_umask

if.end19:                                         ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #24
  %cr_name21 = getelementptr inbounds %struct.nfsd4_create, ptr %u, i32 0, i32 1
  %25 = ptrtoint ptr %cr_name21 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cr_name21, align 4
  %27 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %u, align 8
  %cr_iattr = getelementptr inbounds %struct.nfsd4_create, ptr %u, i32 0, i32 5
  %call23 = call i32 @nfsd_create(ptr noundef %rqstp, ptr noundef %cstate, ptr noundef %26, i32 noundef %28, ptr noundef %cr_iattr, i32 noundef 24576, i32 noundef %or, ptr noundef nonnull %resfh) #22
  br label %sw.epilog

sw.bb24:                                          ; preds = %if.end5
  %u25 = getelementptr inbounds %struct.nfsd4_create, ptr %u, i32 0, i32 3
  %29 = ptrtoint ptr %u25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %u25, align 4
  %shl27 = shl i32 %30, 20
  %specdata229 = getelementptr inbounds %struct.nfsd4_create, ptr %u, i32 0, i32 3, i32 0, i32 1
  %31 = ptrtoint ptr %specdata229 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %specdata229, align 4
  %or30 = or i32 %shl27, %32
  %shr31 = lshr i32 %or30, 20
  call void @__sanitizer_cov_trace_cmp4(i32 %shr31, i32 %30)
  %cmp34.not = icmp eq i32 %shr31, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %32)
  %33 = icmp ult i32 %32, 1048576
  %or.cond156 = select i1 %cmp34.not, i1 %33, i1 false
  br i1 %or.cond156, label %if.end41, label %sw.bb24.out_umask_crit_edge

sw.bb24.out_umask_crit_edge:                      ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #24
  br label %out_umask

if.end41:                                         ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #24
  %cr_name43 = getelementptr inbounds %struct.nfsd4_create, ptr %u, i32 0, i32 1
  %34 = ptrtoint ptr %cr_name43 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cr_name43, align 4
  %36 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %u, align 8
  %cr_iattr45 = getelementptr inbounds %struct.nfsd4_create, ptr %u, i32 0, i32 5
  %call46 = call i32 @nfsd_create(ptr noundef %rqstp, ptr noundef %cstate, ptr noundef %35, i32 noundef %37, ptr noundef %cr_iattr45, i32 noundef 8192, i32 noundef %or30, ptr noundef nonnull %resfh) #22
  br label %sw.epilog

sw.bb47:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #24
  %cr_name49 = getelementptr inbounds %struct.nfsd4_create, ptr %u, i32 0, i32 1
  %38 = ptrtoint ptr %cr_name49 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cr_name49, align 4
  %40 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %u, align 8
  %cr_iattr51 = getelementptr inbounds %struct.nfsd4_create, ptr %u, i32 0, i32 5
  %call52 = call i32 @nfsd_create(ptr noundef %rqstp, ptr noundef %cstate, ptr noundef %39, i32 noundef %41, ptr noundef %cr_iattr51, i32 noundef 49152, i32 noundef 0, ptr noundef nonnull %resfh) #22
  br label %sw.epilog

sw.bb53:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #24
  %cr_name55 = getelementptr inbounds %struct.nfsd4_create, ptr %u, i32 0, i32 1
  %42 = ptrtoint ptr %cr_name55 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cr_name55, align 4
  %44 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %u, align 8
  %cr_iattr57 = getelementptr inbounds %struct.nfsd4_create, ptr %u, i32 0, i32 5
  %call58 = call i32 @nfsd_create(ptr noundef %rqstp, ptr noundef %cstate, ptr noundef %43, i32 noundef %45, ptr noundef %cr_iattr57, i32 noundef 4096, i32 noundef 0, ptr noundef nonnull %resfh) #22
  br label %sw.epilog

sw.bb59:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #24
  %cr_iattr60 = getelementptr inbounds %struct.nfsd4_create, ptr %u, i32 0, i32 5
  %46 = ptrtoint ptr %cr_iattr60 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cr_iattr60, align 8
  %and61 = and i32 %47, -9
  store i32 %and61, ptr %cr_iattr60, align 8
  %cr_name63 = getelementptr inbounds %struct.nfsd4_create, ptr %u, i32 0, i32 1
  %48 = ptrtoint ptr %cr_name63 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cr_name63, align 4
  %50 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %u, align 8
  %call66 = call i32 @nfsd_create(ptr noundef %rqstp, ptr noundef %cstate, ptr noundef %49, i32 noundef %51, ptr noundef %cr_iattr60, i32 noundef 16384, i32 noundef 0, ptr noundef nonnull %resfh) #22
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb59, %sw.bb53, %sw.bb47, %if.end41, %if.end19, %sw.bb
  %status.0 = phi i32 [ %call66, %sw.bb59 ], [ %call58, %sw.bb53 ], [ %call52, %sw.bb47 ], [ %call46, %if.end41 ], [ %call23, %if.end19 ], [ %call9, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0)
  %tobool67.not = icmp eq i32 %status.0, 0
  br i1 %tobool67.not, label %if.end69, label %sw.epilog.out_crit_edge

sw.epilog.out_crit_edge:                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #24
  br label %out

if.end69:                                         ; preds = %sw.epilog
  %cr_label = getelementptr inbounds %struct.nfsd4_create, ptr %u, i32 0, i32 9
  %52 = ptrtoint ptr %cr_label to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cr_label, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool70.not = icmp eq i32 %53, 0
  br i1 %tobool70.not, label %if.end69.if.end75_crit_edge, label %if.then71

if.end69.if.end75_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end75

if.then71:                                        ; preds = %if.end69
  %fh_dentry.i = getelementptr inbounds %struct.svc_fh, ptr %resfh, i32 0, i32 2
  %54 = ptrtoint ptr %fh_dentry.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %fh_dentry.i, align 8
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %55, i32 0, i32 5
  %56 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %d_inode.i.i, align 8
  %i_rwsem.i.i = getelementptr inbounds %struct.inode, ptr %57, i32 0, i32 25
  call void @down_write(ptr noundef %i_rwsem.i.i) #22
  %58 = ptrtoint ptr %fh_dentry.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %fh_dentry.i, align 8
  %data.i = getelementptr inbounds %struct.nfsd4_create, ptr %u, i32 0, i32 9, i32 1
  %60 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %data.i, align 4
  %62 = ptrtoint ptr %cr_label to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cr_label, align 4
  %call2.i = call i32 @security_inode_setsecctx(ptr noundef %59, ptr noundef %61, i32 noundef %63) #22
  call void @up_write(ptr noundef %i_rwsem.i.i) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.then71.if.end75_crit_edge, label %if.then.i

if.then71.if.end75_crit_edge:                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end75

if.then.i:                                        ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #24
  %arrayidx.i = getelementptr %struct.nfsd4_create, ptr %u, i32 0, i32 4, i32 2
  %64 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx.i, align 4
  %and.i157 = and i32 %65, -65537
  store i32 %and.i157, ptr %arrayidx.i, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.then.i, %if.then71.if.end75_crit_edge, %if.end69.if.end75_crit_edge
  %cr_acl = getelementptr inbounds %struct.nfsd4_create, ptr %u, i32 0, i32 8
  %66 = ptrtoint ptr %cr_acl to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %cr_acl, align 8
  %cmp76.not = icmp eq ptr %67, null
  br i1 %cmp76.not, label %if.end75.if.end81_crit_edge, label %if.then77

if.end75.if.end81_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end81

if.then77:                                        ; preds = %if.end75
  %call.i = call i32 @nfsd4_set_nfs4_acl(ptr noundef %rqstp, ptr noundef nonnull %resfh, ptr noundef nonnull %67) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i158 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i158, label %if.then77.if.end81_crit_edge, label %if.then.i160

if.then77.if.end81_crit_edge:                     ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end81

if.then.i160:                                     ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #24
  %68 = ptrtoint ptr %cr_bmval to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %cr_bmval, align 4
  %and.i159 = and i32 %69, -4097
  store i32 %and.i159, ptr %cr_bmval, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.then.i160, %if.then77.if.end81_crit_edge, %if.end75.if.end81_crit_edge
  %fh_locked.i = getelementptr inbounds %struct.svc_fh, ptr %cstate, i32 0, i32 4
  %70 = ptrtoint ptr %fh_locked.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %fh_locked.i, align 8, !range !365
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool.not.i161 = icmp eq i8 %71, 0
  br i1 %tobool.not.i161, label %if.end81.fh_unlock.exit_crit_edge, label %if.then.i165

if.end81.fh_unlock.exit_crit_edge:                ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #24
  br label %fh_unlock.exit

if.then.i165:                                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #24
  call void @fh_fill_post_attrs(ptr noundef %cstate) #22
  %fh_dentry.i162 = getelementptr inbounds %struct.svc_fh, ptr %cstate, i32 0, i32 2
  %72 = ptrtoint ptr %fh_dentry.i162 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %fh_dentry.i162, align 8
  %d_inode.i.i163 = getelementptr inbounds %struct.dentry, ptr %73, i32 0, i32 5
  %74 = ptrtoint ptr %d_inode.i.i163 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %d_inode.i.i163, align 8
  %i_rwsem.i.i164 = getelementptr inbounds %struct.inode, ptr %75, i32 0, i32 25
  call void @up_write(ptr noundef %i_rwsem.i.i164) #22
  %76 = ptrtoint ptr %fh_locked.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 0, ptr %fh_locked.i, align 8
  br label %fh_unlock.exit

fh_unlock.exit:                                   ; preds = %if.then.i165, %if.end81.fh_unlock.exit_crit_edge
  %cr_cinfo = getelementptr inbounds %struct.nfsd4_create, ptr %u, i32 0, i32 7
  %fh_pre_saved.i = getelementptr inbounds %struct.svc_fh, ptr %cstate, i32 0, i32 10
  %77 = ptrtoint ptr %fh_pre_saved.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %fh_pre_saved.i, align 1, !range !365
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool.not.i166 = icmp eq i8 %78, 0
  br i1 %tobool.not.i166, label %do.body4.i, label %do.end7.i, !prof !364

do.body4.i:                                       ; preds = %fh_unlock.exit
  call void @__sanitizer_cov_trace_pc() #24
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfsd/xdr4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 751, 0\0A.popsection", ""() #22, !srcloc !367
  unreachable

do.end7.i:                                        ; preds = %fh_unlock.exit
  %fh_post_saved.i = getelementptr inbounds %struct.svc_fh, ptr %cstate, i32 0, i32 9
  %79 = ptrtoint ptr %fh_post_saved.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %fh_post_saved.i, align 8, !range !365
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool8.not.i = icmp eq i8 %80, 0
  br i1 %tobool8.not.i, label %do.end7.i.set_change_info.exit_crit_edge, label %land.rhs.i

do.end7.i.set_change_info.exit_crit_edge:         ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %set_change_info.exit

land.rhs.i:                                       ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #24
  %fh_no_atomic_attr.i = getelementptr inbounds %struct.svc_fh, ptr %cstate, i32 0, i32 7
  %81 = ptrtoint ptr %fh_no_atomic_attr.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %fh_no_atomic_attr.i, align 1, !range !365
  %83 = xor i8 %82, 1
  %lnot10.i = zext i8 %83 to i32
  br label %set_change_info.exit

set_change_info.exit:                             ; preds = %land.rhs.i, %do.end7.i.set_change_info.exit_crit_edge
  %84 = phi i32 [ 0, %do.end7.i.set_change_info.exit_crit_edge ], [ %lnot10.i, %land.rhs.i ]
  %85 = ptrtoint ptr %cr_cinfo to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %cr_cinfo, align 8
  %fh_pre_change.i = getelementptr inbounds %struct.svc_fh, ptr %cstate, i32 0, i32 14
  %86 = ptrtoint ptr %fh_pre_change.i to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %fh_pre_change.i, align 8
  %before_change.i = getelementptr inbounds %struct.nfsd4_create, ptr %u, i32 0, i32 7, i32 1
  %88 = ptrtoint ptr %before_change.i to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 %87, ptr %before_change.i, align 8
  %fh_post_change.i = getelementptr inbounds %struct.svc_fh, ptr %cstate, i32 0, i32 16
  %89 = ptrtoint ptr %fh_post_change.i to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %fh_post_change.i, align 8
  %after_change.i = getelementptr inbounds %struct.nfsd4_create, ptr %u, i32 0, i32 7, i32 2
  %91 = ptrtoint ptr %after_change.i to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 %90, ptr %after_change.i, align 8
  call void @fh_put(ptr noundef %cstate) #22
  %fh_dentry.i167 = getelementptr inbounds %struct.svc_fh, ptr %resfh, i32 0, i32 2
  %92 = ptrtoint ptr %fh_dentry.i167 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %fh_dentry.i167, align 8
  %tobool.not.i.i = icmp eq ptr %93, null
  br i1 %tobool.not.i.i, label %set_change_info.exit.dget.exit.i_crit_edge, label %if.then.i.i

set_change_info.exit.dget.exit.i_crit_edge:       ; preds = %set_change_info.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %dget.exit.i

if.then.i.i:                                      ; preds = %set_change_info.exit
  call void @__sanitizer_cov_trace_pc() #24
  %d_lockref.i.i = getelementptr inbounds %struct.dentry, ptr %93, i32 0, i32 7
  call void @lockref_get(ptr noundef %d_lockref.i.i) #22
  br label %dget.exit.i

dget.exit.i:                                      ; preds = %if.then.i.i, %set_change_info.exit.dget.exit.i_crit_edge
  %fh_export.i = getelementptr inbounds %struct.svc_fh, ptr %resfh, i32 0, i32 3
  %94 = ptrtoint ptr %fh_export.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %fh_export.i, align 4
  %tobool.not.i168 = icmp eq ptr %95, null
  br i1 %tobool.not.i168, label %dget.exit.i.fh_dup2.exit_crit_edge, label %if.then.i169

dget.exit.i.fh_dup2.exit_crit_edge:               ; preds = %dget.exit.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %fh_dup2.exit

if.then.i169:                                     ; preds = %dget.exit.i
  %ref.i.i.i = getelementptr inbounds %struct.cache_head, ptr %95, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i.i, i32 noundef 4) #22
  call void @llvm.prefetch.p0(ptr %ref.i.i.i, i32 1, i32 3, i32 1) #22
  %96 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.i.i, ptr %ref.i.i.i, i32 1, ptr elementtype(i32) %ref.i.i.i) #22, !srcloc !363
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %96, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i.i, label %if.then.i169.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i.i, !prof !364

if.then.i169.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i169
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end15.sink.split.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i:                            ; preds = %if.then.i169
  %add.i.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  %97 = or i32 %add.i.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %97)
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %97, -1
  br i1 %.not.i.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.i.fh_dup2.exit_crit_edge, label %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, !prof !361

if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end15.sink.split.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i.fh_dup2.exit_crit_edge:     ; preds = %if.else.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %fh_dup2.exit

if.end15.sink.split.i.i.i.i.i.i.i:                ; preds = %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, %if.then.i169.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i.i = phi i32 [ 2, %if.then.i169.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %ref.i.i.i, i32 noundef %.sink.i.i.i.i.i.i.i) #22
  br label %fh_dup2.exit

fh_dup2.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.i.fh_dup2.exit_crit_edge, %dget.exit.i.fh_dup2.exit_crit_edge
  %98 = call ptr @memcpy(ptr %cstate, ptr %resfh, i32 360)
  br label %out

out:                                              ; preds = %fh_dup2.exit, %sw.epilog.out_crit_edge, %if.end5.out_crit_edge
  %status.0172 = phi i32 [ %status.0, %sw.epilog.out_crit_edge ], [ 0, %fh_dup2.exit ], [ 10007, %if.end5.out_crit_edge ]
  call void @fh_put(ptr noundef nonnull %resfh) #22
  br label %out_umask

out_umask:                                        ; preds = %out, %sw.bb24.out_umask_crit_edge, %sw.bb10.out_umask_crit_edge
  %status.1 = phi i32 [ %status.0172, %out ], [ 22, %sw.bb24.out_umask_crit_edge ], [ 22, %sw.bb10.out_umask_crit_edge ]
  %99 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %task, align 8
  %fs87 = getelementptr inbounds %struct.task_struct, ptr %100, i32 0, i32 107
  %101 = ptrtoint ptr %fs87 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %fs87, align 128
  %umask88 = getelementptr inbounds %struct.fs_struct, ptr %102, i32 0, i32 3
  %103 = ptrtoint ptr %umask88 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 0, ptr %umask88, align 4
  br label %cleanup

cleanup:                                          ; preds = %out_umask, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.1, %out_umask ], [ %call1, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 360, ptr nonnull %resfh) #22
  ret i32 %retval.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nfsd4_create_rsize(ptr nocapture noundef readnone %rqstp, ptr nocapture noundef readnone %op) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  ret i32 44
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd4_delegreturn(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nfsd4_only_status_rsize(ptr nocapture noundef readnone %rqstp, ptr nocapture noundef readnone %op) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  ret i32 8
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfsd4_get_delegreturnstateid(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd4_getattr(ptr noundef %rqstp, ptr noundef %cstate, ptr nocapture noundef %u) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fh_verify(ptr noundef %rqstp, ptr noundef %cstate, i16 noundef zeroext 0, i32 noundef 0) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [3 x i32], ptr %u, i32 0, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %and = and i32 %1, 4259840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  %minorversion = getelementptr inbounds %struct.nfsd4_compound_state, ptr %cstate, i32 0, i32 9
  %2 = ptrtoint ptr %minorversion to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %minorversion, align 4
  %arrayidx4 = getelementptr [3 x [3 x i32]], ptr @nfsd_suppattrs, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx4, align 4
  %6 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %u, align 4
  %and8 = and i32 %7, %5
  store i32 %and8, ptr %u, align 4
  %8 = load i32, ptr %minorversion, align 4
  %arrayidx11 = getelementptr [3 x [3 x i32]], ptr @nfsd_suppattrs, i32 0, i32 %8, i32 1
  %9 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx11, align 4
  %and14 = and i32 %10, %1
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and14, ptr %arrayidx, align 4
  %12 = load i32, ptr %minorversion, align 4
  %arrayidx17 = getelementptr [3 x [3 x i32]], ptr @nfsd_suppattrs, i32 0, i32 %12, i32 2
  %13 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx17, align 4
  %arrayidx19 = getelementptr [3 x i32], ptr %u, i32 0, i32 2
  %15 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx19, align 4
  %and20 = and i32 %16, %14
  store i32 %and20, ptr %arrayidx19, align 4
  %ga_fhp = getelementptr inbounds %struct.nfsd4_getattr, ptr %u, i32 0, i32 1
  %17 = ptrtoint ptr %ga_fhp to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %cstate, ptr %ga_fhp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ %call, %entry.cleanup_crit_edge ], [ 22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd4_getattr_rsize(ptr noundef %rqstp, ptr nocapture noundef readonly %op) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  %u = getelementptr inbounds %struct.nfsd4_op, ptr %op, i32 0, i32 4
  %0 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %u, align 4
  %arrayidx1 = getelementptr %struct.nfsd4_op, ptr %op, i32 0, i32 4, i32 0, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx1, align 4
  %arrayidx2 = getelementptr %struct.nfsd4_op, ptr %op, i32 0, i32 4, i32 0, i32 0, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx2, align 4
  %and = and i32 %1, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  %call = tail call i32 @svc_max_payload(ptr noundef %rqstp) #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %and3 = and i32 %1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  %call6 = tail call i32 @svc_max_payload(ptr noundef %rqstp) #22
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  %and8 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %spec.select1032 = select i1 %tobool9.not, i32 0, i32 132
  %and13 = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %add16 = add nuw nsw i32 %spec.select1032, 132
  %and17 = and i32 %3, -49
  %ret.1 = select i1 %tobool14.not, i32 %spec.select1032, i32 %add16
  %and19 = and i32 %1, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  %add22 = add nuw nsw i32 %ret.1, 132
  %ret.2 = select i1 %tobool20.not, i32 %ret.1, i32 %add22
  %and25 = and i32 %5, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  %add28 = add nuw nsw i32 %ret.2, 2060
  %and29 = and i32 %5, -65537
  %ret.3 = select i1 %tobool26.not, i32 %ret.2, i32 %add28
  %and23 = and i32 %1, -524289
  %call.i = tail call i32 @__sw_hweight32(i32 noundef %and23) #22
  %call.i1033 = tail call i32 @__sw_hweight32(i32 noundef %and17) #22
  %add606 = add i32 %call.i1033, %call.i
  %call.i1034 = tail call i32 @__sw_hweight32(i32 noundef %and29) #22
  %add899 = add i32 %add606, %call.i1034
  %mul = shl i32 %add899, 4
  %add900 = add nuw nsw i32 %ret.3, 20
  %add901 = add i32 %add900, %mul
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then5, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call6, %if.then5 ], [ %add901, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @nfsd4_getfh(ptr nocapture noundef readnone %rqstp, ptr noundef %cstate, ptr nocapture noundef writeonly %u) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %cstate, ptr %u, align 32
  ret i32 0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nfsd4_getfh_rsize(ptr nocapture noundef readnone %rqstp, ptr nocapture noundef readnone %op) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  ret i32 140
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd4_link(ptr noundef %rqstp, ptr noundef %cstate, ptr nocapture noundef %u) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %li_name = getelementptr inbounds %struct.nfsd4_link, ptr %u, i32 0, i32 1
  %0 = ptrtoint ptr %li_name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %li_name, align 4
  %2 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %u, align 8
  %save_fh = getelementptr inbounds %struct.nfsd4_compound_state, ptr %cstate, i32 0, i32 1
  %call = tail call i32 @nfsd_link(ptr noundef %rqstp, ptr noundef %cstate, ptr noundef %1, i32 noundef %3, ptr noundef %save_fh) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

if.then:                                          ; preds = %entry
  %li_cinfo = getelementptr inbounds %struct.nfsd4_link, ptr %u, i32 0, i32 2
  %fh_pre_saved.i = getelementptr inbounds %struct.svc_fh, ptr %cstate, i32 0, i32 10
  %4 = ptrtoint ptr %fh_pre_saved.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fh_pre_saved.i, align 1, !range !365
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %do.body4.i, label %do.end7.i, !prof !364

do.body4.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #24
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfsd/xdr4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 751, 0\0A.popsection", ""() #22, !srcloc !367
  unreachable

do.end7.i:                                        ; preds = %if.then
  %fh_post_saved.i = getelementptr inbounds %struct.svc_fh, ptr %cstate, i32 0, i32 9
  %6 = ptrtoint ptr %fh_post_saved.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %fh_post_saved.i, align 8, !range !365
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool8.not.i = icmp eq i8 %7, 0
  br i1 %tobool8.not.i, label %do.end7.i.set_change_info.exit_crit_edge, label %land.rhs.i

do.end7.i.set_change_info.exit_crit_edge:         ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %set_change_info.exit

land.rhs.i:                                       ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #24
  %fh_no_atomic_attr.i = getelementptr inbounds %struct.svc_fh, ptr %cstate, i32 0, i32 7
  %8 = ptrtoint ptr %fh_no_atomic_attr.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %fh_no_atomic_attr.i, align 1, !range !365
  %10 = xor i8 %9, 1
  %lnot10.i = zext i8 %10 to i32
  br label %set_change_info.exit

set_change_info.exit:                             ; preds = %land.rhs.i, %do.end7.i.set_change_info.exit_crit_edge
  %11 = phi i32 [ 0, %do.end7.i.set_change_info.exit_crit_edge ], [ %lnot10.i, %land.rhs.i ]
  %12 = ptrtoint ptr %li_cinfo to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %li_cinfo, align 8
  %fh_pre_change.i = getelementptr inbounds %struct.svc_fh, ptr %cstate, i32 0, i32 14
  %13 = ptrtoint ptr %fh_pre_change.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %fh_pre_change.i, align 8
  %before_change.i = getelementptr inbounds %struct.nfsd4_link, ptr %u, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %before_change.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %before_change.i, align 8
  %fh_post_change.i = getelementptr inbounds %struct.svc_fh, ptr %cstate, i32 0, i32 16
  %16 = ptrtoint ptr %fh_post_change.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %fh_post_change.i, align 8
  %after_change.i = getelementptr inbounds %struct.nfsd4_link, ptr %u, i32 0, i32 2, i32 2
  %18 = ptrtoint ptr %after_change.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %after_change.i, align 8
  br label %if.end

if.end:                                           ; preds = %set_change_info.exit, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nfsd4_link_rsize(ptr nocapture noundef readnone %rqstp, ptr nocapture noundef readnone %op) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  ret i32 28
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd4_lock(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nfsd4_lock_rsize(ptr nocapture noundef readnone %rqstp, ptr nocapture noundef readnone %op) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  ret i32 40
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfsd4_set_lockstateid(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd4_lockt(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd4_locku(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfsd4_get_lockustateid(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd4_lookup(ptr noundef %rqstp, ptr noundef %cstate, ptr nocapture noundef readonly %u) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %lo_name = getelementptr inbounds %struct.nfsd4_lookup, ptr %u, i32 0, i32 1
  %0 = ptrtoint ptr %lo_name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lo_name, align 4
  %2 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %u, align 32
  %call = tail call i32 @nfsd_lookup(ptr noundef %rqstp, ptr noundef %cstate, ptr noundef %1, i32 noundef %3, ptr noundef %cstate) #22
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd4_lookupp(ptr noundef %rqstp, ptr noundef %cstate, ptr nocapture noundef readnone %u) #0 align 64 {
entry:
  %tmp_fh.i = alloca %struct.svc_fh, align 8
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 360, ptr nonnull %tmp_fh.i) #22
  %0 = call ptr @memset(ptr %tmp_fh.i, i32 0, i32 360)
  %fh_maxsize.i.i = getelementptr inbounds %struct.svc_fh, ptr %tmp_fh.i, i32 0, i32 1
  %1 = ptrtoint ptr %fh_maxsize.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 128, ptr %fh_maxsize.i.i, align 4
  %call1.i = call i32 @exp_pseudoroot(ptr noundef %rqstp, ptr noundef nonnull %tmp_fh.i) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.nfsd4_do_lookupp.exit_crit_edge

entry.nfsd4_do_lookupp.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %nfsd4_do_lookupp.exit

if.end.i:                                         ; preds = %entry
  %fh_dentry.i = getelementptr inbounds %struct.svc_fh, ptr %tmp_fh.i, i32 0, i32 2
  %2 = ptrtoint ptr %fh_dentry.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fh_dentry.i, align 8
  %fh_dentry2.i = getelementptr inbounds %struct.svc_fh, ptr %cstate, i32 0, i32 2
  %4 = ptrtoint ptr %fh_dentry2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fh_dentry2.i, align 8
  %cmp.i = icmp eq ptr %3, %5
  call void @fh_put(ptr noundef nonnull %tmp_fh.i) #22
  br i1 %cmp.i, label %if.end.i.nfsd4_do_lookupp.exit_crit_edge, label %if.end4.i

if.end.i.nfsd4_do_lookupp.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %nfsd4_do_lookupp.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #24
  %call5.i = call i32 @nfsd_lookup(ptr noundef %rqstp, ptr noundef %cstate, ptr noundef nonnull @.str.67, i32 noundef 2, ptr noundef %cstate) #22
  br label %nfsd4_do_lookupp.exit

nfsd4_do_lookupp.exit:                            ; preds = %if.end4.i, %if.end.i.nfsd4_do_lookupp.exit_crit_edge, %entry.nfsd4_do_lookupp.exit_crit_edge
  %retval.0.i = phi i32 [ %call5.i, %if.end4.i ], [ %call1.i, %entry.nfsd4_do_lookupp.exit_crit_edge ], [ 2, %if.end.i.nfsd4_do_lookupp.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 360, ptr nonnull %tmp_fh.i) #22
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd4_nverify(ptr noundef %rqstp, ptr noundef %cstate, ptr noundef %u) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @_nfsd4_verify(ptr noundef %rqstp, ptr noundef %cstate, ptr noundef %u)
  call void @__sanitizer_cov_trace_const_cmp4(i32 10027, i32 %call)
  %cmp = icmp eq i32 %call, 10027
  %spec.select = select i1 %cmp, i32 0, i32 %call
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd4_open(ptr noundef %rqstp, ptr noundef %cstate, ptr noundef %u) #0 align 64 {
entry:
  %resfh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resfh) #22
  %0 = ptrtoint ptr %resfh to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %resfh, align 4
  %rq_xprt = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 2
  %1 = ptrtoint ptr %rq_xprt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rq_xprt, align 8
  %tobool.not = icmp eq ptr %2, null
  %xpt_net = getelementptr inbounds %struct.svc_xprt, ptr %2, i32 0, i32 19
  %rq_bc_net = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 48
  %cond.in = select i1 %tobool.not, ptr %rq_bc_net, ptr %xpt_net
  %3 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %3)
  %cond = load ptr, ptr %cond.in, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %4 = load i32, ptr @nfsd_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %cond, i32 noundef %4)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %5 = load i32, ptr @nfsd_debug, align 4
  %and = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %entry.do.end6_crit_edge, label %do.end

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  %op_fnamelen = getelementptr inbounds %struct.nfsd4_open, ptr %u, i32 0, i32 1
  %6 = ptrtoint ptr %op_fnamelen to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %op_fnamelen, align 4
  %op_fname = getelementptr inbounds %struct.nfsd4_open, ptr %u, i32 0, i32 2
  %8 = ptrtoint ptr %op_fname to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %op_fname, align 8
  %op_openowner = getelementptr inbounds %struct.nfsd4_open, ptr %u, i32 0, i32 26
  %10 = ptrtoint ptr %op_openowner to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %op_openowner, align 32
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, i32 noundef %7, ptr noundef %9, ptr noundef %11) #26
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %op_create = getelementptr inbounds %struct.nfsd4_open, ptr %u, i32 0, i32 6
  %12 = ptrtoint ptr %op_create to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %op_create, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool7.not = icmp eq i32 %13, 0
  br i1 %tobool7.not, label %do.end6.if.end9_crit_edge, label %land.lhs.true

do.end6.if.end9_crit_edge:                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end9

land.lhs.true:                                    ; preds = %do.end6
  %14 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %u, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.not = icmp eq i32 %15, 0
  br i1 %cmp.not, label %land.lhs.true.if.end9_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end9

if.end9:                                          ; preds = %land.lhs.true.if.end9_crit_edge, %do.end6.if.end9_crit_edge
  %op_created = getelementptr inbounds %struct.nfsd4_open, ptr %u, i32 0, i32 25
  %16 = ptrtoint ptr %op_created to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %op_created, align 1
  %slot.i = getelementptr inbounds %struct.nfsd4_compound_state, ptr %cstate, i32 0, i32 5
  %17 = ptrtoint ptr %slot.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %slot.i, align 4
  %cmp.i.not = icmp eq ptr %18, null
  br i1 %cmp.i.not, label %if.end9.if.end21_crit_edge, label %land.lhs.true11

if.end9.if.end21_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end21

land.lhs.true11:                                  ; preds = %if.end9
  %clp = getelementptr inbounds %struct.nfsd4_compound_state, ptr %cstate, i32 0, i32 3
  %19 = ptrtoint ptr %clp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %clp, align 4
  %cl_flags = getelementptr inbounds %struct.nfs4_client, ptr %20, i32 0, i32 22
  %21 = ptrtoint ptr %cl_flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %cl_flags, align 4
  %23 = and i32 %22, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool13.not = icmp eq i32 %23, 0
  br i1 %tobool13.not, label %land.lhs.true14, label %land.lhs.true11.if.then20_crit_edge

land.lhs.true11.if.then20_crit_edge:              ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then20

land.lhs.true14:                                  ; preds = %land.lhs.true11
  %24 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %u, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp16.not = icmp eq i32 %25, 1
  br i1 %cmp16.not, label %land.lhs.true14.if.then20_crit_edge, label %land.lhs.true14.cleanup_crit_edge

land.lhs.true14.cleanup_crit_edge:                ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

land.lhs.true14.if.then20_crit_edge:              ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then20

if.then20:                                        ; preds = %land.lhs.true14.if.then20_crit_edge, %land.lhs.true11.if.then20_crit_edge
  %op_clientid = getelementptr inbounds %struct.nfsd4_open, ptr %u, i32 0, i32 13
  %session = getelementptr inbounds %struct.nfsd4_compound_state, ptr %cstate, i32 0, i32 4
  %26 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %session, align 8
  %se_sessionid.i = getelementptr inbounds %struct.nfsd4_session, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %se_sessionid.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %se_sessionid.i, align 4
  %30 = ptrtoint ptr %op_clientid to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %op_clientid, align 4
  %cl_id.i = getelementptr inbounds %struct.nfsd4_session, ptr %27, i32 0, i32 5, i32 0, i32 4
  %31 = ptrtoint ptr %cl_id.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cl_id.i, align 4
  %cl_id3.i = getelementptr inbounds %struct.nfsd4_open, ptr %u, i32 0, i32 13, i32 1
  %33 = ptrtoint ptr %cl_id3.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %cl_id3.i, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end9.if.end21_crit_edge
  %call22 = tail call i32 @nfsd4_process_open1(ptr noundef %cstate, ptr noundef %u, ptr noundef %call) #22
  %34 = zext i32 %call22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.146)
  switch i32 %call22, label %if.end21.out_crit_edge [
    i32 11001, label %if.then24
    i32 0, label %if.end47
  ]

if.end21.out_crit_edge:                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #24
  br label %out

if.then24:                                        ; preds = %if.end21
  %op_openowner25 = getelementptr inbounds %struct.nfsd4_open, ptr %u, i32 0, i32 26
  %35 = ptrtoint ptr %op_openowner25 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %op_openowner25, align 32
  tail call void @fh_put(ptr noundef %cstate) #22
  %rp_openfh = getelementptr inbounds %struct.nfs4_stateowner, ptr %36, i32 0, i32 7, i32 3
  %37 = ptrtoint ptr %rp_openfh to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rp_openfh, align 4
  %39 = ptrtoint ptr %cstate to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %cstate, align 4
  %40 = getelementptr inbounds %struct.knfsd_fh, ptr %cstate, i32 0, i32 1
  %41 = getelementptr inbounds %struct.nfs4_stateowner, ptr %36, i32 0, i32 7, i32 3, i32 1
  %42 = load i32, ptr %rp_openfh, align 4
  %43 = call ptr @memcpy(ptr %40, ptr %41, i32 %42)
  %call28 = tail call i32 @fh_verify(ptr noundef %rqstp, ptr noundef %cstate, i16 noundef zeroext 0, i32 noundef 0) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.then24.out_crit_edge, label %do.body31

if.then24.out_crit_edge:                          ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #24
  br label %out

do.body31:                                        ; preds = %if.then24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %44 = load i32, ptr @nfsd_debug, align 4
  %and32 = and i32 %44, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %do.body31.out_crit_edge, label %do.end37

do.body31.out_crit_edge:                          ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #24
  br label %out

do.end37:                                         ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #24
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71) #26
  br label %out

if.end47:                                         ; preds = %if.end21
  %op_xdr_error = getelementptr inbounds %struct.nfsd4_open, ptr %u, i32 0, i32 20
  %45 = ptrtoint ptr %op_xdr_error to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %op_xdr_error, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool48.not = icmp eq i32 %46, 0
  br i1 %tobool48.not, label %if.end51, label %if.end47.out_crit_edge

if.end47.out_crit_edge:                           ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #24
  br label %out

if.end51:                                         ; preds = %if.end47
  %47 = ptrtoint ptr %op_create to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %op_create, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %48)
  %cmp.i228 = icmp eq i32 %48, 1
  br i1 %cmp.i228, label %if.then.i, label %if.end51.if.end55_crit_edge

if.end51.if.end55_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end55

if.then.i:                                        ; preds = %if.end51
  %op_createmode.i = getelementptr inbounds %struct.nfsd4_open, ptr %u, i32 0, i32 7
  %49 = ptrtoint ptr %op_createmode.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %op_createmode.i, align 8
  %51 = zext i32 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.147)
  switch i32 %50, label %if.then.i.if.end55_crit_edge [
    i32 0, label %if.then.i.nfsd4_check_open_attributes.exit_crit_edge
    i32 1, label %if.then.i.nfsd4_check_open_attributes.exit_crit_edge244
    i32 3, label %if.then7.i
  ]

if.then.i.nfsd4_check_open_attributes.exit_crit_edge244: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %nfsd4_check_open_attributes.exit

if.then.i.nfsd4_check_open_attributes.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %nfsd4_check_open_attributes.exit

if.then.i.if.end55_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end55

if.then7.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %nfsd4_check_open_attributes.exit

nfsd4_check_open_attributes.exit:                 ; preds = %if.then7.i, %if.then.i.nfsd4_check_open_attributes.exit_crit_edge, %if.then.i.nfsd4_check_open_attributes.exit_crit_edge244
  %nfsd_attrmask.sink.i = phi ptr [ @nfsd41_ex_attrmask, %if.then7.i ], [ @nfsd_attrmask, %if.then.i.nfsd4_check_open_attributes.exit_crit_edge ], [ @nfsd_attrmask, %if.then.i.nfsd4_check_open_attributes.exit_crit_edge244 ]
  %op_bmval.i = getelementptr inbounds %struct.nfsd4_open, ptr %u, i32 0, i32 9
  %call.i = tail call fastcc i32 @check_attr_support(ptr noundef %cstate, ptr noundef %op_bmval.i, ptr noundef nonnull %nfsd_attrmask.sink.i) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool53.not = icmp eq i32 %call.i, 0
  br i1 %tobool53.not, label %nfsd4_check_open_attributes.exit.if.end55_crit_edge, label %nfsd4_check_open_attributes.exit.out_crit_edge

nfsd4_check_open_attributes.exit.out_crit_edge:   ; preds = %nfsd4_check_open_attributes.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %out

nfsd4_check_open_attributes.exit.if.end55_crit_edge: ; preds = %nfsd4_check_open_attributes.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end55

if.end55:                                         ; preds = %nfsd4_check_open_attributes.exit.if.end55_crit_edge, %if.then.i.if.end55_crit_edge, %if.end51.if.end55_crit_edge
  %call56 = tail call zeroext i1 @opens_in_grace(ptr noundef %cond) #22
  br i1 %call56, label %land.lhs.true57, label %if.end55.if.end61_crit_edge

if.end55.if.end61_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end61

land.lhs.true57:                                  ; preds = %if.end55
  %52 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %u, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %53)
  %cmp59.not = icmp eq i32 %53, 1
  br i1 %cmp59.not, label %land.lhs.true57.if.end61_crit_edge, label %land.lhs.true57.out_crit_edge

land.lhs.true57.out_crit_edge:                    ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #24
  br label %out

land.lhs.true57.if.end61_crit_edge:               ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end61

if.end61:                                         ; preds = %land.lhs.true57.if.end61_crit_edge, %if.end55.if.end61_crit_edge
  %call62 = tail call zeroext i1 @opens_in_grace(ptr noundef %cond) #22
  %54 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %54)
  %.pr = load i32, ptr %u, align 32
  %call62.not = xor i1 %call62, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr)
  %cmp65 = icmp eq i32 %.pr, 1
  %or.cond243 = select i1 %call62.not, i1 %cmp65, i1 false
  br i1 %or.cond243, label %if.end61.out_crit_edge, label %if.end67

if.end61.out_crit_edge:                           ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #24
  br label %out

if.end67:                                         ; preds = %if.end61
  %55 = zext i32 %.pr to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.148)
  switch i32 %.pr, label %do.body101 [
    i32 2, label %if.end67.sw.bb_crit_edge
    i32 0, label %if.end67.sw.bb_crit_edge245
    i32 1, label %sw.bb73
    i32 4, label %if.end67.sw.bb81_crit_edge
    i32 5, label %if.end67.sw.bb81_crit_edge246
    i32 6, label %if.end67.do.body88_crit_edge
    i32 3, label %if.end67.do.body88_crit_edge247
  ]

if.end67.do.body88_crit_edge247:                  ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body88

if.end67.do.body88_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body88

if.end67.sw.bb81_crit_edge246:                    ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb81

if.end67.sw.bb81_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb81

if.end67.sw.bb_crit_edge245:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb

if.end67.sw.bb_crit_edge:                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb

sw.bb:                                            ; preds = %if.end67.sw.bb_crit_edge, %if.end67.sw.bb_crit_edge245
  %call69 = call fastcc i32 @do_open_lookup(ptr noundef %rqstp, ptr noundef %cstate, ptr noundef %u, ptr noundef nonnull %resfh)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %sw.epilog.thread, label %sw.bb.out_crit_edge

sw.bb.out_crit_edge:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #24
  br label %out

sw.bb73:                                          ; preds = %if.end67
  %clp74 = getelementptr inbounds %struct.nfsd4_compound_state, ptr %cstate, i32 0, i32 3
  %56 = ptrtoint ptr %clp74 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %clp74, align 4
  %call75 = tail call i32 @nfs4_check_open_reclaim(ptr noundef %57) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end78, label %sw.bb73.out_crit_edge

sw.bb73.out_crit_edge:                            ; preds = %sw.bb73
  call void @__sanitizer_cov_trace_pc() #24
  br label %out

if.end78:                                         ; preds = %sw.bb73
  call void @__sanitizer_cov_trace_pc() #24
  %op_openowner79 = getelementptr inbounds %struct.nfsd4_open, ptr %u, i32 0, i32 26
  %58 = ptrtoint ptr %op_openowner79 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %op_openowner79, align 32
  %oo_flags = getelementptr inbounds %struct.nfs4_openowner, ptr %59, i32 0, i32 5
  %60 = ptrtoint ptr %oo_flags to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %oo_flags, align 8
  %62 = or i8 %61, 1
  store i8 %62, ptr %oo_flags, align 8
  br label %sw.bb81

sw.bb81:                                          ; preds = %if.end78, %if.end67.sw.bb81_crit_edge, %if.end67.sw.bb81_crit_edge246
  %reclaim.0.off0 = phi i1 [ false, %if.end67.sw.bb81_crit_edge ], [ false, %if.end67.sw.bb81_crit_edge246 ], [ true, %if.end78 ]
  %call82 = tail call fastcc i32 @do_open_fhandle(ptr noundef %rqstp, ptr noundef %cstate, ptr noundef %u)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %sw.epilog, label %sw.bb81.out_crit_edge

sw.bb81.out_crit_edge:                            ; preds = %sw.bb81
  call void @__sanitizer_cov_trace_pc() #24
  br label %out

do.body88:                                        ; preds = %if.end67.do.body88_crit_edge, %if.end67.do.body88_crit_edge247
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %63 = load i32, ptr @nfsd_debug, align 4
  %and89 = and i32 %63, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %do.body88.out_crit_edge, label %do.end94

do.body88.out_crit_edge:                          ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #24
  br label %out

do.end94:                                         ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #24
  %call97 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, i32 noundef %.pr) #26
  br label %out

do.body101:                                       ; preds = %if.end67
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %64 = load i32, ptr @nfsd_debug, align 4
  %and102 = and i32 %64, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102)
  %tobool103.not = icmp eq i32 %and102, 0
  br i1 %tobool103.not, label %do.body101.out_crit_edge, label %do.end107

do.body101.out_crit_edge:                         ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #24
  br label %out

do.end107:                                        ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #24
  %call110 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, i32 noundef %.pr) #26
  br label %out

sw.epilog:                                        ; preds = %sw.bb81
  %65 = ptrtoint ptr %resfh to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %cstate, ptr %resfh, align 4
  %call114 = tail call i32 @nfsd4_process_open2(ptr noundef %rqstp, ptr noundef %cstate, ptr noundef %u) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %if.end136, label %sw.epilog.land.rhs_crit_edge

sw.epilog.land.rhs_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #24
  br label %land.rhs

sw.epilog.thread:                                 ; preds = %sw.bb
  %66 = ptrtoint ptr %resfh to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %resfh, align 4
  %call114238 = tail call i32 @nfsd4_process_open2(ptr noundef %rqstp, ptr noundef %67, ptr noundef %u) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114238)
  %tobool115.not239 = icmp eq i32 %call114238, 0
  br i1 %tobool115.not239, label %sw.epilog.thread.out_crit_edge, label %sw.epilog.thread.land.rhs_crit_edge

sw.epilog.thread.land.rhs_crit_edge:              ; preds = %sw.epilog.thread
  call void @__sanitizer_cov_trace_pc() #24
  br label %land.rhs

sw.epilog.thread.out_crit_edge:                   ; preds = %sw.epilog.thread
  call void @__sanitizer_cov_trace_pc() #24
  br label %out

land.rhs:                                         ; preds = %sw.epilog.thread.land.rhs_crit_edge, %sw.epilog.land.rhs_crit_edge
  %call114241 = phi i32 [ %call114238, %sw.epilog.thread.land.rhs_crit_edge ], [ %call114, %sw.epilog.land.rhs_crit_edge ]
  %68 = ptrtoint ptr %op_created to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %op_created, align 1, !range !365
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool117.not = icmp eq i8 %69, 0
  br i1 %tobool117.not, label %land.rhs.out_crit_edge, label %do.end130, !prof !361

land.rhs.out_crit_edge:                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #24
  br label %out

do.end130:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #24
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 470, i32 noundef 9, ptr noundef nonnull @.str.79, i32 noundef %call114241) #22
  br label %out

if.end136:                                        ; preds = %sw.epilog
  br i1 %reclaim.0.off0, label %if.then148, label %if.end136.out_crit_edge

if.end136.out_crit_edge:                          ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #24
  br label %out

if.then148:                                       ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #24
  %somebody_reclaimed = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 28
  %70 = ptrtoint ptr %somebody_reclaimed to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 1, ptr %somebody_reclaimed, align 8
  br label %out

out:                                              ; preds = %if.then148, %if.end136.out_crit_edge, %do.end130, %land.rhs.out_crit_edge, %sw.epilog.thread.out_crit_edge, %do.end107, %do.body101.out_crit_edge, %do.end94, %do.body88.out_crit_edge, %sw.bb81.out_crit_edge, %sw.bb73.out_crit_edge, %sw.bb.out_crit_edge, %if.end61.out_crit_edge, %land.lhs.true57.out_crit_edge, %nfsd4_check_open_attributes.exit.out_crit_edge, %if.end47.out_crit_edge, %do.end37, %do.body31.out_crit_edge, %if.then24.out_crit_edge, %if.end21.out_crit_edge
  %status.2 = phi i32 [ %call.i, %nfsd4_check_open_attributes.exit.out_crit_edge ], [ 10013, %land.lhs.true57.out_crit_edge ], [ %call82, %sw.bb81.out_crit_edge ], [ 0, %if.then148 ], [ 0, %if.end136.out_crit_edge ], [ %call75, %sw.bb73.out_crit_edge ], [ %call69, %sw.bb.out_crit_edge ], [ %46, %if.end47.out_crit_edge ], [ 10004, %do.end94 ], [ 10004, %do.body88.out_crit_edge ], [ 22, %do.end107 ], [ 22, %do.body101.out_crit_edge ], [ 11001, %if.then24.out_crit_edge ], [ %call28, %do.body31.out_crit_edge ], [ %call28, %do.end37 ], [ %call114241, %do.end130 ], [ %call114241, %land.rhs.out_crit_edge ], [ %call22, %if.end21.out_crit_edge ], [ 0, %sw.epilog.thread.out_crit_edge ], [ 10033, %if.end61.out_crit_edge ]
  %71 = ptrtoint ptr %resfh to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %resfh, align 4
  %tobool150.not = icmp eq ptr %72, null
  %cmp153.not = icmp eq ptr %72, %cstate
  %or.cond = or i1 %tobool150.not, %cmp153.not
  br i1 %or.cond, label %out.if.end157_crit_edge, label %if.then155

out.if.end157_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end157

if.then155:                                       ; preds = %out
  tail call void @fh_put(ptr noundef %cstate) #22
  %fh_dentry.i = getelementptr inbounds %struct.svc_fh, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %fh_dentry.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %fh_dentry.i, align 8
  %tobool.not.i.i = icmp eq ptr %74, null
  br i1 %tobool.not.i.i, label %if.then155.dget.exit.i_crit_edge, label %if.then.i.i

if.then155.dget.exit.i_crit_edge:                 ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #24
  br label %dget.exit.i

if.then.i.i:                                      ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #24
  %d_lockref.i.i = getelementptr inbounds %struct.dentry, ptr %74, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %d_lockref.i.i) #22
  br label %dget.exit.i

dget.exit.i:                                      ; preds = %if.then.i.i, %if.then155.dget.exit.i_crit_edge
  %fh_export.i = getelementptr inbounds %struct.svc_fh, ptr %72, i32 0, i32 3
  %75 = ptrtoint ptr %fh_export.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %fh_export.i, align 4
  %tobool.not.i = icmp eq ptr %76, null
  br i1 %tobool.not.i, label %dget.exit.i.fh_dup2.exit_crit_edge, label %if.then.i229

dget.exit.i.fh_dup2.exit_crit_edge:               ; preds = %dget.exit.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %fh_dup2.exit

if.then.i229:                                     ; preds = %dget.exit.i
  %ref.i.i.i = getelementptr inbounds %struct.cache_head, ptr %76, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i.i, i32 noundef 4) #22
  tail call void @llvm.prefetch.p0(ptr %ref.i.i.i, i32 1, i32 3, i32 1) #22
  %77 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.i.i, ptr %ref.i.i.i, i32 1, ptr elementtype(i32) %ref.i.i.i) #22, !srcloc !363
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %77, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i.i, label %if.then.i229.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i.i, !prof !364

if.then.i229.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i229
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end15.sink.split.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i:                            ; preds = %if.then.i229
  %add.i.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  %78 = or i32 %add.i.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %78)
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %78, -1
  br i1 %.not.i.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.i.fh_dup2.exit_crit_edge, label %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, !prof !361

if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end15.sink.split.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i.fh_dup2.exit_crit_edge:     ; preds = %if.else.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %fh_dup2.exit

if.end15.sink.split.i.i.i.i.i.i.i:                ; preds = %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, %if.then.i229.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i.i = phi i32 [ 2, %if.then.i229.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref.i.i.i, i32 noundef %.sink.i.i.i.i.i.i.i) #22
  br label %fh_dup2.exit

fh_dup2.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.i.fh_dup2.exit_crit_edge, %dget.exit.i.fh_dup2.exit_crit_edge
  %79 = call ptr @memcpy(ptr %cstate, ptr %72, i32 360)
  tail call void @fh_put(ptr noundef nonnull %72) #22
  tail call void @kfree(ptr noundef nonnull %72) #22
  br label %if.end157

if.end157:                                        ; preds = %fh_dup2.exit, %out.if.end157_crit_edge
  tail call void @nfsd4_cleanup_open_state(ptr noundef %cstate, ptr noundef %u) #22
  tail call void @nfsd4_bump_seqid(ptr noundef %cstate, i32 noundef %status.2) #22
  br label %cleanup

cleanup:                                          ; preds = %if.end157, %land.lhs.true14.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.2, %if.end157 ], [ 22, %land.lhs.true.cleanup_crit_edge ], [ 10013, %land.lhs.true14.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resfh) #22
  ret i32 %retval.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nfsd4_open_rsize(ptr nocapture noundef readnone %rqstp, ptr nocapture noundef readnone %op) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  ret i32 232
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfsd4_set_openstateid(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd4_open_confirm(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd4_open_downgrade(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfsd4_get_opendowngradestateid(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfsd4_set_opendowngradestateid(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd4_putfh(ptr noundef %rqstp, ptr noundef %cstate, ptr nocapture noundef readonly %u) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @fh_put(ptr noundef %cstate) #22
  %0 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %u, align 4
  %2 = ptrtoint ptr %cstate to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %cstate, align 8
  %3 = getelementptr inbounds %struct.knfsd_fh, ptr %cstate, i32 0, i32 1
  %pf_fhval = getelementptr inbounds %struct.nfsd4_putfh, ptr %u, i32 0, i32 1
  %4 = ptrtoint ptr %pf_fhval to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pf_fhval, align 4
  %6 = load i32, ptr %u, align 4
  %7 = call ptr @memcpy(ptr %3, ptr %5, i32 %6)
  %call = tail call i32 @fh_verify(ptr noundef %rqstp, ptr noundef %cstate, i16 noundef zeroext 0, i32 noundef 1024) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 70, i32 %call)
  %cmp = icmp eq i32 %call, 70
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %no_verify = getelementptr inbounds %struct.nfsd4_putfh, ptr %u, i32 0, i32 2
  %8 = ptrtoint ptr %no_verify to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %no_verify, align 4, !range !365
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  %fh_flags = getelementptr inbounds %struct.svc_fh, ptr %cstate, i32 0, i32 8
  %10 = ptrtoint ptr %fh_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fh_flags, align 4
  %or = or i32 %11, 1
  store i32 %or, ptr %fh_flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %if.then ], [ 70, %land.lhs.true.if.end_crit_edge ], [ %call, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd4_putrootfh(ptr noundef %rqstp, ptr noundef %cstate, ptr nocapture noundef readnone %u) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @fh_put(ptr noundef %cstate) #22
  %call = tail call i32 @exp_pseudoroot(ptr noundef %rqstp, ptr noundef %cstate) #22
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd4_read(ptr noundef %rqstp, ptr noundef %cstate, ptr noundef %u) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %rd_nf = getelementptr inbounds %struct.nfsd4_read, ptr %u, i32 0, i32 4
  %0 = ptrtoint ptr %rd_nf to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %rd_nf, align 8
  %rd_offset = getelementptr inbounds %struct.nfsd4_read, ptr %u, i32 0, i32 1
  %1 = ptrtoint ptr %rd_offset to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %rd_offset, align 8
  %rd_length = getelementptr inbounds %struct.nfsd4_read, ptr %u, i32 0, i32 2
  %3 = ptrtoint ptr %rd_length to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rd_length, align 8
  tail call fastcc void @trace_nfsd_read_start(ptr noundef %rqstp, ptr noundef %cstate, i64 noundef %2, i32 noundef %4)
  %5 = ptrtoint ptr %rd_length to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rd_length, align 8
  %call = tail call i32 @svc_max_payload(ptr noundef %rqstp) #22
  %7 = tail call i32 @llvm.umin.i32(i32 %6, i32 %call)
  %8 = ptrtoint ptr %rd_length to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %rd_length, align 8
  %9 = ptrtoint ptr %rd_offset to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %rd_offset, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %cmp4 = icmp slt i64 %10, 0
  br i1 %cmp4, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  %11 = ptrtoint ptr %rd_offset to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 9223372036854775807, ptr %rd_offset, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %12 = ptrtoint ptr %rd_offset to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %rd_offset, align 8
  %conv = zext i32 %7 to i64
  %add = add i64 %13, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add)
  %cmp8 = icmp slt i64 %add, 0
  br i1 %cmp8, label %if.then10, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end14

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  %14 = trunc i64 %13 to i32
  %conv12 = xor i32 %14, -1
  %15 = ptrtoint ptr %rd_length to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv12, ptr %rd_length, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.end.if.end14_crit_edge
  %rq_resp.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 36
  %16 = ptrtoint ptr %rq_resp.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rq_resp.i, align 4
  %rq_argp.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 35
  %18 = ptrtoint ptr %rq_argp.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rq_argp.i, align 8
  %opcnt.i = getelementptr inbounds %struct.nfsd4_compoundargs, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %opcnt.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %opcnt.i, align 8
  %opcnt1.i = getelementptr inbounds %struct.nfsd4_compoundres, ptr %17, i32 0, i32 5
  %22 = ptrtoint ptr %opcnt1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %opcnt1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp.i = icmp eq i32 %21, %23
  br i1 %cmp.i, label %if.end14.if.end17_crit_edge, label %if.then16

if.end14.if.end17_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end17

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #24
  %rq_flags = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 33
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %rq_flags) #22
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end14.if.end17_crit_edge
  %call20 = tail call i32 @nfs4_preprocess_stateid_op(ptr noundef %rqstp, ptr noundef %cstate, ptr noundef %cstate, ptr noundef %u, i32 noundef 16, ptr noundef %rd_nf, ptr noundef null) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool.not = icmp eq i32 %call20, 0
  br i1 %tobool.not, label %if.end17.out_crit_edge, label %do.body

if.end17.out_crit_edge:                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #24
  br label %out

do.body:                                          ; preds = %if.end17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %24 = load i32, ptr @nfsd_debug, align 4
  %and = and i32 %24, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %do.body.out_crit_edge, label %do.end

do.body.out_crit_edge:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %out

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #24
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85) #26
  br label %out

out:                                              ; preds = %do.end, %do.body.out_crit_edge, %if.end17.out_crit_edge
  %rd_rqstp = getelementptr inbounds %struct.nfsd4_read, ptr %u, i32 0, i32 5
  %25 = ptrtoint ptr %rd_rqstp to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %rqstp, ptr %rd_rqstp, align 4
  %rd_fhp = getelementptr inbounds %struct.nfsd4_read, ptr %u, i32 0, i32 6
  %26 = ptrtoint ptr %rd_fhp to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %cstate, ptr %rd_fhp, align 8
  ret i32 %call20
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfsd4_read_release(ptr nocapture noundef readonly %u) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %rd_nf = getelementptr inbounds %struct.nfsd4_read, ptr %u, i32 0, i32 4
  %0 = ptrtoint ptr %rd_nf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rd_nf, align 32
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @nfsd_file_put(ptr noundef nonnull %1) #22
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rd_rqstp = getelementptr inbounds %struct.nfsd4_read, ptr %u, i32 0, i32 5
  %2 = ptrtoint ptr %rd_rqstp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rd_rqstp, align 4
  %rd_fhp = getelementptr inbounds %struct.nfsd4_read, ptr %u, i32 0, i32 6
  %4 = ptrtoint ptr %rd_fhp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rd_fhp, align 8
  %rd_offset = getelementptr inbounds %struct.nfsd4_read, ptr %u, i32 0, i32 1
  %6 = ptrtoint ptr %rd_offset to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %rd_offset, align 16
  %rd_length = getelementptr inbounds %struct.nfsd4_read, ptr %u, i32 0, i32 2
  %8 = ptrtoint ptr %rd_length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rd_length, align 8
  tail call fastcc void @trace_nfsd_read_done(ptr noundef %3, ptr noundef %5, i64 noundef %7, i32 noundef %9)
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd4_read_rsize(ptr noundef %rqstp, ptr nocapture noundef readonly %op) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  %call = tail call i32 @svc_max_payload(ptr noundef %rqstp) #22
  %rd_length = getelementptr inbounds %struct.nfsd4_op, ptr %op, i32 0, i32 4, i32 0, i32 1, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %rd_length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rd_length, align 8
  %2 = tail call i32 @llvm.umin.i32(i32 %1, i32 %call)
  %3 = add i32 %2, 19
  %mul = and i32 %3, -4
  ret i32 %mul
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfsd4_get_readstateid(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nfsd4_readdir(ptr noundef %rqstp, ptr noundef %cstate, ptr nocapture noundef %u) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.nfsd4_readdir, ptr %u, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %and = and i32 %1, 4259840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %u to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %u, align 8
  %rd_bmval = getelementptr inbounds %struct.nfsd4_readdir, ptr %u, i32 0, i32 4
  %minorversion = getelementptr inbounds %struct.nfsd4_compound_state, ptr %cstate, i32 0, i32 9
  %4 = ptrtoint ptr %minorversion to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %minorversion, align 4
  %arrayidx1 = getelementptr [3 x [3 x i32]], ptr @nfsd_suppattrs, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx1, align 4
  %8 = ptrtoint ptr %rd_bmval to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rd_bmval, align 8
  %and5 = and i32 %9, %7
  store i32 %and5, ptr %rd_bmval, align 8
  %10 = load i32, ptr %minorversion, align 4
  %arrayidx8 = getelementptr [3 x [3 x i32]], ptr @nfsd_suppattrs, i32 0, i32 %10, i32 1
  %11 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx8, align 4
  %and11 = and i32 %12, %1
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and11, ptr %arrayidx, align 4
  %14 = load i32, ptr %minorversion, align 4
  %arrayidx14 = getelementptr [3 x [3 x i32]], ptr @nfsd_suppattrs, i32 0, i32 %14, i32 2
  %15 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx14, align 4
  %arrayidx16 = getelementptr %struct.nfsd4_readdir, ptr %u, i32 0, i32 4, i32 2
  %17 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx16, align 8
  %and17 = and i32 %18, %16
  store i32 %and17, ptr %arrayidx16, align 8
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.149)
  switch i64 %3, label %if.end.if.end23_crit_edge [
    i64 1, label %if.end.cleanup_crit_edge
    i64 2, label %if.end.cleanup_crit_edge37
    i64 0, label %land.lhs.true
  ]

if.end.cleanup_crit_edge37:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end23

land.lhs.true:                                    ; preds = %if.end
  %rd_verf = getelementptr inbounds %struct.nfsd4_readdir, ptr %u, i32 0, i32 1
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(8) %rd_verf, ptr noundef nonnull dereferenceable(8) @nfsd4_readdir.zeroverf, i32 8) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool21.not = icmp eq i32 %bcmp, 0
  br i1 %tobool21.not, label %land.lhs.true.if.end23_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end23

if.end23:                                         ; preds = %land.lhs.true.if.end23_crit_edge, %if.end.if.end23_crit_edge
  %rd_rqstp = getelementptr inbounds %struct.nfsd4_readdir, ptr %u, i32 0, i32 5
  %19 = ptrtoint ptr %rd_rqstp to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %rqstp, ptr %rd_rqstp, align 4
  %rd_fhp = getelementptr inbounds %struct.nfsd4_readdir, ptr %u, i32 0, i32 6
  %20 = ptrtoint ptr %rd_fhp to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %cstate, ptr %rd_fhp, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end.cleanup_crit_edge37, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end23 ], [ 22, %entry.cleanup_crit_edge ], [ 10003, %if.end.cleanup_crit_edge ], [ 10003, %if.end.cleanup_crit_edge37 ], [ 10003, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd4_readdir_rsize(ptr noundef %rqstp, ptr nocapture noundef readonly %op) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  %call = tail call i32 @svc_max_payload(ptr noundef %rqstp) #22
  %rd_maxcount = getelementptr inbounds %struct.nfsd4_op, ptr %op, i32 0, i32 4, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %rd_maxcount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rd_maxcount, align 4
  %2 = tail call i32 @llvm.umin.i32(i32 %1, i32 %call)
  %3 = add i32 %2, 19
  %mul = and i32 %3, -4
  ret i32 %mul
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @nfsd4_readlink(ptr noundef %rqstp, ptr noundef %cstate, ptr nocapture noundef writeonly %u) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %rqstp, ptr %u, align 32
  %rl_fhp = getelementptr inbounds %struct.nfsd4_readlink, ptr %u, i32 0, i32 1
  %1 = ptrtoint ptr %rl_fhp to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %cstate, ptr %rl_fhp, align 4
  ret i32 0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nfsd4_readlink_rsize(ptr nocapture noundef readnone %rqstp, ptr nocapture noundef readnone %op) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  ret i32 4108
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd4_remove(ptr noundef %rqstp, ptr noundef %cstate, ptr nocapture noundef %u) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_xprt = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 2
  %0 = ptrtoint ptr %rq_xprt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_xprt, align 8
  %tobool.not = icmp eq ptr %1, null
  %xpt_net = getelementptr inbounds %struct.svc_xprt, ptr %1, i32 0, i32 19
  %rq_bc_net = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 48
  %cond.in = select i1 %tobool.not, ptr %rq_bc_net, ptr %xpt_net
  %2 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %cond = load ptr, ptr %cond.in, align 4
  %call = tail call zeroext i1 @opens_in_grace(ptr noundef %cond) #22
  br i1 %call, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end:                                           ; preds = %entry
  %rm_name = getelementptr inbounds %struct.nfsd4_remove, ptr %u, i32 0, i32 1
  %3 = ptrtoint ptr %rm_name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rm_name, align 4
  %5 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %u, align 8
  %call2 = tail call i32 @nfsd_unlink(ptr noundef %rqstp, ptr noundef %cstate, i32 noundef 0, ptr noundef %4, i32 noundef %6) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.then4:                                         ; preds = %if.end
  %fh_locked.i = getelementptr inbounds %struct.svc_fh, ptr %cstate, i32 0, i32 4
  %7 = ptrtoint ptr %fh_locked.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %fh_locked.i, align 8, !range !365
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %if.then4.fh_unlock.exit_crit_edge, label %if.then.i

if.then4.fh_unlock.exit_crit_edge:                ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #24
  br label %fh_unlock.exit

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @fh_fill_post_attrs(ptr noundef %cstate) #22
  %fh_dentry.i = getelementptr inbounds %struct.svc_fh, ptr %cstate, i32 0, i32 2
  %9 = ptrtoint ptr %fh_dentry.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fh_dentry.i, align 8
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %d_inode.i.i, align 8
  %i_rwsem.i.i = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i.i) #22
  %13 = ptrtoint ptr %fh_locked.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %fh_locked.i, align 8
  br label %fh_unlock.exit

fh_unlock.exit:                                   ; preds = %if.then.i, %if.then4.fh_unlock.exit_crit_edge
  %rm_cinfo = getelementptr inbounds %struct.nfsd4_remove, ptr %u, i32 0, i32 2
  %fh_pre_saved.i = getelementptr inbounds %struct.svc_fh, ptr %cstate, i32 0, i32 10
  %14 = ptrtoint ptr %fh_pre_saved.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %fh_pre_saved.i, align 1, !range !365
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i17 = icmp eq i8 %15, 0
  br i1 %tobool.not.i17, label %do.body4.i, label %do.end7.i, !prof !364

do.body4.i:                                       ; preds = %fh_unlock.exit
  call void @__sanitizer_cov_trace_pc() #24
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfsd/xdr4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 751, 0\0A.popsection", ""() #22, !srcloc !367
  unreachable

do.end7.i:                                        ; preds = %fh_unlock.exit
  %fh_post_saved.i = getelementptr inbounds %struct.svc_fh, ptr %cstate, i32 0, i32 9
  %16 = ptrtoint ptr %fh_post_saved.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %fh_post_saved.i, align 8, !range !365
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool8.not.i = icmp eq i8 %17, 0
  br i1 %tobool8.not.i, label %do.end7.i.set_change_info.exit_crit_edge, label %land.rhs.i

do.end7.i.set_change_info.exit_crit_edge:         ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %set_change_info.exit

land.rhs.i:                                       ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #24
  %fh_no_atomic_attr.i = getelementptr inbounds %struct.svc_fh, ptr %cstate, i32 0, i32 7
  %18 = ptrtoint ptr %fh_no_atomic_attr.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %fh_no_atomic_attr.i, align 1, !range !365
  %20 = xor i8 %19, 1
  %lnot10.i = zext i8 %20 to i32
  br label %set_change_info.exit

set_change_info.exit:                             ; preds = %land.rhs.i, %do.end7.i.set_change_info.exit_crit_edge
  %21 = phi i32 [ 0, %do.end7.i.set_change_info.exit_crit_edge ], [ %lnot10.i, %land.rhs.i ]
  %22 = ptrtoint ptr %rm_cinfo to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %rm_cinfo, align 8
  %fh_pre_change.i = getelementptr inbounds %struct.svc_fh, ptr %cstate, i32 0, i32 14
  %23 = ptrtoint ptr %fh_pre_change.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %fh_pre_change.i, align 8
  %before_change.i = getelementptr inbounds %struct.nfsd4_remove, ptr %u, i32 0, i32 2, i32 1
  %25 = ptrtoint ptr %before_change.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %before_change.i, align 8
  %fh_post_change.i = getelementptr inbounds %struct.svc_fh, ptr %cstate, i32 0, i32 16
  %26 = ptrtoint ptr %fh_post_change.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %fh_post_change.i, align 8
  %after_change.i = getelementptr inbounds %struct.nfsd4_remove, ptr %u, i32 0, i32 2, i32 2
  %28 = ptrtoint ptr %after_change.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %after_change.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %set_change_info.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 10013, %entry.cleanup_crit_edge ], [ 0, %set_change_info.exit ], [ %call2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nfsd4_remove_rsize(ptr nocapture noundef readnone %rqstp, ptr nocapture noundef readnone %op) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  ret i32 28
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd4_rename(ptr noundef %rqstp, ptr noundef %cstate, ptr nocapture noundef %u) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_xprt = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 2
  %0 = ptrtoint ptr %rq_xprt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_xprt, align 8
  %tobool.not = icmp eq ptr %1, null
  %xpt_net = getelementptr inbounds %struct.svc_xprt, ptr %1, i32 0, i32 19
  %rq_bc_net = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 48
  %cond.in = select i1 %tobool.not, ptr %rq_bc_net, ptr %xpt_net
  %2 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %cond = load ptr, ptr %cond.in, align 4
  %call = tail call zeroext i1 @opens_in_grace(ptr noundef %cond) #22
  br i1 %call, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end:                                           ; preds = %entry
  %save_fh = getelementptr inbounds %struct.nfsd4_compound_state, ptr %cstate, i32 0, i32 1
  %rn_sname = getelementptr inbounds %struct.nfsd4_rename, ptr %u, i32 0, i32 1
  %3 = ptrtoint ptr %rn_sname to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rn_sname, align 4
  %5 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %u, align 8
  %rn_tname = getelementptr inbounds %struct.nfsd4_rename, ptr %u, i32 0, i32 3
  %7 = ptrtoint ptr %rn_tname to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rn_tname, align 4
  %rn_tnamelen = getelementptr inbounds %struct.nfsd4_rename, ptr %u, i32 0, i32 2
  %9 = ptrtoint ptr %rn_tnamelen to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rn_tnamelen, align 8
  %call2 = tail call i32 @nfsd_rename(ptr noundef %rqstp, ptr noundef %save_fh, ptr noundef %4, i32 noundef %6, ptr noundef %cstate, ptr noundef %8, i32 noundef %10) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %rn_sinfo = getelementptr inbounds %struct.nfsd4_rename, ptr %u, i32 0, i32 4
  %fh_pre_saved.i = getelementptr inbounds %struct.svc_fh, ptr %cstate, i32 0, i32 10
  %11 = ptrtoint ptr %fh_pre_saved.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %fh_pre_saved.i, align 1, !range !365
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %do.body4.i, label %do.end7.i, !prof !364

do.body4.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #24
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfsd/xdr4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 751, 0\0A.popsection", ""() #22, !srcloc !367
  unreachable

do.end7.i:                                        ; preds = %if.end5
  %fh_post_saved.i = getelementptr inbounds %struct.svc_fh, ptr %cstate, i32 0, i32 9
  %13 = ptrtoint ptr %fh_post_saved.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %fh_post_saved.i, align 8, !range !365
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool8.not.i = icmp eq i8 %14, 0
  br i1 %tobool8.not.i, label %do.end7.i.set_change_info.exit_crit_edge, label %land.rhs.i

do.end7.i.set_change_info.exit_crit_edge:         ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %set_change_info.exit

land.rhs.i:                                       ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #24
  %fh_no_atomic_attr.i = getelementptr inbounds %struct.svc_fh, ptr %cstate, i32 0, i32 7
  %15 = ptrtoint ptr %fh_no_atomic_attr.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %fh_no_atomic_attr.i, align 1, !range !365
  %17 = xor i8 %16, 1
  %lnot10.i = zext i8 %17 to i32
  br label %set_change_info.exit

set_change_info.exit:                             ; preds = %land.rhs.i, %do.end7.i.set_change_info.exit_crit_edge
  %18 = phi i32 [ 0, %do.end7.i.set_change_info.exit_crit_edge ], [ %lnot10.i, %land.rhs.i ]
  %19 = ptrtoint ptr %rn_sinfo to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %rn_sinfo, align 8
  %fh_pre_change.i = getelementptr inbounds %struct.svc_fh, ptr %cstate, i32 0, i32 14
  %20 = ptrtoint ptr %fh_pre_change.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %fh_pre_change.i, align 8
  %before_change.i = getelementptr inbounds %struct.nfsd4_rename, ptr %u, i32 0, i32 4, i32 1
  %22 = ptrtoint ptr %before_change.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %before_change.i, align 8
  %fh_post_change.i = getelementptr inbounds %struct.svc_fh, ptr %cstate, i32 0, i32 16
  %23 = ptrtoint ptr %fh_post_change.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %fh_post_change.i, align 8
  %after_change.i = getelementptr inbounds %struct.nfsd4_rename, ptr %u, i32 0, i32 4, i32 2
  %25 = ptrtoint ptr %after_change.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %after_change.i, align 8
  %rn_tinfo = getelementptr inbounds %struct.nfsd4_rename, ptr %u, i32 0, i32 5
  %fh_pre_saved.i21 = getelementptr inbounds %struct.nfsd4_compound_state, ptr %cstate, i32 0, i32 1, i32 10
  %26 = ptrtoint ptr %fh_pre_saved.i21 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %fh_pre_saved.i21, align 1, !range !365
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i22 = icmp eq i8 %27, 0
  br i1 %tobool.not.i22, label %do.body4.i23, label %do.end7.i26, !prof !364

do.body4.i23:                                     ; preds = %set_change_info.exit
  call void @__sanitizer_cov_trace_pc() #24
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfsd/xdr4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 751, 0\0A.popsection", ""() #22, !srcloc !367
  unreachable

do.end7.i26:                                      ; preds = %set_change_info.exit
  %fh_post_saved.i24 = getelementptr inbounds %struct.nfsd4_compound_state, ptr %cstate, i32 0, i32 1, i32 9
  %28 = ptrtoint ptr %fh_post_saved.i24 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %fh_post_saved.i24, align 8, !range !365
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool8.not.i25 = icmp eq i8 %29, 0
  br i1 %tobool8.not.i25, label %do.end7.i26.set_change_info.exit34_crit_edge, label %land.rhs.i29

do.end7.i26.set_change_info.exit34_crit_edge:     ; preds = %do.end7.i26
  call void @__sanitizer_cov_trace_pc() #24
  br label %set_change_info.exit34

land.rhs.i29:                                     ; preds = %do.end7.i26
  call void @__sanitizer_cov_trace_pc() #24
  %fh_no_atomic_attr.i27 = getelementptr inbounds %struct.nfsd4_compound_state, ptr %cstate, i32 0, i32 1, i32 7
  %30 = ptrtoint ptr %fh_no_atomic_attr.i27 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %fh_no_atomic_attr.i27, align 1, !range !365
  %32 = xor i8 %31, 1
  %lnot10.i28 = zext i8 %32 to i32
  br label %set_change_info.exit34

set_change_info.exit34:                           ; preds = %land.rhs.i29, %do.end7.i26.set_change_info.exit34_crit_edge
  %33 = phi i32 [ 0, %do.end7.i26.set_change_info.exit34_crit_edge ], [ %lnot10.i28, %land.rhs.i29 ]
  %34 = ptrtoint ptr %rn_tinfo to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %rn_tinfo, align 8
  %fh_pre_change.i30 = getelementptr inbounds %struct.nfsd4_compound_state, ptr %cstate, i32 0, i32 1, i32 14
  %35 = ptrtoint ptr %fh_pre_change.i30 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %fh_pre_change.i30, align 8
  %before_change.i31 = getelementptr inbounds %struct.nfsd4_rename, ptr %u, i32 0, i32 5, i32 1
  %37 = ptrtoint ptr %before_change.i31 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %36, ptr %before_change.i31, align 8
  %fh_post_change.i32 = getelementptr inbounds %struct.nfsd4_compound_state, ptr %cstate, i32 0, i32 1, i32 16
  %38 = ptrtoint ptr %fh_post_change.i32 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %fh_post_change.i32, align 8
  %after_change.i33 = getelementptr inbounds %struct.nfsd4_rename, ptr %u, i32 0, i32 5, i32 2
  %40 = ptrtoint ptr %after_change.i33 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %after_change.i33, align 8
  br label %cleanup

cleanup:                                          ; preds = %set_change_info.exit34, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %set_change_info.exit34 ], [ 10013, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nfsd4_rename_rsize(ptr nocapture noundef readnone %rqstp, ptr nocapture noundef readnone %op) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  ret i32 48
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd4_renew(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd4_restorefh(ptr nocapture noundef readnone %rqstp, ptr noundef %cstate, ptr nocapture noundef readnone %u) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %fh_dentry = getelementptr inbounds %struct.nfsd4_compound_state, ptr %cstate, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %fh_dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fh_dentry, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %return

if.end:                                           ; preds = %entry
  %save_fh = getelementptr inbounds %struct.nfsd4_compound_state, ptr %cstate, i32 0, i32 1
  tail call void @fh_put(ptr noundef %cstate) #22
  %2 = ptrtoint ptr %fh_dentry to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fh_dentry, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.dget.exit.i_crit_edge, label %if.then.i.i

if.end.dget.exit.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %dget.exit.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  %d_lockref.i.i = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %d_lockref.i.i) #22
  br label %dget.exit.i

dget.exit.i:                                      ; preds = %if.then.i.i, %if.end.dget.exit.i_crit_edge
  %fh_export.i = getelementptr inbounds %struct.nfsd4_compound_state, ptr %cstate, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %fh_export.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fh_export.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %dget.exit.i.fh_dup2.exit_crit_edge, label %if.then.i

dget.exit.i.fh_dup2.exit_crit_edge:               ; preds = %dget.exit.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %fh_dup2.exit

if.then.i:                                        ; preds = %dget.exit.i
  %ref.i.i.i = getelementptr inbounds %struct.cache_head, ptr %5, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i.i, i32 noundef 4) #22
  tail call void @llvm.prefetch.p0(ptr %ref.i.i.i, i32 1, i32 3, i32 1) #22
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.i.i, ptr %ref.i.i.i, i32 1, ptr elementtype(i32) %ref.i.i.i) #22, !srcloc !363
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i.i, !prof !364

if.then.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end15.sink.split.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i:                            ; preds = %if.then.i
  %add.i.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  %7 = or i32 %add.i.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %7, -1
  br i1 %.not.i.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.i.fh_dup2.exit_crit_edge, label %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, !prof !361

if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end15.sink.split.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i.fh_dup2.exit_crit_edge:     ; preds = %if.else.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %fh_dup2.exit

if.end15.sink.split.i.i.i.i.i.i.i:                ; preds = %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref.i.i.i, i32 noundef %.sink.i.i.i.i.i.i.i) #22
  br label %fh_dup2.exit

fh_dup2.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.i.fh_dup2.exit_crit_edge, %dget.exit.i.fh_dup2.exit_crit_edge
  %8 = call ptr @memcpy(ptr %cstate, ptr %save_fh, i32 360)
  %sid_flags = getelementptr inbounds %struct.nfsd4_compound_state, ptr %cstate, i32 0, i32 13
  %9 = ptrtoint ptr %sid_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sid_flags, align 4
  %and = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %fh_dup2.exit.return_crit_edge, label %if.then3

fh_dup2.exit.return_crit_edge:                    ; preds = %fh_dup2.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %return

if.then3:                                         ; preds = %fh_dup2.exit
  call void @__sanitizer_cov_trace_pc() #24
  %current_stateid = getelementptr inbounds %struct.nfsd4_compound_state, ptr %cstate, i32 0, i32 11
  %save_stateid = getelementptr inbounds %struct.nfsd4_compound_state, ptr %cstate, i32 0, i32 12
  %11 = call ptr @memcpy(ptr %current_stateid, ptr %save_stateid, i32 16)
  %or = or i32 %10, 1
  %12 = ptrtoint ptr %sid_flags to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or, ptr %sid_flags, align 4
  br label %return

return:                                           ; preds = %if.then3, %fh_dup2.exit.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 10030, %entry.return_crit_edge ], [ 0, %if.then3 ], [ 0, %fh_dup2.exit.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd4_savefh(ptr nocapture noundef readnone %rqstp, ptr noundef %cstate, ptr nocapture noundef readnone %u) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %save_fh = getelementptr inbounds %struct.nfsd4_compound_state, ptr %cstate, i32 0, i32 1
  tail call void @fh_put(ptr noundef %save_fh) #22
  %fh_dentry.i = getelementptr inbounds %struct.svc_fh, ptr %cstate, i32 0, i32 2
  %0 = ptrtoint ptr %fh_dentry.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fh_dentry.i, align 8
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.dget.exit.i_crit_edge, label %if.then.i.i

entry.dget.exit.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %dget.exit.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  %d_lockref.i.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %d_lockref.i.i) #22
  br label %dget.exit.i

dget.exit.i:                                      ; preds = %if.then.i.i, %entry.dget.exit.i_crit_edge
  %fh_export.i = getelementptr inbounds %struct.svc_fh, ptr %cstate, i32 0, i32 3
  %2 = ptrtoint ptr %fh_export.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fh_export.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %dget.exit.i.fh_dup2.exit_crit_edge, label %if.then.i

dget.exit.i.fh_dup2.exit_crit_edge:               ; preds = %dget.exit.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %fh_dup2.exit

if.then.i:                                        ; preds = %dget.exit.i
  %ref.i.i.i = getelementptr inbounds %struct.cache_head, ptr %3, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i.i, i32 noundef 4) #22
  tail call void @llvm.prefetch.p0(ptr %ref.i.i.i, i32 1, i32 3, i32 1) #22
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.i.i, ptr %ref.i.i.i, i32 1, ptr elementtype(i32) %ref.i.i.i) #22, !srcloc !363
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i.i, !prof !364

if.then.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end15.sink.split.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i:                            ; preds = %if.then.i
  %add.i.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  %5 = or i32 %add.i.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %5, -1
  br i1 %.not.i.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.i.fh_dup2.exit_crit_edge, label %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, !prof !361

if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end15.sink.split.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i.fh_dup2.exit_crit_edge:     ; preds = %if.else.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %fh_dup2.exit

if.end15.sink.split.i.i.i.i.i.i.i:                ; preds = %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref.i.i.i, i32 noundef %.sink.i.i.i.i.i.i.i) #22
  br label %fh_dup2.exit

fh_dup2.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.i.fh_dup2.exit_crit_edge, %dget.exit.i.fh_dup2.exit_crit_edge
  %6 = call ptr @memcpy(ptr %save_fh, ptr %cstate, i32 360)
  %sid_flags = getelementptr inbounds %struct.nfsd4_compound_state, ptr %cstate, i32 0, i32 13
  %7 = ptrtoint ptr %sid_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sid_flags, align 4
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %fh_dup2.exit.if.end_crit_edge, label %if.then

fh_dup2.exit.if.end_crit_edge:                    ; preds = %fh_dup2.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

if.then:                                          ; preds = %fh_dup2.exit
  call void @__sanitizer_cov_trace_pc() #24
  %save_stateid = getelementptr inbounds %struct.nfsd4_compound_state, ptr %cstate, i32 0, i32 12
  %current_stateid = getelementptr inbounds %struct.nfsd4_compound_state, ptr %cstate, i32 0, i32 11
  %9 = call ptr @memcpy(ptr %save_stateid, ptr %current_stateid, i32 16)
  %or = or i32 %8, 2
  %10 = ptrtoint ptr %sid_flags to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or, ptr %sid_flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %fh_dup2.exit.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd4_secinfo(ptr noundef %rqstp, ptr noundef %cstate, ptr nocapture noundef %u) #0 align 64 {
entry:
  %exp = alloca ptr, align 4
  %dentry = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %exp) #22
  %0 = ptrtoint ptr %exp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %exp, align 4, !annotation !368
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dentry) #22
  %1 = ptrtoint ptr %dentry to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %dentry, align 4, !annotation !368
  %call = tail call i32 @fh_verify(ptr noundef %rqstp, ptr noundef %cstate, i16 noundef zeroext 16384, i32 noundef 1) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end:                                           ; preds = %entry
  %si_name = getelementptr inbounds %struct.nfsd4_secinfo, ptr %u, i32 0, i32 1
  %2 = ptrtoint ptr %si_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %si_name, align 4
  %4 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %u, align 4
  %call2 = call i32 @nfsd_lookup_dentry(ptr noundef %rqstp, ptr noundef %cstate, ptr noundef %3, i32 noundef %5, ptr noundef nonnull %exp, ptr noundef nonnull %dentry) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %fh_locked.i = getelementptr inbounds %struct.svc_fh, ptr %cstate, i32 0, i32 4
  %6 = ptrtoint ptr %fh_locked.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %fh_locked.i, align 8, !range !365
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.end5.fh_unlock.exit_crit_edge, label %if.then.i

if.end5.fh_unlock.exit_crit_edge:                 ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #24
  br label %fh_unlock.exit

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #24
  call void @fh_fill_post_attrs(ptr noundef %cstate) #22
  %fh_dentry.i = getelementptr inbounds %struct.svc_fh, ptr %cstate, i32 0, i32 2
  %8 = ptrtoint ptr %fh_dentry.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fh_dentry.i, align 8
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %d_inode.i.i, align 8
  %i_rwsem.i.i = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 25
  call void @up_write(ptr noundef %i_rwsem.i.i) #22
  %12 = ptrtoint ptr %fh_locked.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %fh_locked.i, align 8
  br label %fh_unlock.exit

fh_unlock.exit:                                   ; preds = %if.then.i, %if.end5.fh_unlock.exit_crit_edge
  %13 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dentry, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %d_inode.i, align 8
  %cmp.i = icmp eq ptr %16, null
  %17 = ptrtoint ptr %exp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %exp, align 4
  br i1 %cmp.i, label %if.then8, label %if.else

if.then8:                                         ; preds = %fh_unlock.exit
  %cd.i = getelementptr inbounds %struct.svc_export, ptr %18, i32 0, i32 13
  %19 = ptrtoint ptr %cd.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cd.i, align 8
  %ref.i.i = getelementptr inbounds %struct.cache_head, ptr %18, i32 0, i32 3
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %ref.i.i, i32 noundef 4) #22
  %21 = ptrtoint ptr %ref.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %ref.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %22)
  %cmp.i.i = icmp ult i32 %22, 3
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.then8.if.end.i.i_crit_edge

if.then8.if.end.i.i_crit_edge:                    ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then8
  %expiry_time.i.i = getelementptr inbounds %struct.cache_head, ptr %18, i32 0, i32 1
  %23 = ptrtoint ptr %expiry_time.i.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %expiry_time.i.i, align 8
  %nextcheck.i.i = getelementptr inbounds %struct.cache_detail, ptr %20, i32 0, i32 18
  %25 = ptrtoint ptr %nextcheck.i.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %nextcheck.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %24, i64 %26)
  %cmp1.i.i = icmp slt i64 %24, %26
  br i1 %cmp1.i.i, label %if.then.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #24
  %27 = ptrtoint ptr %nextcheck.i.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %24, ptr %nextcheck.i.i, align 8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then8.if.end.i.i_crit_edge
  %cache_put.i.i = getelementptr inbounds %struct.cache_detail, ptr %20, i32 0, i32 5
  %28 = ptrtoint ptr %cache_put.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cache_put.i.i, align 4
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i, i32 noundef 4) #22
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !359
  call void @llvm.prefetch.p0(ptr %ref.i.i, i32 1, i32 3, i32 1) #22
  %30 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.i, ptr %ref.i.i, i32 1, ptr elementtype(i32) %ref.i.i) #22, !srcloc !360
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.if.end9_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !361

if.end5.i.i.i.i.i.i.if.end9_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end9

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  call void @refcount_warn_saturate(ptr noundef %ref.i.i, i32 noundef 3) #22
  br label %if.end9

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !362
  call void %29(ptr noundef %ref.i.i) #22
  br label %if.end9

if.else:                                          ; preds = %fh_unlock.exit
  call void @__sanitizer_cov_trace_pc() #24
  %si_exp = getelementptr inbounds %struct.nfsd4_secinfo, ptr %u, i32 0, i32 2
  %31 = ptrtoint ptr %si_exp to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %18, ptr %si_exp, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.if.end9_crit_edge
  %err.0 = phi i32 [ 0, %if.else ], [ 2, %if.end5.i.i.i.i.i.i.if.end9_crit_edge ], [ 2, %if.then10.i.i.i.i.i.i ], [ 2, %if.then.i.i.i ]
  %32 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dentry, align 4
  call void @dput(ptr noundef %33) #22
  %minorversion = getelementptr inbounds %struct.nfsd4_compound_state, ptr %cstate, i32 0, i32 9
  %34 = ptrtoint ptr %minorversion to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %minorversion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool10.not = icmp eq i32 %35, 0
  br i1 %tobool10.not, label %if.end9.cleanup_crit_edge, label %if.then11

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #24
  call void @fh_put(ptr noundef %cstate) #22
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %err.0, %if.then11 ], [ %err.0, %if.end9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dentry) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %exp) #22
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfsd4_secinfo_release(ptr nocapture noundef readonly %u) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %si_exp = getelementptr inbounds %struct.nfsd4_secinfo, ptr %u, i32 0, i32 2
  %0 = ptrtoint ptr %si_exp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %si_exp, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

if.then:                                          ; preds = %entry
  %cd.i = getelementptr inbounds %struct.svc_export, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %cd.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cd.i, align 8
  %ref.i.i = getelementptr inbounds %struct.cache_head, ptr %1, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref.i.i, i32 noundef 4) #22
  %4 = ptrtoint ptr %ref.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %ref.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp.i.i = icmp ult i32 %5, 3
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.then.if.end.i.i_crit_edge

if.then.if.end.i.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then
  %expiry_time.i.i = getelementptr inbounds %struct.cache_head, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %expiry_time.i.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %expiry_time.i.i, align 8
  %nextcheck.i.i = getelementptr inbounds %struct.cache_detail, ptr %3, i32 0, i32 18
  %8 = ptrtoint ptr %nextcheck.i.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %nextcheck.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %9)
  %cmp1.i.i = icmp slt i64 %7, %9
  br i1 %cmp1.i.i, label %if.then.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #24
  %10 = ptrtoint ptr %nextcheck.i.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %7, ptr %nextcheck.i.i, align 8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.if.end.i.i_crit_edge
  %cache_put.i.i = getelementptr inbounds %struct.cache_detail, ptr %3, i32 0, i32 5
  %11 = ptrtoint ptr %cache_put.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cache_put.i.i, align 4
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i, i32 noundef 4) #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !359
  tail call void @llvm.prefetch.p0(ptr %ref.i.i, i32 1, i32 3, i32 1) #22
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.i, ptr %ref.i.i, i32 1, ptr elementtype(i32) %ref.i.i) #22, !srcloc !360
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !361

if.end5.i.i.i.i.i.i.if.end_crit_edge:             ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @refcount_warn_saturate(ptr noundef %ref.i.i, i32 noundef 3) #22
  br label %if.end

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !362
  tail call void %12(ptr noundef %ref.i.i) #22
  br label %if.end

if.end:                                           ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nfsd4_secinfo_rsize(ptr nocapture noundef readnone %rqstp, ptr nocapture noundef readnone %op) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  ret i32 392
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd4_setattr(ptr noundef %rqstp, ptr noundef %cstate, ptr noundef %u) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %sa_iattr = getelementptr inbounds %struct.nfsd4_setattr, ptr %u, i32 0, i32 2
  %0 = ptrtoint ptr %sa_iattr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sa_iattr, align 8
  %and = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %if.then

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end11

if.then:                                          ; preds = %entry
  %call = tail call i32 @nfs4_preprocess_stateid_op(ptr noundef %rqstp, ptr noundef %cstate, ptr noundef %cstate, ptr noundef %u, i32 noundef 32, ptr noundef null, ptr noundef null) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then.if.end11_crit_edge, label %do.body

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end11

do.body:                                          ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %2 = load i32, ptr @nfsd_debug, align 4
  %and3 = and i32 %2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #24
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89) #26
  br label %cleanup

if.end11:                                         ; preds = %if.then.if.end11_crit_edge, %entry.if.end11_crit_edge
  %fh_want_write.i = getelementptr inbounds %struct.svc_fh, ptr %cstate, i32 0, i32 5
  %3 = ptrtoint ptr %fh_want_write.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %fh_want_write.i, align 1, !range !365
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end11.if.end17_crit_edge

if.end11.if.end17_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end17

if.end.i:                                         ; preds = %if.end11
  %fh_export.i = getelementptr inbounds %struct.svc_fh, ptr %cstate, i32 0, i32 3
  %5 = ptrtoint ptr %fh_export.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fh_export.i, align 4
  %ex_path.i = getelementptr inbounds %struct.svc_export, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %ex_path.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ex_path.i, align 8
  %call.i = tail call i32 @mnt_want_write(ptr noundef %8) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %if.then15

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #24
  %9 = ptrtoint ptr %fh_want_write.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %fh_want_write.i, align 1
  br label %if.end17

if.then15:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #24
  %call16 = tail call i32 @nfserrno(i32 noundef %call.i) #22
  br label %cleanup

if.end17:                                         ; preds = %if.then2.i, %if.end11.if.end17_crit_edge
  %sa_bmval = getelementptr inbounds %struct.nfsd4_setattr, ptr %u, i32 0, i32 1
  %call18 = tail call fastcc i32 @check_attr_support(ptr noundef %cstate, ptr noundef %sa_bmval, ptr noundef nonnull @nfsd_attrmask)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end17.out_crit_edge

if.end17.out_crit_edge:                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #24
  br label %out

if.end21:                                         ; preds = %if.end17
  %sa_acl = getelementptr inbounds %struct.nfsd4_setattr, ptr %u, i32 0, i32 3
  %10 = ptrtoint ptr %sa_acl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sa_acl, align 8
  %cmp.not = icmp eq ptr %11, null
  br i1 %cmp.not, label %if.end21.if.end29_crit_edge, label %if.end26

if.end21.if.end29_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end29

if.end26:                                         ; preds = %if.end21
  %call25 = tail call i32 @nfsd4_set_nfs4_acl(ptr noundef %rqstp, ptr noundef %cstate, ptr noundef nonnull %11) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool27.not = icmp eq i32 %call25, 0
  br i1 %tobool27.not, label %if.end26.if.end29_crit_edge, label %if.end26.out_crit_edge

if.end26.out_crit_edge:                           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #24
  br label %out

if.end26.if.end29_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end29

if.end29:                                         ; preds = %if.end26.if.end29_crit_edge, %if.end21.if.end29_crit_edge
  %sa_label = getelementptr inbounds %struct.nfsd4_setattr, ptr %u, i32 0, i32 4
  %12 = ptrtoint ptr %sa_label to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sa_label, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool30.not = icmp eq i32 %13, 0
  br i1 %tobool30.not, label %if.end29.if.end38_crit_edge, label %if.end35

if.end29.if.end38_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end38

if.end35:                                         ; preds = %if.end29
  %call34 = tail call i32 @nfsd4_set_nfs4_label(ptr noundef %rqstp, ptr noundef %cstate, ptr noundef %sa_label) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool36.not = icmp eq i32 %call34, 0
  br i1 %tobool36.not, label %if.end35.if.end38_crit_edge, label %if.end35.out_crit_edge

if.end35.out_crit_edge:                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #24
  br label %out

if.end35.if.end38_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end38

if.end38:                                         ; preds = %if.end35.if.end38_crit_edge, %if.end29.if.end38_crit_edge
  %call41 = tail call i32 @nfsd_setattr(ptr noundef %rqstp, ptr noundef %cstate, ptr noundef %sa_iattr, i32 noundef 0, i64 noundef 0) #22
  br label %out

out:                                              ; preds = %if.end38, %if.end35.out_crit_edge, %if.end26.out_crit_edge, %if.end17.out_crit_edge
  %status.2 = phi i32 [ %call18, %if.end17.out_crit_edge ], [ %call25, %if.end26.out_crit_edge ], [ %call34, %if.end35.out_crit_edge ], [ %call41, %if.end38 ]
  %14 = ptrtoint ptr %fh_want_write.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %fh_want_write.i, align 1, !range !365
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i70 = icmp eq i8 %15, 0
  br i1 %tobool.not.i70, label %out.cleanup_crit_edge, label %if.then.i

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #24
  %16 = ptrtoint ptr %fh_want_write.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %fh_want_write.i, align 1
  %fh_export.i71 = getelementptr inbounds %struct.svc_fh, ptr %cstate, i32 0, i32 3
  %17 = ptrtoint ptr %fh_export.i71 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fh_export.i71, align 4
  %ex_path.i72 = getelementptr inbounds %struct.svc_export, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %ex_path.i72 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ex_path.i72, align 8
  tail call void @mnt_drop_write(ptr noundef %20) #22
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %out.cleanup_crit_edge, %if.then15, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %if.then15 ], [ %call, %do.end ], [ %call, %do.body.cleanup_crit_edge ], [ %status.2, %out.cleanup_crit_edge ], [ %status.2, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nfsd4_setattr_rsize(ptr nocapture noundef readnone %rqstp, ptr nocapture noundef readnone %op) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  ret i32 24
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfsd4_get_setattrstateid(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd4_setclientid(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nfsd4_setclientid_rsize(ptr nocapture noundef readnone %rqstp, ptr nocapture noundef readnone %op) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  ret i32 24
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd4_setclientid_confirm(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd4_verify(ptr noundef %rqstp, ptr noundef %cstate, ptr noundef %u) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @_nfsd4_verify(ptr noundef %rqstp, ptr noundef %cstate, ptr noundef %u)
  call void @__sanitizer_cov_trace_const_cmp4(i32 10009, i32 %call)
  %cmp = icmp eq i32 %call, 10009
  %spec.select = select i1 %cmp, i32 0, i32 %call
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd4_write(ptr noundef %rqstp, ptr noundef %cstate, ptr noundef %u) #0 align 64 {
entry:
  %nf = alloca ptr, align 4
  %cnt = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nf) #22
  %0 = ptrtoint ptr %nf to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %nf, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cnt) #22
  %wr_offset = getelementptr inbounds %struct.nfsd4_write, ptr %u, i32 0, i32 1
  %1 = ptrtoint ptr %wr_offset to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %wr_offset, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %2)
  %cmp = icmp slt i64 %2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %wr_buflen = getelementptr inbounds %struct.nfsd4_write, ptr %u, i32 0, i32 3
  %3 = ptrtoint ptr %wr_buflen to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %wr_buflen, align 4
  %conv = zext i32 %4 to i64
  %add = add nuw i64 %2, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add)
  %cmp2 = icmp slt i64 %add, 0
  br i1 %cmp2, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %5 = ptrtoint ptr %cnt to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %cnt, align 4
  tail call fastcc void @trace_nfsd_write_start(ptr noundef %rqstp, ptr noundef %cstate, i64 noundef %2, i32 noundef %4)
  %call = call i32 @nfs4_preprocess_stateid_op(ptr noundef %rqstp, ptr noundef %cstate, ptr noundef %cstate, ptr noundef %u, i32 noundef 32, ptr noundef nonnull %nf, ptr noundef null) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end15, label %do.body

do.body:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %6 = load i32, ptr @nfsd_debug, align 4
  %and = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #24
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91) #26
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %wr_stable_how = getelementptr inbounds %struct.nfsd4_write, ptr %u, i32 0, i32 2
  %7 = ptrtoint ptr %wr_stable_how to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %wr_stable_how, align 8
  %wr_how_written = getelementptr inbounds %struct.nfsd4_write, ptr %u, i32 0, i32 6
  %9 = ptrtoint ptr %wr_how_written to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %wr_how_written, align 8
  %wr_payload = getelementptr inbounds %struct.nfsd4_write, ptr %u, i32 0, i32 4
  %call16 = call i32 @svc_fill_write_vector(ptr noundef %rqstp, ptr noundef %wr_payload) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 259, i32 %call16)
  %cmp17 = icmp ugt i32 %call16, 259
  br i1 %cmp17, label %land.rhs, label %if.end15.if.end53_crit_edge

if.end15.if.end53_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end53

land.rhs:                                         ; preds = %if.end15
  %.b100 = load i1, ptr @nfsd4_write.__already_done, align 1
  br i1 %.b100, label %land.rhs.if.end53_crit_edge, label %if.then27, !prof !361

land.rhs.if.end53_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end53

if.then27:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @nfsd4_write.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1042, i32 noundef 9, ptr noundef null) #22
  br label %if.end53

if.end53:                                         ; preds = %if.then27, %land.rhs.if.end53_crit_edge, %if.end15.if.end53_crit_edge
  %10 = ptrtoint ptr %nf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %nf, align 4
  %12 = ptrtoint ptr %wr_offset to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %wr_offset, align 8
  %rq_vec = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 25
  %14 = ptrtoint ptr %wr_how_written to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %wr_how_written, align 8
  %wr_verifier = getelementptr inbounds %struct.nfsd4_write, ptr %u, i32 0, i32 7
  %call65 = call i32 @nfsd_vfs_write(ptr noundef %rqstp, ptr noundef %cstate, ptr noundef %11, i64 noundef %13, ptr noundef %rq_vec, i32 noundef %call16, ptr noundef nonnull %cnt, i32 noundef %15, ptr noundef %wr_verifier) #22
  %16 = ptrtoint ptr %nf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %nf, align 4
  call void @nfsd_file_put(ptr noundef %17) #22
  %18 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cnt, align 4
  %wr_bytes_written = getelementptr inbounds %struct.nfsd4_write, ptr %u, i32 0, i32 5
  %20 = ptrtoint ptr %wr_bytes_written to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %wr_bytes_written, align 4
  %21 = ptrtoint ptr %wr_offset to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %wr_offset, align 8
  call fastcc void @trace_nfsd_write_done(ptr noundef %rqstp, ptr noundef %cstate, i64 noundef %22, i32 noundef %19)
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %do.end, %do.body.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call65, %if.end53 ], [ 27, %lor.lhs.false.cleanup_crit_edge ], [ 27, %entry.cleanup_crit_edge ], [ %call, %do.end ], [ %call, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cnt) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nf) #22
  ret i32 %retval.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nfsd4_write_rsize(ptr nocapture noundef readnone %rqstp, ptr nocapture noundef readnone %op) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  ret i32 24
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfsd4_get_writestateid(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd4_release_lockowner(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd4_backchannel_ctl(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd4_bind_conn_to_session(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nfsd4_bind_conn_to_session_rsize(ptr nocapture noundef readnone %rqstp, ptr nocapture noundef readnone %op) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  ret i32 32
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd4_exchange_id(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nfsd4_exchange_id_rsize(ptr nocapture noundef readnone %rqstp, ptr nocapture noundef readnone %op) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  ret i32 2112
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd4_create_session(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nfsd4_create_session_rsize(ptr nocapture noundef readnone %rqstp, ptr nocapture noundef readnone %op) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  ret i32 96
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd4_destroy_session(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd4_free_stateid(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfsd4_get_freestateid(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd4_getdeviceinfo(ptr noundef %rqstp, ptr nocapture noundef readonly %cstate, ptr noundef %u) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %0 = load i32, ptr @nfsd_debug, align 4
  %and = and i32 %0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  %gd_layout_type = getelementptr inbounds %struct.nfsd4_getdeviceinfo, ptr %u, i32 0, i32 1
  %1 = ptrtoint ptr %gd_layout_type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %gd_layout_type, align 8
  %3 = ptrtoint ptr %u to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %u, align 8
  %generation = getelementptr inbounds %struct.nfsd4_deviceid, ptr %u, i32 0, i32 1
  %5 = ptrtoint ptr %generation to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %generation, align 8
  %gd_maxcount = getelementptr inbounds %struct.nfsd4_getdeviceinfo, ptr %u, i32 0, i32 2
  %7 = ptrtoint ptr %gd_maxcount to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %gd_maxcount, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.94, i32 noundef %2, i64 noundef %4, i32 noundef %6, i32 noundef %8) #26
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %9 = ptrtoint ptr %u to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %u, align 8
  %conv = trunc i64 %10 to i32
  %call7 = tail call ptr @nfsd4_find_devid_map(i32 noundef %conv) #22
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %do.body10, label %if.end22

do.body10:                                        ; preds = %do.end4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %11 = load i32, ptr @nfsd_debug, align 4
  %and11 = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %do.body10.cleanup_crit_edge, label %do.end16

do.body10.cleanup_crit_edge:                      ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

do.end16:                                         ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #24
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.94) #26
  br label %cleanup

if.end22:                                         ; preds = %do.end4
  %fsid_type = getelementptr inbounds %struct.nfsd4_deviceid_map, ptr %call7, i32 0, i32 2
  %12 = ptrtoint ptr %fsid_type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fsid_type, align 8
  %fsid = getelementptr inbounds %struct.nfsd4_deviceid_map, ptr %call7, i32 0, i32 3
  %call23 = tail call ptr @rqst_exp_find(ptr noundef %rqstp, i32 noundef %13, ptr noundef %fsid) #22
  %cmp.i = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.body26, label %if.end38

do.body26:                                        ; preds = %if.end22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %14 = load i32, ptr @nfsd_debug, align 4
  %and27 = and i32 %14, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %do.body26.cleanup_crit_edge, label %do.end32

do.body26.cleanup_crit_edge:                      ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

do.end32:                                         ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #24
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.94) #26
  br label %cleanup

if.end38:                                         ; preds = %if.end22
  %gd_layout_type39 = getelementptr inbounds %struct.nfsd4_getdeviceinfo, ptr %u, i32 0, i32 1
  %15 = ptrtoint ptr %gd_layout_type39 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %gd_layout_type39, align 8
  %ex_layout_types.i = getelementptr inbounds %struct.svc_export, ptr %call23, i32 0, i32 11
  %17 = ptrtoint ptr %ex_layout_types.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ex_layout_types.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i, label %do.body.i, label %if.end5.i

do.body.i:                                        ; preds = %if.end38
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %19 = load i32, ptr @nfsd_debug, align 4
  %and.i = and i32 %19, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %do.body.i.out_crit_edge, label %do.end.i

do.body.i.out_crit_edge:                          ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %out

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #24
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.102) #26
  br label %out

if.end5.i:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %16)
  %cmp.i70 = icmp ugt i32 %16, 5
  br i1 %cmp.i70, label %if.end5.i.do.body10.i_crit_edge, label %lor.lhs.false.i

if.end5.i.do.body10.i_crit_edge:                  ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body10.i

lor.lhs.false.i:                                  ; preds = %if.end5.i
  %shl.i = shl nuw nsw i32 1, %16
  %and7.i = and i32 %18, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %lor.lhs.false.i.do.body10.i_crit_edge, label %nfsd4_layout_verify.exit

lor.lhs.false.i.do.body10.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body10.i

do.body10.i:                                      ; preds = %lor.lhs.false.i.do.body10.i_crit_edge, %if.end5.i.do.body10.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %20 = load i32, ptr @nfsd_debug, align 4
  %and11.i = and i32 %20, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %do.body10.i.out_crit_edge, label %do.end15.i

do.body10.i.out_crit_edge:                        ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %out

do.end15.i:                                       ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #24
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.102, i32 noundef %16) #26
  br label %out

nfsd4_layout_verify.exit:                         ; preds = %lor.lhs.false.i
  %arrayidx.i = getelementptr [0 x ptr], ptr @nfsd4_layout_ops, i32 0, i32 %16
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i, align 4
  %tobool41.not = icmp eq ptr %22, null
  br i1 %tobool41.not, label %nfsd4_layout_verify.exit.out_crit_edge, label %if.end43

nfsd4_layout_verify.exit.out_crit_edge:           ; preds = %nfsd4_layout_verify.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %out

if.end43:                                         ; preds = %nfsd4_layout_verify.exit
  %gd_maxcount44 = getelementptr inbounds %struct.nfsd4_getdeviceinfo, ptr %u, i32 0, i32 2
  %23 = ptrtoint ptr %gd_maxcount44 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %gd_maxcount44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.not = icmp eq i32 %24, 0
  br i1 %cmp.not, label %if.end43.if.end48_crit_edge, label %if.then46

if.end43.if.end48_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end48

if.then46:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #24
  %proc_getdeviceinfo = getelementptr inbounds %struct.nfsd4_layout_ops, ptr %22, i32 0, i32 2
  %25 = ptrtoint ptr %proc_getdeviceinfo to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %proc_getdeviceinfo, align 4
  %ex_path = getelementptr inbounds %struct.svc_export, ptr %call23, i32 0, i32 3
  %27 = ptrtoint ptr %ex_path to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ex_path, align 8
  %mnt_sb = getelementptr inbounds %struct.vfsmount, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %mnt_sb to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mnt_sb, align 4
  %clp = getelementptr inbounds %struct.nfsd4_compound_state, ptr %cstate, i32 0, i32 3
  %31 = ptrtoint ptr %clp to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %clp, align 4
  %call47 = tail call i32 %26(ptr noundef %30, ptr noundef %rqstp, ptr noundef %32, ptr noundef %u) #22
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %if.end43.if.end48_crit_edge
  %nfserr.0 = phi i32 [ %call47, %if.then46 ], [ 0, %if.end43.if.end48_crit_edge ]
  %33 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %22, align 4
  %gd_notify_types = getelementptr inbounds %struct.nfsd4_getdeviceinfo, ptr %u, i32 0, i32 3
  %35 = ptrtoint ptr %gd_notify_types to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %gd_notify_types, align 8
  %and49 = and i32 %36, %34
  store i32 %and49, ptr %gd_notify_types, align 8
  br label %out

out:                                              ; preds = %if.end48, %nfsd4_layout_verify.exit.out_crit_edge, %do.end15.i, %do.body10.i.out_crit_edge, %do.end.i, %do.body.i.out_crit_edge
  %nfserr.1 = phi i32 [ %nfserr.0, %if.end48 ], [ 10059, %nfsd4_layout_verify.exit.out_crit_edge ], [ 10059, %do.body.i.out_crit_edge ], [ 10059, %do.end.i ], [ 10059, %do.body10.i.out_crit_edge ], [ 10059, %do.end15.i ]
  %cd.i = getelementptr inbounds %struct.svc_export, ptr %call23, i32 0, i32 13
  %37 = ptrtoint ptr %cd.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cd.i, align 8
  %ref.i.i = getelementptr inbounds %struct.cache_head, ptr %call23, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref.i.i, i32 noundef 4) #22
  %39 = ptrtoint ptr %ref.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %ref.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %40)
  %cmp.i.i = icmp ult i32 %40, 3
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %out.if.end.i.i_crit_edge

out.if.end.i.i_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %out
  %expiry_time.i.i = getelementptr inbounds %struct.cache_head, ptr %call23, i32 0, i32 1
  %41 = ptrtoint ptr %expiry_time.i.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %expiry_time.i.i, align 8
  %nextcheck.i.i = getelementptr inbounds %struct.cache_detail, ptr %38, i32 0, i32 18
  %43 = ptrtoint ptr %nextcheck.i.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %nextcheck.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %42, i64 %44)
  %cmp1.i.i = icmp slt i64 %42, %44
  br i1 %cmp1.i.i, label %if.then.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #24
  %45 = ptrtoint ptr %nextcheck.i.i to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %42, ptr %nextcheck.i.i, align 8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %out.if.end.i.i_crit_edge
  %cache_put.i.i = getelementptr inbounds %struct.cache_detail, ptr %38, i32 0, i32 5
  %46 = ptrtoint ptr %cache_put.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cache_put.i.i, align 4
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i, i32 noundef 4) #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !359
  tail call void @llvm.prefetch.p0(ptr %ref.i.i, i32 1, i32 3, i32 1) #22
  %48 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.i, ptr %ref.i.i, i32 1, ptr elementtype(i32) %ref.i.i) #22, !srcloc !360
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %48, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !361

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @refcount_warn_saturate(ptr noundef %ref.i.i, i32 noundef 3) #22
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !362
  tail call void %47(ptr noundef %ref.i.i) #22
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %do.end32, %do.body26.cleanup_crit_edge, %do.end16, %do.body10.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %do.end16 ], [ 2, %do.body10.cleanup_crit_edge ], [ 2, %do.end32 ], [ 2, %do.body26.cleanup_crit_edge ], [ %nfserr.1, %if.end5.i.i.i.i.i.i.cleanup_crit_edge ], [ %nfserr.1, %if.then10.i.i.i.i.i.i ], [ %nfserr.1, %if.then.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfsd4_getdeviceinfo_release(ptr nocapture noundef readonly %u) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %gd_device = getelementptr inbounds %struct.nfsd4_getdeviceinfo, ptr %u, i32 0, i32 4
  %0 = ptrtoint ptr %gd_device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gd_device, align 4
  tail call void @kfree(ptr noundef %1) #22
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd4_getdeviceinfo_rsize(ptr noundef %rqstp, ptr nocapture noundef readonly %op) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  %call = tail call i32 @svc_max_payload(ptr noundef %rqstp) #22
  %gd_maxcount = getelementptr inbounds %struct.nfsd4_op, ptr %op, i32 0, i32 4, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %gd_maxcount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %gd_maxcount, align 4
  %2 = tail call i32 @llvm.umin.i32(i32 %1, i32 %call)
  %3 = add i32 %2, 23
  %mul = and i32 %3, -4
  ret i32 %mul
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd4_layoutcommit(ptr noundef %rqstp, ptr noundef %cstate, ptr noundef %u) #0 align 64 {
entry:
  %ls = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %lc_last_wr = getelementptr inbounds %struct.nfsd4_layoutcommit, ptr %u, i32 0, i32 4
  %0 = ptrtoint ptr %lc_last_wr to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %lc_last_wr, align 8
  %add = add i64 %1, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ls) #22
  %2 = ptrtoint ptr %ls to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %ls, align 4, !annotation !368
  %call = tail call i32 @fh_verify(ptr noundef %rqstp, ptr noundef %cstate, i16 noundef zeroext 0, i32 noundef 2) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %out

if.end:                                           ; preds = %entry
  %fh_export = getelementptr inbounds %struct.svc_fh, ptr %cstate, i32 0, i32 3
  %3 = ptrtoint ptr %fh_export to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fh_export, align 4
  %lc_layout_type = getelementptr inbounds %struct.nfsd4_layoutcommit, ptr %u, i32 0, i32 6
  %5 = ptrtoint ptr %lc_layout_type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %lc_layout_type, align 8
  %ex_layout_types.i = getelementptr inbounds %struct.svc_export, ptr %4, i32 0, i32 11
  %7 = ptrtoint ptr %ex_layout_types.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ex_layout_types.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %do.body.i, label %if.end5.i

do.body.i:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %9 = load i32, ptr @nfsd_debug, align 4
  %and.i = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %do.body.i.out_crit_edge, label %do.end.i

do.body.i.out_crit_edge:                          ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %out

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #24
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.102) #26
  br label %out

if.end5.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %6)
  %cmp.i = icmp ugt i32 %6, 5
  br i1 %cmp.i, label %if.end5.i.do.body10.i_crit_edge, label %lor.lhs.false.i

if.end5.i.do.body10.i_crit_edge:                  ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body10.i

lor.lhs.false.i:                                  ; preds = %if.end5.i
  %shl.i = shl nuw nsw i32 1, %6
  %and7.i = and i32 %8, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %lor.lhs.false.i.do.body10.i_crit_edge, label %nfsd4_layout_verify.exit

lor.lhs.false.i.do.body10.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body10.i

do.body10.i:                                      ; preds = %lor.lhs.false.i.do.body10.i_crit_edge, %if.end5.i.do.body10.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %10 = load i32, ptr @nfsd_debug, align 4
  %and11.i = and i32 %10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %do.body10.i.out_crit_edge, label %do.end15.i

do.body10.i.out_crit_edge:                        ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %out

do.end15.i:                                       ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #24
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.102, i32 noundef %6) #26
  br label %out

nfsd4_layout_verify.exit:                         ; preds = %lor.lhs.false.i
  %arrayidx.i = getelementptr [0 x ptr], ptr @nfsd4_layout_ops, i32 0, i32 %6
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  %tobool3.not = icmp eq ptr %12, null
  br i1 %tobool3.not, label %nfsd4_layout_verify.exit.out_crit_edge, label %if.end5

nfsd4_layout_verify.exit.out_crit_edge:           ; preds = %nfsd4_layout_verify.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %out

if.end5:                                          ; preds = %nfsd4_layout_verify.exit
  %fh_dentry = getelementptr inbounds %struct.svc_fh, ptr %cstate, i32 0, i32 2
  %13 = ptrtoint ptr %fh_dentry to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fh_dentry, align 8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %d_inode.i, align 8
  %offset = getelementptr inbounds %struct.nfsd4_layoutcommit, ptr %u, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %offset, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %18)
  %cmp.not = icmp ugt i64 %add, %18
  br i1 %cmp.not, label %if.end15, label %do.body

do.body:                                          ; preds = %if.end5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %19 = load i32, ptr @nfsd_debug, align 4
  %and = and i32 %19, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %do.body.out_crit_edge, label %do.end

do.body.out_crit_edge:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %out

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #24
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106) #26
  br label %out

if.end15:                                         ; preds = %if.end5
  %length = getelementptr inbounds %struct.nfsd4_layoutcommit, ptr %u, i32 0, i32 1, i32 2
  %20 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %length, align 8
  %add17 = add i64 %21, %18
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %add17)
  %cmp18 = icmp ugt i64 %add, %add17
  br i1 %cmp18, label %do.body20, label %if.end32

do.body20:                                        ; preds = %if.end15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %22 = load i32, ptr @nfsd_debug, align 4
  %and21 = and i32 %22, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %do.body20.out_crit_edge, label %do.end26

do.body20.out_crit_edge:                          ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #24
  br label %out

do.end26:                                         ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #24
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109) #26
  br label %out

if.end32:                                         ; preds = %if.end15
  %lc_newoffset = getelementptr inbounds %struct.nfsd4_layoutcommit, ptr %u, i32 0, i32 3
  %23 = ptrtoint ptr %lc_newoffset to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %lc_newoffset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool33.not = icmp eq i32 %24, 0
  br i1 %tobool33.not, label %land.lhs.true, label %if.end32.if.end49_crit_edge

if.end32.if.end49_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end49

land.lhs.true:                                    ; preds = %if.end32
  %call34 = tail call fastcc i64 @i_size_read(ptr noundef %16)
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %call34)
  %cmp35 = icmp sgt i64 %add, %call34
  br i1 %cmp35, label %do.body37, label %land.lhs.true.if.end49_crit_edge

land.lhs.true.if.end49_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end49

do.body37:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %25 = load i32, ptr @nfsd_debug, align 4
  %and38 = and i32 %25, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %do.body37.out_crit_edge, label %do.end43

do.body37.out_crit_edge:                          ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #24
  br label %out

do.end43:                                         ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #24
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112) #26
  br label %out

if.end49:                                         ; preds = %land.lhs.true.if.end49_crit_edge, %if.end32.if.end49_crit_edge
  %26 = ptrtoint ptr %lc_layout_type to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %lc_layout_type, align 8
  %call51 = call i32 @nfsd4_preprocess_layout_stateid(ptr noundef %rqstp, ptr noundef %cstate, ptr noundef %u, i1 noundef zeroext false, i32 noundef %27, ptr noundef nonnull %ls) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end58, label %if.then53

if.then53:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #24
  call fastcc void @trace_nfsd_layout_commit_lookup_fail(ptr noundef %u)
  call void @__sanitizer_cov_trace_const_cmp4(i32 10025, i32 %call51)
  %cmp55 = icmp eq i32 %call51, 10025
  %spec.store.select = select i1 %cmp55, i32 10050, i32 %call51
  br label %out

if.end58:                                         ; preds = %if.end49
  %28 = ptrtoint ptr %ls to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ls, align 4
  %ls_mutex = getelementptr inbounds %struct.nfs4_layout_stateid, ptr %29, i32 0, i32 10
  call void @mutex_unlock(ptr noundef %ls_mutex) #22
  %call59 = call fastcc i64 @i_size_read(ptr noundef %16)
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %call59)
  %cmp60 = icmp sgt i64 %add, %call59
  br i1 %cmp60, label %if.then61, label %if.end58.if.end63_crit_edge

if.end58.if.end63_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end63

if.then61:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #24
  %lc_newsize = getelementptr inbounds %struct.nfsd4_layoutcommit, ptr %u, i32 0, i32 10
  %30 = ptrtoint ptr %lc_newsize to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %add, ptr %lc_newsize, align 8
  br label %if.end63

if.end63:                                         ; preds = %if.then61, %if.end58.if.end63_crit_edge
  %.sink = phi i32 [ 1, %if.then61 ], [ 0, %if.end58.if.end63_crit_edge ]
  %31 = getelementptr inbounds %struct.nfsd4_layoutcommit, ptr %u, i32 0, i32 9
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %.sink, ptr %31, align 4
  %proc_layoutcommit = getelementptr inbounds %struct.nfsd4_layout_ops, ptr %12, i32 0, i32 6
  %33 = ptrtoint ptr %proc_layoutcommit to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %proc_layoutcommit, align 4
  %call64 = call i32 %34(ptr noundef %16, ptr noundef %u) #22
  %35 = ptrtoint ptr %ls to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ls, align 4
  call void @nfs4_put_stid(ptr noundef %36) #22
  br label %out

out:                                              ; preds = %if.end63, %if.then53, %do.end43, %do.body37.out_crit_edge, %do.end26, %do.body20.out_crit_edge, %do.end, %do.body.out_crit_edge, %nfsd4_layout_verify.exit.out_crit_edge, %do.end15.i, %do.body10.i.out_crit_edge, %do.end.i, %do.body.i.out_crit_edge, %entry.out_crit_edge
  %nfserr.0 = phi i32 [ %call, %entry.out_crit_edge ], [ 22, %do.end ], [ 22, %do.body.out_crit_edge ], [ 22, %do.end26 ], [ 22, %do.body20.out_crit_edge ], [ %spec.store.select, %if.then53 ], [ %call64, %if.end63 ], [ 22, %do.end43 ], [ 22, %do.body37.out_crit_edge ], [ 10059, %nfsd4_layout_verify.exit.out_crit_edge ], [ 10059, %do.body.i.out_crit_edge ], [ 10059, %do.end.i ], [ 10059, %do.body10.i.out_crit_edge ], [ 10059, %do.end15.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ls) #22
  ret i32 %nfserr.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nfsd4_layoutcommit_rsize(ptr nocapture noundef readnone %rqstp, ptr nocapture noundef readnone %op) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  ret i32 20
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd4_layoutget(ptr noundef %rqstp, ptr noundef %cstate, ptr noundef %u) #0 align 64 {
entry:
  %ls = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ls) #22
  %0 = ptrtoint ptr %ls to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %ls, align 4, !annotation !368
  %lg_seg = getelementptr inbounds %struct.nfsd4_layoutget, ptr %u, i32 0, i32 5
  %1 = ptrtoint ptr %lg_seg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %lg_seg, align 8
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.150)
  switch i32 %2, label %do.body [
    i32 1, label %entry.sw.epilog_crit_edge
    i32 2, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %4 = load i32, ptr @nfsd_debug, align 4
  %and = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.out_crit_edge, label %do.end

do.body.out_crit_edge:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %out

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #24
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.115, i32 noundef %2) #26
  br label %out

sw.epilog:                                        ; preds = %sw.bb2, %entry.sw.epilog_crit_edge
  %accmode.0 = phi i32 [ 2054, %sw.bb2 ], [ 2052, %entry.sw.epilog_crit_edge ]
  %call9 = tail call i32 @fh_verify(ptr noundef %rqstp, ptr noundef %cstate, i16 noundef zeroext 0, i32 noundef %accmode.0) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %sw.epilog.out_crit_edge

sw.epilog.out_crit_edge:                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #24
  br label %out

if.end12:                                         ; preds = %sw.epilog
  %fh_export = getelementptr inbounds %struct.svc_fh, ptr %cstate, i32 0, i32 3
  %5 = ptrtoint ptr %fh_export to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fh_export, align 4
  %lg_layout_type = getelementptr inbounds %struct.nfsd4_layoutget, ptr %u, i32 0, i32 2
  %7 = ptrtoint ptr %lg_layout_type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %lg_layout_type, align 4
  %ex_layout_types.i = getelementptr inbounds %struct.svc_export, ptr %6, i32 0, i32 11
  %9 = ptrtoint ptr %ex_layout_types.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ex_layout_types.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %do.body.i, label %if.end5.i

do.body.i:                                        ; preds = %if.end12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %11 = load i32, ptr @nfsd_debug, align 4
  %and.i = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %do.body.i.out_crit_edge, label %do.end.i

do.body.i.out_crit_edge:                          ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %out

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #24
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.102) #26
  br label %out

if.end5.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %8)
  %cmp.i = icmp ugt i32 %8, 5
  br i1 %cmp.i, label %if.end5.i.do.body10.i_crit_edge, label %lor.lhs.false.i

if.end5.i.do.body10.i_crit_edge:                  ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body10.i

lor.lhs.false.i:                                  ; preds = %if.end5.i
  %shl.i = shl nuw nsw i32 1, %8
  %and7.i = and i32 %10, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %lor.lhs.false.i.do.body10.i_crit_edge, label %nfsd4_layout_verify.exit

lor.lhs.false.i.do.body10.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body10.i

do.body10.i:                                      ; preds = %lor.lhs.false.i.do.body10.i_crit_edge, %if.end5.i.do.body10.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %12 = load i32, ptr @nfsd_debug, align 4
  %and11.i = and i32 %12, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %do.body10.i.out_crit_edge, label %do.end15.i

do.body10.i.out_crit_edge:                        ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %out

do.end15.i:                                       ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #24
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.102, i32 noundef %8) #26
  br label %out

nfsd4_layout_verify.exit:                         ; preds = %lor.lhs.false.i
  %arrayidx.i = getelementptr [0 x ptr], ptr @nfsd4_layout_ops, i32 0, i32 %8
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i, align 4
  %tobool14.not = icmp eq ptr %14, null
  br i1 %tobool14.not, label %nfsd4_layout_verify.exit.out_crit_edge, label %if.end16

nfsd4_layout_verify.exit.out_crit_edge:           ; preds = %nfsd4_layout_verify.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %out

if.end16:                                         ; preds = %nfsd4_layout_verify.exit
  %length = getelementptr inbounds %struct.nfsd4_layoutget, ptr %u, i32 0, i32 5, i32 2
  %15 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %length, align 8
  %17 = ptrtoint ptr %u to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %u, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %16, i64 %18)
  %cmp = icmp ult i64 %16, %18
  br i1 %cmp, label %if.end16.out_crit_edge, label %lor.lhs.false

if.end16.out_crit_edge:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #24
  br label %out

lor.lhs.false:                                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %18)
  %cmp19.not = icmp eq i64 %18, -1
  br i1 %cmp19.not, label %lor.lhs.false.lor.lhs.false23_crit_edge, label %land.lhs.true

lor.lhs.false.lor.lhs.false23_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #24
  br label %lor.lhs.false23

land.lhs.true:                                    ; preds = %lor.lhs.false
  %offset = getelementptr inbounds %struct.nfsd4_layoutget, ptr %u, i32 0, i32 5, i32 1
  %19 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %offset, align 8
  %sub = xor i64 %20, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %18, i64 %sub)
  %cmp22 = icmp ugt i64 %18, %sub
  br i1 %cmp22, label %land.lhs.true.out_crit_edge, label %land.lhs.true.lor.lhs.false23_crit_edge

land.lhs.true.lor.lhs.false23_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  br label %lor.lhs.false23

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  br label %out

lor.lhs.false23:                                  ; preds = %land.lhs.true.lor.lhs.false23_crit_edge, %lor.lhs.false.lor.lhs.false23_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %16)
  %cmp26.not = icmp eq i64 %16, -1
  br i1 %cmp26.not, label %lor.lhs.false23.if.end40_crit_edge, label %land.lhs.true27

lor.lhs.false23.if.end40_crit_edge:               ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end40

land.lhs.true27:                                  ; preds = %lor.lhs.false23
  %offset31 = getelementptr inbounds %struct.nfsd4_layoutget, ptr %u, i32 0, i32 5, i32 1
  %21 = ptrtoint ptr %offset31 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %offset31, align 8
  %sub32 = xor i64 %22, -1
  %23 = add i64 %16, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %23, i64 %sub32)
  %.not = icmp ult i64 %23, %sub32
  br i1 %.not, label %land.lhs.true27.if.end40_crit_edge, label %land.lhs.true27.out_crit_edge

land.lhs.true27.out_crit_edge:                    ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #24
  br label %out

land.lhs.true27.if.end40_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end40

if.end40:                                         ; preds = %land.lhs.true27.if.end40_crit_edge, %lor.lhs.false23.if.end40_crit_edge
  %lg_sid = getelementptr inbounds %struct.nfsd4_layoutget, ptr %u, i32 0, i32 4
  %24 = ptrtoint ptr %lg_layout_type to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %lg_layout_type, align 4
  %call42 = call i32 @nfsd4_preprocess_layout_stateid(ptr noundef %rqstp, ptr noundef %cstate, ptr noundef %lg_sid, i1 noundef zeroext true, i32 noundef %25, ptr noundef nonnull %ls) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end46, label %if.then44

if.then44:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #24
  call fastcc void @trace_nfsd_layout_get_lookup_fail(ptr noundef %lg_sid)
  br label %out

if.end46:                                         ; preds = %if.end40
  %26 = ptrtoint ptr %ls to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ls, align 4
  %sc_file = getelementptr inbounds %struct.nfs4_stid, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %sc_file to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sc_file, align 4
  %fi_lo_recalls = getelementptr inbounds %struct.nfs4_file, ptr %29, i32 0, i32 16
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %fi_lo_recalls, i32 noundef 4) #22
  %30 = ptrtoint ptr %fi_lo_recalls to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %fi_lo_recalls, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool48.not = icmp eq i32 %31, 0
  br i1 %tobool48.not, label %if.end50, label %if.end46.out_put_stid_crit_edge

if.end46.out_put_stid_crit_edge:                  ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #24
  br label %out_put_stid

if.end50:                                         ; preds = %if.end46
  %proc_layoutget = getelementptr inbounds %struct.nfsd4_layout_ops, ptr %14, i32 0, i32 4
  %32 = ptrtoint ptr %proc_layoutget to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %proc_layoutget, align 4
  %fh_dentry = getelementptr inbounds %struct.svc_fh, ptr %cstate, i32 0, i32 2
  %34 = ptrtoint ptr %fh_dentry to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fh_dentry, align 8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %d_inode.i, align 8
  %call52 = call i32 %33(ptr noundef %37, ptr noundef %cstate, ptr noundef %u) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end55, label %if.end50.out_put_stid_crit_edge

if.end50.out_put_stid_crit_edge:                  ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #24
  br label %out_put_stid

if.end55:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #24
  %38 = ptrtoint ptr %ls to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ls, align 4
  %call56 = call i32 @nfsd4_insert_layout(ptr noundef %u, ptr noundef %39) #22
  br label %out_put_stid

out_put_stid:                                     ; preds = %if.end55, %if.end50.out_put_stid_crit_edge, %if.end46.out_put_stid_crit_edge
  %nfserr.0 = phi i32 [ 10061, %if.end46.out_put_stid_crit_edge ], [ %call52, %if.end50.out_put_stid_crit_edge ], [ %call56, %if.end55 ]
  %40 = ptrtoint ptr %ls to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ls, align 4
  %ls_mutex = getelementptr inbounds %struct.nfs4_layout_stateid, ptr %41, i32 0, i32 10
  call void @mutex_unlock(ptr noundef %ls_mutex) #22
  %42 = ptrtoint ptr %ls to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ls, align 4
  call void @nfs4_put_stid(ptr noundef %43) #22
  br label %out

out:                                              ; preds = %out_put_stid, %if.then44, %land.lhs.true27.out_crit_edge, %land.lhs.true.out_crit_edge, %if.end16.out_crit_edge, %nfsd4_layout_verify.exit.out_crit_edge, %do.end15.i, %do.body10.i.out_crit_edge, %do.end.i, %do.body.i.out_crit_edge, %sw.epilog.out_crit_edge, %do.end, %do.body.out_crit_edge
  %nfserr.1 = phi i32 [ %call9, %sw.epilog.out_crit_edge ], [ 22, %if.end16.out_crit_edge ], [ 22, %land.lhs.true.out_crit_edge ], [ 22, %land.lhs.true27.out_crit_edge ], [ %call42, %if.then44 ], [ %nfserr.0, %out_put_stid ], [ 10059, %nfsd4_layout_verify.exit.out_crit_edge ], [ 10049, %do.end ], [ 10049, %do.body.out_crit_edge ], [ 10059, %do.body.i.out_crit_edge ], [ 10059, %do.end.i ], [ 10059, %do.body10.i.out_crit_edge ], [ 10059, %do.end15.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ls) #22
  ret i32 %nfserr.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfsd4_layoutget_release(ptr nocapture noundef readonly %u) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %lg_content = getelementptr inbounds %struct.nfsd4_layoutget, ptr %u, i32 0, i32 6
  %0 = ptrtoint ptr %lg_content to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lg_content, align 32
  tail call void @kfree(ptr noundef %1) #22
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nfsd4_layoutget_rsize(ptr nocapture noundef readnone %rqstp, ptr nocapture noundef readnone %op) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  ret i32 544
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd4_layoutreturn(ptr noundef %rqstp, ptr noundef %cstate, ptr noundef %u) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fh_verify(ptr noundef %rqstp, ptr noundef %cstate, i16 noundef zeroext 0, i32 noundef 0) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %out

if.end:                                           ; preds = %entry
  %fh_export = getelementptr inbounds %struct.svc_fh, ptr %cstate, i32 0, i32 3
  %0 = ptrtoint ptr %fh_export to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fh_export, align 4
  %lr_layout_type = getelementptr inbounds %struct.nfsd4_layoutreturn, ptr %u, i32 0, i32 1
  %2 = ptrtoint ptr %lr_layout_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lr_layout_type, align 4
  %ex_layout_types.i = getelementptr inbounds %struct.svc_export, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %ex_layout_types.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ex_layout_types.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %do.body.i, label %if.end5.i

do.body.i:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %6 = load i32, ptr @nfsd_debug, align 4
  %and.i = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %do.body.i.out_crit_edge, label %do.end.i

do.body.i.out_crit_edge:                          ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %out

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #24
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.102) #26
  br label %out

if.end5.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %3)
  %cmp.i = icmp ugt i32 %3, 5
  br i1 %cmp.i, label %if.end5.i.do.body10.i_crit_edge, label %lor.lhs.false.i

if.end5.i.do.body10.i_crit_edge:                  ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body10.i

lor.lhs.false.i:                                  ; preds = %if.end5.i
  %shl.i = shl nuw nsw i32 1, %3
  %and7.i = and i32 %5, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %lor.lhs.false.i.do.body10.i_crit_edge, label %nfsd4_layout_verify.exit

lor.lhs.false.i.do.body10.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body10.i

do.body10.i:                                      ; preds = %lor.lhs.false.i.do.body10.i_crit_edge, %if.end5.i.do.body10.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %7 = load i32, ptr @nfsd_debug, align 4
  %and11.i = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %do.body10.i.out_crit_edge, label %do.end15.i

do.body10.i.out_crit_edge:                        ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %out

do.end15.i:                                       ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #24
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.102, i32 noundef %3) #26
  br label %out

nfsd4_layout_verify.exit:                         ; preds = %lor.lhs.false.i
  %arrayidx.i = getelementptr [0 x ptr], ptr @nfsd4_layout_ops, i32 0, i32 %3
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %tobool3.not = icmp eq ptr %9, null
  br i1 %tobool3.not, label %nfsd4_layout_verify.exit.out_crit_edge, label %if.end5

nfsd4_layout_verify.exit.out_crit_edge:           ; preds = %nfsd4_layout_verify.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %out

if.end5:                                          ; preds = %nfsd4_layout_verify.exit
  %lr_seg = getelementptr inbounds %struct.nfsd4_layoutreturn, ptr %u, i32 0, i32 2
  %10 = ptrtoint ptr %lr_seg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lr_seg, align 8
  %.off = add i32 %11, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %sw.epilog, label %do.body

do.body:                                          ; preds = %if.end5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %12 = load i32, ptr @nfsd_debug, align 4
  %and = and i32 %12, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %do.body.out_crit_edge, label %do.end

do.body.out_crit_edge:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %out

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #24
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.116, i32 noundef %11) #26
  br label %out

sw.epilog:                                        ; preds = %if.end5
  %13 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %u, align 8
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.151)
  switch i32 %14, label %do.body20 [
    i32 1, label %sw.bb15
    i32 2, label %sw.epilog.sw.bb17_crit_edge
    i32 3, label %sw.epilog.sw.bb17_crit_edge48
  ]

sw.epilog.sw.bb17_crit_edge48:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb17

sw.epilog.sw.bb17_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb17

sw.bb15:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #24
  %call16 = tail call i32 @nfsd4_return_file_layouts(ptr noundef %rqstp, ptr noundef %cstate, ptr noundef %u) #22
  br label %out

sw.bb17:                                          ; preds = %sw.epilog.sw.bb17_crit_edge, %sw.epilog.sw.bb17_crit_edge48
  %call18 = tail call i32 @nfsd4_return_client_layouts(ptr noundef %rqstp, ptr noundef %cstate, ptr noundef %u) #22
  br label %out

do.body20:                                        ; preds = %sw.epilog
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %16 = load i32, ptr @nfsd_debug, align 4
  %and21 = and i32 %16, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %do.body20.out_crit_edge, label %do.end26

do.body20.out_crit_edge:                          ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #24
  br label %out

do.end26:                                         ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #24
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.116, i32 noundef %14) #26
  br label %out

out:                                              ; preds = %do.end26, %do.body20.out_crit_edge, %sw.bb17, %sw.bb15, %do.end, %do.body.out_crit_edge, %nfsd4_layout_verify.exit.out_crit_edge, %do.end15.i, %do.body10.i.out_crit_edge, %do.end.i, %do.body.i.out_crit_edge, %entry.out_crit_edge
  %nfserr.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call18, %sw.bb17 ], [ %call16, %sw.bb15 ], [ 10059, %nfsd4_layout_verify.exit.out_crit_edge ], [ 22, %do.end ], [ 22, %do.body.out_crit_edge ], [ 22, %do.end26 ], [ 22, %do.body20.out_crit_edge ], [ 10059, %do.body.i.out_crit_edge ], [ 10059, %do.end.i ], [ 10059, %do.body10.i.out_crit_edge ], [ 10059, %do.end15.i ]
  ret i32 %nfserr.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nfsd4_layoutreturn_rsize(ptr nocapture noundef readnone %rqstp, ptr nocapture noundef readnone %op) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  ret i32 28
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd4_secinfo_no_name(ptr noundef %rqstp, ptr noundef %cstate, ptr nocapture noundef %u) #0 align 64 {
entry:
  %tmp_fh.i = alloca %struct.svc_fh, align 8
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %u, align 32
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.152)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 1, label %sw.bb
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 360, ptr nonnull %tmp_fh.i) #22
  %3 = call ptr @memset(ptr %tmp_fh.i, i32 0, i32 360)
  %fh_maxsize.i.i = getelementptr inbounds %struct.svc_fh, ptr %tmp_fh.i, i32 0, i32 1
  %4 = ptrtoint ptr %fh_maxsize.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 128, ptr %fh_maxsize.i.i, align 4
  %call1.i = call i32 @exp_pseudoroot(ptr noundef %rqstp, ptr noundef nonnull %tmp_fh.i) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.nfsd4_do_lookupp.exit.thread_crit_edge

sw.bb.nfsd4_do_lookupp.exit.thread_crit_edge:     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #24
  br label %nfsd4_do_lookupp.exit.thread

if.end.i:                                         ; preds = %sw.bb
  %fh_dentry.i = getelementptr inbounds %struct.svc_fh, ptr %tmp_fh.i, i32 0, i32 2
  %5 = ptrtoint ptr %fh_dentry.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fh_dentry.i, align 8
  %fh_dentry2.i = getelementptr inbounds %struct.svc_fh, ptr %cstate, i32 0, i32 2
  %7 = ptrtoint ptr %fh_dentry2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fh_dentry2.i, align 8
  %cmp.i = icmp eq ptr %6, %8
  call void @fh_put(ptr noundef nonnull %tmp_fh.i) #22
  br i1 %cmp.i, label %if.end.i.nfsd4_do_lookupp.exit.thread_crit_edge, label %nfsd4_do_lookupp.exit

if.end.i.nfsd4_do_lookupp.exit.thread_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %nfsd4_do_lookupp.exit.thread

nfsd4_do_lookupp.exit.thread:                     ; preds = %if.end.i.nfsd4_do_lookupp.exit.thread_crit_edge, %sw.bb.nfsd4_do_lookupp.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ 2, %if.end.i.nfsd4_do_lookupp.exit.thread_crit_edge ], [ %call1.i, %sw.bb.nfsd4_do_lookupp.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 360, ptr nonnull %tmp_fh.i) #22
  br label %cleanup

nfsd4_do_lookupp.exit:                            ; preds = %if.end.i
  %call5.i = call i32 @nfsd_lookup(ptr noundef %rqstp, ptr noundef %cstate, ptr noundef nonnull @.str.67, i32 noundef 2, ptr noundef %cstate) #22
  call void @llvm.lifetime.end.p0(i64 360, ptr nonnull %tmp_fh.i) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not = icmp eq i32 %call5.i, 0
  br i1 %tobool.not, label %nfsd4_do_lookupp.exit.sw.epilog_crit_edge, label %nfsd4_do_lookupp.exit.cleanup_crit_edge

nfsd4_do_lookupp.exit.cleanup_crit_edge:          ; preds = %nfsd4_do_lookupp.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

nfsd4_do_lookupp.exit.sw.epilog_crit_edge:        ; preds = %nfsd4_do_lookupp.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.epilog

sw.epilog:                                        ; preds = %nfsd4_do_lookupp.exit.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %fh_export = getelementptr inbounds %struct.svc_fh, ptr %cstate, i32 0, i32 3
  %9 = ptrtoint ptr %fh_export to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fh_export, align 4
  %ref.i.i = getelementptr inbounds %struct.cache_head, ptr %10, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i, i32 noundef 4) #22
  call void @llvm.prefetch.p0(ptr %ref.i.i, i32 1, i32 3, i32 1) #22
  %11 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.i, ptr %ref.i.i, i32 1, ptr elementtype(i32) %ref.i.i) #22, !srcloc !363
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %sw.epilog.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !364

sw.epilog.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %sw.epilog
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %12 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %.not.i.i.i.i.i.i = icmp sgt i32 %12, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.exp_get.exit_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !361

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.exp_get.exit_crit_edge:       ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %exp_get.exit

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %sw.epilog.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %sw.epilog.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %ref.i.i, i32 noundef %.sink.i.i.i.i.i.i) #22
  br label %exp_get.exit

exp_get.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.exp_get.exit_crit_edge
  %sin_exp = getelementptr inbounds %struct.nfsd4_secinfo_no_name, ptr %u, i32 0, i32 1
  %13 = ptrtoint ptr %sin_exp to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %sin_exp, align 4
  call void @fh_put(ptr noundef %cstate) #22
  br label %cleanup

cleanup:                                          ; preds = %exp_get.exit, %nfsd4_do_lookupp.exit.cleanup_crit_edge, %nfsd4_do_lookupp.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %exp_get.exit ], [ %call5.i, %nfsd4_do_lookupp.exit.cleanup_crit_edge ], [ 22, %entry.cleanup_crit_edge ], [ %retval.0.i.ph, %nfsd4_do_lookupp.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfsd4_secinfo_no_name_release(ptr nocapture noundef readonly %u) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %sin_exp = getelementptr inbounds %struct.nfsd4_secinfo_no_name, ptr %u, i32 0, i32 1
  %0 = ptrtoint ptr %sin_exp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sin_exp, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

if.then:                                          ; preds = %entry
  %cd.i = getelementptr inbounds %struct.svc_export, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %cd.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cd.i, align 8
  %ref.i.i = getelementptr inbounds %struct.cache_head, ptr %1, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref.i.i, i32 noundef 4) #22
  %4 = ptrtoint ptr %ref.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %ref.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp.i.i = icmp ult i32 %5, 3
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.then.if.end.i.i_crit_edge

if.then.if.end.i.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then
  %expiry_time.i.i = getelementptr inbounds %struct.cache_head, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %expiry_time.i.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %expiry_time.i.i, align 8
  %nextcheck.i.i = getelementptr inbounds %struct.cache_detail, ptr %3, i32 0, i32 18
  %8 = ptrtoint ptr %nextcheck.i.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %nextcheck.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %9)
  %cmp1.i.i = icmp slt i64 %7, %9
  br i1 %cmp1.i.i, label %if.then.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #24
  %10 = ptrtoint ptr %nextcheck.i.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %7, ptr %nextcheck.i.i, align 8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.if.end.i.i_crit_edge
  %cache_put.i.i = getelementptr inbounds %struct.cache_detail, ptr %3, i32 0, i32 5
  %11 = ptrtoint ptr %cache_put.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cache_put.i.i, align 4
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i, i32 noundef 4) #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !359
  tail call void @llvm.prefetch.p0(ptr %ref.i.i, i32 1, i32 3, i32 1) #22
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.i, ptr %ref.i.i, i32 1, ptr elementtype(i32) %ref.i.i) #22, !srcloc !360
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !361

if.end5.i.i.i.i.i.i.if.end_crit_edge:             ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @refcount_warn_saturate(ptr noundef %ref.i.i, i32 noundef 3) #22
  br label %if.end

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !362
  tail call void %12(ptr noundef %ref.i.i) #22
  br label %if.end

if.end:                                           ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd4_sequence(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nfsd4_sequence_rsize(ptr nocapture noundef readnone %rqstp, ptr nocapture noundef readnone %op) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  ret i32 44
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd4_test_stateid(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nfsd4_test_stateid_rsize(ptr nocapture noundef readnone %rqstp, ptr nocapture noundef readonly %op) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  %u = getelementptr inbounds %struct.nfsd4_op, ptr %op, i32 0, i32 4
  %0 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %u, align 32
  %add = shl i32 %1, 2
  %mul = add i32 %add, 12
  ret i32 %mul
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd4_destroy_clientid(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd4_reclaim_complete(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd4_allocate(ptr noundef %rqstp, ptr noundef %cstate, ptr noundef %u) #0 align 64 {
entry:
  %nf.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nf.i) #22
  %0 = ptrtoint ptr %nf.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %nf.i, align 4, !annotation !368
  %call.i = call i32 @nfs4_preprocess_stateid_op(ptr noundef %rqstp, ptr noundef %cstate, ptr noundef %cstate, ptr noundef %u, i32 noundef 32, ptr noundef nonnull %nf.i, ptr noundef null) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %if.end6.i, label %do.body.i

do.body.i:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %1 = load i32, ptr @nfsd_debug, align 4
  %and.i = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.nfsd4_fallocate.exit_crit_edge, label %do.end.i

do.body.i.nfsd4_fallocate.exit_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %nfsd4_fallocate.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #24
  %call3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120) #26
  br label %nfsd4_fallocate.exit

if.end6.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  %2 = ptrtoint ptr %nf.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nf.i, align 4
  %nf_file.i = getelementptr inbounds %struct.nfsd_file, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %nf_file.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nf_file.i, align 4
  %falloc_offset.i = getelementptr inbounds %struct.nfsd4_fallocate, ptr %u, i32 0, i32 1
  %6 = ptrtoint ptr %falloc_offset.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %falloc_offset.i, align 8
  %falloc_length.i = getelementptr inbounds %struct.nfsd4_fallocate, ptr %u, i32 0, i32 2
  %8 = ptrtoint ptr %falloc_length.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %falloc_length.i, align 8
  %call8.i = call i32 @nfsd4_vfs_fallocate(ptr noundef %rqstp, ptr noundef %cstate, ptr noundef %5, i64 noundef %7, i64 noundef %9, i32 noundef 0) #22
  %10 = ptrtoint ptr %nf.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %nf.i, align 4
  call void @nfsd_file_put(ptr noundef %11) #22
  br label %nfsd4_fallocate.exit

nfsd4_fallocate.exit:                             ; preds = %if.end6.i, %do.end.i, %do.body.i.nfsd4_fallocate.exit_crit_edge
  %retval.0.i = phi i32 [ %call8.i, %if.end6.i ], [ %call.i, %do.end.i ], [ %call.i, %do.body.i.nfsd4_fallocate.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nf.i) #22
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd4_copy(ptr noundef %rqstp, ptr noundef %cstate, ptr noundef %u) #0 align 64 {
entry:
  %ss_mnt.i.i = alloca ptr, align 4
  %tmp_addr.i.i = alloca %struct.__kernel_sockaddr_storage, align 4
  %work.i.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %cp_intra = getelementptr inbounds %struct.nfsd4_copy, ptr %u, i32 0, i32 6
  %0 = ptrtoint ptr %cp_intra to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cp_intra, align 4, !range !365
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i8, ptr @inter_copy_offload_enable, align 1, !range !365
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool1.not = icmp eq i8 %2, 0
  br i1 %tobool1.not, label %if.then.cleanup50_crit_edge, label %lor.lhs.false

if.then.cleanup50_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup50

lor.lhs.false:                                    ; preds = %if.then
  %cp_synchronous = getelementptr inbounds %struct.nfsd4_copy, ptr %u, i32 0, i32 7
  %3 = ptrtoint ptr %cp_synchronous to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cp_synchronous, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2.not = icmp eq i32 %4, 0
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.cleanup50_crit_edge

lor.lhs.false.cleanup50_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup50

if.end:                                           ; preds = %lor.lhs.false
  %ss_mnt = getelementptr inbounds %struct.nfsd4_copy, ptr %u, i32 0, i32 20
  %cp_dst_stateid.i = getelementptr inbounds %struct.nfsd4_copy, ptr %u, i32 0, i32 1
  %nf_dst.i = getelementptr inbounds %struct.nfsd4_copy, ptr %u, i32 0, i32 14
  %call.i = tail call i32 @nfs4_preprocess_stateid_op(ptr noundef %rqstp, ptr noundef %cstate, ptr noundef %cstate, ptr noundef %cp_dst_stateid.i, i32 noundef 32, ptr noundef %nf_dst.i, ptr noundef null) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.cleanup50_crit_edge

if.end.cleanup50_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup50

if.end.i:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ss_mnt.i.i) #22
  %5 = ptrtoint ptr %ss_mnt.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %ss_mnt.i.i, align 4, !annotation !368
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %tmp_addr.i.i) #22
  %6 = call ptr @memset(ptr %tmp_addr.i.i, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %work.i.i) #22
  %7 = ptrtoint ptr %work.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %work.i.i, align 4
  %rq_xprt.i.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 2
  %8 = ptrtoint ptr %rq_xprt.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rq_xprt.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %9, null
  %xpt_net.i.i = getelementptr inbounds %struct.svc_xprt, ptr %9, i32 0, i32 19
  %rq_bc_net.i.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 48
  %cond.in.i.i = select i1 %tobool.not.i.i, ptr %rq_bc_net.i.i, ptr %xpt_net.i.i
  %10 = ptrtoint ptr %cond.in.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %cond.i.i = load ptr, ptr %cond.in.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %11 = load i32, ptr @nfsd_net_id, align 4
  %call.i.i = tail call fastcc ptr @net_generic(ptr noundef %cond.i.i, i32 noundef %11) #22
  %u.i.i = getelementptr inbounds %struct.nfsd4_copy, ptr %u, i32 0, i32 5, i32 1
  %12 = ptrtoint ptr %rq_xprt.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rq_xprt.i.i, align 8
  %tobool3.not.i.i = icmp eq ptr %13, null
  %xpt_net6.i.i = getelementptr inbounds %struct.svc_xprt, ptr %13, i32 0, i32 19
  %cond10.in.i.i = select i1 %tobool3.not.i.i, ptr %rq_bc_net.i.i, ptr %xpt_net6.i.i
  %14 = ptrtoint ptr %cond10.in.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %cond10.i.i = load ptr, ptr %cond10.in.i.i, align 4
  %addr.i.i = getelementptr inbounds %struct.nfsd4_copy, ptr %u, i32 0, i32 5, i32 1, i32 0, i32 1, i32 1
  %addr_len.i.i = getelementptr inbounds %struct.nfsd4_copy, ptr %u, i32 0, i32 5, i32 1, i32 0, i32 1, i32 64
  %15 = ptrtoint ptr %addr_len.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %addr_len.i.i, align 4
  %call11.i.i = call i32 @rpc_uaddr2sockaddr(ptr noundef %cond10.i.i, ptr noundef %addr.i.i, i32 noundef %16, ptr noundef nonnull %tmp_addr.i.i, i32 noundef 128) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i)
  %cmp.i.i = icmp eq i32 %call11.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.nfsd4_interssc_connect.exit.thread.i_crit_edge, label %if.end.i.i

if.end.i.nfsd4_interssc_connect.exit.thread.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %nfsd4_interssc_connect.exit.thread.i

if.end.i.i:                                       ; preds = %if.end.i
  %17 = ptrtoint ptr %tmp_addr.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %tmp_addr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %18)
  %cmp12.i.i = icmp eq i16 %18, 10
  br i1 %cmp12.i.i, label %if.then14.i.i, label %if.end.i.i.if.end15.i.i_crit_edge

if.end.i.i.if.end15.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end15.i.i

if.then14.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %if.then14.i.i, %if.end.i.i.if.end15.i.i_crit_edge
  %match_netid_len.0.i.i = phi i32 [ 4, %if.then14.i.i ], [ 3, %if.end.i.i.if.end15.i.i_crit_edge ]
  %startsep.0.i.i = phi ptr [ @.str.126, %if.then14.i.i ], [ @.str.124, %if.end.i.i.if.end15.i.i_crit_edge ]
  %endsep.0.i.i = phi ptr [ @.str.127, %if.then14.i.i ], [ @.str.124, %if.end.i.i.if.end15.i.i_crit_edge ]
  %match_netid.0.i.i = phi ptr [ @.str.128, %if.then14.i.i ], [ @.str.125, %if.end.i.i.if.end15.i.i_crit_edge ]
  %netid_len.i.i = getelementptr inbounds %struct.nfsd4_copy, ptr %u, i32 0, i32 5, i32 1, i32 0, i32 1, i32 60
  %19 = ptrtoint ptr %netid_len.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %netid_len.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %match_netid_len.0.i.i)
  %cmp16.not.i.i = icmp eq i32 %20, %match_netid_len.0.i.i
  br i1 %cmp16.not.i.i, label %lor.lhs.false.i.i, label %if.end15.i.i.nfsd4_interssc_connect.exit.thread.i_crit_edge

if.end15.i.i.nfsd4_interssc_connect.exit.thread.i_crit_edge: ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %nfsd4_interssc_connect.exit.thread.i

lor.lhs.false.i.i:                                ; preds = %if.end15.i.i
  %call20.i.i = call i32 @strncmp(ptr noundef %u.i.i, ptr noundef nonnull %match_netid.0.i.i, i32 noundef %match_netid_len.0.i.i) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i.i)
  %tobool21.not.i.i = icmp eq i32 %call20.i.i, 0
  br i1 %tobool21.not.i.i, label %if.end23.i.i, label %lor.lhs.false.i.i.nfsd4_interssc_connect.exit.thread.i_crit_edge

lor.lhs.false.i.i.nfsd4_interssc_connect.exit.thread.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %nfsd4_interssc_connect.exit.thread.i

if.end23.i.i:                                     ; preds = %lor.lhs.false.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3520, i32 noundef 64) #27
  %tobool25.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool25.not.i.i, label %if.end23.i.i.nfsd4_interssc_connect.exit.thread.i_crit_edge, label %if.end27.i.i

if.end23.i.i.nfsd4_interssc_connect.exit.thread.i_crit_edge: ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %nfsd4_interssc_connect.exit.thread.i

if.end27.i.i:                                     ; preds = %if.end23.i.i
  %call28.i.i = call i32 @rpc_ntop(ptr noundef nonnull %tmp_addr.i.i, ptr noundef nonnull %call7.i.i.i.i, i32 noundef 64) #22
  %call29.i.i = call i32 @strlen(ptr noundef nonnull %call7.i.i.i.i) #28
  %add.i.i = add i32 %call29.i.i, 24
  %call9.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i, i32 noundef 3520) #29
  %tobool31.not.i.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %tobool31.not.i.i, label %nfsd4_interssc_connect.exit.thread29.i, label %if.end33.i.i

nfsd4_interssc_connect.exit.thread29.i:           ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #24
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %work.i.i) #22
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %tmp_addr.i.i) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ss_mnt.i.i) #22
  br label %cleanup50

if.end33.i.i:                                     ; preds = %if.end27.i.i
  %call34.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call9.i.i.i.i, i32 noundef %add.i.i, ptr noundef nonnull @.str.129, ptr noundef nonnull %call7.i.i.i.i) #22
  %call35.i.i = call ptr @get_fs_type(ptr noundef nonnull @.str.130) #22
  %tobool36.not.i.i = icmp eq ptr %call35.i.i, null
  br i1 %tobool36.not.i.i, label %if.end33.i.i.nfsd4_interssc_connect.exit.i_crit_edge, label %if.end38.i.i

if.end33.i.i.nfsd4_interssc_connect.exit.i_crit_edge: ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %nfsd4_interssc_connect.exit.i

if.end38.i.i:                                     ; preds = %if.end33.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %22 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i103.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3520, i32 noundef 69) #27
  %tobool41.not.i.i = icmp eq ptr %call7.i.i103.i.i, null
  br i1 %tobool41.not.i.i, label %if.end38.i.i.nfsd4_interssc_connect.exit.i_crit_edge, label %if.end43.i.i

if.end38.i.i.nfsd4_interssc_connect.exit.i_crit_edge: ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %nfsd4_interssc_connect.exit.i

if.end43.i.i:                                     ; preds = %if.end38.i.i
  %call45.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i.i103.i.i, i32 noundef 69, ptr noundef nonnull @.str.131, ptr noundef nonnull %startsep.0.i.i, ptr noundef nonnull %call7.i.i.i.i, ptr noundef nonnull %endsep.0.i.i) #22
  %call46.i.i = call fastcc i32 @nfsd4_ssc_setup_dul(ptr noundef %call.i.i, ptr noundef nonnull %call7.i.i.i.i, ptr noundef nonnull %work.i.i, ptr noundef nonnull %ss_mnt.i.i) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i.i)
  %tobool47.not.i.i = icmp eq i32 %call46.i.i, 0
  br i1 %tobool47.not.i.i, label %if.end49.i.i, label %if.end43.i.i.out_free_devname.i.i_crit_edge

if.end43.i.i.out_free_devname.i.i_crit_edge:      ; preds = %if.end43.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %out_free_devname.i.i

if.end49.i.i:                                     ; preds = %if.end43.i.i
  %23 = ptrtoint ptr %ss_mnt.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ss_mnt.i.i, align 4
  %tobool50.not.i.i = icmp eq ptr %24, null
  br i1 %tobool50.not.i.i, label %if.end52.i.i, label %if.end49.i.i.out_done.i.i_crit_edge

if.end49.i.i.out_done.i.i_crit_edge:              ; preds = %if.end49.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %out_done.i.i

if.end52.i.i:                                     ; preds = %if.end49.i.i
  %call53.i.i = call ptr @vfs_kern_mount(ptr noundef nonnull %call35.i.i, i32 noundef 4194304, ptr noundef nonnull %call7.i.i103.i.i, ptr noundef nonnull %call9.i.i.i.i) #22
  %25 = ptrtoint ptr %ss_mnt.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call53.i.i, ptr %ss_mnt.i.i, align 4
  %owner.i.i = getelementptr inbounds %struct.file_system_type, ptr %call35.i.i, i32 0, i32 6
  %26 = ptrtoint ptr %owner.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %owner.i.i, align 4
  call void @module_put(ptr noundef %27) #22
  %cmp.i.i.i = icmp ugt ptr %call53.i.i, inttoptr (i32 -4096 to ptr)
  %28 = ptrtoint ptr %work.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %work.i.i, align 4
  %tobool56.not.i.i = icmp eq ptr %29, null
  br i1 %cmp.i.i.i, label %if.then55.i.i, label %if.end59.i.i

if.then55.i.i:                                    ; preds = %if.end52.i.i
  br i1 %tobool56.not.i.i, label %if.then55.i.i.out_free_devname.i.i_crit_edge, label %if.then57.i.i

if.then55.i.i.out_free_devname.i.i_crit_edge:     ; preds = %if.then55.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %out_free_devname.i.i

if.then57.i.i:                                    ; preds = %if.then55.i.i
  call void @__sanitizer_cov_trace_pc() #24
  call fastcc void @nfsd4_ssc_cancel_dul_work(ptr noundef %call.i.i, ptr noundef nonnull %29) #22
  br label %out_free_devname.i.i

if.end59.i.i:                                     ; preds = %if.end52.i.i
  br i1 %tobool56.not.i.i, label %if.end59.i.i.out_done.i.i_crit_edge, label %if.then61.i.i

if.end59.i.i.out_done.i.i_crit_edge:              ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %out_done.i.i

if.then61.i.i:                                    ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #24
  call fastcc void @nfsd4_ssc_update_dul_work(ptr noundef %call.i.i, ptr noundef nonnull %29, ptr noundef %call53.i.i) #22
  br label %out_done.i.i

out_done.i.i:                                     ; preds = %if.then61.i.i, %if.end59.i.i.out_done.i.i_crit_edge, %if.end49.i.i.out_done.i.i_crit_edge
  %30 = ptrtoint ptr %ss_mnt.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ss_mnt.i.i, align 4
  %32 = ptrtoint ptr %ss_mnt to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %ss_mnt, align 4
  br label %out_free_devname.i.i

out_free_devname.i.i:                             ; preds = %out_done.i.i, %if.then57.i.i, %if.then55.i.i.out_free_devname.i.i_crit_edge, %if.end43.i.i.out_free_devname.i.i_crit_edge
  %status.0.i.i = phi i32 [ %call46.i.i, %if.end43.i.i.out_free_devname.i.i_crit_edge ], [ 0, %out_done.i.i ], [ 19, %if.then57.i.i ], [ 19, %if.then55.i.i.out_free_devname.i.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i103.i.i) #22
  br label %nfsd4_interssc_connect.exit.i

nfsd4_interssc_connect.exit.thread.i:             ; preds = %if.end23.i.i.nfsd4_interssc_connect.exit.thread.i_crit_edge, %lor.lhs.false.i.i.nfsd4_interssc_connect.exit.thread.i_crit_edge, %if.end15.i.i.nfsd4_interssc_connect.exit.thread.i_crit_edge, %if.end.i.nfsd4_interssc_connect.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %work.i.i) #22
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %tmp_addr.i.i) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ss_mnt.i.i) #22
  br label %cleanup50

nfsd4_interssc_connect.exit.i:                    ; preds = %out_free_devname.i.i, %if.end38.i.i.nfsd4_interssc_connect.exit.i_crit_edge, %if.end33.i.i.nfsd4_interssc_connect.exit.i_crit_edge
  %status.1.i.i = phi i32 [ %status.0.i.i, %out_free_devname.i.i ], [ 19, %if.end38.i.i.nfsd4_interssc_connect.exit.i_crit_edge ], [ 19, %if.end33.i.i.nfsd4_interssc_connect.exit.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i.i.i.i) #22
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %work.i.i) #22
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %tmp_addr.i.i) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ss_mnt.i.i) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.1.i.i)
  %tobool2.not.i = icmp eq i32 %status.1.i.i, 0
  br i1 %tobool2.not.i, label %nfsd4_setup_inter_ssc.exit, label %nfsd4_interssc_connect.exit.i.cleanup50_crit_edge

nfsd4_interssc_connect.exit.i.cleanup50_crit_edge: ; preds = %nfsd4_interssc_connect.exit.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup50

nfsd4_setup_inter_ssc.exit:                       ; preds = %nfsd4_interssc_connect.exit.i
  call void @__sanitizer_cov_trace_pc() #24
  %save_fh.i = getelementptr inbounds %struct.nfsd4_compound_state, ptr %cstate, i32 0, i32 1
  %33 = ptrtoint ptr %save_fh.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %save_fh.i, align 8
  %conv.i = trunc i32 %34 to i16
  %c_fh.i = getelementptr inbounds %struct.nfsd4_copy, ptr %u, i32 0, i32 21
  %35 = ptrtoint ptr %c_fh.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv.i, ptr %c_fh.i, align 4
  %data.i = getelementptr inbounds %struct.nfsd4_copy, ptr %u, i32 0, i32 21, i32 1
  %36 = getelementptr inbounds %struct.nfsd4_compound_state, ptr %cstate, i32 0, i32 1, i32 0, i32 1
  %conv9.i = and i32 %34, 65535
  %37 = call ptr @memcpy(ptr %data.i, ptr %36, i32 %conv9.i)
  %38 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %u, align 4
  %stateid.i = getelementptr inbounds %struct.nfsd4_copy, ptr %u, i32 0, i32 22
  %40 = ptrtoint ptr %stateid.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %stateid.i, align 8
  %other.i = getelementptr inbounds %struct.nfsd4_copy, ptr %u, i32 0, i32 22, i32 0, i32 0, i32 1
  %si_opaque.i = getelementptr inbounds %struct.stateid_t, ptr %u, i32 0, i32 1
  %41 = call ptr @memcpy(ptr %other.i, ptr %si_opaque.i, i32 12)
  br label %if.end11

if.else:                                          ; preds = %entry
  %nf_src.i = getelementptr inbounds %struct.nfsd4_copy, ptr %u, i32 0, i32 13
  %cp_dst_stateid.i90 = getelementptr inbounds %struct.nfsd4_copy, ptr %u, i32 0, i32 1
  %nf_dst.i91 = getelementptr inbounds %struct.nfsd4_copy, ptr %u, i32 0, i32 14
  %call.i92 = tail call fastcc i32 @nfsd4_verify_copy(ptr noundef %rqstp, ptr noundef %cstate, ptr noundef %u, ptr noundef %nf_src.i, ptr noundef %cp_dst_stateid.i90, ptr noundef %nf_dst.i91) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92)
  %tobool8.not = icmp eq i32 %call.i92, 0
  br i1 %tobool8.not, label %if.else.if.end11_crit_edge, label %if.else.cleanup50_crit_edge

if.else.cleanup50_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup50

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end11

if.end11:                                         ; preds = %if.else.if.end11_crit_edge, %nfsd4_setup_inter_ssc.exit
  %clp = getelementptr inbounds %struct.nfsd4_compound_state, ptr %cstate, i32 0, i32 3
  %42 = ptrtoint ptr %clp to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %clp, align 4
  %cp_clp = getelementptr inbounds %struct.nfsd4_copy, ptr %u, i32 0, i32 12
  %44 = ptrtoint ptr %cp_clp to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %43, ptr %cp_clp, align 8
  %fh = getelementptr inbounds %struct.nfsd4_copy, ptr %u, i32 0, i32 11
  %45 = call ptr @memcpy(ptr %fh, ptr %cstate, i32 132)
  %cp_synchronous12 = getelementptr inbounds %struct.nfsd4_copy, ptr %u, i32 0, i32 7
  %46 = ptrtoint ptr %cp_synchronous12 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cp_synchronous12, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool13.not = icmp eq i32 %47, 0
  br i1 %tobool13.not, label %if.then14, label %if.else38

if.then14:                                        ; preds = %if.end11
  %rq_xprt = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 2
  %48 = ptrtoint ptr %rq_xprt to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rq_xprt, align 8
  %tobool15.not = icmp eq ptr %49, null
  %xpt_net = getelementptr inbounds %struct.svc_xprt, ptr %49, i32 0, i32 19
  %rq_bc_net = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 48
  %cond.in = select i1 %tobool15.not, ptr %rq_bc_net, ptr %xpt_net
  %50 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %50)
  %cond = load ptr, ptr %cond.in, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %51 = load i32, ptr @nfsd_net_id, align 4
  %call17 = call fastcc ptr @net_generic(ptr noundef %cond, i32 noundef %51)
  %call18 = call i32 @nfserrno(i32 noundef -12) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %52 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %52, i32 noundef 3520, i32 noundef 1576) #27
  %tobool20.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool20.not, label %if.then14.if.end43_crit_edge, label %if.end22

if.then14.if.end43_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end43

if.end22:                                         ; preds = %if.then14
  %call23 = call i32 @nfs4_init_copy_state(ptr noundef %call17, ptr noundef %u) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end22.if.then42_crit_edge, label %if.end26

if.end22.if.then42_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then42

if.end26:                                         ; preds = %if.end22
  %refcount = getelementptr inbounds %struct.nfsd4_copy, ptr %call7.i.i, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #22
  %53 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile i32 1, ptr %refcount, align 8
  %cb_stateid = getelementptr inbounds %struct.nfsd4_copy, ptr %u, i32 0, i32 8, i32 3
  %cp_stateid = getelementptr inbounds %struct.nfsd4_copy, ptr %u, i32 0, i32 15
  %54 = call ptr @memcpy(ptr %cb_stateid, ptr %cp_stateid, i32 16)
  %cp_src_pos.i = getelementptr inbounds %struct.nfsd4_copy, ptr %u, i32 0, i32 2
  %55 = ptrtoint ptr %cp_src_pos.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %cp_src_pos.i, align 8
  %cp_src_pos1.i = getelementptr inbounds %struct.nfsd4_copy, ptr %call7.i.i, i32 0, i32 2
  %57 = ptrtoint ptr %cp_src_pos1.i to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %56, ptr %cp_src_pos1.i, align 8
  %cp_dst_pos.i = getelementptr inbounds %struct.nfsd4_copy, ptr %u, i32 0, i32 3
  %58 = ptrtoint ptr %cp_dst_pos.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %cp_dst_pos.i, align 8
  %cp_dst_pos2.i = getelementptr inbounds %struct.nfsd4_copy, ptr %call7.i.i, i32 0, i32 3
  %60 = ptrtoint ptr %cp_dst_pos2.i to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %59, ptr %cp_dst_pos2.i, align 8
  %cp_count.i = getelementptr inbounds %struct.nfsd4_copy, ptr %u, i32 0, i32 4
  %61 = ptrtoint ptr %cp_count.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %cp_count.i, align 8
  %cp_count3.i = getelementptr inbounds %struct.nfsd4_copy, ptr %call7.i.i, i32 0, i32 4
  %63 = ptrtoint ptr %cp_count3.i to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %62, ptr %cp_count3.i, align 8
  %64 = ptrtoint ptr %cp_synchronous12 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %cp_synchronous12, align 8
  %cp_synchronous4.i = getelementptr inbounds %struct.nfsd4_copy, ptr %call7.i.i, i32 0, i32 7
  %66 = ptrtoint ptr %cp_synchronous4.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %cp_synchronous4.i, align 8
  %cp_res.i = getelementptr inbounds %struct.nfsd4_copy, ptr %call7.i.i, i32 0, i32 8
  %cp_res5.i = getelementptr inbounds %struct.nfsd4_copy, ptr %u, i32 0, i32 8
  %67 = call ptr @memcpy(ptr %cp_res.i, ptr %cp_res5.i, i32 40)
  %fh.i = getelementptr inbounds %struct.nfsd4_copy, ptr %call7.i.i, i32 0, i32 11
  %68 = call ptr @memcpy(ptr %fh.i, ptr %fh, i32 132)
  %69 = ptrtoint ptr %cp_clp to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %cp_clp, align 8
  %cp_clp7.i = getelementptr inbounds %struct.nfsd4_copy, ptr %call7.i.i, i32 0, i32 12
  %71 = ptrtoint ptr %cp_clp7.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %70, ptr %cp_clp7.i, align 8
  %nf_dst.i94 = getelementptr inbounds %struct.nfsd4_copy, ptr %u, i32 0, i32 14
  %72 = ptrtoint ptr %nf_dst.i94 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %nf_dst.i94, align 8
  %call.i95 = call ptr @nfsd_file_get(ptr noundef %73) #22
  %nf_dst8.i = getelementptr inbounds %struct.nfsd4_copy, ptr %call7.i.i, i32 0, i32 14
  %74 = ptrtoint ptr %nf_dst8.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call.i95, ptr %nf_dst8.i, align 8
  %75 = ptrtoint ptr %cp_intra to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %cp_intra, align 4, !range !365
  %cp_intra9.i = getelementptr inbounds %struct.nfsd4_copy, ptr %call7.i.i, i32 0, i32 6
  %77 = ptrtoint ptr %cp_intra9.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %cp_intra9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool11.not.i = icmp eq i8 %76, 0
  br i1 %tobool11.not.i, label %if.end26.dup_copy_fields.exit_crit_edge, label %if.then.i

if.end26.dup_copy_fields.exit_crit_edge:          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #24
  br label %dup_copy_fields.exit

if.then.i:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #24
  %nf_src.i96 = getelementptr inbounds %struct.nfsd4_copy, ptr %u, i32 0, i32 13
  %78 = ptrtoint ptr %nf_src.i96 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %nf_src.i96, align 4
  %call12.i = call ptr @nfsd_file_get(ptr noundef %79) #22
  %nf_src13.i = getelementptr inbounds %struct.nfsd4_copy, ptr %call7.i.i, i32 0, i32 13
  %80 = ptrtoint ptr %nf_src13.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call12.i, ptr %nf_src13.i, align 4
  br label %dup_copy_fields.exit

dup_copy_fields.exit:                             ; preds = %if.then.i, %if.end26.dup_copy_fields.exit_crit_edge
  %cp_stateid.i = getelementptr inbounds %struct.nfsd4_copy, ptr %call7.i.i, i32 0, i32 15
  %81 = call ptr @memcpy(ptr %cp_stateid.i, ptr %cp_stateid, i32 24)
  %cp_src.i = getelementptr inbounds %struct.nfsd4_copy, ptr %call7.i.i, i32 0, i32 5
  %cp_src15.i = getelementptr inbounds %struct.nfsd4_copy, ptr %u, i32 0, i32 5
  %82 = call ptr @memcpy(ptr %cp_src.i, ptr %cp_src15.i, i32 1036)
  %stateid.i97 = getelementptr inbounds %struct.nfsd4_copy, ptr %call7.i.i, i32 0, i32 22
  %stateid16.i = getelementptr inbounds %struct.nfsd4_copy, ptr %u, i32 0, i32 22
  %83 = call ptr @memcpy(ptr %stateid.i97, ptr %stateid16.i, i32 20)
  %c_fh.i98 = getelementptr inbounds %struct.nfsd4_copy, ptr %call7.i.i, i32 0, i32 21
  %c_fh17.i = getelementptr inbounds %struct.nfsd4_copy, ptr %u, i32 0, i32 21
  %84 = call ptr @memcpy(ptr %c_fh.i98, ptr %c_fh17.i, i32 130)
  %ss_mnt.i = getelementptr inbounds %struct.nfsd4_copy, ptr %u, i32 0, i32 20
  %85 = ptrtoint ptr %ss_mnt.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ss_mnt.i, align 8
  %ss_mnt18.i = getelementptr inbounds %struct.nfsd4_copy, ptr %call7.i.i, i32 0, i32 20
  %87 = ptrtoint ptr %ss_mnt18.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %86, ptr %ss_mnt18.i, align 8
  %call27 = call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @nfsd4_do_async_copy, ptr noundef nonnull %call7.i.i, i32 noundef -1, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.123) #22
  %copy_task = getelementptr inbounds %struct.nfsd4_copy, ptr %call7.i.i, i32 0, i32 17
  %88 = ptrtoint ptr %copy_task to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call27, ptr %copy_task, align 4
  %cmp.i = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %dup_copy_fields.exit.if.then42_crit_edge, label %if.end31

dup_copy_fields.exit.if.then42_crit_edge:         ; preds = %dup_copy_fields.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then42

if.end31:                                         ; preds = %dup_copy_fields.exit
  %89 = ptrtoint ptr %cp_clp7.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %cp_clp7.i, align 8
  %async_lock = getelementptr inbounds %struct.nfs4_client, ptr %90, i32 0, i32 42
  call void @_raw_spin_lock(ptr noundef %async_lock) #22
  %copies = getelementptr inbounds %struct.nfsd4_copy, ptr %call7.i.i, i32 0, i32 16
  %91 = ptrtoint ptr %cp_clp7.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %cp_clp7.i, align 8
  %async_copies = getelementptr inbounds %struct.nfs4_client, ptr %92, i32 0, i32 41
  %93 = ptrtoint ptr %async_copies to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %async_copies, align 4
  %call.i.i100 = call zeroext i1 @__list_add_valid(ptr noundef %copies, ptr noundef %async_copies, ptr noundef %94) #22
  br i1 %call.i.i100, label %if.end.i.i101, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end.i.i101:                                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #24
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %copies, ptr %prev1.i.i, align 4
  %96 = ptrtoint ptr %copies to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %94, ptr %copies, align 4
  %prev3.i.i = getelementptr inbounds %struct.nfsd4_copy, ptr %call7.i.i, i32 0, i32 16, i32 1
  %97 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %async_copies, ptr %prev3.i.i, align 8
  %98 = ptrtoint ptr %async_copies to i32
  call void @__asan_store4_noabort(i32 %98)
  store volatile ptr %copies, ptr %async_copies, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i101, %if.end31.cleanup_crit_edge
  %99 = ptrtoint ptr %cp_clp7.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %cp_clp7.i, align 8
  %async_lock35 = getelementptr inbounds %struct.nfs4_client, ptr %100, i32 0, i32 42
  call void @_raw_spin_unlock(ptr noundef %async_lock35) #22
  %101 = ptrtoint ptr %copy_task to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %copy_task, align 4
  %call37 = call i32 @wake_up_process(ptr noundef %102) #22
  br label %cleanup50

if.else38:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #24
  %call39 = call fastcc i32 @nfsd4_do_copy(ptr noundef %u, i1 noundef zeroext true)
  br label %cleanup50

if.then42:                                        ; preds = %dup_copy_fields.exit.if.then42_crit_edge, %if.end22.if.then42_crit_edge
  call fastcc void @cleanup_async_copy(ptr noundef nonnull %call7.i.i)
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.then14.if.end43_crit_edge
  %call44 = call i32 @nfserrno(i32 noundef -12) #22
  %103 = ptrtoint ptr %cp_intra to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %cp_intra, align 4, !range !365
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool46.not = icmp eq i8 %104, 0
  br i1 %tobool46.not, label %if.then47, label %if.end43.cleanup50_crit_edge

if.end43.cleanup50_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup50

if.then47:                                        ; preds = %if.end43
  %ss_mnt48 = getelementptr inbounds %struct.nfsd4_copy, ptr %u, i32 0, i32 20
  %105 = ptrtoint ptr %ss_mnt48 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %ss_mnt48, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.nfs_ssc_client_ops_tbl, ptr @nfs_ssc_client_tbl, i32 0, i32 1) to i32))
  %107 = load ptr, ptr getelementptr inbounds (%struct.nfs_ssc_client_ops_tbl, ptr @nfs_ssc_client_tbl, i32 0, i32 1), align 4
  %tobool.not.i.i102 = icmp eq ptr %107, null
  br i1 %tobool.not.i.i102, label %if.then47.nfsd4_interssc_disconnect.exit_crit_edge, label %if.then.i.i

if.then47.nfsd4_interssc_disconnect.exit_crit_edge: ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #24
  br label %nfsd4_interssc_disconnect.exit

if.then.i.i:                                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #24
  %mnt_sb.i = getelementptr inbounds %struct.vfsmount, ptr %106, i32 0, i32 1
  %108 = ptrtoint ptr %mnt_sb.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %mnt_sb.i, align 4
  %110 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %107, align 4
  call void %111(ptr noundef %109) #22
  br label %nfsd4_interssc_disconnect.exit

nfsd4_interssc_disconnect.exit:                   ; preds = %if.then.i.i, %if.then47.nfsd4_interssc_disconnect.exit_crit_edge
  call void @mntput(ptr noundef %106) #22
  br label %cleanup50

cleanup50:                                        ; preds = %nfsd4_interssc_disconnect.exit, %if.end43.cleanup50_crit_edge, %if.else38, %cleanup, %if.else.cleanup50_crit_edge, %nfsd4_interssc_connect.exit.i.cleanup50_crit_edge, %nfsd4_interssc_connect.exit.thread.i, %nfsd4_interssc_connect.exit.thread29.i, %if.end.cleanup50_crit_edge, %lor.lhs.false.cleanup50_crit_edge, %if.then.cleanup50_crit_edge
  %retval.0 = phi i32 [ %call.i92, %if.else.cleanup50_crit_edge ], [ %call39, %if.else38 ], [ %call44, %if.end43.cleanup50_crit_edge ], [ %call44, %nfsd4_interssc_disconnect.exit ], [ 0, %cleanup ], [ 10004, %lor.lhs.false.cleanup50_crit_edge ], [ 10004, %if.then.cleanup50_crit_edge ], [ 10091, %if.end.cleanup50_crit_edge ], [ 10091, %nfsd4_interssc_connect.exit.i.cleanup50_crit_edge ], [ 10091, %nfsd4_interssc_connect.exit.thread.i ], [ 10091, %nfsd4_interssc_connect.exit.thread29.i ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nfsd4_copy_rsize(ptr nocapture noundef readnone %rqstp, ptr nocapture noundef readnone %op) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  ret i32 56
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd4_copy_notify(ptr noundef %rqstp, ptr noundef %cstate, ptr noundef %u) #0 align 64 {
entry:
  %stid = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_xprt = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 2
  %0 = ptrtoint ptr %rq_xprt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_xprt, align 8
  %tobool.not = icmp eq ptr %1, null
  %xpt_net = getelementptr inbounds %struct.svc_xprt, ptr %1, i32 0, i32 19
  %rq_bc_net = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 48
  %cond.in = select i1 %tobool.not, ptr %rq_bc_net, ptr %xpt_net
  %2 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %cond = load ptr, ptr %cond.in, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %3 = load i32, ptr @nfsd_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %cond, i32 noundef %3)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stid) #22
  %4 = ptrtoint ptr %stid to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %stid, align 4, !annotation !368
  %clp2 = getelementptr inbounds %struct.nfsd4_compound_state, ptr %cstate, i32 0, i32 3
  %5 = ptrtoint ptr %clp2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clp2, align 4
  %call3 = call i32 @nfs4_preprocess_stateid_op(ptr noundef %rqstp, ptr noundef %cstate, ptr noundef %cstate, ptr noundef %u, i32 noundef 16, ptr noundef null, ptr noundef nonnull %stid) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end:                                           ; preds = %entry
  %nfsd4_lease = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 26
  %7 = ptrtoint ptr %nfsd4_lease to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %nfsd4_lease, align 8
  %cpn_sec = getelementptr inbounds %struct.nfsd4_copy_notify, ptr %u, i32 0, i32 3
  %9 = ptrtoint ptr %cpn_sec to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %cpn_sec, align 8
  %cpn_nsec = getelementptr inbounds %struct.nfsd4_copy_notify, ptr %u, i32 0, i32 4
  %10 = ptrtoint ptr %cpn_nsec to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %cpn_nsec, align 8
  %call5 = call i32 @nfserrno(i32 noundef -12) #22
  %11 = ptrtoint ptr %stid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %stid, align 4
  %call6 = call ptr @nfs4_alloc_init_cpntf_state(ptr noundef %call, ptr noundef %12) #22
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end.out_crit_edge, label %if.end9

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %out

if.end9:                                          ; preds = %if.end
  %cpn_cnr_stateid = getelementptr inbounds %struct.nfsd4_copy_notify, ptr %u, i32 0, i32 2
  %13 = call ptr @memcpy(ptr %cpn_cnr_stateid, ptr %call6, i32 16)
  %cp_p_stateid = getelementptr inbounds %struct.nfs4_cpntf_state, ptr %call6, i32 0, i32 2
  %14 = ptrtoint ptr %stid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %stid, align 4
  %sc_stateid = getelementptr inbounds %struct.nfs4_stid, ptr %15, i32 0, i32 3
  %16 = call ptr @memcpy(ptr %cp_p_stateid, ptr %sc_stateid, i32 16)
  %cp_p_clid = getelementptr inbounds %struct.nfs4_cpntf_state, ptr %call6, i32 0, i32 3
  %cl_clientid = getelementptr inbounds %struct.nfs4_client, ptr %6, i32 0, i32 15
  %17 = ptrtoint ptr %cl_clientid to i32
  call void @__asan_loadN_noabort(i32 %17, i32 8)
  %18 = load i64, ptr %cl_clientid, align 4
  %19 = ptrtoint ptr %cp_p_clid to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %cp_p_clid, align 8
  %cpn_src = getelementptr inbounds %struct.nfsd4_copy_notify, ptr %u, i32 0, i32 5
  %20 = ptrtoint ptr %cpn_src to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 3, ptr %cpn_src, align 4
  %rq_daddr = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 5
  %u12 = getelementptr inbounds %struct.nfsd4_copy_notify, ptr %u, i32 0, i32 5, i32 1
  %21 = ptrtoint ptr %rq_daddr to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %rq_daddr, align 2
  %23 = zext i16 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.153)
  switch i16 %22, label %land.rhs [
    i16 2, label %sw.bb.i
    i16 10, label %sw.bb2.i
  ]

sw.bb.i:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #24
  %sin_port.i = getelementptr inbounds %struct.sockaddr_in, ptr %rq_daddr, i32 0, i32 1
  %24 = ptrtoint ptr %sin_port.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %sin_port.i, align 2
  %26 = ptrtoint ptr %u12 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 1952673792, ptr %u12, align 1
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #24
  %sin6_port.i = getelementptr inbounds %struct.sockaddr_in6, ptr %rq_daddr, i32 0, i32 1
  %27 = ptrtoint ptr %sin6_port.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %sin6_port.i, align 2
  %29 = call ptr @memcpy(ptr %u12, ptr @.str.128, i32 5)
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb2.i, %sw.bb.i
  %.sink.i = phi i32 [ 4, %sw.bb2.i ], [ 3, %sw.bb.i ]
  %port.0.in.i = phi i16 [ %28, %sw.bb2.i ], [ %25, %sw.bb.i ]
  %netid_len7.i = getelementptr inbounds %struct.nfsd4_copy_notify, ptr %u, i32 0, i32 5, i32 1, i32 0, i32 1, i32 60
  %30 = ptrtoint ptr %netid_len7.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %.sink.i, ptr %netid_len7.i, align 4
  %port.0.i = zext i16 %port.0.in.i to i32
  %addr8.i = getelementptr inbounds %struct.nfsd4_copy_notify, ptr %u, i32 0, i32 5, i32 1, i32 0, i32 1, i32 1
  %call10.i = call i32 @rpc_ntop(ptr noundef %rq_daddr, ptr noundef %addr8.i, i32 noundef 58) #22
  %add.ptr.i = getelementptr i8, ptr %addr8.i, i32 %call10.i
  %sub.i = sub i32 58, %call10.i
  %shr.i = lshr i32 %port.0.i, 8
  %and.i = and i32 %port.0.i, 255
  %call13.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.i, i32 noundef %sub.i, ptr noundef nonnull @.str.137, i32 noundef %shr.i, i32 noundef %and.i) #22
  call void @__sanitizer_cov_trace_cmp4(i32 %call13.i, i32 %sub.i)
  %cmp.not.i = icmp ult i32 %call13.i, %sub.i
  br i1 %cmp.not.i, label %sw.epilog.i.nfsd4_set_netaddr.exit.thread_crit_edge, label %do.end.i, !prof !361

sw.epilog.i.nfsd4_set_netaddr.exit.thread_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %nfsd4_set_netaddr.exit.thread

do.end.i:                                         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #24
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.138, i32 noundef 433, i32 noundef 9, ptr noundef null) #22
  br label %nfsd4_set_netaddr.exit.thread

nfsd4_set_netaddr.exit.thread:                    ; preds = %do.end.i, %sw.epilog.i.nfsd4_set_netaddr.exit.thread_crit_edge
  %add.i = add i32 %call13.i, %call10.i
  %addr_len.i = getelementptr inbounds %struct.nfsd4_copy_notify, ptr %u, i32 0, i32 5, i32 1, i32 0, i32 1, i32 64
  %31 = ptrtoint ptr %addr_len.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add.i, ptr %addr_len.i, align 4
  br label %out

land.rhs:                                         ; preds = %if.end9
  %.b83 = load i1, ptr @nfsd4_copy_notify.__already_done, align 1
  br i1 %.b83, label %land.rhs.if.then53_crit_edge, label %if.then22, !prof !361

land.rhs.if.then53_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then53

if.then22:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @nfsd4_copy_notify.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1790, i32 noundef 9, ptr noundef null) #22
  br label %if.then53

if.then53:                                        ; preds = %if.then22, %land.rhs.if.then53_crit_edge
  call void @nfs4_put_cpntf_state(ptr noundef %call, ptr noundef nonnull %call6) #22
  br label %out

out:                                              ; preds = %if.then53, %nfsd4_set_netaddr.exit.thread, %if.end.out_crit_edge
  %status.0 = phi i32 [ 22, %if.then53 ], [ %call5, %if.end.out_crit_edge ], [ 0, %nfsd4_set_netaddr.exit.thread ]
  %32 = ptrtoint ptr %stid to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %stid, align 4
  call void @nfs4_put_stid(ptr noundef %33) #22
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.0, %out ], [ %call3, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stid) #22
  ret i32 %retval.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nfsd4_copy_notify_rsize(ptr nocapture noundef readnone %rqstp, ptr nocapture noundef readnone %op) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  ret i32 1080
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd4_deallocate(ptr noundef %rqstp, ptr noundef %cstate, ptr noundef %u) #0 align 64 {
entry:
  %nf.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nf.i) #22
  %0 = ptrtoint ptr %nf.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %nf.i, align 4, !annotation !368
  %call.i = call i32 @nfs4_preprocess_stateid_op(ptr noundef %rqstp, ptr noundef %cstate, ptr noundef %cstate, ptr noundef %u, i32 noundef 32, ptr noundef nonnull %nf.i, ptr noundef null) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %if.end6.i, label %do.body.i

do.body.i:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %1 = load i32, ptr @nfsd_debug, align 4
  %and.i = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.nfsd4_fallocate.exit_crit_edge, label %do.end.i

do.body.i.nfsd4_fallocate.exit_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %nfsd4_fallocate.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #24
  %call3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120) #26
  br label %nfsd4_fallocate.exit

if.end6.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  %2 = ptrtoint ptr %nf.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nf.i, align 4
  %nf_file.i = getelementptr inbounds %struct.nfsd_file, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %nf_file.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nf_file.i, align 4
  %falloc_offset.i = getelementptr inbounds %struct.nfsd4_fallocate, ptr %u, i32 0, i32 1
  %6 = ptrtoint ptr %falloc_offset.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %falloc_offset.i, align 8
  %falloc_length.i = getelementptr inbounds %struct.nfsd4_fallocate, ptr %u, i32 0, i32 2
  %8 = ptrtoint ptr %falloc_length.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %falloc_length.i, align 8
  %call8.i = call i32 @nfsd4_vfs_fallocate(ptr noundef %rqstp, ptr noundef %cstate, ptr noundef %5, i64 noundef %7, i64 noundef %9, i32 noundef 3) #22
  %10 = ptrtoint ptr %nf.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %nf.i, align 4
  call void @nfsd_file_put(ptr noundef %11) #22
  br label %nfsd4_fallocate.exit

nfsd4_fallocate.exit:                             ; preds = %if.end6.i, %do.end.i, %do.body.i.nfsd4_fallocate.exit_crit_edge
  %retval.0.i = phi i32 [ %call8.i, %if.end6.i ], [ %call.i, %do.end.i ], [ %call.i, %do.body.i.nfsd4_fallocate.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nf.i) #22
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd4_offload_cancel(ptr nocapture noundef readonly %rqstp, ptr nocapture noundef readonly %cstate, ptr noundef %u) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %clp1 = getelementptr inbounds %struct.nfsd4_compound_state, ptr %cstate, i32 0, i32 3
  %0 = ptrtoint ptr %clp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clp1, align 4
  %call = tail call ptr @find_async_copy(ptr noundef %1, ptr noundef %u)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  %rq_xprt = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 2
  %2 = ptrtoint ptr %rq_xprt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rq_xprt, align 8
  %tobool2.not = icmp eq ptr %3, null
  %xpt_net = getelementptr inbounds %struct.svc_xprt, ptr %3, i32 0, i32 19
  %rq_bc_net = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 48
  %cond.in = select i1 %tobool2.not, ptr %rq_bc_net, ptr %xpt_net
  %4 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %cond = load ptr, ptr %cond.in, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %5 = load i32, ptr @nfsd_net_id, align 4
  %call4 = tail call fastcc ptr @net_generic(ptr noundef %cond, i32 noundef %5)
  %call6 = tail call i32 @manage_cpntf_state(ptr noundef %call4, ptr noundef %u, ptr noundef %1, ptr noundef null) #22
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  tail call fastcc void @nfsd4_stop_copy(ptr noundef nonnull %call)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ 0, %if.else ], [ %call6, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd4_offload_status(ptr nocapture noundef readnone %rqstp, ptr nocapture noundef readonly %cstate, ptr nocapture noundef %u) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %clp1 = getelementptr inbounds %struct.nfsd4_compound_state, ptr %cstate, i32 0, i32 3
  %0 = ptrtoint ptr %clp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clp1, align 4
  %call = tail call ptr @find_async_copy(ptr noundef %1, ptr noundef %u)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

if.then:                                          ; preds = %entry
  %cp_res = getelementptr inbounds %struct.nfsd4_copy, ptr %call, i32 0, i32 8
  %2 = ptrtoint ptr %cp_res to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %cp_res, align 8
  %count = getelementptr inbounds %struct.nfsd4_offload_status, ptr %u, i32 0, i32 1
  %4 = ptrtoint ptr %count to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %count, align 8
  %refcount.i = getelementptr inbounds %struct.nfsd4_copy, ptr %call, i32 0, i32 18
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !359
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #22
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #22, !srcloc !360
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.end.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i, !prof !361

if.end5.i.i.i.i.if.end_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #22
  br label %if.end

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !362
  tail call void @kfree(ptr noundef nonnull %call) #22
  br label %if.end

if.end:                                           ; preds = %if.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  %status.0 = phi i32 [ 10025, %entry.if.end_crit_edge ], [ 0, %if.end5.i.i.i.i.if.end_crit_edge ], [ 0, %if.then10.i.i.i.i ], [ 0, %if.end.i ]
  ret i32 %status.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nfsd4_offload_status_rsize(ptr nocapture noundef readnone %rqstp, ptr nocapture noundef readnone %op) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  ret i32 20
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd4_read_plus_rsize(ptr noundef %rqstp, ptr nocapture noundef readonly %op) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  %call = tail call i32 @svc_max_payload(ptr noundef %rqstp) #22
  %rd_length = getelementptr inbounds %struct.nfsd4_op, ptr %op, i32 0, i32 4, i32 0, i32 1, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %rd_length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rd_length, align 8
  %2 = tail call i32 @llvm.umin.i32(i32 %1, i32 %call)
  %3 = add i32 %2, 51
  %mul = and i32 %3, -4
  ret i32 %mul
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd4_seek(ptr noundef %rqstp, ptr noundef %cstate, ptr noundef %u) #0 align 64 {
entry:
  %nf = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nf) #22
  %0 = ptrtoint ptr %nf to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %nf, align 4, !annotation !368
  %call = call i32 @nfs4_preprocess_stateid_op(ptr noundef %rqstp, ptr noundef %cstate, ptr noundef %cstate, ptr noundef %u, i32 noundef 16, ptr noundef nonnull %nf, ptr noundef null) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end7, label %do.body

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %1 = load i32, ptr @nfsd_debug, align 4
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #24
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139) #26
  br label %cleanup

if.end7:                                          ; preds = %entry
  %seek_whence = getelementptr inbounds %struct.nfsd4_seek, ptr %u, i32 0, i32 2
  %2 = ptrtoint ptr %seek_whence to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %seek_whence, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.154)
  switch i32 %3, label %if.end7.out_crit_edge [
    i32 0, label %if.end7.sw.epilog_crit_edge
    i32 1, label %sw.bb8
  ]

if.end7.sw.epilog_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.epilog

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #24
  br label %out

sw.bb8:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb8, %if.end7.sw.epilog_crit_edge
  %whence.0 = phi i32 [ 4, %sw.bb8 ], [ 3, %if.end7.sw.epilog_crit_edge ]
  %5 = ptrtoint ptr %nf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nf, align 4
  %nf_file = getelementptr inbounds %struct.nfsd_file, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %nf_file to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %nf_file, align 4
  %seek_offset = getelementptr inbounds %struct.nfsd4_seek, ptr %u, i32 0, i32 1
  %9 = ptrtoint ptr %seek_offset to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %seek_offset, align 8
  %call9 = call i64 @vfs_llseek(ptr noundef %8, i64 noundef %10, i32 noundef %whence.0) #22
  %seek_pos = getelementptr inbounds %struct.nfsd4_seek, ptr %u, i32 0, i32 4
  %11 = ptrtoint ptr %seek_pos to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %call9, ptr %seek_pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call9)
  %cmp = icmp slt i64 %call9, 0
  br i1 %cmp, label %if.then11, label %if.else

if.then11:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #24
  %conv = trunc i64 %call9 to i32
  %call13 = call i32 @nfserrno(i32 noundef %conv) #22
  br label %out

if.else:                                          ; preds = %sw.epilog
  %12 = ptrtoint ptr %nf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %nf, align 4
  %nf_file15 = getelementptr inbounds %struct.nfsd_file, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %nf_file15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %nf_file15, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %f_inode.i, align 8
  %call17 = call fastcc i64 @i_size_read(ptr noundef %17)
  call void @__sanitizer_cov_trace_cmp8(i64 %call9, i64 %call17)
  %cmp18.not = icmp slt i64 %call9, %call17
  br i1 %cmp18.not, label %if.else.out_crit_edge, label %if.then20

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #24
  br label %out

if.then20:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #24
  %seek_eof = getelementptr inbounds %struct.nfsd4_seek, ptr %u, i32 0, i32 3
  %18 = ptrtoint ptr %seek_eof to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %seek_eof, align 4
  br label %out

out:                                              ; preds = %if.then20, %if.else.out_crit_edge, %if.then11, %if.end7.out_crit_edge
  %status.0 = phi i32 [ %call13, %if.then11 ], [ 0, %if.then20 ], [ 0, %if.else.out_crit_edge ], [ 10090, %if.end7.out_crit_edge ]
  %19 = ptrtoint ptr %nf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %nf, align 4
  call void @nfsd_file_put(ptr noundef %20) #22
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.0, %out ], [ %call, %do.end ], [ %call, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nf) #22
  ret i32 %retval.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nfsd4_seek_rsize(ptr nocapture noundef readnone %rqstp, ptr nocapture noundef readnone %op) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  ret i32 20
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd4_clone(ptr noundef %rqstp, ptr noundef %cstate, ptr noundef %u) #0 align 64 {
entry:
  %src = alloca ptr, align 4
  %dst = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %src) #22
  %0 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %src, align 4, !annotation !368
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dst) #22
  %1 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %dst, align 4, !annotation !368
  %cl_dst_stateid = getelementptr inbounds %struct.nfsd4_clone, ptr %u, i32 0, i32 1
  %call = call fastcc i32 @nfsd4_verify_copy(ptr noundef %rqstp, ptr noundef %cstate, ptr noundef %u, ptr noundef nonnull %src, ptr noundef %cl_dst_stateid, ptr noundef nonnull %dst)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  %2 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %src, align 4
  %cl_src_pos = getelementptr inbounds %struct.nfsd4_clone, ptr %u, i32 0, i32 2
  %4 = ptrtoint ptr %cl_src_pos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %cl_src_pos, align 8
  %6 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dst, align 4
  %cl_dst_pos = getelementptr inbounds %struct.nfsd4_clone, ptr %u, i32 0, i32 3
  %8 = ptrtoint ptr %cl_dst_pos to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %cl_dst_pos, align 8
  %cl_count = getelementptr inbounds %struct.nfsd4_clone, ptr %u, i32 0, i32 4
  %10 = ptrtoint ptr %cl_count to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %cl_count, align 8
  %fh_export = getelementptr inbounds %struct.svc_fh, ptr %cstate, i32 0, i32 3
  %12 = ptrtoint ptr %fh_export to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fh_export, align 4
  %ex_flags = getelementptr inbounds %struct.svc_export, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %ex_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ex_flags, align 4
  %and = and i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  %call2 = call i32 @nfsd4_clone_file_range(ptr noundef %rqstp, ptr noundef %3, i64 noundef %5, ptr noundef %7, i64 noundef %9, i64 noundef %11, i1 noundef zeroext %tobool1.not) #22
  %16 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dst, align 4
  call void @nfsd_file_put(ptr noundef %17) #22
  %18 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %src, align 4
  call void @nfsd_file_put(ptr noundef %19) #22
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %status.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call2, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dst) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %src) #22
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd4_getxattr(ptr noundef %rqstp, ptr noundef %cstate, ptr noundef %u) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u, align 4
  %getxa_buf = getelementptr inbounds %struct.nfsd4_getxattr, ptr %u, i32 0, i32 2
  %getxa_len = getelementptr inbounds %struct.nfsd4_getxattr, ptr %u, i32 0, i32 1
  %call = tail call i32 @nfsd_getxattr(ptr noundef %rqstp, ptr noundef %cstate, ptr noundef %1, ptr noundef %getxa_buf, ptr noundef %getxa_len) #22
  ret i32 %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd4_getxattr_rsize(ptr noundef %rqstp, ptr nocapture noundef readnone %op) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  %call = tail call i32 @svc_max_payload(ptr noundef %rqstp) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %call)
  %cmp = icmp ugt i32 %call, 65536
  %0 = add i32 %call, 15
  %phi.bo6 = and i32 %0, -4
  %cond = select i1 %cmp, i32 65548, i32 %phi.bo6
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd4_setxattr(ptr noundef %rqstp, ptr noundef %cstate, ptr nocapture noundef %u) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_xprt = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 2
  %0 = ptrtoint ptr %rq_xprt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_xprt, align 8
  %tobool.not = icmp eq ptr %1, null
  %xpt_net = getelementptr inbounds %struct.svc_xprt, ptr %1, i32 0, i32 19
  %rq_bc_net = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 48
  %cond.in = select i1 %tobool.not, ptr %rq_bc_net, ptr %xpt_net
  %2 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %cond = load ptr, ptr %cond.in, align 4
  %call = tail call zeroext i1 @opens_in_grace(ptr noundef %cond) #22
  br i1 %call, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end:                                           ; preds = %entry
  %setxa_name = getelementptr inbounds %struct.nfsd4_setxattr, ptr %u, i32 0, i32 1
  %3 = ptrtoint ptr %setxa_name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %setxa_name, align 4
  %setxa_buf = getelementptr inbounds %struct.nfsd4_setxattr, ptr %u, i32 0, i32 2
  %5 = ptrtoint ptr %setxa_buf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %setxa_buf, align 8
  %setxa_len = getelementptr inbounds %struct.nfsd4_setxattr, ptr %u, i32 0, i32 3
  %7 = ptrtoint ptr %setxa_len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %setxa_len, align 4
  %9 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %u, align 8
  %call2 = tail call i32 @nfsd_setxattr(ptr noundef %rqstp, ptr noundef %cstate, ptr noundef %4, ptr noundef %6, i32 noundef %8, i32 noundef %10) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.then4:                                         ; preds = %if.end
  %setxa_cinfo = getelementptr inbounds %struct.nfsd4_setxattr, ptr %u, i32 0, i32 4
  %fh_pre_saved.i = getelementptr inbounds %struct.svc_fh, ptr %cstate, i32 0, i32 10
  %11 = ptrtoint ptr %fh_pre_saved.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %fh_pre_saved.i, align 1, !range !365
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %do.body4.i, label %do.end7.i, !prof !364

do.body4.i:                                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #24
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfsd/xdr4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 751, 0\0A.popsection", ""() #22, !srcloc !367
  unreachable

do.end7.i:                                        ; preds = %if.then4
  %fh_post_saved.i = getelementptr inbounds %struct.svc_fh, ptr %cstate, i32 0, i32 9
  %13 = ptrtoint ptr %fh_post_saved.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %fh_post_saved.i, align 8, !range !365
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool8.not.i = icmp eq i8 %14, 0
  br i1 %tobool8.not.i, label %do.end7.i.set_change_info.exit_crit_edge, label %land.rhs.i

do.end7.i.set_change_info.exit_crit_edge:         ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %set_change_info.exit

land.rhs.i:                                       ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #24
  %fh_no_atomic_attr.i = getelementptr inbounds %struct.svc_fh, ptr %cstate, i32 0, i32 7
  %15 = ptrtoint ptr %fh_no_atomic_attr.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %fh_no_atomic_attr.i, align 1, !range !365
  %17 = xor i8 %16, 1
  %lnot10.i = zext i8 %17 to i32
  br label %set_change_info.exit

set_change_info.exit:                             ; preds = %land.rhs.i, %do.end7.i.set_change_info.exit_crit_edge
  %18 = phi i32 [ 0, %do.end7.i.set_change_info.exit_crit_edge ], [ %lnot10.i, %land.rhs.i ]
  %19 = ptrtoint ptr %setxa_cinfo to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %setxa_cinfo, align 8
  %fh_pre_change.i = getelementptr inbounds %struct.svc_fh, ptr %cstate, i32 0, i32 14
  %20 = ptrtoint ptr %fh_pre_change.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %fh_pre_change.i, align 8
  %before_change.i = getelementptr inbounds %struct.nfsd4_setxattr, ptr %u, i32 0, i32 4, i32 1
  %22 = ptrtoint ptr %before_change.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %before_change.i, align 8
  %fh_post_change.i = getelementptr inbounds %struct.svc_fh, ptr %cstate, i32 0, i32 16
  %23 = ptrtoint ptr %fh_post_change.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %fh_post_change.i, align 8
  %after_change.i = getelementptr inbounds %struct.nfsd4_setxattr, ptr %u, i32 0, i32 4, i32 2
  %25 = ptrtoint ptr %after_change.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %after_change.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %set_change_info.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 10013, %entry.cleanup_crit_edge ], [ 0, %set_change_info.exit ], [ %call2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nfsd4_setxattr_rsize(ptr nocapture noundef readnone %rqstp, ptr nocapture noundef readnone %op) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  ret i32 28
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd4_listxattrs(ptr noundef %rqstp, ptr noundef %cstate, ptr noundef %u) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %lsxa_buf = getelementptr inbounds %struct.nfsd4_listxattrs, ptr %u, i32 0, i32 2
  %lsxa_len = getelementptr inbounds %struct.nfsd4_listxattrs, ptr %u, i32 0, i32 3
  %call = tail call i32 @nfsd_listxattr(ptr noundef %rqstp, ptr noundef %cstate, ptr noundef %lsxa_buf, ptr noundef %lsxa_len) #22
  ret i32 %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd4_listxattrs_rsize(ptr noundef %rqstp, ptr nocapture noundef readonly %op) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  %call = tail call i32 @svc_max_payload(ptr noundef %rqstp) #22
  %lsxa_maxcount = getelementptr inbounds %struct.nfsd4_op, ptr %op, i32 0, i32 4, i32 0, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %lsxa_maxcount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lsxa_maxcount, align 8
  %2 = tail call i32 @llvm.umin.i32(i32 %1, i32 %call)
  %3 = add i32 %2, 27
  %mul = and i32 %3, -4
  ret i32 %mul
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd4_removexattr(ptr noundef %rqstp, ptr noundef %cstate, ptr nocapture noundef %u) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_xprt = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 2
  %0 = ptrtoint ptr %rq_xprt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_xprt, align 8
  %tobool.not = icmp eq ptr %1, null
  %xpt_net = getelementptr inbounds %struct.svc_xprt, ptr %1, i32 0, i32 19
  %rq_bc_net = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 48
  %cond.in = select i1 %tobool.not, ptr %rq_bc_net, ptr %xpt_net
  %2 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %cond = load ptr, ptr %cond.in, align 4
  %call = tail call zeroext i1 @opens_in_grace(ptr noundef %cond) #22
  br i1 %call, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %u, align 8
  %call2 = tail call i32 @nfsd_removexattr(ptr noundef %rqstp, ptr noundef %cstate, ptr noundef %4) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.then4:                                         ; preds = %if.end
  %rmxa_cinfo = getelementptr inbounds %struct.nfsd4_removexattr, ptr %u, i32 0, i32 1
  %fh_pre_saved.i = getelementptr inbounds %struct.svc_fh, ptr %cstate, i32 0, i32 10
  %5 = ptrtoint ptr %fh_pre_saved.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %fh_pre_saved.i, align 1, !range !365
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %do.body4.i, label %do.end7.i, !prof !364

do.body4.i:                                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #24
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfsd/xdr4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 751, 0\0A.popsection", ""() #22, !srcloc !367
  unreachable

do.end7.i:                                        ; preds = %if.then4
  %fh_post_saved.i = getelementptr inbounds %struct.svc_fh, ptr %cstate, i32 0, i32 9
  %7 = ptrtoint ptr %fh_post_saved.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %fh_post_saved.i, align 8, !range !365
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool8.not.i = icmp eq i8 %8, 0
  br i1 %tobool8.not.i, label %do.end7.i.set_change_info.exit_crit_edge, label %land.rhs.i

do.end7.i.set_change_info.exit_crit_edge:         ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %set_change_info.exit

land.rhs.i:                                       ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #24
  %fh_no_atomic_attr.i = getelementptr inbounds %struct.svc_fh, ptr %cstate, i32 0, i32 7
  %9 = ptrtoint ptr %fh_no_atomic_attr.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %fh_no_atomic_attr.i, align 1, !range !365
  %11 = xor i8 %10, 1
  %lnot10.i = zext i8 %11 to i32
  br label %set_change_info.exit

set_change_info.exit:                             ; preds = %land.rhs.i, %do.end7.i.set_change_info.exit_crit_edge
  %12 = phi i32 [ 0, %do.end7.i.set_change_info.exit_crit_edge ], [ %lnot10.i, %land.rhs.i ]
  %13 = ptrtoint ptr %rmxa_cinfo to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %rmxa_cinfo, align 8
  %fh_pre_change.i = getelementptr inbounds %struct.svc_fh, ptr %cstate, i32 0, i32 14
  %14 = ptrtoint ptr %fh_pre_change.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %fh_pre_change.i, align 8
  %before_change.i = getelementptr inbounds %struct.nfsd4_removexattr, ptr %u, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %before_change.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %before_change.i, align 8
  %fh_post_change.i = getelementptr inbounds %struct.svc_fh, ptr %cstate, i32 0, i32 16
  %17 = ptrtoint ptr %fh_post_change.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %fh_post_change.i, align 8
  %after_change.i = getelementptr inbounds %struct.nfsd4_removexattr, ptr %u, i32 0, i32 1, i32 2
  %19 = ptrtoint ptr %after_change.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %after_change.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %set_change_info.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 10013, %entry.cleanup_crit_edge ], [ 0, %set_change_info.exit ], [ %call2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nfsd4_removexattr_rsize(ptr nocapture noundef readnone %rqstp, ptr nocapture noundef readnone %op) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  ret i32 28
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd_access(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd_commit(ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fh_verify(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @check_attr_support(ptr nocapture noundef readonly %cstate, ptr nocapture noundef readonly %bmval, ptr noundef readonly %writable) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %fh_dentry = getelementptr inbounds %struct.svc_fh, ptr %cstate, i32 0, i32 2
  %0 = ptrtoint ptr %fh_dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fh_dentry, align 8
  %fh_export = getelementptr inbounds %struct.svc_fh, ptr %cstate, i32 0, i32 3
  %2 = ptrtoint ptr %fh_export to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fh_export, align 4
  %minorversion = getelementptr inbounds %struct.nfsd4_compound_state, ptr %cstate, i32 0, i32 9
  %4 = ptrtoint ptr %minorversion to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %minorversion, align 4
  %arrayidx.i = getelementptr [3 x [3 x i32]], ptr @nfsd_suppattrs, i32 0, i32 %5
  %6 = ptrtoint ptr %bmval to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bmval, align 4
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %neg.i.i = xor i32 %9, -1
  %and.i.i = and i32 %7, %neg.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

lor.lhs.false.i.i:                                ; preds = %entry
  %arrayidx2.i.i = getelementptr i32, ptr %bmval, i32 1
  %10 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx2.i.i, align 4
  %arrayidx3.i.i = getelementptr i32, ptr %arrayidx.i, i32 1
  %12 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx3.i.i, align 4
  %neg4.i.i = xor i32 %13, -1
  %and5.i.i = and i32 %11, %neg4.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i)
  %tobool6.not.i.i = icmp eq i32 %and5.i.i, 0
  br i1 %tobool6.not.i.i, label %nfsd_attrs_supported.exit, label %lor.lhs.false.i.i.cleanup_crit_edge

lor.lhs.false.i.i.cleanup_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

nfsd_attrs_supported.exit:                        ; preds = %lor.lhs.false.i.i
  %arrayidx7.i.i = getelementptr i32, ptr %bmval, i32 2
  %14 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx7.i.i, align 4
  %arrayidx8.i.i = getelementptr i32, ptr %arrayidx.i, i32 2
  %16 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx8.i.i, align 4
  %neg9.i.i = xor i32 %17, -1
  %and10.i.i = and i32 %15, %neg9.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i.i)
  %tobool11.i.i = icmp eq i32 %and10.i.i, 0
  br i1 %tobool11.i.i, label %if.end, label %nfsd_attrs_supported.exit.cleanup_crit_edge

nfsd_attrs_supported.exit.cleanup_crit_edge:      ; preds = %nfsd_attrs_supported.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end:                                           ; preds = %nfsd_attrs_supported.exit
  %and = and i32 %7, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end6_crit_edge, label %land.lhs.true

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %18 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %d_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i_sb, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %21, i32 0, i32 10
  %22 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %s_flags, align 4
  %and3 = and i32 %23, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end6

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %24 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx7.i.i, align 4
  %and8 = and i32 %25, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end6.if.end14_crit_edge, label %land.lhs.true10

if.end6.if.end14_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end14

land.lhs.true10:                                  ; preds = %if.end6
  %ex_flags = getelementptr inbounds %struct.svc_export, ptr %3, i32 0, i32 2
  %26 = ptrtoint ptr %ex_flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ex_flags, align 4
  %and11 = and i32 %27, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %land.lhs.true10.cleanup_crit_edge, label %land.lhs.true10.if.end14_crit_edge

land.lhs.true10.if.end14_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end14

land.lhs.true10.cleanup_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end14:                                         ; preds = %land.lhs.true10.if.end14_crit_edge, %if.end6.if.end14_crit_edge
  %tobool15.not = icmp eq ptr %writable, null
  br i1 %tobool15.not, label %if.end14.if.end30_crit_edge, label %land.lhs.true16

if.end14.if.end30_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end30

land.lhs.true16:                                  ; preds = %if.end14
  %28 = ptrtoint ptr %writable to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %writable, align 4
  %neg.i = xor i32 %29, -1
  %and.i = and i32 %7, %neg.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %land.lhs.true16.cleanup_crit_edge

land.lhs.true16.cleanup_crit_edge:                ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %land.lhs.true16
  %30 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx2.i.i, align 4
  %arrayidx3.i = getelementptr i32, ptr %writable, i32 1
  %32 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx3.i, align 4
  %neg4.i = xor i32 %33, -1
  %and5.i = and i32 %31, %neg4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %bmval_is_subset.exit, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

bmval_is_subset.exit:                             ; preds = %lor.lhs.false.i
  %arrayidx8.i = getelementptr i32, ptr %writable, i32 2
  %34 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx8.i, align 4
  %neg9.i = xor i32 %35, -1
  %and10.i = and i32 %25, %neg9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.i, label %land.lhs.true21.critedge, label %bmval_is_subset.exit.cleanup_crit_edge

bmval_is_subset.exit.cleanup_crit_edge:           ; preds = %bmval_is_subset.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

land.lhs.true21.critedge:                         ; preds = %bmval_is_subset.exit
  %and23 = and i32 %25, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %land.lhs.true21.critedge.if.end30_crit_edge, label %land.lhs.true25

land.lhs.true21.critedge.if.end30_crit_edge:      ; preds = %land.lhs.true21.critedge
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end30

land.lhs.true25:                                  ; preds = %land.lhs.true21.critedge
  %36 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx2.i.i, align 4
  %and27 = and i32 %37, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %land.lhs.true25.if.end30_crit_edge, label %land.lhs.true25.cleanup_crit_edge

land.lhs.true25.cleanup_crit_edge:                ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

land.lhs.true25.if.end30_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end30

if.end30:                                         ; preds = %land.lhs.true25.if.end30_crit_edge, %land.lhs.true21.critedge.if.end30_crit_edge, %if.end14.if.end30_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %land.lhs.true25.cleanup_crit_edge, %bmval_is_subset.exit.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %land.lhs.true16.cleanup_crit_edge, %land.lhs.true10.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %nfsd_attrs_supported.exit.cleanup_crit_edge, %lor.lhs.false.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end30 ], [ 10032, %nfsd_attrs_supported.exit.cleanup_crit_edge ], [ 10032, %land.lhs.true.cleanup_crit_edge ], [ 10032, %land.lhs.true10.cleanup_crit_edge ], [ 22, %bmval_is_subset.exit.cleanup_crit_edge ], [ 22, %land.lhs.true25.cleanup_crit_edge ], [ 10032, %lor.lhs.false.i.i.cleanup_crit_edge ], [ 10032, %entry.cleanup_crit_edge ], [ 22, %lor.lhs.false.i.cleanup_crit_edge ], [ 22, %land.lhs.true16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd_symlink(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd_create(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fh_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_inode_setsecctx(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd4_set_nfs4_acl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fh_fill_post_attrs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockref_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svc_max_payload(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd_link(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd_lookup(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exp_pseudoroot(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_nfsd4_verify(ptr noundef %rqstp, ptr noundef %cstate, ptr noundef %verify) unnamed_addr #0 align 64 {
entry:
  %p = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p) #22
  %call = tail call i32 @fh_verify(ptr noundef %rqstp, ptr noundef %cstate, i16 noundef zeroext 0, i32 noundef 0) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end:                                           ; preds = %entry
  %fh_dentry.i = getelementptr inbounds %struct.svc_fh, ptr %cstate, i32 0, i32 2
  %0 = ptrtoint ptr %fh_dentry.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fh_dentry.i, align 8
  %fh_export.i = getelementptr inbounds %struct.svc_fh, ptr %cstate, i32 0, i32 3
  %2 = ptrtoint ptr %fh_export.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fh_export.i, align 4
  %minorversion.i = getelementptr inbounds %struct.nfsd4_compound_state, ptr %cstate, i32 0, i32 9
  %4 = ptrtoint ptr %minorversion.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %minorversion.i, align 4
  %arrayidx.i.i = getelementptr [3 x [3 x i32]], ptr @nfsd_suppattrs, i32 0, i32 %5
  %6 = ptrtoint ptr %verify to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %verify, align 4
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i, align 4
  %neg.i.i.i = xor i32 %9, -1
  %and.i.i.i = and i32 %7, %neg.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %lor.lhs.false.i.i.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

lor.lhs.false.i.i.i:                              ; preds = %if.end
  %arrayidx2.i.i.i = getelementptr i32, ptr %verify, i32 1
  %10 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx2.i.i.i, align 4
  %arrayidx3.i.i.i = getelementptr i32, ptr %arrayidx.i.i, i32 1
  %12 = ptrtoint ptr %arrayidx3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx3.i.i.i, align 4
  %neg4.i.i.i = xor i32 %13, -1
  %and5.i.i.i = and i32 %11, %neg4.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i.i)
  %tobool6.not.i.i.i = icmp eq i32 %and5.i.i.i, 0
  br i1 %tobool6.not.i.i.i, label %nfsd_attrs_supported.exit.i, label %lor.lhs.false.i.i.i.cleanup_crit_edge

lor.lhs.false.i.i.i.cleanup_crit_edge:            ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

nfsd_attrs_supported.exit.i:                      ; preds = %lor.lhs.false.i.i.i
  %arrayidx7.i.i.i = getelementptr i32, ptr %verify, i32 2
  %14 = ptrtoint ptr %arrayidx7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx7.i.i.i, align 4
  %arrayidx8.i.i.i = getelementptr i32, ptr %arrayidx.i.i, i32 2
  %16 = ptrtoint ptr %arrayidx8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx8.i.i.i, align 4
  %neg9.i.i.i = xor i32 %17, -1
  %and10.i.i.i = and i32 %15, %neg9.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i.i.i)
  %tobool11.i.i.i = icmp eq i32 %and10.i.i.i, 0
  br i1 %tobool11.i.i.i, label %if.end.i72, label %nfsd_attrs_supported.exit.i.cleanup_crit_edge

nfsd_attrs_supported.exit.i.cleanup_crit_edge:    ; preds = %nfsd_attrs_supported.exit.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end.i72:                                       ; preds = %nfsd_attrs_supported.exit.i
  %and.i = and i32 %7, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i72.if.end6.i_crit_edge, label %land.lhs.true.i

if.end.i72.if.end6.i_crit_edge:                   ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end6.i

land.lhs.true.i:                                  ; preds = %if.end.i72
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %18 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %d_inode.i.i, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i_sb.i, align 4
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %21, i32 0, i32 10
  %22 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %s_flags.i, align 4
  %and3.i = and i32 %23, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true.i.if.end6.i_crit_edge

land.lhs.true.i.if.end6.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end6.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end6.i:                                        ; preds = %land.lhs.true.i.if.end6.i_crit_edge, %if.end.i72.if.end6.i_crit_edge
  %and8.i = and i32 %15, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %if.end6.i.if.end4_crit_edge, label %land.lhs.true10.i

if.end6.i.if.end4_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end4

land.lhs.true10.i:                                ; preds = %if.end6.i
  %ex_flags.i = getelementptr inbounds %struct.svc_export, ptr %3, i32 0, i32 2
  %24 = ptrtoint ptr %ex_flags.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ex_flags.i, align 4
  %and11.i = and i32 %25, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %land.lhs.true10.i.cleanup_crit_edge, label %land.lhs.true10.i.if.end4_crit_edge

land.lhs.true10.i.if.end4_crit_edge:              ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end4

land.lhs.true10.i.cleanup_crit_edge:              ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end4:                                          ; preds = %land.lhs.true10.i.if.end4_crit_edge, %if.end6.i.if.end4_crit_edge
  %and = and i32 %7, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %lor.lhs.false, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end4
  %26 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx2.i.i.i, align 4
  %and9 = and i32 %27, 4259840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end12, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end12:                                         ; preds = %lor.lhs.false
  %ve_attrlen = getelementptr inbounds %struct.nfsd4_verify, ptr %verify, i32 0, i32 1
  %28 = ptrtoint ptr %ve_attrlen to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ve_attrlen, align 4
  %and13 = and i32 %29, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %shr = lshr i32 %29, 2
  %add = add nuw nsw i32 %shr, 4
  %shl = shl i32 %add, 2
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %shl, i32 noundef 3264) #29
  %tobool19.not = icmp eq ptr %call9.i, null
  br i1 %tobool19.not, label %if.end16.cleanup_crit_edge, label %if.end21

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end21:                                         ; preds = %if.end16
  %30 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call9.i, ptr %p, align 4
  %31 = ptrtoint ptr %fh_export.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fh_export.i, align 4
  %33 = ptrtoint ptr %fh_dentry.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fh_dentry.i, align 8
  %call27 = call i32 @nfsd4_encode_fattr_to_buf(ptr noundef nonnull %p, i32 noundef %add, ptr noundef %cstate, ptr noundef %32, ptr noundef %34, ptr noundef %verify, ptr noundef %rqstp, i32 noundef 0) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 10018, i32 %call27)
  %cmp = icmp eq i32 %call27, 10018
  %spec.store.select = select i1 %cmp, i32 10027, i32 %call27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select)
  %tobool30.not = icmp eq i32 %spec.store.select, 0
  br i1 %tobool30.not, label %if.end32, label %if.end21.out_kfree_crit_edge

if.end21.out_kfree_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #24
  br label %out_kfree

if.end32:                                         ; preds = %if.end21
  %add.ptr = getelementptr i32, ptr %call9.i, i32 1
  %35 = ptrtoint ptr %call9.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %call9.i, align 128
  %add.ptr34 = getelementptr i32, ptr %add.ptr, i32 %36
  %incdec.ptr = getelementptr i32, ptr %add.ptr34, i32 1
  %37 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %incdec.ptr, ptr %p, align 4
  %38 = ptrtoint ptr %add.ptr34 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr34, align 4
  %40 = ptrtoint ptr %ve_attrlen to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ve_attrlen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %41)
  %cmp36.not = icmp eq i32 %39, %41
  br i1 %cmp36.not, label %if.end38, label %if.end32.out_kfree_crit_edge

if.end32.out_kfree_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #24
  br label %out_kfree

if.end38:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #24
  %ve_attrval = getelementptr inbounds %struct.nfsd4_verify, ptr %verify, i32 0, i32 2
  %42 = ptrtoint ptr %ve_attrval to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ve_attrval, align 4
  %bcmp = call i32 @bcmp(ptr %incdec.ptr, ptr %43, i32 %39) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool41.not = icmp eq i32 %bcmp, 0
  %spec.select = select i1 %tobool41.not, i32 10009, i32 10027
  br label %out_kfree

out_kfree:                                        ; preds = %if.end38, %if.end32.out_kfree_crit_edge, %if.end21.out_kfree_crit_edge
  %status.0 = phi i32 [ %spec.store.select, %if.end21.out_kfree_crit_edge ], [ 10027, %if.end32.out_kfree_crit_edge ], [ %spec.select, %if.end38 ]
  call void @kfree(ptr noundef nonnull %call9.i) #22
  br label %cleanup

cleanup:                                          ; preds = %out_kfree, %if.end16.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %land.lhs.true10.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %nfsd_attrs_supported.exit.i.cleanup_crit_edge, %lor.lhs.false.i.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.0, %out_kfree ], [ %call, %entry.cleanup_crit_edge ], [ 22, %lor.lhs.false.cleanup_crit_edge ], [ 22, %if.end4.cleanup_crit_edge ], [ 22, %if.end12.cleanup_crit_edge ], [ 10008, %if.end16.cleanup_crit_edge ], [ 10032, %nfsd_attrs_supported.exit.i.cleanup_crit_edge ], [ 10032, %land.lhs.true.i.cleanup_crit_edge ], [ 10032, %land.lhs.true10.i.cleanup_crit_edge ], [ 10032, %lor.lhs.false.i.i.i.cleanup_crit_edge ], [ 10032, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p) #22
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd4_encode_fattr_to_buf(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @net_generic(ptr noundef %net, i32 noundef %id) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  %0 = tail call i32 @llvm.read_register.i32(metadata !349) #22
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !369
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #22
  %call.i = tail call zeroext i1 @rcu_is_watching() #22
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.82, i32 noundef 696, ptr noundef nonnull @.str.83) #22
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %gen = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %4 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %gen, align 128
  %call = tail call i32 @rcu_read_lock_held() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b9 = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.80, i32 noundef 45, ptr noundef nonnull @.str.81) #22
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %arrayidx = getelementptr [0 x ptr], ptr %5, i32 0, i32 %id
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call.i10 = tail call zeroext i1 @rcu_is_watching() #22
  br i1 %call.i10, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i13

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #24
  br label %rcu_read_unlock.exit

land.lhs.true.i13:                                ; preds = %do.end7
  %call1.i11 = tail call i32 @debug_lockdep_rcu_enabled() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11)
  %tobool.not.i12 = icmp eq i32 %call1.i11, 0
  br i1 %tobool.not.i12, label %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i15

land.lhs.true.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i13
  call void @__sanitizer_cov_trace_pc() #24
  br label %rcu_read_unlock.exit

land.lhs.true2.i15:                               ; preds = %land.lhs.true.i13
  %.b4.i14 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14, label %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, label %if.then.i16

land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #24
  br label %rcu_read_unlock.exit

if.then.i16:                                      ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.82, i32 noundef 724, ptr noundef nonnull @.str.84) #22
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i16, %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !370
  %8 = tail call i32 @llvm.read_register.i32(metadata !349) #22
  %and.i.i.i.i.i17 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i17 to ptr
  %preempt_count.i.i.i.i18 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i18, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i18, align 4
  tail call void @rcu_read_unlock_strict() #22
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #22
  ret ptr %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd4_process_open1(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @opens_in_grace(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_open_lookup(ptr noundef %rqstp, ptr noundef %cstate, ptr noundef %open, ptr nocapture noundef %resfh) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 360) #27
  %1 = ptrtoint ptr %resfh to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i, ptr %resfh, align 4
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = call ptr @memset(ptr %call7.i, i32 0, i32 360)
  %fh_maxsize.i = getelementptr inbounds %struct.svc_fh, ptr %call7.i, i32 0, i32 1
  %3 = ptrtoint ptr %fh_maxsize.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 128, ptr %fh_maxsize.i, align 4
  %op_truncate = getelementptr inbounds %struct.nfsd4_open, ptr %open, i32 0, i32 24
  %4 = ptrtoint ptr %op_truncate to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %op_truncate, align 4
  %op_create = getelementptr inbounds %struct.nfsd4_open, ptr %open, i32 0, i32 6
  %5 = ptrtoint ptr %op_create to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %op_create, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not = icmp eq i32 %6, 0
  br i1 %tobool3.not, label %if.end28, label %if.then4

if.then4:                                         ; preds = %if.end
  %op_umask = getelementptr inbounds %struct.nfsd4_open, ptr %open, i32 0, i32 8
  %7 = ptrtoint ptr %op_umask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %op_umask, align 4
  %9 = tail call i32 @llvm.read_register.i32(metadata !349) #22
  %and.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task, align 8
  %fs = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 107
  %13 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fs, align 128
  %umask = getelementptr inbounds %struct.fs_struct, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %umask to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %8, ptr %umask, align 4
  %op_fname = getelementptr inbounds %struct.nfsd4_open, ptr %open, i32 0, i32 2
  %16 = ptrtoint ptr %op_fname to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %op_fname, align 8
  %op_fnamelen = getelementptr inbounds %struct.nfsd4_open, ptr %open, i32 0, i32 1
  %18 = ptrtoint ptr %op_fnamelen to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %op_fnamelen, align 4
  %op_iattr = getelementptr inbounds %struct.nfsd4_open, ptr %open, i32 0, i32 10
  %20 = ptrtoint ptr %resfh to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %resfh, align 4
  %op_createmode = getelementptr inbounds %struct.nfsd4_open, ptr %open, i32 0, i32 7
  %22 = ptrtoint ptr %op_createmode to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %op_createmode, align 8
  %op_verf = getelementptr inbounds %struct.nfsd4_open, ptr %open, i32 0, i32 12
  %op_created = getelementptr inbounds %struct.nfsd4_open, ptr %open, i32 0, i32 25
  %call7 = tail call i32 @do_nfsd_create(ptr noundef %rqstp, ptr noundef %cstate, ptr noundef %17, i32 noundef %19, ptr noundef %op_iattr, ptr noundef %21, i32 noundef %23, ptr noundef %op_verf, ptr noundef %op_truncate, ptr noundef %op_created) #22
  %24 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task, align 8
  %fs10 = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 107
  %26 = ptrtoint ptr %fs10 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fs10, align 128
  %umask11 = getelementptr inbounds %struct.fs_struct, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %umask11 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %umask11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool12.not = icmp eq i32 %call7, 0
  br i1 %tobool12.not, label %land.lhs.true, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then4
  %op_label = getelementptr inbounds %struct.nfsd4_open, ptr %open, i32 0, i32 31
  %29 = ptrtoint ptr %op_label to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %op_label, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool13.not = icmp eq i32 %30, 0
  br i1 %tobool13.not, label %land.lhs.true.if.end17_crit_edge, label %if.then14

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end17

if.then14:                                        ; preds = %land.lhs.true
  %31 = ptrtoint ptr %resfh to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %resfh, align 4
  %fh_dentry.i = getelementptr inbounds %struct.svc_fh, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %fh_dentry.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fh_dentry.i, align 8
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %34, i32 0, i32 5
  %35 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %d_inode.i.i, align 8
  %i_rwsem.i.i = getelementptr inbounds %struct.inode, ptr %36, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i.i) #22
  %37 = ptrtoint ptr %fh_dentry.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %fh_dentry.i, align 8
  %data.i = getelementptr inbounds %struct.nfsd4_open, ptr %open, i32 0, i32 31, i32 1
  %39 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data.i, align 4
  %41 = ptrtoint ptr %op_label to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %op_label, align 4
  %call2.i = tail call i32 @security_inode_setsecctx(ptr noundef %38, ptr noundef %40, i32 noundef %42) #22
  tail call void @up_write(ptr noundef %i_rwsem.i.i) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.then14.if.end17_crit_edge, label %if.then.i

if.then14.if.end17_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end17

if.then.i:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #24
  %arrayidx.i = getelementptr %struct.nfsd4_open, ptr %open, i32 0, i32 9, i32 2
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i, align 4
  %and.i99 = and i32 %44, -65537
  store i32 %and.i99, ptr %arrayidx.i, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then.i, %if.then14.if.end17_crit_edge, %land.lhs.true.if.end17_crit_edge
  %45 = ptrtoint ptr %op_createmode to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %op_createmode, align 8
  %47 = and i32 %46, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %47)
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %if.then22, label %if.end17.if.end31_crit_edge

if.end17.if.end31_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end31

if.then22:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #24
  %arrayidx = getelementptr %struct.nfsd4_open, ptr %open, i32 0, i32 9, i32 1
  %49 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx, align 4
  %or = or i32 %50, 2129920
  store i32 %or, ptr %arrayidx, align 4
  br label %if.end31

if.end28:                                         ; preds = %if.end
  %op_fname25 = getelementptr inbounds %struct.nfsd4_open, ptr %open, i32 0, i32 2
  %51 = ptrtoint ptr %op_fname25 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %op_fname25, align 8
  %op_fnamelen26 = getelementptr inbounds %struct.nfsd4_open, ptr %open, i32 0, i32 1
  %53 = ptrtoint ptr %op_fnamelen26 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %op_fnamelen26, align 4
  %55 = ptrtoint ptr %resfh to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %resfh, align 4
  %call27 = tail call i32 @nfsd_lookup(ptr noundef %rqstp, ptr noundef %cstate, ptr noundef %52, i32 noundef %54, ptr noundef %56) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool29.not = icmp eq i32 %call27, 0
  br i1 %tobool29.not, label %if.end28.if.end31_crit_edge, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end28.if.end31_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end31

if.end31:                                         ; preds = %if.end28.if.end31_crit_edge, %if.then22, %if.end17.if.end31_crit_edge
  %57 = ptrtoint ptr %resfh to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %resfh, align 4
  %fh_dentry.i100 = getelementptr inbounds %struct.svc_fh, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %fh_dentry.i100 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %fh_dentry.i100, align 8
  %d_inode.i.i101 = getelementptr inbounds %struct.dentry, ptr %60, i32 0, i32 5
  %61 = ptrtoint ptr %d_inode.i.i101 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %d_inode.i.i101, align 8
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %62, align 8
  %65 = and i16 %64, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %65)
  %switch.selectcmp.i = icmp eq i16 %65, 16384
  %switch.select.i = select i1 %switch.selectcmp.i, i32 21, i32 10029
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %65)
  %switch.selectcmp9.i = icmp eq i16 %65, -32768
  br i1 %switch.selectcmp9.i, label %if.end35, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end35:                                         ; preds = %if.end31
  %66 = ptrtoint ptr %op_create to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %op_create, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %67)
  %cmp.i = icmp eq i32 %67, 1
  br i1 %cmp.i, label %land.rhs.i, label %if.end35.if.end44_crit_edge

if.end35.if.end44_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end44

land.rhs.i:                                       ; preds = %if.end35
  %op_createmode.i = getelementptr inbounds %struct.nfsd4_open, ptr %open, i32 0, i32 7
  %68 = ptrtoint ptr %op_createmode.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %op_createmode.i, align 8
  %70 = zext i32 %69 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.155)
  switch i32 %69, label %land.rhs.i.if.end44_crit_edge [
    i32 3, label %land.rhs.i.land.lhs.true38_crit_edge
    i32 1, label %land.rhs.i.land.lhs.true38_crit_edge121
    i32 0, label %land.rhs.i.land.lhs.true38_crit_edge122
  ]

land.rhs.i.land.lhs.true38_crit_edge122:          ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %land.lhs.true38

land.rhs.i.land.lhs.true38_crit_edge121:          ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %land.lhs.true38

land.rhs.i.land.lhs.true38_crit_edge:             ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %land.lhs.true38

land.rhs.i.if.end44_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end44

land.lhs.true38:                                  ; preds = %land.rhs.i.land.lhs.true38_crit_edge, %land.rhs.i.land.lhs.true38_crit_edge121, %land.rhs.i.land.lhs.true38_crit_edge122
  %op_acl = getelementptr inbounds %struct.nfsd4_open, ptr %open, i32 0, i32 30
  %71 = ptrtoint ptr %op_acl to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %op_acl, align 16
  %cmp39.not = icmp eq ptr %72, null
  br i1 %cmp39.not, label %land.lhs.true38.if.end44_crit_edge, label %if.then40

land.lhs.true38.if.end44_crit_edge:               ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end44

if.then40:                                        ; preds = %land.lhs.true38
  %call.i = tail call i32 @nfsd4_set_nfs4_acl(ptr noundef %rqstp, ptr noundef %58, ptr noundef nonnull %72) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i102 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i102, label %if.then40.if.end44_crit_edge, label %if.then.i104

if.then40.if.end44_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end44

if.then.i104:                                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #24
  %op_bmval42 = getelementptr inbounds %struct.nfsd4_open, ptr %open, i32 0, i32 9
  %73 = ptrtoint ptr %op_bmval42 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %op_bmval42, align 4
  %and.i103 = and i32 %74, -4097
  store i32 %and.i103, ptr %op_bmval42, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then.i104, %if.then40.if.end44_crit_edge, %land.lhs.true38.if.end44_crit_edge, %land.rhs.i.if.end44_crit_edge, %if.end35.if.end44_crit_edge
  %slot.i.i = getelementptr inbounds %struct.nfsd4_compound_state, ptr %cstate, i32 0, i32 5
  %75 = ptrtoint ptr %slot.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %slot.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %76, null
  br i1 %cmp.i.not.i, label %if.end.i, label %if.end44.nfsd4_set_open_owner_reply_cache.exit_crit_edge

if.end44.nfsd4_set_open_owner_reply_cache.exit_crit_edge: ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #24
  br label %nfsd4_set_open_owner_reply_cache.exit

if.end.i:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #24
  %77 = ptrtoint ptr %resfh to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %resfh, align 4
  %op_openowner.i = getelementptr inbounds %struct.nfsd4_open, ptr %open, i32 0, i32 26
  %79 = ptrtoint ptr %op_openowner.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %op_openowner.i, align 32
  %rp_openfh.i = getelementptr inbounds %struct.nfs4_stateowner, ptr %80, i32 0, i32 7, i32 3
  %81 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %78, align 4
  %83 = ptrtoint ptr %rp_openfh.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %rp_openfh.i, align 4
  %84 = getelementptr inbounds %struct.nfs4_stateowner, ptr %80, i32 0, i32 7, i32 3, i32 1
  %85 = getelementptr inbounds %struct.knfsd_fh, ptr %78, i32 0, i32 1
  %86 = load i32, ptr %78, align 4
  %87 = call ptr @memcpy(ptr %84, ptr %85, i32 %86)
  br label %nfsd4_set_open_owner_reply_cache.exit

nfsd4_set_open_owner_reply_cache.exit:            ; preds = %if.end.i, %if.end44.nfsd4_set_open_owner_reply_cache.exit_crit_edge
  %op_created45 = getelementptr inbounds %struct.nfsd4_open, ptr %open, i32 0, i32 25
  %88 = ptrtoint ptr %op_created45 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %op_created45, align 1, !range !365
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool46.not = icmp eq i8 %89, 0
  br i1 %tobool46.not, label %lor.lhs.false, label %nfsd4_set_open_owner_reply_cache.exit.if.then48_crit_edge

nfsd4_set_open_owner_reply_cache.exit.if.then48_crit_edge: ; preds = %nfsd4_set_open_owner_reply_cache.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then48

lor.lhs.false:                                    ; preds = %nfsd4_set_open_owner_reply_cache.exit
  %90 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %open, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %91)
  %cmp47 = icmp eq i32 %91, 2
  br i1 %cmp47, label %lor.lhs.false.if.then48_crit_edge, label %lor.lhs.false.if.end50_crit_edge

lor.lhs.false.if.end50_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end50

lor.lhs.false.if.then48_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then48

if.then48:                                        ; preds = %lor.lhs.false.if.then48_crit_edge, %nfsd4_set_open_owner_reply_cache.exit.if.then48_crit_edge
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %lor.lhs.false.if.end50_crit_edge
  %accmode.0 = phi i32 [ 64, %if.then48 ], [ 0, %lor.lhs.false.if.end50_crit_edge ]
  %92 = ptrtoint ptr %resfh to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %resfh, align 4
  %94 = ptrtoint ptr %op_truncate to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %op_truncate, align 4, !range !365
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool.not.i105 = icmp eq i8 %95, 0
  br i1 %tobool.not.i105, label %if.end50.if.end.i108_crit_edge, label %land.lhs.true.i

if.end50.if.end.i108_crit_edge:                   ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end.i108

land.lhs.true.i:                                  ; preds = %if.end50
  %op_share_access.i = getelementptr inbounds %struct.nfsd4_open, ptr %open, i32 0, i32 16
  %96 = ptrtoint ptr %op_share_access.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %op_share_access.i, align 4
  %and.i106 = and i32 %97, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i106)
  %tobool1.not.i = icmp eq i32 %and.i106, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.do_open_permission.exit_crit_edge, label %land.lhs.true.i.if.end.i108_crit_edge

land.lhs.true.i.if.end.i108_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end.i108

land.lhs.true.i.do_open_permission.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do_open_permission.exit

if.end.i108:                                      ; preds = %land.lhs.true.i.if.end.i108_crit_edge, %if.end50.if.end.i108_crit_edge
  %op_share_access2.i = getelementptr inbounds %struct.nfsd4_open, ptr %open, i32 0, i32 16
  %98 = ptrtoint ptr %op_share_access2.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %op_share_access2.i, align 4
  %and3.i = and i32 %99, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  %spec.select.v.i = select i1 %tobool4.not.i, i32 2048, i32 2052
  %spec.select.i = or i32 %spec.select.v.i, %accmode.0
  %and9.i = and i32 %99, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  %or12.i = or i32 %spec.select.i, 18
  %accmode.addr.1.i = select i1 %tobool10.not.i, i32 %spec.select.i, i32 %or12.i
  %op_share_deny.i = getelementptr inbounds %struct.nfsd4_open, ptr %open, i32 0, i32 17
  %100 = ptrtoint ptr %op_share_deny.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %op_share_deny.i, align 32
  %and14.i = shl i32 %101, 1
  %102 = and i32 %and14.i, 2
  %103 = or i32 %accmode.addr.1.i, %102
  %call.i107 = tail call i32 @fh_verify(ptr noundef %rqstp, ptr noundef %93, i16 noundef zeroext -32768, i32 noundef %103) #22
  br label %do_open_permission.exit

do_open_permission.exit:                          ; preds = %if.end.i108, %land.lhs.true.i.do_open_permission.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i107, %if.end.i108 ], [ 22, %land.lhs.true.i.do_open_permission.exit_crit_edge ]
  %op_cinfo = getelementptr inbounds %struct.nfsd4_open, ptr %open, i32 0, i32 22
  %fh_pre_saved.i = getelementptr inbounds %struct.svc_fh, ptr %cstate, i32 0, i32 10
  %104 = ptrtoint ptr %fh_pre_saved.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %fh_pre_saved.i, align 1, !range !365
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool.not.i109 = icmp eq i8 %105, 0
  br i1 %tobool.not.i109, label %do.body4.i, label %do.end7.i, !prof !364

do.body4.i:                                       ; preds = %do_open_permission.exit
  call void @__sanitizer_cov_trace_pc() #24
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfsd/xdr4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 751, 0\0A.popsection", ""() #22, !srcloc !367
  unreachable

do.end7.i:                                        ; preds = %do_open_permission.exit
  %fh_post_saved.i = getelementptr inbounds %struct.svc_fh, ptr %cstate, i32 0, i32 9
  %106 = ptrtoint ptr %fh_post_saved.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %fh_post_saved.i, align 8, !range !365
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool8.not.i = icmp eq i8 %107, 0
  br i1 %tobool8.not.i, label %do.end7.i.set_change_info.exit_crit_edge, label %land.rhs.i110

do.end7.i.set_change_info.exit_crit_edge:         ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %set_change_info.exit

land.rhs.i110:                                    ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #24
  %fh_no_atomic_attr.i = getelementptr inbounds %struct.svc_fh, ptr %cstate, i32 0, i32 7
  %108 = ptrtoint ptr %fh_no_atomic_attr.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %fh_no_atomic_attr.i, align 1, !range !365
  %110 = xor i8 %109, 1
  %lnot10.i = zext i8 %110 to i32
  br label %set_change_info.exit

set_change_info.exit:                             ; preds = %land.rhs.i110, %do.end7.i.set_change_info.exit_crit_edge
  %111 = phi i32 [ 0, %do.end7.i.set_change_info.exit_crit_edge ], [ %lnot10.i, %land.rhs.i110 ]
  %112 = ptrtoint ptr %op_cinfo to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %op_cinfo, align 8
  %fh_pre_change.i = getelementptr inbounds %struct.svc_fh, ptr %cstate, i32 0, i32 14
  %113 = ptrtoint ptr %fh_pre_change.i to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %fh_pre_change.i, align 8
  %before_change.i = getelementptr inbounds %struct.nfsd4_open, ptr %open, i32 0, i32 22, i32 1
  %115 = ptrtoint ptr %before_change.i to i32
  call void @__asan_store8_noabort(i32 %115)
  store i64 %114, ptr %before_change.i, align 8
  %fh_post_change.i = getelementptr inbounds %struct.svc_fh, ptr %cstate, i32 0, i32 16
  %116 = ptrtoint ptr %fh_post_change.i to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %fh_post_change.i, align 8
  %after_change.i = getelementptr inbounds %struct.nfsd4_open, ptr %open, i32 0, i32 22, i32 2
  %118 = ptrtoint ptr %after_change.i to i32
  call void @__asan_store8_noabort(i32 %118)
  store i64 %117, ptr %after_change.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %set_change_info.exit, %if.end31.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 10008, %entry.cleanup_crit_edge ], [ %call27, %if.end28.cleanup_crit_edge ], [ %switch.select.i, %if.end31.cleanup_crit_edge ], [ %retval.0.i, %set_change_info.exit ], [ %call7, %if.then4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_check_open_reclaim(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_open_fhandle(ptr noundef %rqstp, ptr noundef %cstate, ptr nocapture noundef %open) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %op_cinfo = getelementptr inbounds %struct.nfsd4_open, ptr %open, i32 0, i32 22
  %0 = call ptr @memset(ptr %op_cinfo, i32 0, i32 24)
  %slot.i.i = getelementptr inbounds %struct.nfsd4_compound_state, ptr %cstate, i32 0, i32 5
  %1 = ptrtoint ptr %slot.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %slot.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %2, null
  br i1 %cmp.i.not.i, label %if.end.i, label %entry.nfsd4_set_open_owner_reply_cache.exit_crit_edge

entry.nfsd4_set_open_owner_reply_cache.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %nfsd4_set_open_owner_reply_cache.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  %op_openowner.i = getelementptr inbounds %struct.nfsd4_open, ptr %open, i32 0, i32 26
  %3 = ptrtoint ptr %op_openowner.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %op_openowner.i, align 32
  %rp_openfh.i = getelementptr inbounds %struct.nfs4_stateowner, ptr %4, i32 0, i32 7, i32 3
  %5 = ptrtoint ptr %cstate to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cstate, align 4
  %7 = ptrtoint ptr %rp_openfh.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %rp_openfh.i, align 4
  %8 = getelementptr inbounds %struct.nfs4_stateowner, ptr %4, i32 0, i32 7, i32 3, i32 1
  %9 = getelementptr inbounds %struct.knfsd_fh, ptr %cstate, i32 0, i32 1
  %10 = load i32, ptr %cstate, align 4
  %11 = call ptr @memcpy(ptr %8, ptr %9, i32 %10)
  br label %nfsd4_set_open_owner_reply_cache.exit

nfsd4_set_open_owner_reply_cache.exit:            ; preds = %if.end.i, %entry.nfsd4_set_open_owner_reply_cache.exit_crit_edge
  %op_iattr = getelementptr inbounds %struct.nfsd4_open, ptr %open, i32 0, i32 10
  %12 = ptrtoint ptr %op_iattr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %op_iattr, align 32
  %and = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.end.thread, label %land.end

land.end.thread:                                  ; preds = %nfsd4_set_open_owner_reply_cache.exit
  call void @__sanitizer_cov_trace_pc() #24
  %op_truncate13 = getelementptr inbounds %struct.nfsd4_open, ptr %open, i32 0, i32 24
  %14 = ptrtoint ptr %op_truncate13 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %op_truncate13, align 4
  %15 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %open, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %16)
  %cmp315 = icmp eq i32 %16, 5
  %spec.select16 = select i1 %cmp315, i32 64, i32 0
  br label %if.end.i12

land.end:                                         ; preds = %nfsd4_set_open_owner_reply_cache.exit
  %ia_size = getelementptr inbounds %struct.nfsd4_open, ptr %open, i32 0, i32 10, i32 4
  %17 = ptrtoint ptr %ia_size to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %ia_size, align 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %18)
  %cmp = icmp eq i64 %18, 0
  %op_truncate = getelementptr inbounds %struct.nfsd4_open, ptr %open, i32 0, i32 24
  %frombool = zext i1 %cmp to i8
  %19 = ptrtoint ptr %op_truncate to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %frombool, ptr %op_truncate, align 4
  %20 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %open, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %21)
  %cmp3 = icmp eq i32 %21, 5
  %spec.select = select i1 %cmp3, i32 64, i32 0
  br i1 %cmp, label %land.lhs.true.i, label %land.end.if.end.i12_crit_edge

land.end.if.end.i12_crit_edge:                    ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end.i12

land.lhs.true.i:                                  ; preds = %land.end
  %op_share_access.i = getelementptr inbounds %struct.nfsd4_open, ptr %open, i32 0, i32 16
  %22 = ptrtoint ptr %op_share_access.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %op_share_access.i, align 4
  %and.i = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.do_open_permission.exit_crit_edge, label %land.lhs.true.i.if.end.i12_crit_edge

land.lhs.true.i.if.end.i12_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end.i12

land.lhs.true.i.do_open_permission.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do_open_permission.exit

if.end.i12:                                       ; preds = %land.lhs.true.i.if.end.i12_crit_edge, %land.end.if.end.i12_crit_edge, %land.end.thread
  %spec.select18 = phi i32 [ %spec.select16, %land.end.thread ], [ %spec.select, %land.lhs.true.i.if.end.i12_crit_edge ], [ %spec.select, %land.end.if.end.i12_crit_edge ]
  %op_share_access2.i = getelementptr inbounds %struct.nfsd4_open, ptr %open, i32 0, i32 16
  %24 = ptrtoint ptr %op_share_access2.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %op_share_access2.i, align 4
  %and3.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  %spec.select.v.i = select i1 %tobool4.not.i, i32 2048, i32 2052
  %spec.select.i = or i32 %spec.select.v.i, %spec.select18
  %and9.i = and i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  %or12.i = or i32 %spec.select.i, 18
  %accmode.addr.1.i = select i1 %tobool10.not.i, i32 %spec.select.i, i32 %or12.i
  %op_share_deny.i = getelementptr inbounds %struct.nfsd4_open, ptr %open, i32 0, i32 17
  %26 = ptrtoint ptr %op_share_deny.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %op_share_deny.i, align 32
  %and14.i = shl i32 %27, 1
  %28 = and i32 %and14.i, 2
  %29 = or i32 %accmode.addr.1.i, %28
  %call.i = tail call i32 @fh_verify(ptr noundef %rqstp, ptr noundef %cstate, i16 noundef zeroext -32768, i32 noundef %29) #22
  br label %do_open_permission.exit

do_open_permission.exit:                          ; preds = %if.end.i12, %land.lhs.true.i.do_open_permission.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end.i12 ], [ 22, %land.lhs.true.i.do_open_permission.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd4_process_open2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfsd4_cleanup_open_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfsd4_bump_seqid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_nfsd_create(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfsd_read_start(ptr noundef %rqstp, ptr noundef %fhp, i64 noundef %offset, i32 noundef %len) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_read_start, i32 0, i32 1), ptr blockaddress(@trace_nfsd_read_start, %do.body)) #22
          to label %if.end48 [label %do.body], !srcloc !371

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !349) #22
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
  call void @__sanitizer_cov_trace_pc() #24
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !361

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.88, i32 noundef 108, i32 noundef 9, ptr noundef null) #22
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
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #24
  %9 = tail call i32 @llvm.read_register.i32(metadata !349) #22
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !372
  %call42 = tail call i32 @__traceiter_nfsd_read_start(ptr noundef null, ptr noundef %rqstp, ptr noundef %fhp, i64 noundef %offset, i32 noundef %len) #22
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !373
  %13 = tail call i32 @llvm.read_register.i32(metadata !349) #22
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !349) #22
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
  call void @__sanitizer_cov_trace_pc() #24
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !361

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #24
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.88, i32 noundef 108, i32 noundef 9, ptr noundef null) #22
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
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !349) #22
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !374
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_read_start, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_read_start, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nfsd_read_start.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @trace_nfsd_read_start.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.87, i32 noundef 337, ptr noundef nonnull @.str.81) #22
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !375
  %31 = tail call i32 @llvm.read_register.i32(metadata !349) #22
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
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_preprocess_stateid_op(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfsd_read_start(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfsd_file_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfsd_read_done(ptr noundef %rqstp, ptr noundef %fhp, i64 noundef %offset, i32 noundef %len) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_read_done, i32 0, i32 1), ptr blockaddress(@trace_nfsd_read_done, %do.body)) #22
          to label %if.end48 [label %do.body], !srcloc !371

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !349) #22
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
  call void @__sanitizer_cov_trace_pc() #24
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !361

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.88, i32 noundef 108, i32 noundef 9, ptr noundef null) #22
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
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #24
  %9 = tail call i32 @llvm.read_register.i32(metadata !349) #22
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !376
  %call42 = tail call i32 @__traceiter_nfsd_read_done(ptr noundef null, ptr noundef %rqstp, ptr noundef %fhp, i64 noundef %offset, i32 noundef %len) #22
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !377
  %13 = tail call i32 @llvm.read_register.i32(metadata !349) #22
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !349) #22
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
  call void @__sanitizer_cov_trace_pc() #24
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !361

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #24
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.88, i32 noundef 108, i32 noundef 9, ptr noundef null) #22
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
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !349) #22
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !374
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_read_done, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_read_done, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nfsd_read_done.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @trace_nfsd_read_done.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.87, i32 noundef 341, ptr noundef nonnull @.str.81) #22
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !375
  %31 = tail call i32 @llvm.read_register.i32(metadata !349) #22
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
declare dso_local i32 @__traceiter_nfsd_read_done(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd_unlink(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd_rename(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd_lookup_dentry(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfserrno(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd4_set_nfs4_label(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd_setattr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mnt_want_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mnt_drop_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfsd_write_start(ptr noundef %rqstp, ptr noundef %fhp, i64 noundef %offset, i32 noundef %len) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_write_start, i32 0, i32 1), ptr blockaddress(@trace_nfsd_write_start, %do.body)) #22
          to label %if.end48 [label %do.body], !srcloc !371

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !349) #22
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
  call void @__sanitizer_cov_trace_pc() #24
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !361

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.88, i32 noundef 108, i32 noundef 9, ptr noundef null) #22
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
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #24
  %9 = tail call i32 @llvm.read_register.i32(metadata !349) #22
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !378
  %call42 = tail call i32 @__traceiter_nfsd_write_start(ptr noundef null, ptr noundef %rqstp, ptr noundef %fhp, i64 noundef %offset, i32 noundef %len) #22
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !379
  %13 = tail call i32 @llvm.read_register.i32(metadata !349) #22
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !349) #22
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
  call void @__sanitizer_cov_trace_pc() #24
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !361

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #24
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.88, i32 noundef 108, i32 noundef 9, ptr noundef null) #22
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
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !349) #22
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !374
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_write_start, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_write_start, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nfsd_write_start.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @trace_nfsd_write_start.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.87, i32 noundef 342, ptr noundef nonnull @.str.81) #22
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !375
  %31 = tail call i32 @llvm.read_register.i32(metadata !349) #22
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
declare dso_local i32 @svc_fill_write_vector(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd_vfs_write(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfsd_write_done(ptr noundef %rqstp, ptr noundef %fhp, i64 noundef %offset, i32 noundef %len) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_write_done, i32 0, i32 1), ptr blockaddress(@trace_nfsd_write_done, %do.body)) #22
          to label %if.end48 [label %do.body], !srcloc !371

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !349) #22
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
  call void @__sanitizer_cov_trace_pc() #24
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !361

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.88, i32 noundef 108, i32 noundef 9, ptr noundef null) #22
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
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #24
  %9 = tail call i32 @llvm.read_register.i32(metadata !349) #22
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !380
  %call42 = tail call i32 @__traceiter_nfsd_write_done(ptr noundef null, ptr noundef %rqstp, ptr noundef %fhp, i64 noundef %offset, i32 noundef %len) #22
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !381
  %13 = tail call i32 @llvm.read_register.i32(metadata !349) #22
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !349) #22
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
  call void @__sanitizer_cov_trace_pc() #24
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !361

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #24
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.88, i32 noundef 108, i32 noundef 9, ptr noundef null) #22
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
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !349) #22
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !374
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_write_done, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_write_done, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nfsd_write_done.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @trace_nfsd_write_done.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.87, i32 noundef 345, ptr noundef nonnull @.str.81) #22
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !375
  %31 = tail call i32 @llvm.read_register.i32(metadata !349) #22
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
declare dso_local i32 @__traceiter_nfsd_write_start(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfsd_write_done(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfsd4_find_devid_map(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rqst_exp_find(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #22, !srcloc !382
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @trace_hardirqs_off() #22
  %1 = tail call ptr @llvm.returnaddress(i32 0) #22
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #22
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %2) #22
  tail call void @trace_hardirqs_on() #22
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #24
  %3 = tail call ptr @llvm.returnaddress(i32 0) #22
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #22
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %4) #22
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #22, !srcloc !383
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !364

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @warn_bogus_irq_restore() #22
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #22, !srcloc !384
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
  call void @__sanitizer_cov_trace_pc() #24
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %seqcount_lockdep_reader_access.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !385
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #22, !srcloc !386
  %8 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount, align 4
  %and = and i32 %9, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %9, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !387
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !388
  %12 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount, align 4
  %cmp.i.i.not = icmp eq i32 %13, %.lcssa
  br i1 %cmp.i.i.not, label %do.end24, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body

do.end24:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #24
  ret i64 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd4_preprocess_layout_stateid(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfsd_layout_commit_lookup_fail(ptr noundef %stp) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_layout_commit_lookup_fail, i32 0, i32 1), ptr blockaddress(@trace_nfsd_layout_commit_lookup_fail, %do.body)) #22
          to label %if.end48 [label %do.body], !srcloc !371

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !349) #22
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
  call void @__sanitizer_cov_trace_pc() #24
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !361

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.88, i32 noundef 108, i32 noundef 9, ptr noundef null) #22
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
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #24
  %9 = tail call i32 @llvm.read_register.i32(metadata !349) #22
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !389
  %call42 = tail call i32 @__traceiter_nfsd_layout_commit_lookup_fail(ptr noundef null, ptr noundef %stp) #22
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !390
  %13 = tail call i32 @llvm.read_register.i32(metadata !349) #22
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !349) #22
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
  call void @__sanitizer_cov_trace_pc() #24
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !361

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #24
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.88, i32 noundef 108, i32 noundef 9, ptr noundef null) #22
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
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !349) #22
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !374
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_layout_commit_lookup_fail, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_layout_commit_lookup_fail, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nfsd_layout_commit_lookup_fail.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @trace_nfsd_layout_commit_lookup_fail.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.87, i32 noundef 487, ptr noundef nonnull @.str.81) #22
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !375
  %31 = tail call i32 @llvm.read_register.i32(metadata !349) #22
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
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_put_stid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #15

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfsd_layout_commit_lookup_fail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfsd_layout_get_lookup_fail(ptr noundef %stp) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_layout_get_lookup_fail, i32 0, i32 1), ptr blockaddress(@trace_nfsd_layout_get_lookup_fail, %do.body)) #22
          to label %if.end48 [label %do.body], !srcloc !371

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !349) #22
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
  call void @__sanitizer_cov_trace_pc() #24
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !361

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.88, i32 noundef 108, i32 noundef 9, ptr noundef null) #22
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
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #24
  %9 = tail call i32 @llvm.read_register.i32(metadata !349) #22
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !391
  %call42 = tail call i32 @__traceiter_nfsd_layout_get_lookup_fail(ptr noundef null, ptr noundef %stp) #22
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !392
  %13 = tail call i32 @llvm.read_register.i32(metadata !349) #22
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !349) #22
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
  call void @__sanitizer_cov_trace_pc() #24
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !361

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #24
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.88, i32 noundef 108, i32 noundef 9, ptr noundef null) #22
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
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !349) #22
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !374
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_layout_get_lookup_fail, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_layout_get_lookup_fail, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nfsd_layout_get_lookup_fail.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @trace_nfsd_layout_get_lookup_fail.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.87, i32 noundef 486, ptr noundef nonnull @.str.81) #22
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !375
  %31 = tail call i32 @llvm.read_register.i32(metadata !349) #22
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
declare dso_local i32 @nfsd4_insert_layout(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfsd_layout_get_lookup_fail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd4_return_file_layouts(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd4_return_client_layouts(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd4_vfs_fallocate(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_init_copy_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd4_do_async_copy(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %cp_intra = getelementptr inbounds %struct.nfsd4_copy, ptr %data, i32 0, i32 6
  %0 = ptrtoint ptr %cp_intra to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cp_intra, align 4, !range !365
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end14_crit_edge

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end14

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 60) #27
  %nf_src = getelementptr inbounds %struct.nfsd4_copy, ptr %data, i32 0, i32 13
  %3 = ptrtoint ptr %nf_src to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %nf_src, align 4
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %nfserr = getelementptr inbounds %struct.nfsd4_copy, ptr %data, i32 0, i32 10
  %4 = ptrtoint ptr %nfserr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 10006, ptr %nfserr, align 8
  %ss_mnt = getelementptr inbounds %struct.nfsd4_copy, ptr %data, i32 0, i32 20
  %5 = ptrtoint ptr %ss_mnt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ss_mnt, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.nfs_ssc_client_ops_tbl, ptr @nfs_ssc_client_tbl, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.nfs_ssc_client_ops_tbl, ptr @nfs_ssc_client_tbl, i32 0, i32 1), align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.then3.nfsd4_interssc_disconnect.exit_crit_edge, label %if.then.i.i

if.then3.nfsd4_interssc_disconnect.exit_crit_edge: ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #24
  br label %nfsd4_interssc_disconnect.exit

if.then.i.i:                                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #24
  %mnt_sb.i = getelementptr inbounds %struct.vfsmount, ptr %6, i32 0, i32 1
  %8 = ptrtoint ptr %mnt_sb.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mnt_sb.i, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  tail call void %11(ptr noundef %9) #22
  br label %nfsd4_interssc_disconnect.exit

nfsd4_interssc_disconnect.exit:                   ; preds = %if.then.i.i, %if.then3.nfsd4_interssc_disconnect.exit_crit_edge
  tail call void @mntput(ptr noundef %6) #22
  br label %do_callback

if.end:                                           ; preds = %if.then
  %ss_mnt4 = getelementptr inbounds %struct.nfsd4_copy, ptr %data, i32 0, i32 20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_ssc_client_tbl to i32))
  %12 = load ptr, ptr @nfs_ssc_client_tbl, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.end.nfs42_ssc_open.exit_crit_edge, label %if.then.i

if.end.nfs42_ssc_open.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %nfs42_ssc_open.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  %stateid = getelementptr inbounds %struct.nfsd4_copy, ptr %data, i32 0, i32 22
  %c_fh = getelementptr inbounds %struct.nfsd4_copy, ptr %data, i32 0, i32 21
  %13 = ptrtoint ptr %ss_mnt4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ss_mnt4, align 8
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %12, align 4
  %call.i = tail call ptr %16(ptr noundef %14, ptr noundef %c_fh, ptr noundef %stateid) #22
  br label %nfs42_ssc_open.exit

nfs42_ssc_open.exit:                              ; preds = %if.then.i, %if.end.nfs42_ssc_open.exit_crit_edge
  %retval.0.i = phi ptr [ %call.i, %if.then.i ], [ inttoptr (i32 -5 to ptr), %if.end.nfs42_ssc_open.exit_crit_edge ]
  %17 = ptrtoint ptr %nf_src to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %nf_src, align 4
  %nf_file = getelementptr inbounds %struct.nfsd_file, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %nf_file to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %retval.0.i, ptr %nf_file, align 4
  %20 = load ptr, ptr %nf_src, align 4
  %nf_file8 = getelementptr inbounds %struct.nfsd_file, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %nf_file8 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %nf_file8, align 4
  %cmp.i = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %nfs42_ssc_open.exit.if.end14_crit_edge

nfs42_ssc_open.exit.if.end14_crit_edge:           ; preds = %nfs42_ssc_open.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end14

if.then10:                                        ; preds = %nfs42_ssc_open.exit
  %nfserr11 = getelementptr inbounds %struct.nfsd4_copy, ptr %data, i32 0, i32 10
  %23 = ptrtoint ptr %nfserr11 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 10091, ptr %nfserr11, align 8
  %24 = ptrtoint ptr %ss_mnt4 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ss_mnt4, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.nfs_ssc_client_ops_tbl, ptr @nfs_ssc_client_tbl, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.nfs_ssc_client_ops_tbl, ptr @nfs_ssc_client_tbl, i32 0, i32 1), align 4
  %tobool.not.i.i70 = icmp eq ptr %26, null
  br i1 %tobool.not.i.i70, label %if.then10.nfsd4_interssc_disconnect.exit73_crit_edge, label %if.then.i.i72

if.then10.nfsd4_interssc_disconnect.exit73_crit_edge: ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #24
  br label %nfsd4_interssc_disconnect.exit73

if.then.i.i72:                                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #24
  %mnt_sb.i71 = getelementptr inbounds %struct.vfsmount, ptr %25, i32 0, i32 1
  %27 = ptrtoint ptr %mnt_sb.i71 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mnt_sb.i71, align 4
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %26, align 4
  tail call void %30(ptr noundef %28) #22
  br label %nfsd4_interssc_disconnect.exit73

nfsd4_interssc_disconnect.exit73:                 ; preds = %if.then.i.i72, %if.then10.nfsd4_interssc_disconnect.exit73_crit_edge
  tail call void @mntput(ptr noundef %25) #22
  br label %do_callback

if.end14:                                         ; preds = %nfs42_ssc_open.exit.if.end14_crit_edge, %entry.if.end14_crit_edge
  %call15 = tail call fastcc i32 @nfsd4_do_copy(ptr noundef %data, i1 noundef zeroext false)
  %nfserr16 = getelementptr inbounds %struct.nfsd4_copy, ptr %data, i32 0, i32 10
  %31 = ptrtoint ptr %nfserr16 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call15, ptr %nfserr16, align 8
  br label %do_callback

do_callback:                                      ; preds = %if.end14, %nfsd4_interssc_disconnect.exit73, %nfsd4_interssc_disconnect.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %32 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i75 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %32, i32 noundef 3520, i32 noundef 1576) #27
  %tobool18.not = icmp eq ptr %call7.i.i75, null
  br i1 %tobool18.not, label %do_callback.out_crit_edge, label %if.end20

do_callback.out_crit_edge:                        ; preds = %do_callback
  call void @__sanitizer_cov_trace_pc() #24
  br label %out

if.end20:                                         ; preds = %do_callback
  call void @__sanitizer_cov_trace_pc() #24
  %refcount = getelementptr inbounds %struct.nfsd4_copy, ptr %call7.i.i75, i32 0, i32 18
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #22
  %33 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile i32 1, ptr %refcount, align 8
  %cp_res = getelementptr inbounds %struct.nfsd4_copy, ptr %call7.i.i75, i32 0, i32 8
  %cp_res21 = getelementptr inbounds %struct.nfsd4_copy, ptr %data, i32 0, i32 8
  %34 = call ptr @memcpy(ptr %cp_res, ptr %cp_res21, i32 40)
  %cp_clp = getelementptr inbounds %struct.nfsd4_copy, ptr %data, i32 0, i32 12
  %35 = ptrtoint ptr %cp_clp to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cp_clp, align 8
  %cp_clp22 = getelementptr inbounds %struct.nfsd4_copy, ptr %call7.i.i75, i32 0, i32 12
  %37 = ptrtoint ptr %cp_clp22 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %cp_clp22, align 8
  %nfserr23 = getelementptr inbounds %struct.nfsd4_copy, ptr %data, i32 0, i32 10
  %38 = ptrtoint ptr %nfserr23 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %nfserr23, align 8
  %nfserr24 = getelementptr inbounds %struct.nfsd4_copy, ptr %call7.i.i75, i32 0, i32 10
  %40 = ptrtoint ptr %nfserr24 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %nfserr24, align 8
  %fh = getelementptr inbounds %struct.nfsd4_copy, ptr %call7.i.i75, i32 0, i32 11
  %fh25 = getelementptr inbounds %struct.nfsd4_copy, ptr %data, i32 0, i32 11
  %41 = call ptr @memcpy(ptr %fh, ptr %fh25, i32 132)
  %cp_cb = getelementptr inbounds %struct.nfsd4_copy, ptr %call7.i.i75, i32 0, i32 9
  tail call void @nfsd4_init_cb(ptr noundef %cp_cb, ptr noundef %36, ptr noundef nonnull @nfsd4_cb_offload_ops, i32 noundef 3) #22
  %42 = ptrtoint ptr %cp_clp to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cp_clp, align 8
  %cb_stateid = getelementptr inbounds %struct.nfsd4_copy, ptr %data, i32 0, i32 8, i32 3
  %cp_count = getelementptr inbounds %struct.nfsd4_copy, ptr %data, i32 0, i32 4
  %44 = ptrtoint ptr %cp_count to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %cp_count, align 8
  %46 = ptrtoint ptr %nfserr23 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %nfserr23, align 8
  tail call fastcc void @trace_nfsd_cb_offload(ptr noundef %43, ptr noundef %cb_stateid, ptr noundef %fh25, i64 noundef %45, i32 noundef %47)
  tail call void @nfsd4_run_cb(ptr noundef %cp_cb) #22
  br label %out

out:                                              ; preds = %if.end20, %do_callback.out_crit_edge
  %48 = ptrtoint ptr %cp_intra to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %cp_intra, align 4, !range !365
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool33.not = icmp eq i8 %49, 0
  br i1 %tobool33.not, label %if.then34, label %out.if.end36_crit_edge

out.if.end36_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end36

if.then34:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #24
  %nf_src35 = getelementptr inbounds %struct.nfsd4_copy, ptr %data, i32 0, i32 13
  %50 = ptrtoint ptr %nf_src35 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %nf_src35, align 4
  tail call void @kfree(ptr noundef %51) #22
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %out.if.end36_crit_edge
  tail call fastcc void @cleanup_async_copy(ptr noundef %data)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfsd4_do_copy(ptr noundef %copy, i1 noundef zeroext %sync) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %nf_dst.i = getelementptr inbounds %struct.nfsd4_copy, ptr %copy, i32 0, i32 14
  %0 = ptrtoint ptr %nf_dst.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nf_dst.i, align 8
  %nf_file.i = getelementptr inbounds %struct.nfsd_file, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %nf_file.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nf_file.i, align 4
  %nf_src.i = getelementptr inbounds %struct.nfsd4_copy, ptr %copy, i32 0, i32 13
  %4 = ptrtoint ptr %nf_src.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nf_src.i, align 4
  %nf_file1.i = getelementptr inbounds %struct.nfsd_file, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %nf_file1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nf_file1.i, align 4
  %cp_count.i = getelementptr inbounds %struct.nfsd4_copy, ptr %copy, i32 0, i32 4
  %8 = ptrtoint ptr %cp_count.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %cp_count.i, align 8
  %cp_src_pos.i = getelementptr inbounds %struct.nfsd4_copy, ptr %copy, i32 0, i32 2
  %10 = ptrtoint ptr %cp_src_pos.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %cp_src_pos.i, align 8
  %cp_dst_pos.i = getelementptr inbounds %struct.nfsd4_copy, ptr %copy, i32 0, i32 3
  %12 = ptrtoint ptr %cp_dst_pos.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %cp_dst_pos.i, align 8
  %call65.i = tail call zeroext i1 @kthread_should_stop() #22
  br i1 %call65.i, label %entry.do.end.i_crit_edge, label %if.end3.lr.ph.i

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end.i

if.end3.lr.ph.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %cmp.i = icmp eq i64 %9, 0
  %spec.store.select.i = select i1 %cmp.i, i64 -1, i64 %9
  %cp_res.i = getelementptr inbounds %struct.nfsd4_copy, ptr %copy, i32 0, i32 8
  %cp_synchronous.i = getelementptr inbounds %struct.nfsd4_copy, ptr %copy, i32 0, i32 7
  br label %if.end3.i

do.body.i:                                        ; preds = %land.rhs.i
  %add12.i = add i64 %dst_pos.068.i, %conv64.i
  %add10.i = add i64 %src_pos.067.i, %conv64.i
  %call.i = tail call zeroext i1 @kthread_should_stop() #22
  br i1 %call.i, label %do.body.i.do.end.i_crit_edge, label %do.body.i.if.end3.i_crit_edge

do.body.i.if.end3.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end3.i

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end.i

if.end3.i:                                        ; preds = %do.body.i.if.end3.i_crit_edge, %if.end3.lr.ph.i
  %dst_pos.068.i = phi i64 [ %13, %if.end3.lr.ph.i ], [ %add12.i, %do.body.i.if.end3.i_crit_edge ]
  %src_pos.067.i = phi i64 [ %11, %if.end3.lr.ph.i ], [ %add10.i, %do.body.i.if.end3.i_crit_edge ]
  %bytes_total.066.i = phi i64 [ %spec.store.select.i, %if.end3.lr.ph.i ], [ %sub.i, %do.body.i.if.end3.i_crit_edge ]
  %call4.i = tail call i32 @nfsd_copy_file_range(ptr noundef %7, i64 noundef %src_pos.067.i, ptr noundef %3, i64 noundef %dst_pos.068.i, i64 noundef %bytes_total.066.i) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 1
  br i1 %cmp5.i, label %if.end3.i.do.end.i_crit_edge, label %if.end7.i

if.end3.i.do.end.i_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end.i

if.end7.i:                                        ; preds = %if.end3.i
  %conv64.i = zext i32 %call4.i to i64
  %sub.i = sub i64 %bytes_total.066.i, %conv64.i
  %14 = ptrtoint ptr %cp_res.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %cp_res.i, align 8
  %add.i = add i64 %15, %conv64.i
  store i64 %add.i, ptr %cp_res.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %cmp13.not.i = icmp eq i64 %sub.i, 0
  br i1 %cmp13.not.i, label %if.end7.i.do.end.i_crit_edge, label %land.rhs.i

if.end7.i.do.end.i_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end.i

land.rhs.i:                                       ; preds = %if.end7.i
  %16 = ptrtoint ptr %cp_synchronous.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cp_synchronous.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %do.body.i, label %land.rhs.i.do.end.i_crit_edge

land.rhs.i.do.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end.i

do.end.i:                                         ; preds = %land.rhs.i.do.end.i_crit_edge, %if.end7.i.do.end.i_crit_edge, %if.end3.i.do.end.i_crit_edge, %do.body.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %bytes_copied.1.i = phi i32 [ 0, %entry.do.end.i_crit_edge ], [ %call4.i, %do.body.i.do.end.i_crit_edge ], [ %call4.i, %if.end3.i.do.end.i_crit_edge ], [ %call4.i, %if.end7.i.do.end.i_crit_edge ], [ %call4.i, %land.rhs.i.do.end.i_crit_edge ]
  %cp_synchronous15.i = getelementptr inbounds %struct.nfsd4_copy, ptr %copy, i32 0, i32 7
  %18 = ptrtoint ptr %cp_synchronous15.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cp_synchronous15.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool16.not.i = icmp eq i32 %19, 0
  br i1 %tobool16.not.i, label %land.lhs.true.i, label %do.end.i._nfsd_copy_file_range.exit_crit_edge

do.end.i._nfsd_copy_file_range.exit_crit_edge:    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %_nfsd_copy_file_range.exit

land.lhs.true.i:                                  ; preds = %do.end.i
  %cp_res17.i = getelementptr inbounds %struct.nfsd4_copy, ptr %copy, i32 0, i32 8
  %20 = ptrtoint ptr %cp_res17.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %cp_res17.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %21)
  %cmp19.not.i = icmp eq i64 %21, 0
  br i1 %cmp19.not.i, label %land.lhs.true.i._nfsd_copy_file_range.exit_crit_edge, label %do.end24.i

land.lhs.true.i._nfsd_copy_file_range.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %_nfsd_copy_file_range.exit

do.end24.i:                                       ; preds = %land.lhs.true.i
  %f_wb_err.i = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 19
  %22 = ptrtoint ptr %f_wb_err.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %f_wb_err.i, align 8
  %24 = ptrtoint ptr %cp_dst_pos.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %cp_dst_pos.i, align 8
  %call28.i = tail call i32 @vfs_fsync_range(ptr noundef %3, i64 noundef %25, i64 noundef %21, i32 noundef 0) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %if.end32.i, label %do.end24.i._nfsd_copy_file_range.exit_crit_edge

do.end24.i._nfsd_copy_file_range.exit_crit_edge:  ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %_nfsd_copy_file_range.exit

if.end32.i:                                       ; preds = %do.end24.i
  %f_mapping.i = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 18
  %26 = ptrtoint ptr %f_mapping.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %f_mapping.i, align 4
  %wb_err.i.i = getelementptr inbounds %struct.address_space, ptr %27, i32 0, i32 11
  %call.i.i = tail call i32 @errseq_check(ptr noundef %wb_err.i.i, i32 noundef %23) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool33.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool33.not.i, label %if.then34.i, label %if.end32.i._nfsd_copy_file_range.exit_crit_edge

if.end32.i._nfsd_copy_file_range.exit_crit_edge:  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %_nfsd_copy_file_range.exit

if.then34.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #24
  %committed.i = getelementptr inbounds %struct.nfsd4_copy, ptr %copy, i32 0, i32 23
  %28 = ptrtoint ptr %committed.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %committed.i, align 4
  br label %_nfsd_copy_file_range.exit

_nfsd_copy_file_range.exit:                       ; preds = %if.then34.i, %if.end32.i._nfsd_copy_file_range.exit_crit_edge, %do.end24.i._nfsd_copy_file_range.exit_crit_edge, %land.lhs.true.i._nfsd_copy_file_range.exit_crit_edge, %do.end.i._nfsd_copy_file_range.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes_copied.1.i)
  %cmp = icmp slt i32 %bytes_copied.1.i, 0
  br i1 %cmp, label %land.lhs.true, label %_nfsd_copy_file_range.exit.if.else_crit_edge

_nfsd_copy_file_range.exit.if.else_crit_edge:     ; preds = %_nfsd_copy_file_range.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.else

land.lhs.true:                                    ; preds = %_nfsd_copy_file_range.exit
  %cp_res = getelementptr inbounds %struct.nfsd4_copy, ptr %copy, i32 0, i32 8
  %29 = ptrtoint ptr %cp_res to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %cp_res, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %30)
  %tobool.not = icmp eq i64 %30, 0
  br i1 %tobool.not, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  %call1 = tail call i32 @nfserrno(i32 noundef %bytes_copied.1.i) #22
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %_nfsd_copy_file_range.exit.if.else_crit_edge
  %committed.i18 = getelementptr inbounds %struct.nfsd4_copy, ptr %copy, i32 0, i32 23
  %31 = ptrtoint ptr %committed.i18 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %committed.i18, align 4, !range !365
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i19 = icmp eq i8 %32, 0
  %cond.i = select i1 %tobool.not.i19, i32 0, i32 2
  %wr_stable_how.i = getelementptr inbounds %struct.nfsd4_copy, ptr %copy, i32 0, i32 8, i32 1
  %33 = ptrtoint ptr %wr_stable_how.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %cond.i, ptr %wr_stable_how.i, align 8
  %conv.i = zext i1 %sync to i32
  %34 = ptrtoint ptr %cp_synchronous15.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv.i, ptr %cp_synchronous15.i, align 8
  %wr_verifier.i = getelementptr inbounds %struct.nfsd4_copy, ptr %copy, i32 0, i32 8, i32 2
  %cp_clp.i = getelementptr inbounds %struct.nfsd4_copy, ptr %copy, i32 0, i32 12
  %35 = ptrtoint ptr %cp_clp.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cp_clp.i, align 8
  %net.i = getelementptr inbounds %struct.nfs4_client, ptr %36, i32 0, i32 40
  %37 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %net.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %39 = load i32, ptr @nfsd_net_id, align 4
  %call.i.i21 = tail call fastcc ptr @net_generic(ptr noundef %38, i32 noundef %39) #22
  tail call void @nfsd_copy_write_verifier(ptr noundef %wr_verifier.i, ptr noundef %call.i.i21) #22
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %status.0 = phi i32 [ 0, %if.else ], [ %call1, %if.then ]
  %cp_intra = getelementptr inbounds %struct.nfsd4_copy, ptr %copy, i32 0, i32 6
  %40 = ptrtoint ptr %cp_intra to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %cp_intra, align 4, !range !365
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool3.not = icmp eq i8 %41, 0
  br i1 %tobool3.not, label %if.then4, label %if.else5

if.then4:                                         ; preds = %if.end
  %ss_mnt = getelementptr inbounds %struct.nfsd4_copy, ptr %copy, i32 0, i32 20
  %42 = ptrtoint ptr %ss_mnt to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ss_mnt, align 8
  %44 = ptrtoint ptr %nf_src.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %nf_src.i, align 4
  %46 = ptrtoint ptr %nf_dst.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %nf_dst.i, align 8
  %nf_net.i = getelementptr inbounds %struct.nfsd_file, ptr %47, i32 0, i32 5
  %48 = ptrtoint ptr %nf_net.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %nf_net.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %50 = load i32, ptr @nfsd_net_id, align 4
  %call.i22 = tail call fastcc ptr @net_generic(ptr noundef %49, i32 noundef %50) #22
  %nf_file.i23 = getelementptr inbounds %struct.nfsd_file, ptr %45, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_ssc_client_tbl to i32))
  %51 = load ptr, ptr @nfs_ssc_client_tbl, align 4
  %tobool.not.i.i = icmp eq ptr %51, null
  br i1 %tobool.not.i.i, label %if.then4.nfs42_ssc_close.exit.i_crit_edge, label %if.then.i46.i

if.then4.nfs42_ssc_close.exit.i_crit_edge:        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #24
  br label %nfs42_ssc_close.exit.i

if.then.i46.i:                                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #24
  %52 = ptrtoint ptr %nf_file.i23 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %nf_file.i23, align 4
  %sco_close.i.i = getelementptr inbounds %struct.nfs4_ssc_client_ops, ptr %51, i32 0, i32 1
  %54 = ptrtoint ptr %sco_close.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sco_close.i.i, align 4
  tail call void %55(ptr noundef %53) #22
  br label %nfs42_ssc_close.exit.i

nfs42_ssc_close.exit.i:                           ; preds = %if.then.i46.i, %if.then4.nfs42_ssc_close.exit.i_crit_edge
  tail call void @nfsd_file_put(ptr noundef %47) #22
  %56 = ptrtoint ptr %nf_file.i23 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %nf_file.i23, align 4
  tail call void @fput(ptr noundef %57) #22
  %tobool.not.i24 = icmp eq ptr %call.i22, null
  br i1 %tobool.not.i24, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %nfs42_ssc_close.exit.i
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @mntput(ptr noundef %43) #22
  br label %if.end8

if.end.i:                                         ; preds = %nfs42_ssc_close.exit.i
  %nfsd_ssc_lock.i = getelementptr inbounds %struct.nfsd_net, ptr %call.i22, i32 0, i32 55
  tail call void @_raw_spin_lock(ptr noundef %nfsd_ssc_lock.i) #22
  %58 = load i32, ptr @nfsd4_ssc_umount_timeout, align 4
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %58) #22
  %nfsd_ssc_mount_list.i = getelementptr inbounds %struct.nfsd_net, ptr %call.i22, i32 0, i32 56
  %mnt_sb10.i = getelementptr inbounds %struct.vfsmount, ptr %43, i32 0, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end.i
  %ni.0.in.i = phi ptr [ %nfsd_ssc_mount_list.i, %if.end.i ], [ %ni.0.i, %for.body.i.for.cond.i_crit_edge ]
  %59 = ptrtoint ptr %ni.0.in.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %ni.0.i = load ptr, ptr %ni.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %ni.0.i, %nfsd_ssc_mount_list.i
  br i1 %cmp.not.i, label %if.then24.critedge.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %nsui_vfsmount.i = getelementptr inbounds %struct.nfsd4_ssc_umount_item, ptr %ni.0.i, i32 0, i32 4
  %60 = ptrtoint ptr %nsui_vfsmount.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %nsui_vfsmount.i, align 4
  %mnt_sb.i = getelementptr inbounds %struct.vfsmount, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %mnt_sb.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mnt_sb.i, align 4
  %64 = ptrtoint ptr %mnt_sb10.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mnt_sb10.i, align 4
  %cmp11.i = icmp eq ptr %63, %65
  br i1 %cmp11.i, label %if.then12.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.cond.i

if.then12.i:                                      ; preds = %for.body.i
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ni.0.i) #22
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then12.i.list_del.exit.i_crit_edge

if.then12.i.list_del.exit.i_crit_edge:            ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #24
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %ni.0.i, i32 0, i32 1
  %66 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %prev.i.i.i, align 4
  %68 = ptrtoint ptr %ni.0.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ni.0.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %67, ptr %prev1.i.i.i.i, align 4
  %71 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile ptr %69, ptr %67, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then12.i.list_del.exit.i_crit_edge
  %72 = ptrtoint ptr %ni.0.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr inttoptr (i32 256 to ptr), ptr %ni.0.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %ni.0.i, i32 0, i32 1
  %73 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %nsui_refcnt.i = getelementptr inbounds %struct.nfsd4_ssc_umount_item, ptr %ni.0.i, i32 0, i32 2
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nsui_refcnt.i, i32 noundef 4) #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !359
  tail call void @llvm.prefetch.p0(ptr %nsui_refcnt.i, i32 1, i32 3, i32 1) #22
  %74 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nsui_refcnt.i, ptr %nsui_refcnt.i, i32 1, ptr elementtype(i32) %nsui_refcnt.i) #22, !srcloc !360
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %74, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp slt i32 %asmresult.i.i.i.i.i.i, 2
  br i1 %cmp.i.i.i, label %if.then3.i.i.i, label %list_del.exit.i.refcount_dec.exit.i_crit_edge, !prof !364

list_del.exit.i.refcount_dec.exit.i_crit_edge:    ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %refcount_dec.exit.i

if.then3.i.i.i:                                   ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @refcount_warn_saturate(ptr noundef %nsui_refcnt.i, i32 noundef 4) #22
  br label %refcount_dec.exit.i

refcount_dec.exit.i:                              ; preds = %if.then3.i.i.i, %list_del.exit.i.refcount_dec.exit.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %75 = load volatile i32, ptr @jiffies, align 128
  %add.i25 = add i32 %75, %call2.i.i
  %nsui_expire.i = getelementptr inbounds %struct.nfsd4_ssc_umount_item, ptr %ni.0.i, i32 0, i32 3
  %76 = ptrtoint ptr %nsui_expire.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %add.i25, ptr %nsui_expire.i, align 4
  %prev.i48.i = getelementptr inbounds %struct.nfsd_net, ptr %call.i22, i32 0, i32 56, i32 1
  %77 = ptrtoint ptr %prev.i48.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %prev.i48.i, align 4
  %call.i.i49.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ni.0.i, ptr noundef %78, ptr noundef %nfsd_ssc_mount_list.i) #22
  br i1 %call.i.i49.i, label %if.end.i.i50.i, label %refcount_dec.exit.i.list_add_tail.exit.i_crit_edge

refcount_dec.exit.i.list_add_tail.exit.i_crit_edge: ; preds = %refcount_dec.exit.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %list_add_tail.exit.i

if.end.i.i50.i:                                   ; preds = %refcount_dec.exit.i
  call void @__sanitizer_cov_trace_pc() #24
  %79 = ptrtoint ptr %prev.i48.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %ni.0.i, ptr %prev.i48.i, align 4
  %80 = ptrtoint ptr %ni.0.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %nfsd_ssc_mount_list.i, ptr %ni.0.i, align 4
  %81 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %78, ptr %prev.i.i, align 4
  %82 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %ni.0.i, ptr %78, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i50.i, %refcount_dec.exit.i.list_add_tail.exit.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %nfsd_ssc_lock.i) #22
  br label %if.end8

if.then24.critedge.i:                             ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @_raw_spin_unlock(ptr noundef %nfsd_ssc_lock.i) #22
  tail call void @mntput(ptr noundef %43) #22
  br label %if.end8

if.else5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  %83 = ptrtoint ptr %nf_src.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %nf_src.i, align 4
  %85 = ptrtoint ptr %nf_dst.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %nf_dst.i, align 8
  tail call void @nfsd_file_put(ptr noundef %84) #22
  tail call void @nfsd_file_put(ptr noundef %86) #22
  br label %if.end8

if.end8:                                          ; preds = %if.else5, %if.then24.critedge.i, %list_add_tail.exit.i, %if.then.i
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cleanup_async_copy(ptr noundef %copy) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @nfs4_free_copy_state(ptr noundef %copy) #22
  %nf_dst = getelementptr inbounds %struct.nfsd4_copy, ptr %copy, i32 0, i32 14
  %0 = ptrtoint ptr %nf_dst to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nf_dst, align 8
  tail call void @nfsd_file_put(ptr noundef %1) #22
  %cp_intra = getelementptr inbounds %struct.nfsd4_copy, ptr %copy, i32 0, i32 6
  %2 = ptrtoint ptr %cp_intra to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cp_intra, align 4, !range !365
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  %nf_src = getelementptr inbounds %struct.nfsd4_copy, ptr %copy, i32 0, i32 13
  %4 = ptrtoint ptr %nf_src to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nf_src, align 4
  tail call void @nfsd_file_put(ptr noundef %5) #22
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %cp_clp = getelementptr inbounds %struct.nfsd4_copy, ptr %copy, i32 0, i32 12
  %6 = ptrtoint ptr %cp_clp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cp_clp, align 8
  %async_lock = getelementptr inbounds %struct.nfs4_client, ptr %7, i32 0, i32 42
  tail call void @_raw_spin_lock(ptr noundef %async_lock) #22
  %copies = getelementptr inbounds %struct.nfsd4_copy, ptr %copy, i32 0, i32 16
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %copies) #22
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  %prev.i.i = getelementptr inbounds %struct.nfsd4_copy, ptr %copy, i32 0, i32 16, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %copies to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %copies, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %14 = ptrtoint ptr %copies to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 256 to ptr), ptr %copies, align 4
  %prev.i = getelementptr inbounds %struct.nfsd4_copy, ptr %copy, i32 0, i32 16, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %16 = ptrtoint ptr %cp_clp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cp_clp, align 8
  %async_lock2 = getelementptr inbounds %struct.nfs4_client, ptr %17, i32 0, i32 42
  tail call void @_raw_spin_unlock(ptr noundef %async_lock2) #22
  %refcount.i = getelementptr inbounds %struct.nfsd4_copy, ptr %copy, i32 0, i32 18
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !359
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #22
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #22, !srcloc !360
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.end.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.nfs4_put_copy.exit_crit_edge, label %if.then10.i.i.i.i, !prof !361

if.end5.i.i.i.i.nfs4_put_copy.exit_crit_edge:     ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %nfs4_put_copy.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #22
  br label %nfs4_put_copy.exit

if.end.i:                                         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !362
  tail call void @kfree(ptr noundef %copy) #22
  br label %nfs4_put_copy.exit

nfs4_put_copy.exit:                               ; preds = %if.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.nfs4_put_copy.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_uaddr2sockaddr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_ntop(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #17

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_fs_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfsd4_ssc_setup_dul(ptr noundef %nn, ptr nocapture noundef readonly %ipaddr, ptr nocapture noundef writeonly %retwork, ptr nocapture noundef writeonly %ss_mnt) unnamed_addr #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #22
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !349) #22
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %0, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @autoremove_wake_function, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %2, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %2, ptr %3, align 4
  %13 = ptrtoint ptr %ss_mnt to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %ss_mnt, align 4
  %14 = ptrtoint ptr %retwork to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %retwork, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 88) #27
  %nfsd_ssc_lock = getelementptr inbounds %struct.nfsd_net, ptr %nn, i32 0, i32 55
  %nfsd_ssc_mount_list = getelementptr inbounds %struct.nfsd_net, ptr %nn, i32 0, i32 56
  %nfsd_ssc_waitq = getelementptr inbounds %struct.nfsd_net, ptr %nn, i32 0, i32 57
  br label %try_again

try_again:                                        ; preds = %if.end24, %entry
  call void @_raw_spin_lock(ptr noundef %nfsd_ssc_lock) #22
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %try_again
  %ni.0.in = phi ptr [ %nfsd_ssc_mount_list, %try_again ], [ %ni.0, %for.body.for.cond_crit_edge ]
  %16 = ptrtoint ptr %ni.0.in to i32
  call void @__asan_load4_noabort(i32 %16)
  %ni.0 = load ptr, ptr %ni.0.in, align 4
  %cmp.not = icmp eq ptr %ni.0, %nfsd_ssc_mount_list
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %nsui_ipaddr = getelementptr inbounds %struct.nfsd4_ssc_umount_item, ptr %ni.0, i32 0, i32 5
  %call13 = call i32 @strncmp(ptr noundef %nsui_ipaddr, ptr noundef %ipaddr, i32 noundef 63)
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %if.end, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.cond

if.end:                                           ; preds = %for.body
  %nsui_busy = getelementptr inbounds %struct.nfsd4_ssc_umount_item, ptr %ni.0, i32 0, i32 1
  %17 = ptrtoint ptr %nsui_busy to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %nsui_busy, align 4, !range !365
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool14.not = icmp eq i8 %18, 0
  br i1 %tobool14.not, label %if.end26, label %if.then15

if.then15:                                        ; preds = %if.end
  call void @prepare_to_wait(ptr noundef %nfsd_ssc_waitq, ptr noundef nonnull %wait, i32 noundef 1) #22
  call void @_raw_spin_unlock(ptr noundef %nfsd_ssc_lock) #22
  %19 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %stack.i.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %22, align 4
  %25 = and i32 %24, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.then15.if.then23_crit_edge, !prof !361

if.then15.if.then23_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then23

signal_pending.exit:                              ; preds = %if.then15
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %22, align 4
  %and1.i.i.i.i.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool20.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool20.not, label %lor.lhs.false, label %signal_pending.exit.if.then23_crit_edge

signal_pending.exit.if.then23_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then23

lor.lhs.false:                                    ; preds = %signal_pending.exit
  %call21 = call i32 @schedule_timeout(i32 noundef 2000) #22
  %cmp22 = icmp eq i32 %call21, 0
  br i1 %cmp22, label %lor.lhs.false.if.then23_crit_edge, label %if.end24

lor.lhs.false.if.then23_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then23

if.then23:                                        ; preds = %lor.lhs.false.if.then23_crit_edge, %signal_pending.exit.if.then23_crit_edge, %if.then15.if.then23_crit_edge
  call void @kfree(ptr noundef %call7.i.i) #22
  br label %cleanup

if.end24:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #24
  call void @finish_wait(ptr noundef %nfsd_ssc_waitq, ptr noundef nonnull %wait) #22
  br label %try_again

if.end26:                                         ; preds = %if.end
  %nsui_vfsmount = getelementptr inbounds %struct.nfsd4_ssc_umount_item, ptr %ni.0, i32 0, i32 4
  %28 = ptrtoint ptr %nsui_vfsmount to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %nsui_vfsmount, align 4
  %30 = ptrtoint ptr %ss_mnt to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %ss_mnt, align 4
  %nsui_refcnt = getelementptr inbounds %struct.nfsd4_ssc_umount_item, ptr %ni.0, i32 0, i32 2
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %nsui_refcnt, i32 noundef 4) #22
  call void @llvm.prefetch.p0(ptr %nsui_refcnt, i32 1, i32 3, i32 1) #22
  %31 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nsui_refcnt, ptr %nsui_refcnt, i32 1, ptr elementtype(i32) %nsui_refcnt) #22, !srcloc !363
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.end26.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !364

if.end26.if.end15.sink.split.i.i.i_crit_edge:     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.end26
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %32 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %32)
  %.not.i.i.i = icmp sgt i32 %32, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !361

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.end26.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.end26.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %nsui_refcnt, i32 noundef %.sink.i.i.i) #22
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %nfsd_ssc_lock) #22
  call void @kfree(ptr noundef %call7.i.i) #22
  br label %cleanup

for.end:                                          ; preds = %for.cond
  %tobool33.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool33.not, label %for.end.if.end42_crit_edge, label %if.then34

for.end.if.end42_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end42

if.then34:                                        ; preds = %for.end
  %nsui_ipaddr35 = getelementptr inbounds %struct.nfsd4_ssc_umount_item, ptr %call7.i.i, i32 0, i32 5
  %call37 = call ptr @strncpy(ptr noundef %nsui_ipaddr35, ptr noundef %ipaddr, i32 noundef 63)
  %nsui_refcnt38 = getelementptr inbounds %struct.nfsd4_ssc_umount_item, ptr %call7.i.i, i32 0, i32 2
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %nsui_refcnt38, i32 noundef 4) #22
  %33 = ptrtoint ptr %nsui_refcnt38 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile i32 2, ptr %nsui_refcnt38, align 4
  %nsui_busy39 = getelementptr inbounds %struct.nfsd4_ssc_umount_item, ptr %call7.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %nsui_busy39 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %nsui_busy39, align 8
  %prev.i = getelementptr inbounds %struct.nfsd_net, ptr %nn, i32 0, i32 56, i32 1
  %35 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %36, ptr noundef %nfsd_ssc_mount_list) #22
  br i1 %call.i.i, label %if.end.i.i, label %if.then34.list_add_tail.exit_crit_edge

if.then34.list_add_tail.exit_crit_edge:           ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #24
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #24
  %37 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %38 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %nfsd_ssc_mount_list, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %39 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %prev3.i.i, align 4
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %call7.i.i, ptr %36, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then34.list_add_tail.exit_crit_edge
  %41 = ptrtoint ptr %retwork to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call7.i.i, ptr %retwork, align 4
  br label %if.end42

if.end42:                                         ; preds = %list_add_tail.exit, %for.end.if.end42_crit_edge
  call void @_raw_spin_unlock(ptr noundef %nfsd_ssc_lock) #22
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %refcount_inc.exit, %if.then23
  %retval.0 = phi i32 [ 11, %if.then23 ], [ 0, %refcount_inc.exit ], [ 0, %if.end42 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #22
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vfs_kern_mount(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nfsd4_ssc_cancel_dul_work(ptr noundef %nn, ptr noundef %work) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %nfsd_ssc_lock = getelementptr inbounds %struct.nfsd_net, ptr %nn, i32 0, i32 55
  tail call void @_raw_spin_lock(ptr noundef %nfsd_ssc_lock) #22
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %work) #22
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %work, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %work to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %work, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %work, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %work, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %nfsd_ssc_waitq = getelementptr inbounds %struct.nfsd_net, ptr %nn, i32 0, i32 57
  tail call void @__wake_up(ptr noundef %nfsd_ssc_waitq, i32 noundef 3, i32 noundef 0, ptr noundef null) #22
  tail call void @_raw_spin_unlock(ptr noundef %nfsd_ssc_lock) #22
  tail call void @kfree(ptr noundef %work) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nfsd4_ssc_update_dul_work(ptr noundef %nn, ptr nocapture noundef writeonly %work, ptr noundef %ss_mnt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %nfsd_ssc_lock = getelementptr inbounds %struct.nfsd_net, ptr %nn, i32 0, i32 55
  tail call void @_raw_spin_lock(ptr noundef %nfsd_ssc_lock) #22
  %nsui_vfsmount = getelementptr inbounds %struct.nfsd4_ssc_umount_item, ptr %work, i32 0, i32 4
  %0 = ptrtoint ptr %nsui_vfsmount to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %ss_mnt, ptr %nsui_vfsmount, align 4
  %nsui_busy = getelementptr inbounds %struct.nfsd4_ssc_umount_item, ptr %work, i32 0, i32 1
  %1 = ptrtoint ptr %nsui_busy to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %nsui_busy, align 4
  %nfsd_ssc_waitq = getelementptr inbounds %struct.nfsd_net, ptr %nn, i32 0, i32 57
  tail call void @__wake_up(ptr noundef %nfsd_ssc_waitq, i32 noundef 3, i32 noundef 0, ptr noundef null) #22
  tail call void @_raw_spin_unlock(ptr noundef %nfsd_ssc_lock) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #18

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfsd4_verify_copy(ptr noundef %rqstp, ptr noundef %cstate, ptr noundef %src_stateid, ptr noundef %src, ptr noundef %dst_stateid, ptr noundef %dst) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %fh_dentry = getelementptr inbounds %struct.nfsd4_compound_state, ptr %cstate, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %fh_dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fh_dentry, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end:                                           ; preds = %entry
  %save_fh = getelementptr inbounds %struct.nfsd4_compound_state, ptr %cstate, i32 0, i32 1
  %call = tail call i32 @nfs4_preprocess_stateid_op(ptr noundef %rqstp, ptr noundef %cstate, ptr noundef %save_fh, ptr noundef %src_stateid, i32 noundef 16, ptr noundef %src, ptr noundef null) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end11, label %do.body

do.body:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %2 = load i32, ptr @nfsd_debug, align 4
  %and = and i32 %2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #24
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.133) #26
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call12 = tail call i32 @nfs4_preprocess_stateid_op(ptr noundef %rqstp, ptr noundef %cstate, ptr noundef %cstate, ptr noundef %dst_stateid, i32 noundef 32, ptr noundef %dst, ptr noundef null) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end27, label %do.body15

do.body15:                                        ; preds = %if.end11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %3 = load i32, ptr @nfsd_debug, align 4
  %and16 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %do.body15.out_put_src_crit_edge, label %do.end21

do.body15.out_put_src_crit_edge:                  ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #24
  br label %out_put_src

do.end21:                                         ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #24
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.135, ptr noundef nonnull @.str.133) #26
  br label %out_put_src

if.end27:                                         ; preds = %if.end11
  %4 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %src, align 4
  %nf_file = getelementptr inbounds %struct.nfsd_file, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %nf_file to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nf_file, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %f_inode.i, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %9, align 8
  %12 = and i16 %11, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %12)
  %cmp = icmp eq i16 %12, -32768
  br i1 %cmp, label %lor.lhs.false, label %if.end27.if.then38_crit_edge

if.end27.if.then38_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then38

lor.lhs.false:                                    ; preds = %if.end27
  %13 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dst, align 4
  %nf_file31 = getelementptr inbounds %struct.nfsd_file, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %nf_file31 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %nf_file31, align 4
  %f_inode.i51 = getelementptr inbounds %struct.file, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %f_inode.i51 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %f_inode.i51, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %18, align 8
  %21 = and i16 %20, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %21)
  %cmp36 = icmp eq i16 %21, -32768
  br i1 %cmp36, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.then38_crit_edge

lor.lhs.false.if.then38_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then38

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.then38:                                        ; preds = %lor.lhs.false.if.then38_crit_edge, %if.end27.if.then38_crit_edge
  %22 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dst, align 4
  tail call void @nfsd_file_put(ptr noundef %23) #22
  br label %out_put_src

out_put_src:                                      ; preds = %if.then38, %do.end21, %do.body15.out_put_src_crit_edge
  %status.1 = phi i32 [ %call12, %do.end21 ], [ %call12, %do.body15.out_put_src_crit_edge ], [ 10083, %if.then38 ]
  %24 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %src, align 4
  tail call void @nfsd_file_put(ptr noundef %25) #22
  br label %cleanup

cleanup:                                          ; preds = %out_put_src, %lor.lhs.false.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 10020, %entry.cleanup_crit_edge ], [ %call, %do.end ], [ %call, %do.body.cleanup_crit_edge ], [ %status.1, %out_put_src ], [ 0, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfsd_file_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfsd4_init_cb(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfsd_cb_offload(ptr noundef %clp, ptr noundef %stp, ptr noundef %fh, i64 noundef %count, i32 noundef %status) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_cb_offload, i32 0, i32 1), ptr blockaddress(@trace_nfsd_cb_offload, %do.body)) #22
          to label %if.end48 [label %do.body], !srcloc !371

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !349) #22
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
  call void @__sanitizer_cov_trace_pc() #24
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !361

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.88, i32 noundef 108, i32 noundef 9, ptr noundef null) #22
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
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #24
  %9 = tail call i32 @llvm.read_register.i32(metadata !349) #22
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !393
  %call42 = tail call i32 @__traceiter_nfsd_cb_offload(ptr noundef null, ptr noundef %clp, ptr noundef %stp, ptr noundef %fh, i64 noundef %count, i32 noundef %status) #22
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !394
  %13 = tail call i32 @llvm.read_register.i32(metadata !349) #22
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !349) #22
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
  call void @__sanitizer_cov_trace_pc() #24
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !361

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #24
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.88, i32 noundef 108, i32 noundef 9, ptr noundef null) #22
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
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !349) #22
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !374
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_cb_offload, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_cb_offload, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nfsd_cb_offload.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @trace_nfsd_cb_offload.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.87, i32 noundef 1134, ptr noundef nonnull @.str.81) #22
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !375
  %31 = tail call i32 @llvm.read_register.i32(metadata !349) #22
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
declare dso_local void @nfsd4_run_cb(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nfsd4_cb_offload_done(ptr nocapture noundef readnone %cb, ptr nocapture noundef readnone %task) #19 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfsd4_cb_offload_release(ptr noundef %cb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %refcount.i = getelementptr i8, ptr %cb, i32 264
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !359
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #22
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #22, !srcloc !360
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.end.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.nfs4_put_copy.exit_crit_edge, label %if.then10.i.i.i.i, !prof !361

if.end5.i.i.i.i.nfs4_put_copy.exit_crit_edge:     ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %nfs4_put_copy.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #22
  br label %nfs4_put_copy.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  %add.ptr = getelementptr i8, ptr %cb, i32 -1144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !362
  tail call void @kfree(ptr noundef %add.ptr) #22
  br label %nfs4_put_copy.exit

nfs4_put_copy.exit:                               ; preds = %if.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.nfs4_put_copy.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfsd_cb_offload(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd_copy_file_range(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_fsync_range(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @errseq_check(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfsd_copy_write_verifier(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mntput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_free_copy_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs4_alloc_init_cpntf_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_put_cpntf_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @manage_cpntf_state(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @vfs_llseek(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd4_clone_file_range(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd_getxattr(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd_setxattr(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd_listxattr(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd_removexattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nfsd4_proc_null(ptr nocapture noundef readnone %rqstp) #19 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfssvc_decode_voidarg(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfssvc_encode_voidres(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd4_proc_compound(ptr noundef %rqstp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_argp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 35
  %0 = ptrtoint ptr %rq_argp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_argp, align 8
  %rq_resp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 36
  %2 = ptrtoint ptr %rq_resp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rq_resp, align 4
  %cstate1 = getelementptr inbounds %struct.nfsd4_compoundres, ptr %3, i32 0, i32 6
  %save_fh3 = getelementptr inbounds %struct.nfsd4_compoundres, ptr %3, i32 0, i32 6, i32 1
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
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %7 = load i32, ptr @nfsd_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %cond, i32 noundef %7)
  %rq_res_stream = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 17
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %rq_res_stream, ptr %3, align 8
  %9 = ptrtoint ptr %rq_res_stream to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rq_res_stream, align 4
  %statusp = getelementptr inbounds %struct.nfsd4_compoundres, ptr %3, i32 0, i32 2
  %11 = ptrtoint ptr %statusp to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %statusp, align 8
  %call7 = tail call ptr @xdr_reserve_space(ptr noundef %rq_res_stream, i32 noundef 4) #22
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 8
  %taglen = getelementptr inbounds %struct.nfsd4_compoundargs, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %taglen to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %taglen, align 4
  %add = add i32 %15, 8
  %call9 = tail call ptr @xdr_reserve_space(ptr noundef %13, i32 noundef %add) #22
  %16 = ptrtoint ptr %taglen to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %taglen, align 4
  %taglen11 = getelementptr inbounds %struct.nfsd4_compoundres, ptr %3, i32 0, i32 3
  %18 = ptrtoint ptr %taglen11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %taglen11, align 4
  %tag = getelementptr inbounds %struct.nfsd4_compoundargs, ptr %1, i32 0, i32 4
  %19 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tag, align 16
  %tag12 = getelementptr inbounds %struct.nfsd4_compoundres, ptr %3, i32 0, i32 4
  %21 = ptrtoint ptr %tag12 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %tag12, align 8
  %rqstp13 = getelementptr inbounds %struct.nfsd4_compoundres, ptr %3, i32 0, i32 1
  %22 = ptrtoint ptr %rqstp13 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %rqstp, ptr %rqstp13, align 4
  %minorversion = getelementptr inbounds %struct.nfsd4_compoundargs, ptr %1, i32 0, i32 5
  %23 = ptrtoint ptr %minorversion to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %minorversion, align 4
  %minorversion14 = getelementptr inbounds %struct.nfsd4_compoundres, ptr %3, i32 0, i32 6, i32 9
  %25 = ptrtoint ptr %minorversion14 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %minorversion14, align 4
  %26 = call ptr @memset(ptr %cstate1, i32 0, i32 360)
  %fh_maxsize.i = getelementptr inbounds %struct.nfsd4_compoundres, ptr %3, i32 0, i32 6, i32 0, i32 1
  %27 = ptrtoint ptr %fh_maxsize.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 128, ptr %fh_maxsize.i, align 4
  %28 = call ptr @memset(ptr %save_fh3, i32 0, i32 360)
  %fh_maxsize.i276 = getelementptr inbounds %struct.nfsd4_compoundres, ptr %3, i32 0, i32 6, i32 1, i32 1
  %29 = ptrtoint ptr %fh_maxsize.i276 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 128, ptr %fh_maxsize.i276, align 4
  %rq_flags = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 33
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %rq_flags) #22
  %30 = ptrtoint ptr %minorversion to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %minorversion, align 4
  %call18 = tail call i32 @nfsd_minorversion(ptr noundef %call, i32 noundef %31, i32 noundef 2) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call18)
  %cmp = icmp slt i32 %call18, 1
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %out

if.end:                                           ; preds = %entry
  %opcnt = getelementptr inbounds %struct.nfsd4_compoundargs, ptr %1, i32 0, i32 6
  %32 = ptrtoint ptr %opcnt to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %opcnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %33)
  %cmp19 = icmp ugt i32 %33, 16
  br i1 %cmp19, label %if.end.out_crit_edge, label %if.end21

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %out

if.end21:                                         ; preds = %if.end
  %ops.i = getelementptr inbounds %struct.nfsd4_compoundargs, ptr %1, i32 0, i32 7
  %34 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ops.i, align 4
  %36 = ptrtoint ptr %minorversion to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %minorversion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp.i = icmp eq i32 %37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp39.not.i = icmp eq i32 %33, 0
  br i1 %cmp.i, label %if.end27, label %if.end.i

if.end.i:                                         ; preds = %if.end21
  br i1 %cmp39.not.i, label %if.end.i.check_if_stalefh_allowed.exit_crit_edge, label %if.end3.i

if.end.i.check_if_stalefh_allowed.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %check_if_stalefh_allowed.exit

if.end3.i:                                        ; preds = %if.end.i
  %status.i = getelementptr inbounds %struct.nfsd4_op, ptr %35, i32 0, i32 2
  %38 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10044, i32 %39)
  %cmp4.i = icmp eq i32 %39, 10044
  br i1 %cmp4.i, label %if.end3.i.for.body.i.preheader_crit_edge, label %if.end6.i

if.end3.i.for.body.i.preheader_crit_edge:         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body.i.preheader

if.end6.i:                                        ; preds = %if.end3.i
  %40 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %35, align 32
  %op_flags.i = getelementptr [0 x %struct.nfsd4_operation], ptr @nfsd4_ops, i32 0, i32 %41, i32 2
  %42 = ptrtoint ptr %op_flags.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %op_flags.i, align 4
  %and.i = and i32 %43, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end6.i.if.then24_crit_edge, label %if.end9.i

if.end6.i.if.then24_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then24

if.end9.i:                                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 53, i32 %41)
  %cmp11.i = icmp eq i32 %41, 53
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp15.not.i = icmp eq i32 %33, 1
  %or.cond = select i1 %cmp11.i, i1 true, i1 %cmp15.not.i
  br i1 %or.cond, label %if.end9.i.for.body.i.preheader_crit_edge, label %if.end9.i.if.then24_crit_edge

if.end9.i.if.then24_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then24

if.end9.i.for.body.i.preheader_crit_edge:         ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body.i.preheader

if.then24:                                        ; preds = %if.end9.i.if.then24_crit_edge, %if.end6.i.if.then24_crit_edge
  %retval.0.i = phi i32 [ 10071, %if.end6.i.if.then24_crit_edge ], [ 10081, %if.end9.i.if.then24_crit_edge ]
  %44 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %retval.0.i, ptr %status.i, align 8
  %opcnt26 = getelementptr inbounds %struct.nfsd4_compoundres, ptr %3, i32 0, i32 5
  %45 = ptrtoint ptr %opcnt26 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %opcnt26, align 4
  br label %encode_op

if.end27:                                         ; preds = %if.end21
  br i1 %cmp39.not.i, label %if.end27.check_if_stalefh_allowed.exit_crit_edge, label %if.end27.for.body.i.preheader_crit_edge

if.end27.for.body.i.preheader_crit_edge:          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body.i.preheader

if.end27.check_if_stalefh_allowed.exit_crit_edge: ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #24
  br label %check_if_stalefh_allowed.exit

for.body.i.preheader:                             ; preds = %if.end27.for.body.i.preheader_crit_edge, %if.end9.i.for.body.i.preheader_crit_edge, %if.end3.i.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.042.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %saved_op.041.i = phi ptr [ %saved_op.1.i, %for.inc.i.for.body.i_crit_edge ], [ null, %for.body.i.preheader ]
  %current_op.040.i = phi ptr [ %current_op.1.i, %for.inc.i.for.body.i_crit_edge ], [ null, %for.body.i.preheader ]
  %46 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ops.i, align 4
  %arrayidx.i = getelementptr %struct.nfsd4_op, ptr %47, i32 %i.042.i
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i, align 32
  %50 = zext i32 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.156)
  switch i32 %49, label %for.inc.fold.split.i [
    i32 22, label %for.body.i.for.inc.i_crit_edge
    i32 32, label %if.then4.i
    i32 31, label %if.then8.i
    i32 60, label %if.then12.i
  ]

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc.i

if.then4.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc.i

if.then8.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc.i

if.then12.i:                                      ; preds = %for.body.i
  %tobool.not.i279 = icmp eq ptr %saved_op.041.i, null
  br i1 %tobool.not.i279, label %if.then13.i, label %if.end.i281

if.then13.i:                                      ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #24
  %status.i280 = getelementptr %struct.nfsd4_op, ptr %47, i32 %i.042.i, i32 2
  %51 = ptrtoint ptr %status.i280 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 10020, ptr %status.i280, align 8
  br label %check_if_stalefh_allowed.exit

if.end.i281:                                      ; preds = %if.then12.i
  %cp_intra.i = getelementptr %struct.nfsd4_op, ptr %47, i32 %i.042.i, i32 4, i32 0, i32 5, i32 1, i32 0, i32 1
  %52 = ptrtoint ptr %cp_intra.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %cp_intra.i, align 4, !range !365
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool15.not.i = icmp eq i8 %53, 0
  br i1 %tobool15.not.i, label %if.then16.i, label %if.end.i281.for.inc.i_crit_edge

if.end.i281.for.inc.i_crit_edge:                  ; preds = %if.end.i281
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc.i

if.then16.i:                                      ; preds = %if.end.i281
  call void @__sanitizer_cov_trace_pc() #24
  %no_verify.i = getelementptr inbounds %struct.nfsd4_op, ptr %saved_op.041.i, i32 0, i32 4, i32 0, i32 0, i32 1, i32 0, i32 1
  %54 = ptrtoint ptr %no_verify.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %no_verify.i, align 4
  br label %for.inc.i

for.inc.fold.split.i:                             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.inc.fold.split.i, %if.then16.i, %if.end.i281.for.inc.i_crit_edge, %if.then8.i, %if.then4.i, %for.body.i.for.inc.i_crit_edge
  %current_op.1.i = phi ptr [ %current_op.040.i, %if.then4.i ], [ %saved_op.041.i, %if.then8.i ], [ %current_op.040.i, %if.end.i281.for.inc.i_crit_edge ], [ %current_op.040.i, %if.then16.i ], [ %arrayidx.i, %for.body.i.for.inc.i_crit_edge ], [ %current_op.040.i, %for.inc.fold.split.i ]
  %saved_op.1.i = phi ptr [ %current_op.040.i, %if.then4.i ], [ %saved_op.041.i, %if.then8.i ], [ %saved_op.041.i, %if.end.i281.for.inc.i_crit_edge ], [ %saved_op.041.i, %if.then16.i ], [ %saved_op.041.i, %for.body.i.for.inc.i_crit_edge ], [ %saved_op.041.i, %for.inc.fold.split.i ]
  %inc.i = add nuw i32 %i.042.i, 1
  %55 = ptrtoint ptr %opcnt to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %opcnt, align 8
  %cmp.i282 = icmp ult i32 %inc.i, %56
  br i1 %cmp.i282, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.check_if_stalefh_allowed.exit_crit_edge

for.inc.i.check_if_stalefh_allowed.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %check_if_stalefh_allowed.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body.i

check_if_stalefh_allowed.exit:                    ; preds = %for.inc.i.check_if_stalefh_allowed.exit_crit_edge, %if.then13.i, %if.end27.check_if_stalefh_allowed.exit_crit_edge, %if.end.i.check_if_stalefh_allowed.exit_crit_edge
  %clp = getelementptr inbounds %struct.nfsd4_compoundres, ptr %3, i32 0, i32 6, i32 3
  %rq_lease_breaker = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 49
  %57 = ptrtoint ptr %rq_lease_breaker to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %clp, ptr %rq_lease_breaker, align 8
  %58 = ptrtoint ptr %opcnt to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %opcnt, align 8
  tail call fastcc void @trace_nfsd_compound(ptr noundef %rqstp, i32 noundef %59)
  br label %while.cond

while.cond:                                       ; preds = %if.then.i298, %nfsd4_op_name.exit.while.cond_crit_edge, %check_if_stalefh_allowed.exit
  %status.0 = phi i32 [ 0, %check_if_stalefh_allowed.exit ], [ %status.1, %nfsd4_op_name.exit.while.cond_crit_edge ], [ %status.1, %if.then.i298 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0)
  %tobool29.not = icmp eq i32 %status.0, 0
  br i1 %tobool29.not, label %land.rhs, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #24
  br label %while.end

land.rhs:                                         ; preds = %while.cond
  %opcnt30 = getelementptr inbounds %struct.nfsd4_compoundres, ptr %3, i32 0, i32 5
  %60 = ptrtoint ptr %opcnt30 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %opcnt30, align 4
  %62 = ptrtoint ptr %opcnt to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %opcnt, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %63)
  %cmp32 = icmp ult i32 %61, %63
  br i1 %cmp32, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #24
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %64 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ops.i, align 4
  %inc = add nuw i32 %61, 1
  %66 = ptrtoint ptr %opcnt30 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %inc, ptr %opcnt30, align 4
  %arrayidx35 = getelementptr %struct.nfsd4_op, ptr %65, i32 %61
  %status36 = getelementptr %struct.nfsd4_op, ptr %65, i32 %61, i32 2
  %67 = ptrtoint ptr %status36 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %status36, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool37.not = icmp eq i32 %68, 0
  br i1 %tobool37.not, label %if.end44, label %if.then38

if.then38:                                        ; preds = %while.body
  %69 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx35, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %70)
  %cmp39 = icmp eq i32 %70, 18
  br i1 %cmp39, label %if.then40, label %if.then38.encode_op_crit_edge

if.then38.encode_op_crit_edge:                    ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #24
  br label %encode_op

if.then40:                                        ; preds = %if.then38
  %u.i = getelementptr %struct.nfsd4_op, ptr %65, i32 %61, i32 4
  %71 = ptrtoint ptr %status36 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %status36, align 8
  %switch.tableidx = add i32 %72, -10018
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %switch.tableidx)
  %73 = icmp ult i32 %switch.tableidx, 19
  br i1 %73, label %switch.hole_check, label %if.then40.if.end.i284_crit_edge

if.then40.if.end.i284_crit_edge:                  ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end.i284

if.end.i284:                                      ; preds = %switch.hole_check.if.end.i284_crit_edge, %if.then40.if.end.i284_crit_edge
  %slot.i.i = getelementptr inbounds %struct.nfsd4_compoundres, ptr %3, i32 0, i32 6, i32 5
  %74 = ptrtoint ptr %slot.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %slot.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %75, null
  br i1 %cmp.i.not.i, label %if.end5.i, label %if.end.i284.nfsd4_open_omfg.exit_crit_edge

if.end.i284.nfsd4_open_omfg.exit_crit_edge:       ; preds = %if.end.i284
  call void @__sanitizer_cov_trace_pc() #24
  br label %nfsd4_open_omfg.exit

if.end5.i:                                        ; preds = %if.end.i284
  call void @__sanitizer_cov_trace_pc() #24
  %op_xdr_error.i = getelementptr %struct.nfsd4_op, ptr %65, i32 %61, i32 4, i32 0, i32 1, i32 1, i32 0, i32 1, i32 192
  %76 = ptrtoint ptr %op_xdr_error.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %72, ptr %op_xdr_error.i, align 8
  %call8.i = tail call i32 @nfsd4_open(ptr noundef %rqstp, ptr noundef %cstate1, ptr noundef %u.i) #22
  br label %nfsd4_open_omfg.exit

switch.hole_check:                                ; preds = %if.then40
  %switch.shifted = lshr i32 262583, %switch.tableidx
  %77 = and i32 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %switch.lobit.not = icmp eq i32 %77, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.end.i284_crit_edge, label %switch.lookup

switch.hole_check.if.end.i284_crit_edge:          ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end.i284

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #24
  %switch.gep = getelementptr inbounds [19 x i32], ptr @switch.table.nfsd4_proc_compound, i32 0, i32 %switch.tableidx
  %78 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %78)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %nfsd4_open_omfg.exit

nfsd4_open_omfg.exit:                             ; preds = %switch.lookup, %if.end5.i, %if.end.i284.nfsd4_open_omfg.exit_crit_edge
  %retval.0.i285 = phi i32 [ %call8.i, %if.end5.i ], [ %72, %if.end.i284.nfsd4_open_omfg.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  %79 = ptrtoint ptr %status36 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %retval.0.i285, ptr %status36, align 8
  br label %encode_op

if.end44:                                         ; preds = %while.body
  %fh_dentry = getelementptr inbounds %struct.nfsd4_compoundres, ptr %3, i32 0, i32 6, i32 0, i32 2
  %80 = ptrtoint ptr %fh_dentry to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %fh_dentry, align 8
  %tobool45.not = icmp eq ptr %81, null
  br i1 %tobool45.not, label %land.lhs.true, label %if.end44.if.else_crit_edge

if.end44.if.else_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.else

land.lhs.true:                                    ; preds = %if.end44
  %fh_flags = getelementptr inbounds %struct.nfsd4_compoundres, ptr %3, i32 0, i32 6, i32 0, i32 8
  %82 = ptrtoint ptr %fh_flags to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %fh_flags, align 4
  %and = and i32 %83, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool46.not = icmp eq i32 %and, 0
  br i1 %tobool46.not, label %if.then47, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.else

if.then47:                                        ; preds = %land.lhs.true
  %opdesc = getelementptr %struct.nfsd4_op, ptr %65, i32 %61, i32 1
  %84 = ptrtoint ptr %opdesc to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %opdesc, align 4
  %op_flags = getelementptr inbounds %struct.nfsd4_operation, ptr %85, i32 0, i32 2
  %86 = ptrtoint ptr %op_flags to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %op_flags, align 4
  %and48 = and i32 %87, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.then50, label %if.then47.if.end65_crit_edge

if.then47.if.end65_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end65

if.then50:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #24
  %88 = ptrtoint ptr %status36 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 10020, ptr %status36, align 8
  br label %encode_op

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end44.if.else_crit_edge
  %fh_export = getelementptr inbounds %struct.nfsd4_compoundres, ptr %3, i32 0, i32 6, i32 0, i32 3
  %89 = ptrtoint ptr %fh_export to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %fh_export, align 4
  %tobool53.not = icmp eq ptr %90, null
  br i1 %tobool53.not, label %if.else.if.end65_crit_edge, label %land.lhs.true54

if.else.if.end65_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end65

land.lhs.true54:                                  ; preds = %if.else
  %migrated = getelementptr inbounds %struct.svc_export, ptr %90, i32 0, i32 8, i32 2
  %91 = ptrtoint ptr %migrated to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %migrated, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool56.not = icmp eq i32 %92, 0
  br i1 %tobool56.not, label %land.lhs.true54.if.end65_crit_edge, label %land.lhs.true57

land.lhs.true54.if.end65_crit_edge:               ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end65

land.lhs.true57:                                  ; preds = %land.lhs.true54
  %opdesc58 = getelementptr %struct.nfsd4_op, ptr %65, i32 %61, i32 1
  %93 = ptrtoint ptr %opdesc58 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %opdesc58, align 4
  %op_flags59 = getelementptr inbounds %struct.nfsd4_operation, ptr %94, i32 0, i32 2
  %95 = ptrtoint ptr %op_flags59 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %op_flags59, align 4
  %and60 = and i32 %96, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %if.then62, label %land.lhs.true57.if.end65_crit_edge

land.lhs.true57.if.end65_crit_edge:               ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end65

if.then62:                                        ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #24
  %97 = ptrtoint ptr %status36 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 10019, ptr %status36, align 8
  br label %encode_op

if.end65:                                         ; preds = %land.lhs.true57.if.end65_crit_edge, %land.lhs.true54.if.end65_crit_edge, %if.else.if.end65_crit_edge, %if.then47.if.end65_crit_edge
  %fh_post_saved.i = getelementptr inbounds %struct.nfsd4_compoundres, ptr %3, i32 0, i32 6, i32 0, i32 9
  %98 = ptrtoint ptr %fh_post_saved.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 0, ptr %fh_post_saved.i, align 8
  %fh_pre_saved.i = getelementptr inbounds %struct.nfsd4_compoundres, ptr %3, i32 0, i32 6, i32 0, i32 10
  %99 = ptrtoint ptr %fh_pre_saved.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 0, ptr %fh_pre_saved.i, align 1
  %opdesc66 = getelementptr %struct.nfsd4_op, ptr %65, i32 %61, i32 1
  %100 = ptrtoint ptr %opdesc66 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %opdesc66, align 4
  %op_flags67 = getelementptr inbounds %struct.nfsd4_operation, ptr %101, i32 0, i32 2
  %102 = ptrtoint ptr %op_flags67 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %op_flags67, align 4
  %and68 = and i32 %103, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %if.end81thread-pre-split, label %if.then70

if.then70:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #24
  %op_rsize_bop = getelementptr inbounds %struct.nfsd4_operation, ptr %101, i32 0, i32 4
  %104 = ptrtoint ptr %op_rsize_bop to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %op_rsize_bop, align 4
  %call72 = tail call i32 %105(ptr noundef %rqstp, ptr noundef %arrayidx35) #22
  %106 = ptrtoint ptr %opcnt30 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %opcnt30, align 4
  %108 = ptrtoint ptr %opcnt to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %opcnt, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %107, i32 %109)
  %cmp75 = icmp ult i32 %107, %109
  %add77 = add i32 %call72, 16
  %spec.select = select i1 %cmp75, i32 %add77, i32 %call72
  %call79 = tail call i32 @nfsd4_check_resp_size(ptr noundef %3, i32 noundef %spec.select) #22
  %110 = ptrtoint ptr %status36 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %call79, ptr %status36, align 8
  br label %if.end81

if.end81thread-pre-split:                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #24
  %111 = ptrtoint ptr %status36 to i32
  call void @__asan_load4_noabort(i32 %111)
  %.pr = load i32, ptr %status36, align 8
  br label %if.end81

if.end81:                                         ; preds = %if.end81thread-pre-split, %if.then70
  %112 = phi i32 [ %.pr, %if.end81thread-pre-split ], [ %call79, %if.then70 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool83.not = icmp eq i32 %112, 0
  br i1 %tobool83.not, label %if.end85, label %if.end81.encode_op_crit_edge

if.end81.encode_op_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #24
  br label %encode_op

if.end85:                                         ; preds = %if.end81
  %113 = ptrtoint ptr %opdesc66 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %opdesc66, align 4
  %op_get_currentstateid = getelementptr inbounds %struct.nfsd4_operation, ptr %114, i32 0, i32 5
  %115 = ptrtoint ptr %op_get_currentstateid to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %op_get_currentstateid, align 4
  %tobool87.not = icmp eq ptr %116, null
  br i1 %tobool87.not, label %if.end85.if.end91_crit_edge, label %if.then88

if.end85.if.end91_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end91

if.then88:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #24
  %u = getelementptr %struct.nfsd4_op, ptr %65, i32 %61, i32 4
  tail call void %116(ptr noundef %cstate1, ptr noundef %u) #22
  br label %if.end91

if.end91:                                         ; preds = %if.then88, %if.end85.if.end91_crit_edge
  %117 = ptrtoint ptr %opdesc66 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %opdesc66, align 4
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %118, align 4
  %u93 = getelementptr %struct.nfsd4_op, ptr %65, i32 %61, i32 4
  %call94 = tail call i32 %120(ptr noundef %rqstp, ptr noundef %cstate1, ptr noundef %u93) #22
  %121 = ptrtoint ptr %status36 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %call94, ptr %status36, align 8
  %status96 = getelementptr inbounds %struct.nfsd4_compoundres, ptr %3, i32 0, i32 6, i32 10
  %122 = ptrtoint ptr %status96 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %status96, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 11002, i32 %123)
  %cmp97 = icmp eq i32 %123, 11002
  br i1 %cmp97, label %do.body, label %if.end108

do.body:                                          ; preds = %if.end91
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %124 = load i32, ptr @nfsd_debug, align 4
  %and99 = and i32 %124, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99)
  %tobool100.not = icmp eq i32 %and99, 0
  br i1 %tobool100.not, label %do.body.do.end106_crit_edge, label %do.end

do.body.do.end106_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end106

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #24
  %call103 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.145) #26
  br label %do.end106

do.end106:                                        ; preds = %do.end, %do.body.do.end106_crit_edge
  %125 = ptrtoint ptr %status36 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %status36, align 8
  br label %out

if.end108:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool110.not = icmp eq i32 %call94, 0
  br i1 %tobool110.not, label %if.then111, label %if.end108.encode_op_crit_edge

if.end108.encode_op_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #24
  br label %encode_op

if.then111:                                       ; preds = %if.end108
  %127 = ptrtoint ptr %opdesc66 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %opdesc66, align 4
  %op_set_currentstateid = getelementptr inbounds %struct.nfsd4_operation, ptr %128, i32 0, i32 6
  %129 = ptrtoint ptr %op_set_currentstateid to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %op_set_currentstateid, align 4
  %tobool113.not = icmp eq ptr %130, null
  br i1 %tobool113.not, label %if.then111.if.end118_crit_edge, label %if.then114

if.then111.if.end118_crit_edge:                   ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end118

if.then114:                                       ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #24
  tail call void %130(ptr noundef %cstate1, ptr noundef %u93) #22
  br label %if.end118

if.end118:                                        ; preds = %if.then114, %if.then111.if.end118_crit_edge
  %131 = ptrtoint ptr %opdesc66 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %opdesc66, align 4
  %op_flags120 = getelementptr inbounds %struct.nfsd4_operation, ptr %132, i32 0, i32 2
  %133 = ptrtoint ptr %op_flags120 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %op_flags120, align 4
  %and121 = and i32 %134, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and121)
  %tobool122.not = icmp eq i32 %and121, 0
  br i1 %tobool122.not, label %if.end118.if.end124_crit_edge, label %if.then123

if.end118.if.end124_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end124

if.then123:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @clear_current_stateid(ptr noundef %cstate1) #22
  br label %if.end124

if.end124:                                        ; preds = %if.then123, %if.end118.if.end124_crit_edge
  %fh_export125 = getelementptr inbounds %struct.nfsd4_compoundres, ptr %3, i32 0, i32 6, i32 0, i32 3
  %135 = ptrtoint ptr %fh_export125 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %fh_export125, align 4
  %tobool126.not = icmp eq ptr %136, null
  br i1 %tobool126.not, label %if.end124.encode_op_crit_edge, label %land.lhs.true127

if.end124.encode_op_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #24
  br label %encode_op

land.lhs.true127:                                 ; preds = %if.end124
  %137 = ptrtoint ptr %rq_resp to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %rq_resp, align 4
  %139 = ptrtoint ptr %rq_argp to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %rq_argp, align 8
  %ops.i286 = getelementptr inbounds %struct.nfsd4_compoundargs, ptr %140, i32 0, i32 7
  %141 = ptrtoint ptr %ops.i286 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %ops.i286, align 4
  %opcnt.i287 = getelementptr inbounds %struct.nfsd4_compoundres, ptr %138, i32 0, i32 5
  %143 = ptrtoint ptr %opcnt.i287 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %opcnt.i287, align 4
  %sub.i = add i32 %144, -1
  %arrayidx.i288 = getelementptr %struct.nfsd4_op, ptr %142, i32 %sub.i
  %arrayidx3.i = getelementptr %struct.nfsd4_op, ptr %142, i32 %144
  %145 = ptrtoint ptr %arrayidx.i288 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %arrayidx.i288, align 32
  %op_flags.i289 = getelementptr [0 x %struct.nfsd4_operation], ptr @nfsd4_ops, i32 0, i32 %146, i32 2
  %147 = ptrtoint ptr %op_flags.i289 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %op_flags.i289, align 4
  %and.i290 = and i32 %148, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i290)
  %tobool.not.i291 = icmp eq i32 %and.i290, 0
  br i1 %tobool.not.i291, label %land.lhs.true127.encode_op_crit_edge, label %if.end.i293

land.lhs.true127.encode_op_crit_edge:             ; preds = %land.lhs.true127
  call void @__sanitizer_cov_trace_pc() #24
  br label %encode_op

if.end.i293:                                      ; preds = %land.lhs.true127
  %opcnt4.i = getelementptr inbounds %struct.nfsd4_compoundargs, ptr %140, i32 0, i32 6
  %149 = ptrtoint ptr %opcnt4.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %opcnt4.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %150, i32 %144)
  %cmp.i292 = icmp eq i32 %150, %144
  br i1 %cmp.i292, label %if.end.i293.encode_op_crit_edge, label %if.end7.i

if.end.i293.encode_op_crit_edge:                  ; preds = %if.end.i293
  call void @__sanitizer_cov_trace_pc() #24
  br label %encode_op

if.end7.i:                                        ; preds = %if.end.i293
  %151 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %arrayidx3.i, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 10044, i32 %152)
  %cmp8.i = icmp eq i32 %152, 10044
  br i1 %cmp8.i, label %if.end7.i.encode_op_crit_edge, label %need_wrongsec_check.exit

if.end7.i.encode_op_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %encode_op

need_wrongsec_check.exit:                         ; preds = %if.end7.i
  %op_flags12.i = getelementptr [0 x %struct.nfsd4_operation], ptr @nfsd4_ops, i32 0, i32 %152, i32 2
  %153 = ptrtoint ptr %op_flags12.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %op_flags12.i, align 4
  %and13.i = and i32 %154, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %if.then129, label %need_wrongsec_check.exit.encode_op_crit_edge

need_wrongsec_check.exit.encode_op_crit_edge:     ; preds = %need_wrongsec_check.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %encode_op

if.then129:                                       ; preds = %need_wrongsec_check.exit
  call void @__sanitizer_cov_trace_pc() #24
  %call131 = tail call i32 @check_nfsd_access(ptr noundef nonnull %136, ptr noundef %rqstp) #22
  %155 = ptrtoint ptr %status36 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %call131, ptr %status36, align 8
  br label %encode_op

encode_op:                                        ; preds = %if.then129, %need_wrongsec_check.exit.encode_op_crit_edge, %if.end7.i.encode_op_crit_edge, %if.end.i293.encode_op_crit_edge, %land.lhs.true127.encode_op_crit_edge, %if.end124.encode_op_crit_edge, %if.end108.encode_op_crit_edge, %if.end81.encode_op_crit_edge, %if.then62, %if.then50, %nfsd4_open_omfg.exit, %if.then38.encode_op_crit_edge, %if.then24
  %op.0 = phi ptr [ %35, %if.then24 ], [ %arrayidx35, %if.end81.encode_op_crit_edge ], [ %arrayidx35, %if.then62 ], [ %arrayidx35, %if.then50 ], [ %arrayidx35, %nfsd4_open_omfg.exit ], [ %arrayidx35, %if.then38.encode_op_crit_edge ], [ %arrayidx35, %if.end124.encode_op_crit_edge ], [ %arrayidx35, %need_wrongsec_check.exit.encode_op_crit_edge ], [ %arrayidx35, %if.then129 ], [ %arrayidx35, %if.end108.encode_op_crit_edge ], [ %arrayidx35, %land.lhs.true127.encode_op_crit_edge ], [ %arrayidx35, %if.end.i293.encode_op_crit_edge ], [ %arrayidx35, %if.end7.i.encode_op_crit_edge ]
  %status135 = getelementptr inbounds %struct.nfsd4_op, ptr %op.0, i32 0, i32 2
  %156 = ptrtoint ptr %status135 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %status135, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 11001, i32 %157)
  %cmp136 = icmp eq i32 %157, 11001
  br i1 %cmp136, label %if.then137, label %if.else141

if.then137:                                       ; preds = %encode_op
  call void @__sanitizer_cov_trace_pc() #24
  %replay_owner = getelementptr inbounds %struct.nfsd4_compoundres, ptr %3, i32 0, i32 6, i32 2
  %158 = ptrtoint ptr %replay_owner to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %replay_owner, align 8
  %so_replay = getelementptr inbounds %struct.nfs4_stateowner, ptr %159, i32 0, i32 7
  %replay = getelementptr inbounds %struct.nfsd4_op, ptr %op.0, i32 0, i32 5
  %160 = ptrtoint ptr %replay to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %so_replay, ptr %replay, align 32
  %161 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %3, align 8
  tail call void @nfsd4_encode_replay(ptr noundef %162, ptr noundef %op.0) #22
  %163 = ptrtoint ptr %replay to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %replay, align 32
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %164, align 4
  %167 = ptrtoint ptr %status135 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %166, ptr %status135, align 8
  br label %if.end143

if.else141:                                       ; preds = %encode_op
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @nfsd4_encode_operation(ptr noundef %3, ptr noundef %op.0) #22
  %168 = ptrtoint ptr %status135 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %status135, align 8
  br label %if.end143

if.end143:                                        ; preds = %if.else141, %if.then137
  %status.1 = phi i32 [ %166, %if.then137 ], [ %169, %if.else141 ]
  %170 = ptrtoint ptr %opcnt to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %opcnt, align 8
  %opcnt145 = getelementptr inbounds %struct.nfsd4_compoundres, ptr %3, i32 0, i32 5
  %172 = ptrtoint ptr %opcnt145 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %opcnt145, align 4
  %174 = ptrtoint ptr %op.0 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %op.0, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 76, i32 %175)
  %cmp.i295 = icmp ult i32 %175, 76
  br i1 %cmp.i295, label %if.then.i, label %if.end143.nfsd4_op_name.exit_crit_edge

if.end143.nfsd4_op_name.exit_crit_edge:           ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #24
  br label %nfsd4_op_name.exit

if.then.i:                                        ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #24
  %op_name.i = getelementptr [76 x %struct.nfsd4_operation], ptr @nfsd4_ops, i32 0, i32 %175, i32 3
  %176 = ptrtoint ptr %op_name.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %op_name.i, align 4
  br label %nfsd4_op_name.exit

nfsd4_op_name.exit:                               ; preds = %if.then.i, %if.end143.nfsd4_op_name.exit_crit_edge
  %retval.0.i296 = phi ptr [ %177, %if.then.i ], [ @.str.141, %if.end143.nfsd4_op_name.exit_crit_edge ]
  tail call fastcc void @trace_nfsd_compound_status(i32 noundef %171, i32 noundef %173, i32 noundef %status.1, ptr noundef %retval.0.i296)
  tail call void @nfsd4_cstate_clear_replay(ptr noundef %cstate1) #22
  %178 = ptrtoint ptr %op.0 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %op.0, align 32
  %180 = add i32 %179, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 73, i32 %180)
  %181 = icmp ult i32 %180, 73
  br i1 %181, label %if.then.i298, label %nfsd4_op_name.exit.while.cond_crit_edge

nfsd4_op_name.exit.while.cond_crit_edge:          ; preds = %nfsd4_op_name.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %while.cond

if.then.i298:                                     ; preds = %nfsd4_op_name.exit
  call void @__sanitizer_cov_trace_pc() #24
  %add.i = add nuw nsw i32 %179, 6
  %arrayidx.i297 = getelementptr [82 x %struct.percpu_counter], ptr @nfsdstats, i32 0, i32 %add.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %182 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %arrayidx.i297, i64 noundef 1, i32 noundef %182) #22
  br label %while.cond

while.end:                                        ; preds = %land.rhs.while.end_crit_edge, %while.cond.while.end_crit_edge
  tail call void @fh_put(ptr noundef %cstate1) #22
  tail call void @fh_put(ptr noundef %save_fh3) #22
  %replay_owner150 = getelementptr inbounds %struct.nfsd4_compoundres, ptr %3, i32 0, i32 6, i32 2
  %183 = ptrtoint ptr %replay_owner150 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %replay_owner150, align 8
  %tobool151.not = icmp eq ptr %184, null
  br i1 %tobool151.not, label %while.end.out_crit_edge, label %do.body155, !prof !361

while.end.out_crit_edge:                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %out

do.body155:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #24
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfsd/nfs4proc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2599, 0\0A.popsection", ""() #22, !srcloc !395
  unreachable

out:                                              ; preds = %while.end.out_crit_edge, %do.end106, %if.end.out_crit_edge, %entry.out_crit_edge
  %status.2 = phi i32 [ 10021, %entry.out_crit_edge ], [ 10018, %if.end.out_crit_edge ], [ %status.0, %while.end.out_crit_edge ], [ %126, %do.end106 ]
  %status164 = getelementptr inbounds %struct.nfsd4_compoundres, ptr %3, i32 0, i32 6, i32 10
  %185 = ptrtoint ptr %status164 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %status.2, ptr %status164, align 8
  tail call void @_set_bit(i32 noundef 2, ptr noundef %rq_flags) #22
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfs4svc_decode_compoundargs(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfs4svc_encode_compoundres(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfsd4_release_compoundargs(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_reserve_space(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd_minorversion(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfsd_compound(ptr noundef %rqst, i32 noundef %args_opcnt) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_compound, i32 0, i32 1), ptr blockaddress(@trace_nfsd_compound, %do.body)) #22
          to label %if.end48 [label %do.body], !srcloc !371

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !349) #22
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
  call void @__sanitizer_cov_trace_pc() #24
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !361

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.88, i32 noundef 108, i32 noundef 9, ptr noundef null) #22
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
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #24
  %9 = tail call i32 @llvm.read_register.i32(metadata !349) #22
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !396
  %call42 = tail call i32 @__traceiter_nfsd_compound(ptr noundef null, ptr noundef %rqst, i32 noundef %args_opcnt) #22
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !397
  %13 = tail call i32 @llvm.read_register.i32(metadata !349) #22
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !349) #22
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
  call void @__sanitizer_cov_trace_pc() #24
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !361

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #24
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.88, i32 noundef 108, i32 noundef 9, ptr noundef null) #22
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
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !349) #22
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !374
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_compound, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_compound, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nfsd_compound.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @trace_nfsd_compound.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.87, i32 noundef 110, ptr noundef nonnull @.str.81) #22
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !375
  %31 = tail call i32 @llvm.read_register.i32(metadata !349) #22
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
declare dso_local i32 @nfsd4_check_resp_size(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_current_stateid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @check_nfsd_access(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfsd4_encode_replay(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfsd4_encode_operation(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfsd_compound_status(i32 noundef %args_opcnt, i32 noundef %resp_opcnt, i32 noundef %status, ptr noundef %name) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_compound_status, i32 0, i32 1), ptr blockaddress(@trace_nfsd_compound_status, %do.body)) #22
          to label %if.end48 [label %do.body], !srcloc !371

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !349) #22
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
  call void @__sanitizer_cov_trace_pc() #24
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !361

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.88, i32 noundef 108, i32 noundef 9, ptr noundef null) #22
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
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #24
  %9 = tail call i32 @llvm.read_register.i32(metadata !349) #22
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !398
  %call42 = tail call i32 @__traceiter_nfsd_compound_status(ptr noundef null, i32 noundef %args_opcnt, i32 noundef %resp_opcnt, i32 noundef %status, ptr noundef %name) #22
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !399
  %13 = tail call i32 @llvm.read_register.i32(metadata !349) #22
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !349) #22
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
  call void @__sanitizer_cov_trace_pc() #24
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !361

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #24
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.88, i32 noundef 108, i32 noundef 9, ptr noundef null) #22
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
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !349) #22
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !374
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_compound_status, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_compound_status, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nfsd_compound_status.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @trace_nfsd_compound_status.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.87, i32 noundef 133, ptr noundef nonnull @.str.81) #22
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !375
  %31 = tail call i32 @llvm.read_register.i32(metadata !349) #22
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
declare dso_local void @nfsd4_cstate_clear_replay(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfsd_compound(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfsd_compound_status(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_add_batch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #21

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #22

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
define internal void @asan.module_ctor() #23 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 160)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #23 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 160)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind readonly }
attributes #13 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #16 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #18 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #20 = { argmemonly nofree nounwind readonly willreturn }
attributes #21 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #22 = { nounwind }
attributes #23 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #24 = { nomerge }
attributes #25 = { nobuiltin }
attributes #26 = { cold nounwind }
attributes #27 = { nounwind allocsize(2) }
attributes #28 = { nobuiltin nounwind }
attributes #29 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !14, !15, !16, !18, !20, !22, !24, !25, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !163, !164, !165, !167, !168, !169, !171, !172, !173, !175, !176, !177, !179, !181, !182, !183, !185, !186, !187, !189, !190, !192, !194, !195, !196, !197, !199, !200, !201, !203, !204, !206, !207, !209, !211, !212, !213, !214, !216, !217, !218, !219, !221, !223, !224, !226, !227, !229, !230, !231, !232, !234, !235, !236, !238, !239, !240, !242, !243, !244, !245, !247, !248, !249, !251, !252, !253, !254, !256, !257, !258, !260, !261, !262, !264, !265, !267, !268, !269, !270, !272, !273, !275, !276, !277, !279, !280, !281, !283, !284, !285, !286, !288, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !308, !309, !310, !312, !313, !314, !316, !318, !319, !321, !323, !325, !327, !328, !329, !330, !332, !334, !336, !338, !340, !341, !342, !343, !345, !346, !348}
!llvm.named.register.sp = !{!349}
!llvm.module.flags = !{!350, !351, !352, !353, !354, !355, !356, !357}
!llvm.ident = !{!358}

!0 = !{ptr @__param_inter_copy_offload_enable, !1, !"__param_inter_copy_offload_enable", i1 false, i1 false}
!1 = !{!"../fs/nfsd/nfs4proc.c", i32 54, i32 1}
!2 = !{ptr @__UNIQUE_ID_inter_copy_offload_enabletype651, !1, !"__UNIQUE_ID_inter_copy_offload_enabletype651", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_inter_copy_offload_enable652, !4, !"__UNIQUE_ID_inter_copy_offload_enable652", i1 false, i1 false}
!4 = !{!"../fs/nfsd/nfs4proc.c", i32 55, i32 1}
!5 = !{ptr @__param_nfsd4_ssc_umount_timeout, !6, !"__param_nfsd4_ssc_umount_timeout", i1 false, i1 false}
!6 = !{!"../fs/nfsd/nfs4proc.c", i32 60, i32 1}
!7 = !{ptr @__UNIQUE_ID_nfsd4_ssc_umount_timeouttype653, !6, !"__UNIQUE_ID_nfsd4_ssc_umount_timeouttype653", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_nfsd4_ssc_umount_timeout654, !9, !"__UNIQUE_ID_nfsd4_ssc_umount_timeout654", i1 false, i1 false}
!9 = !{!"../fs/nfsd/nfs4proc.c", i32 61, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/nfsd/nfs4proc.c", i32 3420, i32 3}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @warn_on_nonidempotent_op._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @warn_on_nonidempotent_op._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!17 = !{!"../fs/nfsd/nfs4proc.c", i32 3422, i32 3}
!18 = !{ptr @nfsd_version4, !19, !"nfsd_version4", i1 false, i1 false}
!19 = !{!"../fs/nfsd/nfs4proc.c", i32 3458, i32 26}
!20 = !{ptr @inter_copy_offload_enable, !21, !"inter_copy_offload_enable", i1 false, i1 false}
!21 = !{!"../fs/nfsd/nfs4proc.c", i32 53, i32 13}
!22 = !{ptr @nfsd_count3, !23, !"nfsd_count3", i1 false, i1 false}
!23 = !{!"../fs/nfsd/nfs4proc.c", i32 3457, i32 21}
!24 = !{ptr @__param_str_inter_copy_offload_enable, !1, !"__param_str_inter_copy_offload_enable", i1 false, i1 false}
!25 = !{ptr @__param_str_nfsd4_ssc_umount_timeout, !6, !"__param_str_nfsd4_ssc_umount_timeout", i1 false, i1 false}
!26 = !{ptr @nfsd4_ssc_umount_timeout, !27, !"nfsd4_ssc_umount_timeout", i1 false, i1 false}
!27 = !{!"../fs/nfsd/nfs4proc.c", i32 59, i32 12}
!28 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/nfsd/nfs4proc.c", i32 2960, i32 14}
!30 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/nfsd/nfs4proc.c", i32 2966, i32 14}
!32 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/nfsd/nfs4proc.c", i32 2974, i32 14}
!34 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/nfsd/nfs4proc.c", i32 2980, i32 14}
!36 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/nfsd/nfs4proc.c", i32 2986, i32 14}
!38 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/nfsd/nfs4proc.c", i32 2994, i32 14}
!40 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/nfsd/nfs4proc.c", i32 2998, i32 14}
!42 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/nfsd/nfs4proc.c", i32 3005, i32 14}
!44 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/nfsd/nfs4proc.c", i32 3012, i32 14}
!46 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/nfsd/nfs4proc.c", i32 3019, i32 14}
!48 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/nfsd/nfs4proc.c", i32 3025, i32 14}
!50 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/nfsd/nfs4proc.c", i32 3032, i32 14}
!52 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/nfsd/nfs4proc.c", i32 3038, i32 14}
!54 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/nfsd/nfs4proc.c", i32 3043, i32 14}
!56 = !{ptr @.str.18, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/nfsd/nfs4proc.c", i32 3049, i32 14}
!58 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/nfsd/nfs4proc.c", i32 3056, i32 14}
!60 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/nfsd/nfs4proc.c", i32 3062, i32 14}
!62 = !{ptr @.str.21, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/nfsd/nfs4proc.c", i32 3071, i32 14}
!64 = !{ptr @.str.22, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../fs/nfsd/nfs4proc.c", i32 3078, i32 14}
!66 = !{ptr @.str.23, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/nfsd/nfs4proc.c", i32 3085, i32 14}
!68 = !{ptr @.str.24, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/nfsd/nfs4proc.c", i32 3091, i32 14}
!70 = !{ptr @.str.25, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/nfsd/nfs4proc.c", i32 3097, i32 14}
!72 = !{ptr @.str.26, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/nfsd/nfs4proc.c", i32 3102, i32 14}
!74 = !{ptr @.str.27, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/nfsd/nfs4proc.c", i32 3108, i32 14}
!76 = !{ptr @.str.28, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../fs/nfsd/nfs4proc.c", i32 3114, i32 14}
!78 = !{ptr @.str.29, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../fs/nfsd/nfs4proc.c", i32 3121, i32 14}
!80 = !{ptr @.str.30, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../fs/nfsd/nfs4proc.c", i32 3129, i32 14}
!82 = !{ptr @.str.31, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../fs/nfsd/nfs4proc.c", i32 3135, i32 14}
!84 = !{ptr @.str.32, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../fs/nfsd/nfs4proc.c", i32 3142, i32 14}
!86 = !{ptr @.str.33, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../fs/nfsd/nfs4proc.c", i32 3147, i32 14}
!88 = !{ptr @.str.34, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../fs/nfsd/nfs4proc.c", i32 3158, i32 14}
!90 = !{ptr @.str.35, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../fs/nfsd/nfs4proc.c", i32 3165, i32 14}
!92 = !{ptr @.str.36, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../fs/nfsd/nfs4proc.c", i32 3170, i32 14}
!94 = !{ptr @.str.37, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../fs/nfsd/nfs4proc.c", i32 3176, i32 14}
!96 = !{ptr @.str.38, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../fs/nfsd/nfs4proc.c", i32 3184, i32 14}
!98 = !{ptr @.str.39, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../fs/nfsd/nfs4proc.c", i32 3199, i32 14}
!100 = !{ptr @.str.40, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../fs/nfsd/nfs4proc.c", i32 3206, i32 14}
!102 = !{ptr @.str.41, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../fs/nfsd/nfs4proc.c", i32 3193, i32 14}
!104 = !{ptr @.str.42, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../fs/nfsd/nfs4proc.c", i32 3213, i32 14}
!106 = !{ptr @.str.43, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../fs/nfsd/nfs4proc.c", i32 3220, i32 14}
!108 = !{ptr @.str.44, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../fs/nfsd/nfs4proc.c", i32 3258, i32 14}
!110 = !{ptr @.str.45, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../fs/nfsd/nfs4proc.c", i32 3267, i32 14}
!112 = !{ptr @.str.46, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../fs/nfsd/nfs4proc.c", i32 3280, i32 14}
!114 = !{ptr @.str.47, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../fs/nfsd/nfs4proc.c", i32 3274, i32 14}
!116 = !{ptr @.str.48, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../fs/nfsd/nfs4proc.c", i32 3286, i32 14}
!118 = !{ptr @.str.49, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../fs/nfsd/nfs4proc.c", i32 3246, i32 14}
!120 = !{ptr @.str.50, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../fs/nfsd/nfs4proc.c", i32 3226, i32 14}
!122 = !{ptr @.str.51, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../fs/nfsd/nfs4proc.c", i32 3252, i32 14}
!124 = !{ptr @.str.52, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../fs/nfsd/nfs4proc.c", i32 3233, i32 14}
!126 = !{ptr @.str.53, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../fs/nfsd/nfs4proc.c", i32 3239, i32 14}
!128 = !{ptr @.str.54, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../fs/nfsd/nfs4proc.c", i32 3295, i32 14}
!130 = !{ptr @.str.55, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../fs/nfsd/nfs4proc.c", i32 3313, i32 14}
!132 = !{ptr @.str.56, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../fs/nfsd/nfs4proc.c", i32 3342, i32 14}
!134 = !{ptr @.str.57, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../fs/nfsd/nfs4proc.c", i32 3301, i32 14}
!136 = !{ptr @.str.58, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../fs/nfsd/nfs4proc.c", i32 3336, i32 14}
!138 = !{ptr @.str.59, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../fs/nfsd/nfs4proc.c", i32 3330, i32 14}
!140 = !{ptr @.str.60, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../fs/nfsd/nfs4proc.c", i32 3319, i32 14}
!142 = !{ptr @.str.61, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../fs/nfsd/nfs4proc.c", i32 3325, i32 14}
!144 = !{ptr @.str.62, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../fs/nfsd/nfs4proc.c", i32 3307, i32 14}
!146 = !{ptr @.str.63, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../fs/nfsd/nfs4proc.c", i32 3347, i32 14}
!148 = !{ptr @.str.64, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../fs/nfsd/nfs4proc.c", i32 3353, i32 14}
!150 = !{ptr @.str.65, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../fs/nfsd/nfs4proc.c", i32 3358, i32 14}
!152 = !{ptr @.str.66, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../fs/nfsd/nfs4proc.c", i32 3364, i32 14}
!154 = !{ptr @nfsd4_ops, !155, !"nfsd4_ops", i1 false, i1 false}
!155 = !{!"../fs/nfsd/nfs4proc.c", i32 2957, i32 37}
!156 = !{ptr @nfsd_attrmask, !157, !"nfsd_attrmask", i1 false, i1 false}
!157 = !{!"../fs/nfsd/nfs4proc.c", i32 97, i32 12}
!158 = !{ptr @.str.67, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../fs/nfsd/nfs4proc.c", i32 758, i32 32}
!160 = !{ptr @.str.68, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../fs/nfsd/nfs4proc.c", i32 374, i32 2}
!162 = !{ptr @.str.69, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @nfsd4_open._entry, !161, !"_entry", i1 false, i1 false}
!164 = !{ptr @nfsd4_open._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.71, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../fs/nfsd/nfs4proc.c", i32 404, i32 4}
!167 = !{ptr @nfsd4_open._entry.70, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @nfsd4_open._entry_ptr.72, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.74, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../fs/nfsd/nfs4proc.c", i32 452, i32 4}
!171 = !{ptr @nfsd4_open._entry.73, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @nfsd4_open._entry_ptr.75, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.77, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../fs/nfsd/nfs4proc.c", i32 457, i32 4}
!175 = !{ptr @nfsd4_open._entry.76, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @nfsd4_open._entry_ptr.78, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.79, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../fs/nfsd/nfs4proc.c", i32 468, i32 2}
!179 = distinct !{null, !180, !"__warned", i1 false, i1 false}
!180 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!181 = !{ptr @.str.80, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @.str.81, !180, !"<string literal>", i1 false, i1 false}
!183 = distinct !{null, !184, !"__warned", i1 false, i1 false}
!184 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!185 = !{ptr @.str.82, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @.str.83, !184, !"<string literal>", i1 false, i1 false}
!187 = distinct !{null, !188, !"__warned", i1 false, i1 false}
!188 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!189 = !{ptr @.str.84, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @nfsd41_ex_attrmask, !191, !"nfsd41_ex_attrmask", i1 false, i1 false}
!191 = !{!"../fs/nfsd/nfs4proc.c", i32 103, i32 12}
!192 = !{ptr @.str.85, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../fs/nfsd/nfs4proc.c", i32 811, i32 3}
!194 = !{ptr @.str.86, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @nfsd4_read._entry, !193, !"_entry", i1 false, i1 false}
!196 = !{ptr @nfsd4_read._entry_ptr, !193, !"_entry_ptr", i1 false, i1 false}
!197 = distinct !{null, !198, !"__already_done", i1 false, i1 false}
!198 = !{!"../fs/nfsd/trace.h", i32 337, i32 1}
!199 = !{ptr @.str.87, !198, !"<string literal>", i1 false, i1 false}
!200 = distinct !{null, !198, !"__warned", i1 false, i1 false}
!201 = distinct !{null, !202, !"__already_done", i1 false, i1 false}
!202 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!203 = !{ptr @.str.88, !202, !"<string literal>", i1 false, i1 false}
!204 = distinct !{null, !205, !"__already_done", i1 false, i1 false}
!205 = !{!"../fs/nfsd/trace.h", i32 341, i32 1}
!206 = distinct !{null, !205, !"__warned", i1 false, i1 false}
!207 = !{ptr @nfsd4_readdir.zeroverf, !208, !"zeroverf", i1 false, i1 false}
!208 = !{!"../fs/nfsd/nfs4proc.c", i32 837, i32 29}
!209 = !{ptr @.str.89, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../fs/nfsd/nfs4proc.c", i32 983, i32 4}
!211 = !{ptr @.str.90, !210, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @nfsd4_setattr._entry, !210, !"_entry", i1 false, i1 false}
!213 = !{ptr @nfsd4_setattr._entry_ptr, !210, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.91, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../fs/nfsd/nfs4proc.c", i32 1035, i32 3}
!216 = !{ptr @.str.92, !215, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @nfsd4_write._entry, !215, !"_entry", i1 false, i1 false}
!218 = !{ptr @nfsd4_write._entry_ptr, !215, !"_entry_ptr", i1 false, i1 false}
!219 = distinct !{null, !220, !"__already_done", i1 false, i1 false}
!220 = !{!"../fs/nfsd/nfs4proc.c", i32 1042, i32 2}
!221 = distinct !{null, !222, !"__already_done", i1 false, i1 false}
!222 = !{!"../fs/nfsd/trace.h", i32 342, i32 1}
!223 = distinct !{null, !222, !"__warned", i1 false, i1 false}
!224 = distinct !{null, !225, !"__already_done", i1 false, i1 false}
!225 = !{!"../fs/nfsd/trace.h", i32 345, i32 1}
!226 = distinct !{null, !225, !"__warned", i1 false, i1 false}
!227 = !{ptr @.str.93, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../fs/nfsd/nfs4proc.c", i32 2013, i32 2}
!229 = !{ptr @.str.94, !228, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @nfsd4_getdeviceinfo._entry, !228, !"_entry", i1 false, i1 false}
!231 = !{ptr @nfsd4_getdeviceinfo._entry_ptr, !228, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.96, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../fs/nfsd/nfs4proc.c", i32 2021, i32 3}
!234 = !{ptr @nfsd4_getdeviceinfo._entry.95, !233, !"_entry", i1 false, i1 false}
!235 = !{ptr @nfsd4_getdeviceinfo._entry_ptr.97, !233, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.99, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../fs/nfsd/nfs4proc.c", i32 2028, i32 3}
!238 = !{ptr @nfsd4_getdeviceinfo._entry.98, !237, !"_entry", i1 false, i1 false}
!239 = !{ptr @nfsd4_getdeviceinfo._entry_ptr.100, !237, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.101, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../fs/nfsd/nfs4proc.c", i32 1989, i32 3}
!242 = !{ptr @.str.102, !241, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @nfsd4_layout_verify._entry, !241, !"_entry", i1 false, i1 false}
!244 = !{ptr @nfsd4_layout_verify._entry_ptr, !241, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @.str.104, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../fs/nfsd/nfs4proc.c", i32 1995, i32 3}
!247 = !{ptr @nfsd4_layout_verify._entry.103, !246, !"_entry", i1 false, i1 false}
!248 = !{ptr @nfsd4_layout_verify._entry_ptr.105, !246, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @.str.106, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../fs/nfsd/nfs4proc.c", i32 2166, i32 3}
!251 = !{ptr @.str.107, !250, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @nfsd4_layoutcommit._entry, !250, !"_entry", i1 false, i1 false}
!253 = !{ptr @nfsd4_layoutcommit._entry_ptr, !250, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @.str.109, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../fs/nfsd/nfs4proc.c", i32 2170, i32 3}
!256 = !{ptr @nfsd4_layoutcommit._entry.108, !255, !"_entry", i1 false, i1 false}
!257 = !{ptr @nfsd4_layoutcommit._entry_ptr.110, !255, !"_entry_ptr", i1 false, i1 false}
!258 = !{ptr @.str.112, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../fs/nfsd/nfs4proc.c", i32 2174, i32 3}
!260 = !{ptr @nfsd4_layoutcommit._entry.111, !259, !"_entry", i1 false, i1 false}
!261 = !{ptr @nfsd4_layoutcommit._entry_ptr.113, !259, !"_entry_ptr", i1 false, i1 false}
!262 = distinct !{null, !263, !"__already_done", i1 false, i1 false}
!263 = !{!"../fs/nfsd/trace.h", i32 487, i32 1}
!264 = distinct !{null, !263, !"__warned", i1 false, i1 false}
!265 = !{ptr @.str.114, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../fs/nfsd/nfs4proc.c", i32 2074, i32 3}
!267 = !{ptr @.str.115, !266, !"<string literal>", i1 false, i1 false}
!268 = !{ptr @nfsd4_layoutget._entry, !266, !"_entry", i1 false, i1 false}
!269 = !{ptr @nfsd4_layoutget._entry_ptr, !266, !"_entry_ptr", i1 false, i1 false}
!270 = distinct !{null, !271, !"__already_done", i1 false, i1 false}
!271 = !{!"../fs/nfsd/trace.h", i32 486, i32 1}
!272 = distinct !{null, !271, !"__warned", i1 false, i1 false}
!273 = !{ptr @.str.116, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../fs/nfsd/nfs4proc.c", i32 2227, i32 3}
!275 = !{ptr @nfsd4_layoutreturn._entry, !274, !"_entry", i1 false, i1 false}
!276 = !{ptr @nfsd4_layoutreturn._entry_ptr, !274, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @.str.118, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../fs/nfsd/nfs4proc.c", i32 2242, i32 3}
!279 = !{ptr @nfsd4_layoutreturn._entry.117, !278, !"_entry", i1 false, i1 false}
!280 = !{ptr @nfsd4_layoutreturn._entry_ptr.119, !278, !"_entry_ptr", i1 false, i1 false}
!281 = !{ptr @.str.120, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../fs/nfsd/nfs4proc.c", i32 1811, i32 3}
!283 = !{ptr @.str.121, !282, !"<string literal>", i1 false, i1 false}
!284 = !{ptr @nfsd4_fallocate._entry, !282, !"_entry", i1 false, i1 false}
!285 = !{ptr @nfsd4_fallocate._entry_ptr, !282, !"_entry_ptr", i1 false, i1 false}
!286 = !{ptr @.str.122, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../fs/nfsd/nfs4proc.c", i32 1695, i32 27}
!288 = !{ptr @.str.123, !287, !"<string literal>", i1 false, i1 false}
!289 = !{ptr @.str.124, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../fs/nfsd/nfs4proc.c", i32 1266, i32 19}
!291 = !{ptr @.str.125, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../fs/nfsd/nfs4proc.c", i32 1266, i32 52}
!293 = !{ptr @.str.126, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../fs/nfsd/nfs4proc.c", i32 1282, i32 14}
!295 = !{ptr @.str.127, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../fs/nfsd/nfs4proc.c", i32 1283, i32 12}
!297 = !{ptr @.str.128, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../fs/nfsd/nfs4proc.c", i32 1284, i32 17}
!299 = !{ptr @.str.129, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../fs/nfsd/nfs4proc.c", i32 1307, i32 30}
!301 = !{ptr @.str.130, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../fs/nfsd/nfs4proc.c", i32 1310, i32 21}
!303 = !{ptr @.str.131, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../fs/nfsd/nfs4proc.c", i32 1318, i32 30}
!305 = !{ptr @.str.132, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../fs/nfsd/nfs4proc.c", i32 1069, i32 3}
!307 = !{ptr @.str.133, !306, !"<string literal>", i1 false, i1 false}
!308 = !{ptr @nfsd4_verify_copy._entry, !306, !"_entry", i1 false, i1 false}
!309 = !{ptr @nfsd4_verify_copy._entry_ptr, !306, !"_entry_ptr", i1 false, i1 false}
!310 = !{ptr @.str.135, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../fs/nfsd/nfs4proc.c", i32 1076, i32 3}
!312 = !{ptr @nfsd4_verify_copy._entry.134, !311, !"_entry", i1 false, i1 false}
!313 = !{ptr @nfsd4_verify_copy._entry_ptr.136, !311, !"_entry_ptr", i1 false, i1 false}
!314 = !{ptr @nfsd4_cb_offload_ops, !315, !"nfsd4_cb_offload_ops", i1 false, i1 false}
!315 = !{!"../fs/nfsd/nfs4proc.c", i32 1503, i32 40}
!316 = distinct !{null, !317, !"__already_done", i1 false, i1 false}
!317 = !{!"../fs/nfsd/trace.h", i32 1100, i32 1}
!318 = distinct !{null, !317, !"__warned", i1 false, i1 false}
!319 = distinct !{null, !320, !"__already_done", i1 false, i1 false}
!320 = !{!"../fs/nfsd/nfs4proc.c", i32 1790, i32 2}
!321 = !{ptr @.str.137, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../fs/nfsd/nfsd.h", i32 432, i32 8}
!323 = !{ptr @.str.138, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../fs/nfsd/nfsd.h", i32 433, i32 2}
!325 = !{ptr @.str.139, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../fs/nfsd/nfs4proc.c", i32 1870, i32 3}
!327 = !{ptr @.str.140, !326, !"<string literal>", i1 false, i1 false}
!328 = !{ptr @nfsd4_seek._entry, !326, !"_entry", i1 false, i1 false}
!329 = !{ptr @nfsd4_seek._entry_ptr, !326, !"_entry_ptr", i1 false, i1 false}
!330 = !{ptr @.str.141, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../fs/nfsd/nfs4proc.c", i32 3430, i32 9}
!332 = !{ptr @.str.142, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../fs/nfsd/nfs4proc.c", i32 3442, i32 14}
!334 = !{ptr @.str.143, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../fs/nfsd/nfs4proc.c", i32 3453, i32 14}
!336 = !{ptr @nfsd_procedures4, !337, !"nfsd_procedures4", i1 false, i1 false}
!337 = !{!"../fs/nfsd/nfs4proc.c", i32 3433, i32 35}
!338 = !{ptr @.str.144, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../fs/nfsd/nfs4proc.c", i32 2565, i32 4}
!340 = !{ptr @.str.145, !339, !"<string literal>", i1 false, i1 false}
!341 = !{ptr @nfsd4_proc_compound._entry, !339, !"_entry", i1 false, i1 false}
!342 = !{ptr @nfsd4_proc_compound._entry_ptr, !339, !"_entry_ptr", i1 false, i1 false}
!343 = distinct !{null, !344, !"__already_done", i1 false, i1 false}
!344 = !{!"../fs/nfsd/trace.h", i32 96, i32 1}
!345 = distinct !{null, !344, !"__warned", i1 false, i1 false}
!346 = distinct !{null, !347, !"__already_done", i1 false, i1 false}
!347 = !{!"../fs/nfsd/trace.h", i32 112, i32 1}
!348 = distinct !{null, !347, !"__warned", i1 false, i1 false}
!349 = !{!"sp"}
!350 = !{i32 1, !"wchar_size", i32 2}
!351 = !{i32 1, !"min_enum_size", i32 4}
!352 = !{i32 8, !"branch-target-enforcement", i32 0}
!353 = !{i32 8, !"sign-return-address", i32 0}
!354 = !{i32 8, !"sign-return-address-all", i32 0}
!355 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!356 = !{i32 7, !"uwtable", i32 1}
!357 = !{i32 7, !"frame-pointer", i32 2}
!358 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!359 = !{i64 2148662775}
!360 = !{i64 2148577215, i64 2148577247, i64 2148577276, i64 2148577310, i64 2148577341, i64 2148577364}
!361 = !{!"branch_weights", i32 2000, i32 1}
!362 = !{i64 2149973614}
!363 = !{i64 2148574750, i64 2148574782, i64 2148574811, i64 2148574845, i64 2148574876, i64 2148574899}
!364 = !{!"branch_weights", i32 1, i32 2000}
!365 = !{i8 0, i8 2}
!366 = !{i64 2159494395, i64 2159494879, i64 2159494432, i64 2159494488, i64 2159494522, i64 2159494546, i64 2159494587, i64 2159494608, i64 2159494636, i64 2159494670}
!367 = !{i64 2157785364, i64 2157785843, i64 2157785401, i64 2157785457, i64 2157785491, i64 2157785515, i64 2157785556, i64 2157785577, i64 2157785605, i64 2157785639}
!368 = !{!"auto-init"}
!369 = !{i64 2150023157}
!370 = !{i64 2150023423}
!371 = !{i64 2148397818, i64 2148397823, i64 2148397836, i64 2148397880, i64 2148397914, i64 2148397935}
!372 = !{i64 2158126452}
!373 = !{i64 2158126691}
!374 = !{i64 2150031716}
!375 = !{i64 2150032752}
!376 = !{i64 2158200853}
!377 = !{i64 2158201090}
!378 = !{i64 2158222401}
!379 = !{i64 2158222642}
!380 = !{i64 2158275428}
!381 = !{i64 2158275667}
!382 = !{i64 977900, i64 977961}
!383 = !{i64 980632}
!384 = !{i64 980917}
!385 = !{i64 2153321833}
!386 = !{i64 2153321675}
!387 = !{i64 2153322003}
!388 = !{i64 2149701814}
!389 = !{i64 2158482462}
!390 = !{i64 2158482691}
!391 = !{i64 2158465225}
!392 = !{i64 2158465448}
!393 = !{i64 2159355615}
!394 = !{i64 2159355862}
!395 = !{i64 2159468917, i64 2159469401, i64 2159468954, i64 2159469010, i64 2159469044, i64 2159469068, i64 2159469109, i64 2159469130, i64 2159469158, i64 2159469192}
!396 = !{i64 2157943320}
!397 = !{i64 2157943541}
!398 = !{i64 2157960547}
!399 = !{i64 2157960822}
