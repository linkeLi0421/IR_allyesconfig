; ModuleID = '/llk/IR_all_yes/fs/nfs/nfs3proc.c_pt.bc'
source_filename = "../fs/nfs/nfs3proc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [76 x i8] }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nlmclnt_operations = type { ptr, ptr, ptr }
%struct.nfs_rpc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rpc_procinfo = type { i32, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.nfs_server = type { ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nfs_fsid, i64, %struct.timespec64, i32, ptr, i32, %struct.nfs_auth_info, ptr, ptr, i32, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, %struct.rpc_wait_queue, ptr, %struct.rb_root, %struct.ida, %struct.ida, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, ptr, %struct.atomic_t, %struct.__kernel_sockaddr_storage, i32, i32, i16, i16, %struct.rpc_wait_queue, i32, ptr, i8 }
%struct.nfs_fsid = type { i64, i64 }
%struct.timespec64 = type { i64, i32 }
%struct.nfs_auth_info = type { i32, [12 x i32] }
%struct.rb_root = type { ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.__kernel_sockaddr_storage = type { %union.anon.137 }
%union.anon.137 = type { ptr, [124 x i8] }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.nfs_client = type { %struct.refcount_struct, %struct.atomic_t, i32, i32, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32, i32, i32, ptr, %struct.list_head, i64, %struct.nfs4_verifier, i32, %struct.spinlock, i32, i32, %struct.delayed_work, %struct.rpc_wait_queue, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i8, ptr, ptr, ptr, i32, %struct.wait_queue_head, [48 x i8], ptr, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nfs4_verifier = type { [8 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.rpc_message = type { ptr, ptr, ptr, ptr }
%struct.nfs3_sattrargs = type { ptr, ptr, i32, %struct.timespec64 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.160, %struct.list_head, %struct.list_head, %union.anon.161 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.158 }
%union.anon.158 = type { %struct.anon.159 }
%struct.anon.159 = type { %struct.spinlock, i32 }
%union.anon.160 = type { %struct.list_head }
%union.anon.161 = type { %struct.hlist_node }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.file = type { %union.anon.17, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.17 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.nfs_open_context = type { %struct.nfs_lock_context, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.callback_head }
%struct.nfs_lock_context = type { %struct.refcount_struct, %struct.list_head, ptr, ptr, %struct.atomic_t, %struct.callback_head }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.154, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.155, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.156, ptr, %struct.address_space, %struct.list_head, %union.anon.157, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.154 = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.155 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.156 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.157 = type { ptr }
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
%struct.nfs3_accessargs = type { ptr, i32 }
%struct.nfs3_accessres = type { ptr, i32 }
%struct.nfs_access_entry = type { %struct.rb_node, %struct.list_head, %struct.kuid_t, %struct.kgid_t, ptr, i32, %struct.callback_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nfs_fattr = type { i32, i16, i32, %struct.kuid_t, %struct.kgid_t, i32, i64, %union.anon.143, %struct.nfs_fsid, i64, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64, i64, %struct.timespec64, %struct.timespec64, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.143 = type { %struct.anon.145 }
%struct.anon.145 = type { i64 }
%struct.nfs4_label = type { i32, i32, i32, ptr }
%struct.nfs3_readlinkargs = type { ptr, i32, i32, ptr }
%struct.nfs3_createdata = type { %struct.rpc_message, %union.anon.168, %struct.nfs3_diropres, %struct.nfs_fh, %struct.nfs_fattr, %struct.nfs_fattr }
%union.anon.168 = type { %struct.nfs3_createargs }
%struct.nfs3_createargs = type { ptr, ptr, i32, ptr, i32, [2 x i32] }
%struct.nfs3_diropres = type { ptr, ptr, ptr }
%struct.nfs_fh = type { i16, [128 x i8] }
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
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
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
%struct.posix_acl = type { %struct.refcount_struct, %struct.callback_head, i32, [0 x %struct.posix_acl_entry] }
%struct.posix_acl_entry = type { i16, i16, %union.anon.4 }
%union.anon.4 = type { %struct.kuid_t }
%struct.nfs_removeargs = type { %struct.nfs4_sequence_args, ptr, %struct.qstr }
%struct.nfs4_sequence_args = type { ptr, i8 }
%struct.nfs_removeres = type { %struct.nfs4_sequence_res, ptr, ptr, %struct.nfs4_change_info }
%struct.nfs4_sequence_res = type { ptr, i32, i32, i32, i32, i32 }
%struct.nfs4_change_info = type { i32, i64, i64 }
%struct.rpc_task = type { %struct.atomic_t, i32, %struct.list_head, ptr, ptr, i32, i32, ptr, %union.anon.139, i32, %struct.rpc_message, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i16, i16, i16, i8 }
%union.anon.139 = type { %struct.work_struct }
%struct.nfs_iostats = type { [8 x i64], [5 x i64], [27 x i32], [44 x i8] }
%struct.nfs_renameres = type { %struct.nfs4_sequence_res, ptr, %struct.nfs4_change_info, ptr, %struct.nfs4_change_info, ptr }
%struct.nfs3_linkargs = type { ptr, ptr, ptr, i32 }
%struct.nfs3_linkres = type { ptr, ptr }
%struct.nfs3_diropargs = type { ptr, ptr, i32 }
%struct.nfs3_readdirargs = type { ptr, i64, [2 x i32], i8, i32, ptr }
%struct.nfs3_readdirres = type { ptr, ptr, i8 }
%struct.nfs_readdir_arg = type { ptr, ptr, ptr, i64, ptr, i32, i8 }
%struct.nfs_pgio_header = type { ptr, ptr, %struct.list_head, ptr, %struct.nfs_writeverf, i32, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, %struct.rpc_task, %struct.nfs_fattr, %struct.nfs_pgio_args, %struct.nfs_pgio_res, i32, ptr, i64, %struct.nfs_page_array, ptr, i32, i32 }
%struct.nfs_writeverf = type { %struct.nfs_write_verifier, i32 }
%struct.nfs_write_verifier = type { [8 x i8] }
%struct.nfs_pgio_args = type { %struct.nfs4_sequence_args, ptr, ptr, ptr, %struct.nfs4_stateid_struct, i64, i32, i32, ptr, %union.anon.148 }
%struct.nfs4_stateid_struct = type { %union.anon.146, i32 }
%union.anon.146 = type { %struct.anon.147 }
%struct.anon.147 = type { i32, [12 x i8] }
%union.anon.148 = type { %struct.anon.149 }
%struct.anon.149 = type { ptr, [3 x i32], i32 }
%struct.nfs_pgio_res = type { %struct.nfs4_sequence_res, ptr, i64, i32, %union.anon.150 }
%union.anon.150 = type { %struct.anon.151 }
%struct.anon.151 = type { i32, i32 }
%struct.nfs_page_array = type { ptr, i32, [8 x ptr] }
%struct.nfs_commit_data = type { %struct.rpc_task, ptr, ptr, %struct.nfs_fattr, %struct.nfs_writeverf, %struct.list_head, %struct.list_head, ptr, %struct.nfs_commitargs, %struct.nfs_commitres, ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, i32 }
%struct.nfs_commitargs = type { %struct.nfs4_sequence_args, ptr, i64, i32, ptr }
%struct.nfs_commitres = type { %struct.nfs4_sequence_res, i32, ptr, ptr, ptr }
%struct.file_lock = type { ptr, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, ptr, i32, i8, i32, i32, %struct.wait_queue_head, ptr, i64, i64, ptr, i32, i32, ptr, ptr, %union.anon.136 }
%union.anon.136 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, ptr, %struct.list_head }

@nfs_dentry_operations = external dso_local constant %struct.dentry_operations, align 128
@nfs3_dir_inode_operations = internal constant %struct.inode_operations { ptr @nfs_lookup, ptr null, ptr @nfs_permission, ptr @nfs3_get_acl, ptr null, ptr @nfs_create, ptr @nfs_link, ptr @nfs_unlink, ptr @nfs_symlink, ptr @nfs_mkdir, ptr @nfs_rmdir, ptr @nfs_mknod, ptr @nfs_rename, ptr @nfs_setattr, ptr @nfs_getattr, ptr @nfs3_listxattr, ptr null, ptr null, ptr null, ptr null, ptr @nfs3_set_acl, ptr null, ptr null, [36 x i8] undef }, align 128
@nfs3_file_inode_operations = internal constant %struct.inode_operations { ptr null, ptr null, ptr @nfs_permission, ptr @nfs3_get_acl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nfs_setattr, ptr @nfs_getattr, ptr @nfs3_listxattr, ptr null, ptr null, ptr null, ptr null, ptr @nfs3_set_acl, ptr null, ptr null, [36 x i8] undef }, align 128
@nfs_file_operations = external dso_local constant %struct.file_operations, align 4
@nlmclnt_fl_close_lock_ops = internal constant { %struct.nlmclnt_operations, [20 x i8] } { %struct.nlmclnt_operations { ptr @nfs3_nlm_alloc_call, ptr @nfs3_nlm_unlock_prepare, ptr @nfs3_nlm_release_call }, [20 x i8] zeroinitializer }, align 32
@nfs_v3_clientops = dso_local constant { %struct.nfs_rpc_ops, [40 x i8] } { %struct.nfs_rpc_ops { i32 3, ptr @nfs_dentry_operations, ptr @nfs3_dir_inode_operations, ptr @nfs3_file_inode_operations, ptr @nfs_file_operations, ptr @nlmclnt_fl_close_lock_ops, ptr @nfs3_proc_get_root, ptr @nfs_submount, ptr @nfs_try_get_tree, ptr @nfs3_proc_getattr, ptr @nfs3_proc_setattr, ptr @nfs3_proc_lookup, ptr @nfs3_proc_lookupp, ptr @nfs3_proc_access, ptr @nfs3_proc_readlink, ptr @nfs3_proc_create, ptr @nfs3_proc_remove, ptr @nfs3_proc_unlink_setup, ptr @nfs3_proc_unlink_rpc_prepare, ptr @nfs3_proc_unlink_done, ptr @nfs3_proc_rename_setup, ptr @nfs3_proc_rename_rpc_prepare, ptr @nfs3_proc_rename_done, ptr @nfs3_proc_link, ptr @nfs3_proc_symlink, ptr @nfs3_proc_mkdir, ptr @nfs3_proc_rmdir, ptr @nfs3_proc_readdir, ptr @nfs3_proc_mknod, ptr @nfs3_proc_statfs, ptr @nfs3_proc_fsinfo, ptr @nfs3_proc_pathconf, ptr null, ptr @nfs3_decode_dirent, ptr @nfs3_proc_pgio_rpc_prepare, ptr @nfs3_proc_read_setup, ptr @nfs3_read_done, ptr @nfs3_proc_write_setup, ptr @nfs3_write_done, ptr @nfs3_proc_commit_setup, ptr @nfs3_proc_commit_rpc_prepare, ptr @nfs3_commit_done, ptr @nfs3_proc_lock, ptr null, ptr @forget_all_cached_acls, ptr @nfs_close_context, ptr null, ptr @nfs3_have_delegation, ptr @nfs_alloc_client, ptr @nfs_init_client, ptr @nfs_free_client, ptr @nfs3_create_server, ptr @nfs3_clone_server, ptr null }, [40 x i8] zeroinitializer }, align 32
@nfs3_procedures = external dso_local constant [0 x %struct.rpc_procinfo], align 4
@nfs_debug = external dso_local local_unnamed_addr global i32, align 4
@do_proc_get_root._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 70, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: call  fsinfo\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"do_proc_get_root\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs/nfs/nfs3proc.c\00", [46 x i8] zeroinitializer }, align 32
@do_proc_get_root._entry_ptr = internal global ptr @do_proc_get_root._entry, section ".printk_index", align 4
@do_proc_get_root._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 73, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: reply fsinfo: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@do_proc_get_root._entry_ptr.5 = internal global ptr @do_proc_get_root._entry.3, section ".printk_index", align 4
@do_proc_get_root._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 78, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: reply getattr: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@do_proc_get_root._entry_ptr.8 = internal global ptr @do_proc_get_root._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/freezer.h\00", [40 x i8] zeroinitializer }, align 32
@system_freezing_cnt = external dso_local global %struct.atomic_t, align 4
@nfs3_proc_getattr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 117, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"NFS call  getattr\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nfs3_proc_getattr\00", [46 x i8] zeroinitializer }, align 32
@nfs3_proc_getattr._entry_ptr = internal global ptr @nfs3_proc_getattr._entry, section ".printk_index", align 4
@nfs3_proc_getattr._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.2, i32 120, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"NFS reply getattr: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@nfs3_proc_getattr._entry_ptr.14 = internal global ptr @nfs3_proc_getattr._entry.12, section ".printk_index", align 4
@nfs3_proc_setattr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"NFS call  setattr\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nfs3_proc_setattr\00", [46 x i8] zeroinitializer }, align 32
@nfs3_proc_setattr._entry_ptr = internal global ptr @nfs3_proc_setattr._entry, section ".printk_index", align 4
@nfs3_proc_setattr._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.2, i32 150, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"NFS reply setattr: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@nfs3_proc_setattr._entry_ptr.19 = internal global ptr @nfs3_proc_setattr._entry.17, section ".printk_index", align 4
@nfs3_proc_lookup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 203, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"NFS call  lookup %pd2\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nfs3_proc_lookup\00", [47 x i8] zeroinitializer }, align 32
@nfs3_proc_lookup._entry_ptr = internal global ptr @nfs3_proc_lookup._entry, section ".printk_index", align 4
@__nfs3_proc_lookup._entry = internal constant %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 189, ptr null, ptr null }, align 1
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"NFS reply lookup: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"__nfs3_proc_lookup\00", [45 x i8] zeroinitializer }, align 32
@__nfs3_proc_lookup._entry_ptr = internal global ptr @__nfs3_proc_lookup._entry, section ".printk_index", align 4
@__const.nfs3_proc_lookupp.dotdot = private unnamed_addr constant [3 x i8] c"..\00", align 1
@nfs3_proc_access._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"NFS call  access\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nfs3_proc_access\00", [47 x i8] zeroinitializer }, align 32
@nfs3_proc_access._entry_ptr = internal global ptr @nfs3_proc_access._entry, section ".printk_index", align 4
@nfs3_proc_access._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.2, i32 250, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"NFS reply access: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@nfs3_proc_access._entry_ptr.28 = internal global ptr @nfs3_proc_access._entry.26, section ".printk_index", align 4
@nfs3_proc_readlink._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"NFS call  readlink\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nfs3_proc_readlink\00", [45 x i8] zeroinitializer }, align 32
@nfs3_proc_readlink._entry_ptr = internal global ptr @nfs3_proc_readlink._entry, section ".printk_index", align 4
@nfs3_proc_readlink._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.2, i32 280, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"NFS reply readlink: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@nfs3_proc_readlink._entry_ptr.33 = internal global ptr @nfs3_proc_readlink._entry.31, section ".printk_index", align 4
@nfs3_proc_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 345, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"NFS call  create %pd\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nfs3_proc_create\00", [47 x i8] zeroinitializer }, align 32
@nfs3_proc_create._entry_ptr = internal global ptr @nfs3_proc_create._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@nfs3_proc_create._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.2, i32 401, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"NFS call  setattr (post-create)\0A\00", [63 x i8] zeroinitializer }, align 32
@nfs3_proc_create._entry_ptr.38 = internal global ptr @nfs3_proc_create._entry.36, section ".printk_index", align 4
@nfs3_proc_create._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.35, ptr @.str.2, i32 413, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"NFS reply setattr (post-create): %d\0A\00", [59 x i8] zeroinitializer }, align 32
@nfs3_proc_create._entry_ptr.41 = internal global ptr @nfs3_proc_create._entry.39, section ".printk_index", align 4
@nfs3_proc_create._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.35, ptr @.str.2, i32 427, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"NFS reply create: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@nfs3_proc_create._entry_ptr.44 = internal global ptr @nfs3_proc_create._entry.42, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nfs3_proc_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 446, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"NFS call  remove %pd2\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nfs3_proc_remove\00", [47 x i8] zeroinitializer }, align 32
@nfs3_proc_remove._entry_ptr = internal global ptr @nfs3_proc_remove._entry, section ".printk_index", align 4
@nfs3_proc_remove._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.2, i32 455, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"NFS reply remove: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@nfs3_proc_remove._entry_ptr.49 = internal global ptr @nfs3_proc_remove._entry.47, section ".printk_index", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@nfs3_proc_link._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 528, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"NFS call  link %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nfs3_proc_link\00", [17 x i8] zeroinitializer }, align 32
@nfs3_proc_link._entry_ptr = internal global ptr @nfs3_proc_link._entry, section ".printk_index", align 4
@nfs3_proc_link._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.2, i32 540, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"NFS reply link: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@nfs3_proc_link._entry_ptr.54 = internal global ptr @nfs3_proc_link._entry.52, section ".printk_index", align 4
@nfs3_proc_symlink._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 555, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"NFS call  symlink %pd\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nfs3_proc_symlink\00", [46 x i8] zeroinitializer }, align 32
@nfs3_proc_symlink._entry_ptr = internal global ptr @nfs3_proc_symlink._entry, section ".printk_index", align 4
@nfs3_proc_symlink._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.2, i32 576, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"NFS reply symlink: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@nfs3_proc_symlink._entry_ptr.59 = internal global ptr @nfs3_proc_symlink._entry.57, section ".printk_index", align 4
@nfs3_proc_mkdir._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.2, i32 588, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"NFS call  mkdir %pd\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nfs3_proc_mkdir\00", [16 x i8] zeroinitializer }, align 32
@nfs3_proc_mkdir._entry_ptr = internal global ptr @nfs3_proc_mkdir._entry, section ".printk_index", align 4
@nfs3_proc_mkdir._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.61, ptr @.str.2, i32 621, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"NFS reply mkdir: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@nfs3_proc_mkdir._entry_ptr.64 = internal global ptr @nfs3_proc_mkdir._entry.62, section ".printk_index", align 4
@nfs3_proc_rmdir._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.2, i32 640, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"NFS call  rmdir %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nfs3_proc_rmdir\00", [16 x i8] zeroinitializer }, align 32
@nfs3_proc_rmdir._entry_ptr = internal global ptr @nfs3_proc_rmdir._entry, section ".printk_index", align 4
@nfs3_proc_rmdir._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.66, ptr @.str.2, i32 650, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"NFS reply rmdir: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@nfs3_proc_rmdir._entry_ptr.69 = internal global ptr @nfs3_proc_rmdir._entry.67, section ".printk_index", align 4
@nfs3_proc_readdir._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.2, i32 692, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"NFS call  readdir%s %llu\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nfs3_proc_readdir\00", [46 x i8] zeroinitializer }, align 32
@nfs3_proc_readdir._entry_ptr = internal global ptr @nfs3_proc_readdir._entry, section ".printk_index", align 4
@.str.72 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"plus\00", [27 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@nfs3_proc_readdir._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.71, ptr @.str.2, i32 706, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"NFS reply readdir%s: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@nfs3_proc_readdir._entry_ptr.76 = internal global ptr @nfs3_proc_readdir._entry.74, section ".printk_index", align 4
@nfs3_proc_mknod._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.2, i32 720, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"NFS call  mknod %pd %u:%u\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nfs3_proc_mknod\00", [16 x i8] zeroinitializer }, align 32
@nfs3_proc_mknod._entry_ptr = internal global ptr @nfs3_proc_mknod._entry, section ".printk_index", align 4
@nfs3_proc_mknod._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.78, ptr @.str.2, i32 771, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"NFS reply mknod: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@nfs3_proc_mknod._entry_ptr.81 = internal global ptr @nfs3_proc_mknod._entry.79, section ".printk_index", align 4
@nfs3_proc_statfs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.2, i32 786, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"NFS call  fsstat\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nfs3_proc_statfs\00", [47 x i8] zeroinitializer }, align 32
@nfs3_proc_statfs._entry_ptr = internal global ptr @nfs3_proc_statfs._entry, section ".printk_index", align 4
@nfs3_proc_statfs._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.83, ptr @.str.2, i32 789, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"NFS reply fsstat: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@nfs3_proc_statfs._entry_ptr.86 = internal global ptr @nfs3_proc_statfs._entry.84, section ".printk_index", align 4
@do_proc_fsinfo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.2, i32 804, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"NFS call  fsinfo\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"do_proc_fsinfo\00", [17 x i8] zeroinitializer }, align 32
@do_proc_fsinfo._entry_ptr = internal global ptr @do_proc_fsinfo._entry, section ".printk_index", align 4
@do_proc_fsinfo._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.88, ptr @.str.2, i32 807, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"NFS reply fsinfo: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@do_proc_fsinfo._entry_ptr.91 = internal global ptr @do_proc_fsinfo._entry.89, section ".printk_index", align 4
@nfs3_proc_pathconf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.2, i32 838, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"NFS call  pathconf\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nfs3_proc_pathconf\00", [45 x i8] zeroinitializer }, align 32
@nfs3_proc_pathconf._entry_ptr = internal global ptr @nfs3_proc_pathconf._entry, section ".printk_index", align 4
@nfs3_proc_pathconf._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.93, ptr @.str.2, i32 841, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"NFS reply pathconf: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@nfs3_proc_pathconf._entry_ptr.96 = internal global ptr @nfs3_proc_pathconf._entry.94, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966772]
@__sancov_gen_cov_switch_values.97 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.98 = internal global [6 x i64] [i64 4, i64 16, i64 4096, i64 8192, i64 24576, i64 49152]
@___asan_gen_.99 = private unnamed_addr constant [26 x i8] c"nlmclnt_fl_close_lock_ops\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 950, i32 40 }
@___asan_gen_.102 = private unnamed_addr constant [17 x i8] c"nfs_v3_clientops\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 1016, i32 26 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 70, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 73, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 78, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant [27 x i8] c"../include/linux/freezer.h\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 57, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 117, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 120, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 140, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 150, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 203, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 189, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 239, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 250, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 270, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 280, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 345, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 401, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 413, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 427, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 446, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 455, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 528, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 540, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 555, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 576, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 588, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 621, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 640, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 650, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 691, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 705, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 719, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 771, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 786, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 789, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 804, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 807, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 838, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.387 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.388 = private constant [21 x i8] c"../fs/nfs/nfs3proc.c\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 841, i32 2 }
@llvm.compiler.used = appending global [135 x ptr] [ptr @__nfs3_proc_lookup._entry, ptr @__nfs3_proc_lookup._entry_ptr, ptr @do_proc_fsinfo._entry, ptr @do_proc_fsinfo._entry.89, ptr @do_proc_fsinfo._entry_ptr, ptr @do_proc_fsinfo._entry_ptr.91, ptr @do_proc_get_root._entry, ptr @do_proc_get_root._entry.3, ptr @do_proc_get_root._entry.6, ptr @do_proc_get_root._entry_ptr, ptr @do_proc_get_root._entry_ptr.5, ptr @do_proc_get_root._entry_ptr.8, ptr @nfs3_proc_access._entry, ptr @nfs3_proc_access._entry.26, ptr @nfs3_proc_access._entry_ptr, ptr @nfs3_proc_access._entry_ptr.28, ptr @nfs3_proc_create._entry, ptr @nfs3_proc_create._entry.36, ptr @nfs3_proc_create._entry.39, ptr @nfs3_proc_create._entry.42, ptr @nfs3_proc_create._entry_ptr, ptr @nfs3_proc_create._entry_ptr.38, ptr @nfs3_proc_create._entry_ptr.41, ptr @nfs3_proc_create._entry_ptr.44, ptr @nfs3_proc_getattr._entry, ptr @nfs3_proc_getattr._entry.12, ptr @nfs3_proc_getattr._entry_ptr, ptr @nfs3_proc_getattr._entry_ptr.14, ptr @nfs3_proc_link._entry, ptr @nfs3_proc_link._entry.52, ptr @nfs3_proc_link._entry_ptr, ptr @nfs3_proc_link._entry_ptr.54, ptr @nfs3_proc_lookup._entry, ptr @nfs3_proc_lookup._entry_ptr, ptr @nfs3_proc_mkdir._entry, ptr @nfs3_proc_mkdir._entry.62, ptr @nfs3_proc_mkdir._entry_ptr, ptr @nfs3_proc_mkdir._entry_ptr.64, ptr @nfs3_proc_mknod._entry, ptr @nfs3_proc_mknod._entry.79, ptr @nfs3_proc_mknod._entry_ptr, ptr @nfs3_proc_mknod._entry_ptr.81, ptr @nfs3_proc_pathconf._entry, ptr @nfs3_proc_pathconf._entry.94, ptr @nfs3_proc_pathconf._entry_ptr, ptr @nfs3_proc_pathconf._entry_ptr.96, ptr @nfs3_proc_readdir._entry, ptr @nfs3_proc_readdir._entry.74, ptr @nfs3_proc_readdir._entry_ptr, ptr @nfs3_proc_readdir._entry_ptr.76, ptr @nfs3_proc_readlink._entry, ptr @nfs3_proc_readlink._entry.31, ptr @nfs3_proc_readlink._entry_ptr, ptr @nfs3_proc_readlink._entry_ptr.33, ptr @nfs3_proc_remove._entry, ptr @nfs3_proc_remove._entry.47, ptr @nfs3_proc_remove._entry_ptr, ptr @nfs3_proc_remove._entry_ptr.49, ptr @nfs3_proc_rmdir._entry, ptr @nfs3_proc_rmdir._entry.67, ptr @nfs3_proc_rmdir._entry_ptr, ptr @nfs3_proc_rmdir._entry_ptr.69, ptr @nfs3_proc_setattr._entry, ptr @nfs3_proc_setattr._entry.17, ptr @nfs3_proc_setattr._entry_ptr, ptr @nfs3_proc_setattr._entry_ptr.19, ptr @nfs3_proc_statfs._entry, ptr @nfs3_proc_statfs._entry.84, ptr @nfs3_proc_statfs._entry_ptr, ptr @nfs3_proc_statfs._entry_ptr.86, ptr @nfs3_proc_symlink._entry, ptr @nfs3_proc_symlink._entry.57, ptr @nfs3_proc_symlink._entry_ptr, ptr @nfs3_proc_symlink._entry_ptr.59, ptr @nlmclnt_fl_close_lock_ops, ptr @nfs_v3_clientops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.68, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.75, ptr @.str.77, ptr @.str.78, ptr @.str.80, ptr @.str.82, ptr @.str.83, ptr @.str.85, ptr @.str.87, ptr @.str.88, ptr @.str.90, ptr @.str.92, ptr @.str.93, ptr @.str.95], section "llvm.metadata"
@0 = internal global [97 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmclnt_fl_close_lock_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_v3_clientops to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_proc_get_root._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_proc_get_root._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_proc_get_root._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs3_proc_getattr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs3_proc_getattr._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs3_proc_setattr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs3_proc_setattr._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs3_proc_lookup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs3_proc_access._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs3_proc_access._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs3_proc_readlink._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs3_proc_readlink._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs3_proc_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs3_proc_create._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs3_proc_create._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs3_proc_create._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs3_proc_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs3_proc_remove._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs3_proc_link._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs3_proc_link._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs3_proc_symlink._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs3_proc_symlink._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs3_proc_mkdir._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs3_proc_mkdir._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs3_proc_rmdir._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs3_proc_rmdir._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs3_proc_readdir._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs3_proc_readdir._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs3_proc_mknod._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs3_proc_mknod._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs3_proc_statfs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs3_proc_statfs._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_proc_fsinfo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_proc_fsinfo._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs3_proc_pathconf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs3_proc_pathconf._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs3_proc_get_root(ptr nocapture noundef readonly %server, ptr noundef %fhandle, ptr noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %client = getelementptr inbounds %struct.nfs_server, ptr %server, i32 0, i32 3
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %call = tail call fastcc i32 @do_proc_get_root(ptr noundef %1, ptr noundef %fhandle, ptr noundef %info)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %server, align 8
  %cl_rpcclient = getelementptr inbounds %struct.nfs_client, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %cl_rpcclient to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cl_rpcclient, align 8
  %6 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client, align 4
  %cmp.not = icmp eq ptr %5, %7
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %call4 = tail call fastcc i32 @do_proc_get_root(ptr noundef %5, ptr noundef %fhandle, ptr noundef %info)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %status.0 = phi i32 [ %call4, %if.then ], [ %call, %land.lhs.true.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %status.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_submount(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_try_get_tree(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs3_proc_getattr(ptr nocapture noundef readonly %server, ptr noundef %fhandle, ptr noundef %fattr, ptr noundef readnone %inode) #0 align 64 {
entry:
  %msg = alloca %struct.rpc_message, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg) #11
  %0 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 1
  %1 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 2
  %2 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 3
  %3 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs3_procedures, i32 0, i32 1), ptr %msg, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %fhandle, ptr %0, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %fattr, ptr %1, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %2, align 4
  %tobool.not = icmp eq ptr %inode, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %land.lhs.true

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %flags = getelementptr inbounds %struct.nfs_server, ptr %server, i32 0, i32 8
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 8
  %and = lshr i32 %8, 11
  %9 = and i32 %and, 4096
  br label %do.body

do.body:                                          ; preds = %land.lhs.true, %entry.do.body_crit_edge
  %task_flags.0 = phi i32 [ 0, %entry.do.body_crit_edge ], [ %9, %land.lhs.true ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %10 = load i32, ptr @nfs_debug, align 4
  %and3 = and i32 %10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %do.body.do.end11_crit_edge, label %do.end, !prof !189

do.body.do.end11_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end11

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #14
  br label %do.end11

do.end11:                                         ; preds = %do.end, %do.body.do.end11_crit_edge
  tail call void @nfs_fattr_init(ptr noundef %fattr) #11
  %client = getelementptr inbounds %struct.nfs_server, ptr %server, i32 0, i32 3
  %11 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %client, align 4
  %call13 = call fastcc i32 @nfs3_rpc_wrapper(ptr noundef %12, ptr noundef nonnull %msg, i32 noundef %task_flags.0)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %13 = load i32, ptr @nfs_debug, align 4
  %and15 = and i32 %13, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %do.end11.do.end31_crit_edge, label %do.end26, !prof !189

do.end11.do.end31_crit_edge:                      ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end31

do.end26:                                         ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #13
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call13) #14
  br label %do.end31

do.end31:                                         ; preds = %do.end26, %do.end11.do.end31_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg) #11
  ret i32 %call13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs3_proc_setattr(ptr nocapture noundef readonly %dentry, ptr noundef %fattr, ptr noundef %sattr) #0 align 64 {
entry:
  %arg = alloca %struct.nfs3_sattrargs, align 8
  %msg = alloca %struct.rpc_message, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %arg) #11
  %2 = getelementptr inbounds i8, ptr %arg, i32 8
  %3 = call ptr @memset(ptr %2, i32 0, i32 24)
  %fh.i = getelementptr i8, ptr %1, i32 -440
  %4 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %fh.i, ptr %arg, align 8
  %sattr2 = getelementptr inbounds %struct.nfs3_sattrargs, ptr %arg, i32 0, i32 1
  %5 = ptrtoint ptr %sattr2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %sattr, ptr %sattr2, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg) #11
  %6 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 1
  %7 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 2
  %8 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 3
  %9 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs3_procedures, i32 0, i32 2), ptr %msg, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %arg, ptr %6, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %fattr, ptr %7, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %8, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %13 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %13, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end, !prof !189

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #14
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %14 = ptrtoint ptr %sattr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sattr, align 8
  %and9 = and i32 %15, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %do.end8.if.end14_crit_edge, label %if.then11

do.end8.if.end14_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then11:                                        ; preds = %do.end8
  %ia_file = getelementptr inbounds %struct.iattr, ptr %sattr, i32 0, i32 8
  %16 = ptrtoint ptr %ia_file to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ia_file, align 8
  %cmp.not.i = icmp eq ptr %17, null
  br i1 %cmp.not.i, label %if.then11.nfs_file_cred.exit_crit_edge, label %if.then.i

if.then11.nfs_file_cred.exit_crit_edge:           ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfs_file_cred.exit

if.then.i:                                        ; preds = %if.then11
  %private_data.i.i = getelementptr inbounds %struct.file, ptr %17, i32 0, i32 16
  %18 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %private_data.i.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %if.then.i.nfs_file_cred.exit_crit_edge, label %cleanup.i

if.then.i.nfs_file_cred.exit_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfs_file_cred.exit

cleanup.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %cred.i = getelementptr inbounds %struct.nfs_open_context, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cred.i, align 4
  br label %nfs_file_cred.exit

nfs_file_cred.exit:                               ; preds = %cleanup.i, %if.then.i.nfs_file_cred.exit_crit_edge, %if.then11.nfs_file_cred.exit_crit_edge
  %retval.1.i = phi ptr [ %21, %cleanup.i ], [ null, %if.then11.nfs_file_cred.exit_crit_edge ], [ null, %if.then.i.nfs_file_cred.exit_crit_edge ]
  %22 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %retval.1.i, ptr %8, align 4
  br label %if.end14

if.end14:                                         ; preds = %nfs_file_cred.exit, %do.end8.if.end14_crit_edge
  call void @nfs_fattr_init(ptr noundef %fattr) #11
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %23 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %24, i32 0, i32 33
  %25 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %client.i = getelementptr inbounds %struct.nfs_server, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %client.i, align 4
  %call16 = call fastcc i32 @nfs3_rpc_wrapper(ptr noundef %28, ptr noundef nonnull %msg, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp = icmp eq i32 %call16, 0
  br i1 %cmp, label %if.then17, label %if.end14.do.body24_crit_edge

if.end14.do.body24_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body24

if.then17:                                        ; preds = %if.end14
  call void @nfs_setattr_update_inode(ptr noundef %1, ptr noundef %sattr, ptr noundef %fattr) #11
  %cache_validity = getelementptr i8, ptr %1, i32 -304
  %29 = ptrtoint ptr %cache_validity to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cache_validity, align 8
  %and19 = and i32 %30, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.then17.do.body24_crit_edge, label %if.then21

if.then17.do.body24_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body24

if.then21:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #13
  call void @nfs_zap_acl_cache(ptr noundef %1) #11
  br label %do.body24

do.body24:                                        ; preds = %if.then21, %if.then17.do.body24_crit_edge, %if.end14.do.body24_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %31 = load i32, ptr @nfs_debug, align 4
  %and25 = and i32 %31, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %do.body24.do.end41_crit_edge, label %do.end36, !prof !189

do.body24.do.end41_crit_edge:                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end41

do.end36:                                         ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #13
  %call38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %call16) #14
  br label %do.end41

do.end41:                                         ; preds = %do.end36, %do.body24.do.end41_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %arg) #11
  ret i32 %call16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs3_proc_lookup(ptr noundef %dir, ptr noundef %dentry, ptr noundef %fhandle, ptr noundef %fattr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  %flags.i = getelementptr inbounds %struct.nfs_server, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %5, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.nfs_lookup_is_soft_revalidate.exit.thread_crit_edge, label %if.end.i

entry.nfs_lookup_is_soft_revalidate.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfs_lookup_is_soft_revalidate.exit.thread

if.end.i:                                         ; preds = %entry
  %6 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dentry, align 8
  %and.i.i.i.i.i = and i32 %7, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %cmp.i.i.i.not.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.not.i, label %if.end.i.nfs_lookup_is_soft_revalidate.exit.thread_crit_edge, label %nfs_lookup_is_soft_revalidate.exit

if.end.i.nfs_lookup_is_soft_revalidate.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfs_lookup_is_soft_revalidate.exit.thread

nfs_lookup_is_soft_revalidate.exit:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %8 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d_inode.i.i, align 8
  %fh.i.i = getelementptr i8, ptr %9, i32 -440
  %10 = ptrtoint ptr %fh.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %fh.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool4.not.i.not = icmp eq i16 %11, 0
  %spec.select = select i1 %tobool4.not.i.not, i16 0, i16 4096
  br label %nfs_lookup_is_soft_revalidate.exit.thread

nfs_lookup_is_soft_revalidate.exit.thread:        ; preds = %nfs_lookup_is_soft_revalidate.exit, %if.end.i.nfs_lookup_is_soft_revalidate.exit.thread_crit_edge, %entry.nfs_lookup_is_soft_revalidate.exit.thread_crit_edge
  %12 = phi i16 [ 0, %entry.nfs_lookup_is_soft_revalidate.exit.thread_crit_edge ], [ 0, %if.end.i.nfs_lookup_is_soft_revalidate.exit.thread_crit_edge ], [ %spec.select, %nfs_lookup_is_soft_revalidate.exit ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %13 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %13, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %nfs_lookup_is_soft_revalidate.exit.thread.do.end9_crit_edge, label %do.end, !prof !189

nfs_lookup_is_soft_revalidate.exit.thread.do.end9_crit_edge: ; preds = %nfs_lookup_is_soft_revalidate.exit.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

do.end:                                           ; preds = %nfs_lookup_is_soft_revalidate.exit.thread
  call void @__sanitizer_cov_trace_pc() #13
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %dentry) #14
  br label %do.end9

do.end9:                                          ; preds = %do.end, %nfs_lookup_is_soft_revalidate.exit.thread.do.end9_crit_edge
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name, align 8
  %16 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %d_name, align 8
  %call11 = tail call fastcc i32 @__nfs3_proc_lookup(ptr noundef %dir, ptr noundef %15, i32 noundef %17, ptr noundef %fhandle, ptr noundef %fattr, i16 noundef zeroext %12)
  ret i32 %call11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs3_proc_lookupp(ptr noundef %inode, ptr noundef %fhandle, ptr noundef %fattr) #0 align 64 {
entry:
  %dotdot = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %dotdot) #11
  %0 = call ptr @memcpy(ptr %dotdot, ptr @__const.nfs3_proc_lookupp.dotdot, i32 3)
  %call = call i32 @strlen(ptr noundef nonnull %dotdot) #15
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %1 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 33
  %3 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_fs_info.i.i, align 16
  %flags = getelementptr inbounds %struct.nfs_server, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 8
  %and = lshr i32 %6, 11
  %7 = trunc i32 %and to i16
  %8 = and i16 %7, 4096
  %call4 = call fastcc i32 @__nfs3_proc_lookup(ptr noundef %inode, ptr noundef nonnull %dotdot, i32 noundef %call, ptr noundef %fhandle, ptr noundef %fattr, i16 noundef zeroext %8)
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %dotdot) #11
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs3_proc_access(ptr noundef %inode, ptr noundef %entry1, ptr noundef %cred) #0 align 64 {
entry:
  %arg = alloca %struct.nfs3_accessargs, align 4
  %res = alloca %struct.nfs3_accessres, align 4
  %msg = alloca %struct.rpc_message, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %arg) #11
  %0 = getelementptr inbounds %struct.nfs3_accessargs, ptr %arg, i32 0, i32 1
  %fh.i = getelementptr i8, ptr %inode, i32 -440
  %1 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %fh.i, ptr %arg, align 4
  %mask = getelementptr inbounds %struct.nfs_access_entry, ptr %entry1, i32 0, i32 5
  %2 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mask, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %res) #11
  %5 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %res, align 4, !annotation !190
  %6 = getelementptr inbounds %struct.nfs3_accessres, ptr %res, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4, !annotation !190
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg) #11
  %8 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 1
  %9 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 2
  %10 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 3
  %11 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs3_procedures, i32 0, i32 4), ptr %msg, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %arg, ptr %8, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %res, ptr %9, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %cred, ptr %10, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %15 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end, !prof !189

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #14
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %call8 = call ptr @nfs_alloc_fattr() #11
  %16 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call8, ptr %res, align 4
  %cmp = icmp eq ptr %call8, null
  br i1 %cmp, label %do.end7.do.body21_crit_edge, label %if.end11

do.end7.do.body21_crit_edge:                      ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body21

if.end11:                                         ; preds = %do.end7
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %17 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %18, i32 0, i32 33
  %19 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %client.i = getelementptr inbounds %struct.nfs_server, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %client.i, align 4
  %call13 = call fastcc i32 @nfs3_rpc_wrapper(ptr noundef %22, ptr noundef nonnull %msg, i32 noundef 0)
  %23 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %res, align 4
  %call15 = call i32 @nfs_refresh_inode(ptr noundef %inode, ptr noundef %24) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp16 = icmp eq i32 %call13, 0
  br i1 %cmp16, label %if.then17, label %if.end11.if.end19_crit_edge

if.end11.if.end19_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then17:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %6, align 4
  call void @nfs_access_set_mask(ptr noundef %entry1, i32 noundef %26) #11
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end11.if.end19_crit_edge
  %27 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %res, align 4
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %if.end19.nfs_free_fattr.exit_crit_edge, label %if.then.i

if.end19.nfs_free_fattr.exit_crit_edge:           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfs_free_fattr.exit

if.then.i:                                        ; preds = %if.end19
  %label.i = getelementptr inbounds %struct.nfs_fattr, ptr %28, i32 0, i32 24
  %29 = ptrtoint ptr %label.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %label.i, align 4
  %tobool.not.i.i = icmp eq ptr %30, null
  br i1 %tobool.not.i.i, label %if.then.i.nfs_free_fattr.exit_crit_edge, label %if.then.i.i

if.then.i.nfs_free_fattr.exit_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfs_free_fattr.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %label1.i.i = getelementptr inbounds %struct.nfs4_label, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %label1.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %label1.i.i, align 4
  call void @kfree(ptr noundef %32) #11
  call void @kfree(ptr noundef nonnull %30) #11
  br label %nfs_free_fattr.exit

nfs_free_fattr.exit:                              ; preds = %if.then.i.i, %if.then.i.nfs_free_fattr.exit_crit_edge, %if.end19.nfs_free_fattr.exit_crit_edge
  call void @kfree(ptr noundef %28) #11
  br label %do.body21

do.body21:                                        ; preds = %nfs_free_fattr.exit, %do.end7.do.body21_crit_edge
  %status.0 = phi i32 [ -12, %do.end7.do.body21_crit_edge ], [ %call13, %nfs_free_fattr.exit ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %33 = load i32, ptr @nfs_debug, align 4
  %and22 = and i32 %33, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %do.body21.do.end38_crit_edge, label %do.end33, !prof !189

do.body21.do.end38_crit_edge:                     ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end38

do.end33:                                         ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #13
  %call35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %status.0) #14
  br label %do.end38

do.end38:                                         ; preds = %do.end33, %do.body21.do.end38_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %res) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg) #11
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs3_proc_readlink(ptr noundef %inode, ptr noundef %page, i32 noundef %pgbase, i32 noundef %pglen) #0 align 64 {
entry:
  %page.addr = alloca ptr, align 4
  %args = alloca %struct.nfs3_readlinkargs, align 4
  %msg = alloca %struct.rpc_message, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %page.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %page, ptr %page.addr, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %args) #11
  %1 = getelementptr inbounds %struct.nfs3_readlinkargs, ptr %args, i32 0, i32 1
  %2 = getelementptr inbounds %struct.nfs3_readlinkargs, ptr %args, i32 0, i32 2
  %3 = getelementptr inbounds %struct.nfs3_readlinkargs, ptr %args, i32 0, i32 3
  %fh.i = getelementptr i8, ptr %inode, i32 -440
  %4 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %fh.i, ptr %args, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %pgbase, ptr %1, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %pglen, ptr %2, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %page.addr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg) #11
  %8 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 1
  %9 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 2
  %10 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 3
  %11 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs3_procedures, i32 0, i32 5), ptr %msg, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %args, ptr %8, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %9, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %10, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %15 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end, !prof !189

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #14
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %call9 = call ptr @nfs_alloc_fattr() #11
  %cmp = icmp eq ptr %call9, null
  br i1 %cmp, label %do.end8.do.body16_crit_edge, label %if.then.i

do.end8.do.body16_crit_edge:                      ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body16

if.then.i:                                        ; preds = %do.end8
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call9, ptr %9, align 4
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %17 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %18, i32 0, i32 33
  %19 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %client.i = getelementptr inbounds %struct.nfs_server, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %client.i, align 4
  %call14 = call fastcc i32 @nfs3_rpc_wrapper(ptr noundef %22, ptr noundef nonnull %msg, i32 noundef 0)
  %call15 = call i32 @nfs_refresh_inode(ptr noundef %inode, ptr noundef nonnull %call9) #11
  %label.i = getelementptr inbounds %struct.nfs_fattr, ptr %call9, i32 0, i32 24
  %23 = ptrtoint ptr %label.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %label.i, align 4
  %tobool.not.i.i = icmp eq ptr %24, null
  br i1 %tobool.not.i.i, label %if.then.i.nfs_free_fattr.exit_crit_edge, label %if.then.i.i

if.then.i.nfs_free_fattr.exit_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfs_free_fattr.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %label1.i.i = getelementptr inbounds %struct.nfs4_label, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %label1.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %label1.i.i, align 4
  call void @kfree(ptr noundef %26) #11
  call void @kfree(ptr noundef nonnull %24) #11
  br label %nfs_free_fattr.exit

nfs_free_fattr.exit:                              ; preds = %if.then.i.i, %if.then.i.nfs_free_fattr.exit_crit_edge
  call void @kfree(ptr noundef nonnull %call9) #11
  br label %do.body16

do.body16:                                        ; preds = %nfs_free_fattr.exit, %do.end8.do.body16_crit_edge
  %status.0 = phi i32 [ -12, %do.end8.do.body16_crit_edge ], [ %call14, %nfs_free_fattr.exit ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %27 = load i32, ptr @nfs_debug, align 4
  %and17 = and i32 %27, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %do.body16.do.end33_crit_edge, label %do.end28, !prof !189

do.body16.do.end33_crit_edge:                     ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end33

do.end28:                                         ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #13
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %status.0) #14
  br label %do.end33

do.end33:                                         ; preds = %do.end28, %do.body16.do.end33_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %args) #11
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs3_proc_create(ptr noundef %dir, ptr noundef %dentry, ptr noundef %sattr, i32 noundef %flags) #0 align 64 {
entry:
  %default_acl = alloca ptr, align 4
  %acl = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %default_acl) #11
  %0 = ptrtoint ptr %default_acl to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %default_acl, align 4, !annotation !190
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %acl) #11
  %1 = ptrtoint ptr %acl to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %acl, align 4, !annotation !190
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %2 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end, !prof !189

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %dentry) #14
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 592) #16
  %cmp.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.not.i, label %do.end5.out_crit_edge, label %if.end8

do.end5.out_crit_edge:                            ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end8:                                          ; preds = %do.end5
  %arg.i = getelementptr inbounds %struct.nfs3_createdata, ptr %call7.i.i.i, i32 0, i32 1
  %rpc_argp.i = getelementptr inbounds %struct.rpc_message, ptr %call7.i.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %rpc_argp.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %arg.i, ptr %rpc_argp.i, align 4
  %res.i = getelementptr inbounds %struct.nfs3_createdata, ptr %call7.i.i.i, i32 0, i32 2
  %rpc_resp.i = getelementptr inbounds %struct.rpc_message, ptr %call7.i.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %rpc_resp.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %res.i, ptr %rpc_resp.i, align 8
  %fh.i = getelementptr inbounds %struct.nfs3_createdata, ptr %call7.i.i.i, i32 0, i32 3
  %fh3.i = getelementptr inbounds %struct.nfs3_createdata, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %fh3.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %fh.i, ptr %fh3.i, align 8
  %fattr.i = getelementptr inbounds %struct.nfs3_createdata, ptr %call7.i.i.i, i32 0, i32 4
  %fattr5.i = getelementptr inbounds %struct.nfs3_createdata, ptr %call7.i.i.i, i32 0, i32 2, i32 2
  %7 = ptrtoint ptr %fattr5.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %fattr.i, ptr %fattr5.i, align 4
  %dir_attr.i = getelementptr inbounds %struct.nfs3_createdata, ptr %call7.i.i.i, i32 0, i32 5
  %8 = ptrtoint ptr %res.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dir_attr.i, ptr %res.i, align 4
  tail call void @nfs_fattr_init(ptr noundef %fattr.i) #11
  %9 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %res.i, align 4
  tail call void @nfs_fattr_init(ptr noundef %10) #11
  %11 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs3_procedures, i32 0, i32 8), ptr %call7.i.i.i, align 8
  %fh.i178 = getelementptr i8, ptr %dir, i32 -440
  %12 = ptrtoint ptr %arg.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %fh.i178, ptr %arg.i, align 8
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name, align 8
  %name11 = getelementptr inbounds %struct.nfs3_createdata, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 1
  %15 = ptrtoint ptr %name11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %name11, align 4
  %16 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %d_name, align 8
  %len14 = getelementptr inbounds %struct.nfs3_createdata, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 2
  %18 = ptrtoint ptr %len14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %len14, align 8
  %sattr16 = getelementptr inbounds %struct.nfs3_createdata, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 3
  %19 = ptrtoint ptr %sattr16 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %sattr, ptr %sattr16, align 4
  %createmode = getelementptr inbounds %struct.nfs3_createdata, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 4
  %20 = ptrtoint ptr %createmode to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %createmode, align 8
  %and18 = and i32 %flags, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end8.if.end28_crit_edge, label %if.then20

if.end8.if.end28_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then20:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %createmode to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2, ptr %createmode, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %verifier = getelementptr inbounds %struct.nfs3_createdata, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 5
  %23 = ptrtoint ptr %verifier to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %verifier, align 4
  %24 = tail call i32 @llvm.read_register.i32(metadata !179) #11
  %and.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 68
  %28 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pid, align 8
  %arrayidx27 = getelementptr %struct.nfs3_createdata, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 5, i32 1
  %30 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %arrayidx27, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then20, %if.end8.if.end28_crit_edge
  %ia_mode = getelementptr inbounds %struct.iattr, ptr %sattr, i32 0, i32 1
  %call29 = call i32 @posix_acl_create(ptr noundef %dir, ptr noundef %ia_mode, ptr noundef nonnull %default_acl, ptr noundef nonnull %acl) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %for.cond.preheader, label %if.end28.out_crit_edge

if.end28.out_crit_edge:                           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

for.cond.preheader:                               ; preds = %if.end28
  %i_sb.i.i.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog, %for.cond.preheader
  %31 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_fs_info.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %32, i32 0, i32 33
  %33 = ptrtoint ptr %s_fs_info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %s_fs_info.i.i.i.i, align 16
  %client.i.i = getelementptr inbounds %struct.nfs_server, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %client.i.i, align 4
  %call1.i = call fastcc i32 @nfs3_rpc_wrapper(ptr noundef %36, ptr noundef nonnull %call7.i.i.i, i32 noundef 0) #11
  %37 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %res.i, align 4
  %call2.i = call i32 @nfs_post_op_update_inode(ptr noundef %dir, ptr noundef %38) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.not.i180 = icmp eq i32 %call1.i, 0
  br i1 %cmp.not.i180, label %if.end.i, label %if.then.i181

if.then.i181:                                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  %39 = inttoptr i32 %call1.i to ptr
  br label %nfs3_do_create.exit

if.end.i:                                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  %40 = ptrtoint ptr %fh3.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %fh3.i, align 8
  %42 = ptrtoint ptr %fattr5.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %fattr5.i, align 4
  %call6.i = call ptr @nfs_add_or_obtain(ptr noundef %dentry, ptr noundef %41, ptr noundef %43) #11
  br label %nfs3_do_create.exit

nfs3_do_create.exit:                              ; preds = %if.end.i, %if.then.i181
  %retval.0.i = phi ptr [ %39, %if.then.i181 ], [ %call6.i, %if.end.i ]
  %cmp.i.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  %44 = ptrtoint ptr %retval.0.i to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %44, i32 0
  %45 = zext i32 %spec.select.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values)
  switch i32 %spec.select.i, label %out_release_acls.loopexit.split.loop.exit [
    i32 -524, label %if.end37
    i32 0, label %if.end49
  ]

if.end37:                                         ; preds = %nfs3_do_create.exit
  %46 = ptrtoint ptr %createmode to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %createmode, align 8
  %48 = zext i32 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %47, label %if.end37.sw.epilog_crit_edge [
    i32 2, label %if.end37.sw.epilog.sink.split_crit_edge
    i32 1, label %sw.bb42
    i32 0, label %if.end37.out_release_acls_crit_edge
  ]

if.end37.out_release_acls_crit_edge:              ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_release_acls

if.end37.sw.epilog.sink.split_crit_edge:          ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

if.end37.sw.epilog_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb42:                                          ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb42, %if.end37.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ 0, %sw.bb42 ], [ 1, %if.end37.sw.epilog.sink.split_crit_edge ]
  %49 = ptrtoint ptr %createmode to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %.sink, ptr %createmode, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end37.sw.epilog_crit_edge
  %50 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %res.i, align 4
  call void @nfs_fattr_init(ptr noundef %51) #11
  %52 = ptrtoint ptr %fattr5.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %fattr5.i, align 4
  call void @nfs_fattr_init(ptr noundef %53) #11
  br label %for.cond

if.end49:                                         ; preds = %nfs3_do_create.exit
  %tobool50.not = icmp eq ptr %retval.0.i, null
  %spec.select = select i1 %tobool50.not, ptr %dentry, ptr %retval.0.i
  %54 = ptrtoint ptr %createmode to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %createmode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %55)
  %cmp55 = icmp eq i32 %55, 2
  br i1 %cmp55, label %do.body57, label %if.end49.if.end115_crit_edge

if.end49.if.end115_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end115

do.body57:                                        ; preds = %if.end49
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %56 = load i32, ptr @nfs_debug, align 4
  %and58 = and i32 %56, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %do.body57.do.end74_crit_edge, label %do.end69, !prof !189

do.body57.do.end74_crit_edge:                     ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end74

do.end69:                                         ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #13
  %call71 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #14
  br label %do.end74

do.end74:                                         ; preds = %do.end69, %do.body57.do.end74_crit_edge
  %57 = ptrtoint ptr %sattr to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %sattr, align 8
  %and75 = and i32 %58, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %if.then77, label %do.end74.if.end79_crit_edge

do.end74.if.end79_crit_edge:                      ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end79

if.then77:                                        ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #13
  %or = or i32 %58, 16
  %59 = ptrtoint ptr %sattr to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %or, ptr %sattr, align 8
  br label %if.end79

if.end79:                                         ; preds = %if.then77, %do.end74.if.end79_crit_edge
  %60 = ptrtoint ptr %sattr to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %sattr, align 8
  %and81 = and i32 %61, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  br i1 %tobool82.not, label %if.then83, label %if.end79.if.end86_crit_edge

if.end79.if.end86_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end86

if.then83:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #13
  %or85 = or i32 %61, 32
  %62 = ptrtoint ptr %sattr to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %or85, ptr %sattr, align 8
  br label %if.end86

if.end86:                                         ; preds = %if.then83, %if.end79.if.end86_crit_edge
  %63 = ptrtoint ptr %fattr5.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %fattr5.i, align 4
  %call89 = call i32 @nfs3_proc_setattr(ptr noundef %spec.select, ptr noundef %64, ptr noundef %sattr)
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %spec.select, i32 0, i32 5
  %65 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %d_inode.i, align 8
  %67 = ptrtoint ptr %fattr5.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %fattr5.i, align 4
  %call93 = call i32 @nfs_post_op_update_inode(ptr noundef %66, ptr noundef %68) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %69 = load i32, ptr @nfs_debug, align 4
  %and95 = and i32 %69, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool96.not = icmp eq i32 %and95, 0
  br i1 %tobool96.not, label %if.end86.do.end111_crit_edge, label %do.end106, !prof !189

if.end86.do.end111_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end111

do.end106:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #13
  %call108 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %call89) #14
  br label %do.end111

do.end111:                                        ; preds = %do.end106, %if.end86.do.end111_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %cmp112.not = icmp eq i32 %call89, 0
  br i1 %cmp112.not, label %do.end111.if.end115_crit_edge, label %do.end111.out_dput_crit_edge

do.end111.out_dput_crit_edge:                     ; preds = %do.end111
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_dput

do.end111.if.end115_crit_edge:                    ; preds = %do.end111
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end115

if.end115:                                        ; preds = %do.end111.if.end115_crit_edge, %if.end49.if.end115_crit_edge
  %d_inode.i184 = getelementptr inbounds %struct.dentry, ptr %spec.select, i32 0, i32 5
  %70 = ptrtoint ptr %d_inode.i184 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %d_inode.i184, align 8
  %72 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %acl, align 4
  %74 = ptrtoint ptr %default_acl to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %default_acl, align 4
  %call117 = call i32 @nfs3_proc_setacls(ptr noundef %71, ptr noundef %73, ptr noundef %75) #11
  br label %out_dput

out_dput:                                         ; preds = %if.end115, %do.end111.out_dput_crit_edge
  %status.0 = phi i32 [ %call89, %do.end111.out_dput_crit_edge ], [ %call117, %if.end115 ]
  call void @dput(ptr noundef %retval.0.i) #11
  br label %out_release_acls

out_release_acls.loopexit.split.loop.exit:        ; preds = %nfs3_do_create.exit
  call void @__sanitizer_cov_trace_pc() #13
  %76 = ptrtoint ptr %retval.0.i to i32
  br label %out_release_acls

out_release_acls:                                 ; preds = %out_release_acls.loopexit.split.loop.exit, %out_dput, %if.end37.out_release_acls_crit_edge
  %status.1 = phi i32 [ %status.0, %out_dput ], [ %76, %out_release_acls.loopexit.split.loop.exit ], [ -524, %if.end37.out_release_acls_crit_edge ]
  %77 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %acl, align 4
  %tobool.not.i = icmp eq ptr %78, null
  br i1 %tobool.not.i, label %out_release_acls.posix_acl_release.exit_crit_edge, label %land.lhs.true.i

out_release_acls.posix_acl_release.exit_crit_edge: ; preds = %out_release_acls
  call void @__sanitizer_cov_trace_pc() #13
  br label %posix_acl_release.exit

land.lhs.true.i:                                  ; preds = %out_release_acls
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %78, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !191
  call void @llvm.prefetch.p0(ptr nonnull %78, i32 1, i32 3, i32 1) #11
  %79 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %78, ptr nonnull %78, i32 1, ptr nonnull elementtype(i32) %78) #11, !srcloc !192
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %79, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %do.end.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.posix_acl_release.exit_crit_edge, label %if.then10.i.i.i.i, !prof !189

if.end5.i.i.i.i.posix_acl_release.exit_crit_edge: ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %posix_acl_release.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef nonnull %78, i32 noundef 3) #11
  br label %posix_acl_release.exit

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !193
  %a_rcu.i = getelementptr inbounds %struct.posix_acl, ptr %78, i32 0, i32 1
  call void @kvfree_call_rcu(ptr noundef %a_rcu.i, ptr noundef nonnull inttoptr (i32 4 to ptr)) #11
  br label %posix_acl_release.exit

posix_acl_release.exit:                           ; preds = %do.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.posix_acl_release.exit_crit_edge, %out_release_acls.posix_acl_release.exit_crit_edge
  %80 = ptrtoint ptr %default_acl to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %default_acl, align 4
  %tobool.not.i185 = icmp eq ptr %81, null
  br i1 %tobool.not.i185, label %posix_acl_release.exit.out_crit_edge, label %land.lhs.true.i189

posix_acl_release.exit.out_crit_edge:             ; preds = %posix_acl_release.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

land.lhs.true.i189:                               ; preds = %posix_acl_release.exit
  %call.i.i.i.i.i.i186 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %81, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !191
  call void @llvm.prefetch.p0(ptr nonnull %81, i32 1, i32 3, i32 1) #11
  %82 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %81, ptr nonnull %81, i32 1, ptr nonnull elementtype(i32) %81) #11, !srcloc !192
  %asmresult.i.i.i.i.i.i.i187 = extractvalue { i32, i32, i32 } %82, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i187)
  %cmp.i.i.i.i188 = icmp eq i32 %asmresult.i.i.i.i.i.i.i187, 1
  br i1 %cmp.i.i.i.i188, label %do.end.i194, label %if.end5.i.i.i.i191

if.end5.i.i.i.i191:                               ; preds = %land.lhs.true.i189
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i187)
  %.not.i.i.i.i190 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i187, 0
  br i1 %.not.i.i.i.i190, label %if.end5.i.i.i.i191.out_crit_edge, label %if.then10.i.i.i.i192, !prof !189

if.end5.i.i.i.i191.out_crit_edge:                 ; preds = %if.end5.i.i.i.i191
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then10.i.i.i.i192:                             ; preds = %if.end5.i.i.i.i191
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef nonnull %81, i32 noundef 3) #11
  br label %out

do.end.i194:                                      ; preds = %land.lhs.true.i189
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !193
  %a_rcu.i193 = getelementptr inbounds %struct.posix_acl, ptr %81, i32 0, i32 1
  call void @kvfree_call_rcu(ptr noundef %a_rcu.i193, ptr noundef nonnull inttoptr (i32 4 to ptr)) #11
  br label %out

out:                                              ; preds = %do.end.i194, %if.then10.i.i.i.i192, %if.end5.i.i.i.i191.out_crit_edge, %posix_acl_release.exit.out_crit_edge, %if.end28.out_crit_edge, %do.end5.out_crit_edge
  %status.2 = phi i32 [ %call29, %if.end28.out_crit_edge ], [ %status.1, %posix_acl_release.exit.out_crit_edge ], [ %status.1, %if.end5.i.i.i.i191.out_crit_edge ], [ %status.1, %if.then10.i.i.i.i192 ], [ %status.1, %do.end.i194 ], [ -12, %do.end5.out_crit_edge ]
  call void @kfree(ptr noundef %call7.i.i.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %83 = load i32, ptr @nfs_debug, align 4
  %and119 = and i32 %83, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and119)
  %tobool120.not = icmp eq i32 %and119, 0
  br i1 %tobool120.not, label %out.do.end135_crit_edge, label %do.end130, !prof !189

out.do.end135_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end135

do.end130:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  %call132 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %status.2) #14
  br label %do.end135

do.end135:                                        ; preds = %do.end130, %out.do.end135_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %acl) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %default_acl) #11
  ret i32 %status.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs3_proc_remove(ptr noundef %dir, ptr noundef %dentry) #0 align 64 {
entry:
  %arg = alloca %struct.nfs_removeargs, align 8
  %res = alloca %struct.nfs_removeres, align 8
  %msg = alloca %struct.rpc_message, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %arg) #11
  %0 = getelementptr inbounds i8, ptr %arg, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %0, align 8
  %2 = ptrtoint ptr %arg to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %arg, align 8
  %fh = getelementptr inbounds %struct.nfs_removeargs, ptr %arg, i32 0, i32 1
  %fh.i = getelementptr i8, ptr %dir, i32 -440
  %3 = ptrtoint ptr %fh to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %fh.i, ptr %fh, align 8
  %name = getelementptr inbounds %struct.nfs_removeargs, ptr %arg, i32 0, i32 2
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %4 = call ptr @memcpy(ptr %name, ptr %d_name, i32 16)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %res) #11
  %5 = call ptr @memset(ptr %res, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg) #11
  %6 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 1
  %7 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 2
  %8 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 3
  %9 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs3_procedures, i32 0, i32 12), ptr %msg, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %arg, ptr %6, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %res, ptr %7, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %8, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %13 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %13, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !189

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %dentry) #14
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %call7 = call ptr @nfs_alloc_fattr() #11
  %dir_attr = getelementptr inbounds %struct.nfs_removeres, ptr %res, i32 0, i32 2
  %14 = ptrtoint ptr %dir_attr to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7, ptr %dir_attr, align 4
  %cmp = icmp eq ptr %call7, null
  br i1 %cmp, label %do.end6.do.body16_crit_edge, label %if.end10

do.end6.do.body16_crit_edge:                      ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body16

if.end10:                                         ; preds = %do.end6
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %15 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %16, i32 0, i32 33
  %17 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %client.i = getelementptr inbounds %struct.nfs_server, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %client.i, align 4
  %call12 = call fastcc i32 @nfs3_rpc_wrapper(ptr noundef %20, ptr noundef nonnull %msg, i32 noundef 0)
  %21 = ptrtoint ptr %dir_attr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dir_attr, align 4
  %call14 = call i32 @nfs_post_op_update_inode(ptr noundef %dir, ptr noundef %22) #11
  %23 = ptrtoint ptr %dir_attr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dir_attr, align 4
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %if.end10.nfs_free_fattr.exit_crit_edge, label %if.then.i

if.end10.nfs_free_fattr.exit_crit_edge:           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfs_free_fattr.exit

if.then.i:                                        ; preds = %if.end10
  %label.i = getelementptr inbounds %struct.nfs_fattr, ptr %24, i32 0, i32 24
  %25 = ptrtoint ptr %label.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %label.i, align 4
  %tobool.not.i.i = icmp eq ptr %26, null
  br i1 %tobool.not.i.i, label %if.then.i.nfs_free_fattr.exit_crit_edge, label %if.then.i.i

if.then.i.nfs_free_fattr.exit_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfs_free_fattr.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %label1.i.i = getelementptr inbounds %struct.nfs4_label, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %label1.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %label1.i.i, align 4
  call void @kfree(ptr noundef %28) #11
  call void @kfree(ptr noundef nonnull %26) #11
  br label %nfs_free_fattr.exit

nfs_free_fattr.exit:                              ; preds = %if.then.i.i, %if.then.i.nfs_free_fattr.exit_crit_edge, %if.end10.nfs_free_fattr.exit_crit_edge
  call void @kfree(ptr noundef %24) #11
  br label %do.body16

do.body16:                                        ; preds = %nfs_free_fattr.exit, %do.end6.do.body16_crit_edge
  %status.0 = phi i32 [ -12, %do.end6.do.body16_crit_edge ], [ %call12, %nfs_free_fattr.exit ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %29 = load i32, ptr @nfs_debug, align 4
  %and17 = and i32 %29, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %do.body16.do.end33_crit_edge, label %do.end28, !prof !189

do.body16.do.end33_crit_edge:                     ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end33

do.end28:                                         ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #13
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef %status.0) #14
  br label %do.end33

do.end33:                                         ; preds = %do.end28, %do.body16.do.end33_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %res) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %arg) #11
  ret i32 %status.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @nfs3_proc_unlink_setup(ptr nocapture noundef writeonly %msg, ptr nocapture noundef readnone %dentry, ptr nocapture noundef readnone %inode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs3_procedures, i32 0, i32 12), ptr %msg, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs3_proc_unlink_rpc_prepare(ptr noundef %task, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rpc_call_start(ptr noundef %task) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs3_proc_unlink_done(ptr noundef %task, ptr noundef %dir) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tk_status.i = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 1
  %0 = ptrtoint ptr %tk_status.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tk_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -528, i32 %1)
  %cmp.not.i = icmp eq i32 %1, -528
  br i1 %cmp.not.i, label %if.end.i, label %if.end

if.end.i:                                         ; preds = %entry
  %i_sb.i.i.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_fs_info.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i.i.i.i, align 16
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !194
  %io_stats.i.i.i = getelementptr inbounds %struct.nfs_server, ptr %5, i32 0, i32 6
  %7 = ptrtoint ptr %io_stats.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %io_stats.i.i.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.nfs_iostats, ptr %8, i32 0, i32 2, i32 24
  %9 = ptrtoint ptr %arrayidx.i.i.i to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !179) #11
  %and.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx13.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx13.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx13.i.i.i, align 4
  %add.i.i.i = add i32 %15, %9
  %16 = inttoptr i32 %add.i.i.i to ptr
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %add14.i.i.i = add i32 %18, 1
  store i32 %add14.i.i.i, ptr %16, align 4
  %19 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !195
  %and.i.i.i.i.i = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.end.i.nfs3_async_handle_jukebox.exit_crit_edge, !prof !196

if.end.i.nfs3_async_handle_jukebox.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfs3_async_handle_jukebox.exit

if.then.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %nfs3_async_handle_jukebox.exit

nfs3_async_handle_jukebox.exit:                   ; preds = %if.then.i.i.i, %if.end.i.nfs3_async_handle_jukebox.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #11, !srcloc !197
  %20 = ptrtoint ptr %tk_status.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %tk_status.i, align 4
  %call.i = tail call i32 @rpc_restart_call(ptr noundef %task) #11
  tail call void @rpc_delay(ptr noundef %task, i32 noundef 500) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %rpc_resp = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 10, i32 2
  %21 = ptrtoint ptr %rpc_resp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rpc_resp, align 4
  %dir_attr = getelementptr inbounds %struct.nfs_removeres, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %dir_attr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dir_attr, align 4
  %call1 = tail call i32 @nfs_post_op_update_inode(ptr noundef %dir, ptr noundef %24) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %nfs3_async_handle_jukebox.exit
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %nfs3_async_handle_jukebox.exit ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @nfs3_proc_rename_setup(ptr nocapture noundef writeonly %msg, ptr nocapture noundef readnone %old_dentry, ptr nocapture noundef readnone %new_dentry) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs3_procedures, i32 0, i32 14), ptr %msg, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs3_proc_rename_rpc_prepare(ptr noundef %task, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rpc_call_start(ptr noundef %task) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs3_proc_rename_done(ptr noundef %task, ptr noundef %old_dir, ptr noundef %new_dir) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tk_status.i = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 1
  %0 = ptrtoint ptr %tk_status.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tk_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -528, i32 %1)
  %cmp.not.i = icmp eq i32 %1, -528
  br i1 %cmp.not.i, label %if.end.i, label %if.end

if.end.i:                                         ; preds = %entry
  %i_sb.i.i.i = getelementptr inbounds %struct.inode, ptr %old_dir, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_fs_info.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i.i.i.i, align 16
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !194
  %io_stats.i.i.i = getelementptr inbounds %struct.nfs_server, ptr %5, i32 0, i32 6
  %7 = ptrtoint ptr %io_stats.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %io_stats.i.i.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.nfs_iostats, ptr %8, i32 0, i32 2, i32 24
  %9 = ptrtoint ptr %arrayidx.i.i.i to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !179) #11
  %and.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx13.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx13.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx13.i.i.i, align 4
  %add.i.i.i = add i32 %15, %9
  %16 = inttoptr i32 %add.i.i.i to ptr
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %add14.i.i.i = add i32 %18, 1
  store i32 %add14.i.i.i, ptr %16, align 4
  %19 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !195
  %and.i.i.i.i.i = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.end.i.nfs3_async_handle_jukebox.exit_crit_edge, !prof !196

if.end.i.nfs3_async_handle_jukebox.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfs3_async_handle_jukebox.exit

if.then.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %nfs3_async_handle_jukebox.exit

nfs3_async_handle_jukebox.exit:                   ; preds = %if.then.i.i.i, %if.end.i.nfs3_async_handle_jukebox.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #11, !srcloc !197
  %20 = ptrtoint ptr %tk_status.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %tk_status.i, align 4
  %call.i = tail call i32 @rpc_restart_call(ptr noundef %task) #11
  tail call void @rpc_delay(ptr noundef %task, i32 noundef 500) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %rpc_resp = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 10, i32 2
  %21 = ptrtoint ptr %rpc_resp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rpc_resp, align 4
  %old_fattr = getelementptr inbounds %struct.nfs_renameres, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %old_fattr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %old_fattr, align 8
  %call1 = tail call i32 @nfs_post_op_update_inode(ptr noundef %old_dir, ptr noundef %24) #11
  %new_fattr = getelementptr inbounds %struct.nfs_renameres, ptr %22, i32 0, i32 5
  %25 = ptrtoint ptr %new_fattr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %new_fattr, align 8
  %call2 = tail call i32 @nfs_post_op_update_inode(ptr noundef %new_dir, ptr noundef %26) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %nfs3_async_handle_jukebox.exit
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %nfs3_async_handle_jukebox.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs3_proc_link(ptr noundef %inode, ptr noundef %dir, ptr nocapture noundef readonly %name) #0 align 64 {
entry:
  %arg = alloca %struct.nfs3_linkargs, align 4
  %res = alloca %struct.nfs3_linkres, align 4
  %msg = alloca %struct.rpc_message, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %arg) #11
  %0 = getelementptr inbounds %struct.nfs3_linkargs, ptr %arg, i32 0, i32 1
  %1 = getelementptr inbounds %struct.nfs3_linkargs, ptr %arg, i32 0, i32 2
  %2 = getelementptr inbounds %struct.nfs3_linkargs, ptr %arg, i32 0, i32 3
  %fh.i = getelementptr i8, ptr %inode, i32 -440
  %3 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %fh.i, ptr %arg, align 4
  %fh.i49 = getelementptr i8, ptr %dir, i32 -440
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %fh.i49, ptr %0, align 4
  %name2 = getelementptr inbounds %struct.qstr, ptr %name, i32 0, i32 1
  %5 = ptrtoint ptr %name2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name2, align 8
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %1, align 4
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %name, align 8
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %res) #11
  %11 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 -1 to ptr), ptr %res, align 4, !annotation !190
  %12 = getelementptr inbounds %struct.nfs3_linkres, ptr %res, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 -1 to ptr), ptr %12, align 4, !annotation !190
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg) #11
  %14 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 1
  %15 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 2
  %16 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 3
  %17 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs3_procedures, i32 0, i32 15), ptr %msg, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %arg, ptr %14, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %res, ptr %15, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %16, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %21 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %21, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.end, !prof !189

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef %6) #14
  br label %do.end9

do.end9:                                          ; preds = %do.end, %entry.do.end9_crit_edge
  %call10 = call ptr @nfs_alloc_fattr() #11
  %22 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call10, ptr %12, align 4
  %call11 = call ptr @nfs_alloc_fattr() #11
  %23 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call11, ptr %res, align 4
  %24 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %12, align 4
  %cmp = icmp eq ptr %25, null
  %cmp14 = icmp eq ptr %call11, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp14
  br i1 %or.cond, label %do.end9.out_crit_edge, label %if.end16

do.end9.out_crit_edge:                            ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end16:                                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #13
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %26 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %27, i32 0, i32 33
  %28 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %client.i = getelementptr inbounds %struct.nfs_server, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %client.i, align 4
  %call18 = call fastcc i32 @nfs3_rpc_wrapper(ptr noundef %31, ptr noundef nonnull %msg, i32 noundef 0)
  %32 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %res, align 4
  %call20 = call i32 @nfs_post_op_update_inode(ptr noundef %dir, ptr noundef %33) #11
  %34 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %12, align 4
  %call22 = call i32 @nfs_post_op_update_inode(ptr noundef %inode, ptr noundef %35) #11
  %36 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pr = load ptr, ptr %res, align 4
  br label %out

out:                                              ; preds = %if.end16, %do.end9.out_crit_edge
  %37 = phi ptr [ %call11, %do.end9.out_crit_edge ], [ %.pr, %if.end16 ]
  %status.0 = phi i32 [ -12, %do.end9.out_crit_edge ], [ %call18, %if.end16 ]
  %tobool.not.i = icmp eq ptr %37, null
  br i1 %tobool.not.i, label %out.nfs_free_fattr.exit_crit_edge, label %if.then.i

out.nfs_free_fattr.exit_crit_edge:                ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfs_free_fattr.exit

if.then.i:                                        ; preds = %out
  %label.i = getelementptr inbounds %struct.nfs_fattr, ptr %37, i32 0, i32 24
  %38 = ptrtoint ptr %label.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %label.i, align 4
  %tobool.not.i.i = icmp eq ptr %39, null
  br i1 %tobool.not.i.i, label %if.then.i.nfs_free_fattr.exit_crit_edge, label %if.then.i.i

if.then.i.nfs_free_fattr.exit_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfs_free_fattr.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %label1.i.i = getelementptr inbounds %struct.nfs4_label, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %label1.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %label1.i.i, align 4
  call void @kfree(ptr noundef %41) #11
  call void @kfree(ptr noundef nonnull %39) #11
  br label %nfs_free_fattr.exit

nfs_free_fattr.exit:                              ; preds = %if.then.i.i, %if.then.i.nfs_free_fattr.exit_crit_edge, %out.nfs_free_fattr.exit_crit_edge
  call void @kfree(ptr noundef %37) #11
  %42 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %12, align 4
  %tobool.not.i50 = icmp eq ptr %43, null
  br i1 %tobool.not.i50, label %nfs_free_fattr.exit.nfs_free_fattr.exit56_crit_edge, label %if.then.i53

nfs_free_fattr.exit.nfs_free_fattr.exit56_crit_edge: ; preds = %nfs_free_fattr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfs_free_fattr.exit56

if.then.i53:                                      ; preds = %nfs_free_fattr.exit
  %label.i51 = getelementptr inbounds %struct.nfs_fattr, ptr %43, i32 0, i32 24
  %44 = ptrtoint ptr %label.i51 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %label.i51, align 4
  %tobool.not.i.i52 = icmp eq ptr %45, null
  br i1 %tobool.not.i.i52, label %if.then.i53.nfs_free_fattr.exit56_crit_edge, label %if.then.i.i55

if.then.i53.nfs_free_fattr.exit56_crit_edge:      ; preds = %if.then.i53
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfs_free_fattr.exit56

if.then.i.i55:                                    ; preds = %if.then.i53
  call void @__sanitizer_cov_trace_pc() #13
  %label1.i.i54 = getelementptr inbounds %struct.nfs4_label, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %label1.i.i54 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %label1.i.i54, align 4
  call void @kfree(ptr noundef %47) #11
  call void @kfree(ptr noundef nonnull %45) #11
  br label %nfs_free_fattr.exit56

nfs_free_fattr.exit56:                            ; preds = %if.then.i.i55, %if.then.i53.nfs_free_fattr.exit56_crit_edge, %nfs_free_fattr.exit.nfs_free_fattr.exit56_crit_edge
  call void @kfree(ptr noundef %43) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %48 = load i32, ptr @nfs_debug, align 4
  %and26 = and i32 %48, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %nfs_free_fattr.exit56.do.end42_crit_edge, label %do.end37, !prof !189

nfs_free_fattr.exit56.do.end42_crit_edge:         ; preds = %nfs_free_fattr.exit56
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end42

do.end37:                                         ; preds = %nfs_free_fattr.exit56
  call void @__sanitizer_cov_trace_pc() #13
  %call39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef %status.0) #14
  br label %do.end42

do.end42:                                         ; preds = %do.end37, %nfs_free_fattr.exit56.do.end42_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %res) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %arg) #11
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs3_proc_symlink(ptr noundef %dir, ptr noundef %dentry, ptr noundef %page, i32 noundef %len, ptr noundef %sattr) #0 align 64 {
entry:
  %page.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %page.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %page, ptr %page.addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %len)
  %cmp = icmp ugt i32 %len, 4096
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %1 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end7_crit_edge, label %do.end, !prof !189

do.body.do.end7_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef %dentry) #14
  br label %do.end7

do.end7:                                          ; preds = %do.end, %do.body.do.end7_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 592) #16
  %cmp.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.not.i, label %do.end7.do.body26_crit_edge, label %if.end11

do.end7.do.body26_crit_edge:                      ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body26

if.end11:                                         ; preds = %do.end7
  %arg.i = getelementptr inbounds %struct.nfs3_createdata, ptr %call7.i.i.i, i32 0, i32 1
  %rpc_argp.i = getelementptr inbounds %struct.rpc_message, ptr %call7.i.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %rpc_argp.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %arg.i, ptr %rpc_argp.i, align 4
  %res.i = getelementptr inbounds %struct.nfs3_createdata, ptr %call7.i.i.i, i32 0, i32 2
  %rpc_resp.i = getelementptr inbounds %struct.rpc_message, ptr %call7.i.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %rpc_resp.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %res.i, ptr %rpc_resp.i, align 8
  %fh.i = getelementptr inbounds %struct.nfs3_createdata, ptr %call7.i.i.i, i32 0, i32 3
  %fh3.i = getelementptr inbounds %struct.nfs3_createdata, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %fh3.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %fh.i, ptr %fh3.i, align 8
  %fattr.i = getelementptr inbounds %struct.nfs3_createdata, ptr %call7.i.i.i, i32 0, i32 4
  %fattr5.i = getelementptr inbounds %struct.nfs3_createdata, ptr %call7.i.i.i, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %fattr5.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %fattr.i, ptr %fattr5.i, align 4
  %dir_attr.i = getelementptr inbounds %struct.nfs3_createdata, ptr %call7.i.i.i, i32 0, i32 5
  %7 = ptrtoint ptr %res.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dir_attr.i, ptr %res.i, align 4
  tail call void @nfs_fattr_init(ptr noundef %fattr.i) #11
  %8 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %res.i, align 4
  tail call void @nfs_fattr_init(ptr noundef %9) #11
  %10 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs3_procedures, i32 0, i32 10), ptr %call7.i.i.i, align 8
  %fh.i63 = getelementptr i8, ptr %dir, i32 -440
  %11 = ptrtoint ptr %arg.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %fh.i63, ptr %arg.i, align 8
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name, align 8
  %fromname = getelementptr inbounds %struct.nfs3_createdata, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %fromname to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %fromname, align 4
  %15 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %d_name, align 8
  %fromlen = getelementptr inbounds %struct.nfs3_createdata, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 2
  %17 = ptrtoint ptr %fromlen to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %fromlen, align 8
  %pages = getelementptr inbounds %struct.nfs3_createdata, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 3
  %18 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %page.addr, ptr %pages, align 4
  %pathlen = getelementptr inbounds %struct.nfs3_createdata, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 4
  %19 = ptrtoint ptr %pathlen to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %len, ptr %pathlen, align 8
  %sattr20 = getelementptr inbounds %struct.nfs3_createdata, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 5
  %20 = ptrtoint ptr %sattr20 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %sattr, ptr %sattr20, align 4
  %i_sb.i.i.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %21 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_fs_info.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %22, i32 0, i32 33
  %23 = ptrtoint ptr %s_fs_info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_fs_info.i.i.i.i, align 16
  %client.i.i = getelementptr inbounds %struct.nfs_server, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %client.i.i, align 4
  %call1.i = call fastcc i32 @nfs3_rpc_wrapper(ptr noundef %26, ptr noundef nonnull %call7.i.i.i, i32 noundef 0) #11
  %27 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %res.i, align 4
  %call2.i = call i32 @nfs_post_op_update_inode(ptr noundef %dir, ptr noundef %28) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.not.i65 = icmp eq i32 %call1.i, 0
  br i1 %cmp.not.i65, label %if.end.i, label %if.then.i66

if.then.i66:                                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %29 = inttoptr i32 %call1.i to ptr
  br label %nfs3_do_create.exit

if.end.i:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %fh3.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fh3.i, align 8
  %32 = ptrtoint ptr %fattr5.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %fattr5.i, align 4
  %call6.i = call ptr @nfs_add_or_obtain(ptr noundef %dentry, ptr noundef %31, ptr noundef %33) #11
  br label %nfs3_do_create.exit

nfs3_do_create.exit:                              ; preds = %if.end.i, %if.then.i66
  %retval.0.i = phi ptr [ %29, %if.then.i66 ], [ %call6.i, %if.end.i ]
  %cmp.i.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  %34 = ptrtoint ptr %retval.0.i to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %34, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %cmp23 = icmp eq i32 %spec.select.i, 0
  br i1 %cmp23, label %if.then24, label %nfs3_do_create.exit.if.end25_crit_edge

nfs3_do_create.exit.if.end25_crit_edge:           ; preds = %nfs3_do_create.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.then24:                                        ; preds = %nfs3_do_create.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void @dput(ptr noundef %retval.0.i) #11
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %nfs3_do_create.exit.if.end25_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  br label %do.body26

do.body26:                                        ; preds = %if.end25, %do.end7.do.body26_crit_edge
  %status.0 = phi i32 [ %spec.select.i, %if.end25 ], [ -12, %do.end7.do.body26_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %35 = load i32, ptr @nfs_debug, align 4
  %and27 = and i32 %35, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %do.body26.cleanup_crit_edge, label %do.end38, !prof !189

do.body26.cleanup_crit_edge:                      ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end38:                                         ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #13
  %call40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef %status.0) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end38, %do.body26.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -36, %entry.cleanup_crit_edge ], [ %status.0, %do.end38 ], [ %status.0, %do.body26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs3_proc_mkdir(ptr noundef %dir, ptr noundef %dentry, ptr noundef %sattr) #0 align 64 {
entry:
  %default_acl = alloca ptr, align 4
  %acl = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %default_acl) #11
  %0 = ptrtoint ptr %default_acl to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %default_acl, align 4, !annotation !190
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %acl) #11
  %1 = ptrtoint ptr %acl to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %acl, align 4, !annotation !190
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %2 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end, !prof !189

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef %dentry) #14
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 592) #16
  %cmp.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.not.i, label %do.end5.out_crit_edge, label %if.end8

do.end5.out_crit_edge:                            ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end8:                                          ; preds = %do.end5
  %arg.i = getelementptr inbounds %struct.nfs3_createdata, ptr %call7.i.i.i, i32 0, i32 1
  %rpc_argp.i = getelementptr inbounds %struct.rpc_message, ptr %call7.i.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %rpc_argp.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %arg.i, ptr %rpc_argp.i, align 4
  %res.i = getelementptr inbounds %struct.nfs3_createdata, ptr %call7.i.i.i, i32 0, i32 2
  %rpc_resp.i = getelementptr inbounds %struct.rpc_message, ptr %call7.i.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %rpc_resp.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %res.i, ptr %rpc_resp.i, align 8
  %fh.i = getelementptr inbounds %struct.nfs3_createdata, ptr %call7.i.i.i, i32 0, i32 3
  %fh3.i = getelementptr inbounds %struct.nfs3_createdata, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %fh3.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %fh.i, ptr %fh3.i, align 8
  %fattr.i = getelementptr inbounds %struct.nfs3_createdata, ptr %call7.i.i.i, i32 0, i32 4
  %fattr5.i = getelementptr inbounds %struct.nfs3_createdata, ptr %call7.i.i.i, i32 0, i32 2, i32 2
  %7 = ptrtoint ptr %fattr5.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %fattr.i, ptr %fattr5.i, align 4
  %dir_attr.i = getelementptr inbounds %struct.nfs3_createdata, ptr %call7.i.i.i, i32 0, i32 5
  %8 = ptrtoint ptr %res.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dir_attr.i, ptr %res.i, align 4
  tail call void @nfs_fattr_init(ptr noundef %fattr.i) #11
  %9 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %res.i, align 4
  tail call void @nfs_fattr_init(ptr noundef %10) #11
  %ia_mode = getelementptr inbounds %struct.iattr, ptr %sattr, i32 0, i32 1
  %call9 = call i32 @posix_acl_create(ptr noundef %dir, ptr noundef %ia_mode, ptr noundef nonnull %default_acl, ptr noundef nonnull %acl) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.out_crit_edge

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end12:                                         ; preds = %if.end8
  %11 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs3_procedures, i32 0, i32 9), ptr %call7.i.i.i, align 8
  %fh.i69 = getelementptr i8, ptr %dir, i32 -440
  %12 = ptrtoint ptr %arg.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %fh.i69, ptr %arg.i, align 8
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name, align 8
  %name15 = getelementptr inbounds %struct.nfs3_createdata, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 1
  %15 = ptrtoint ptr %name15 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %name15, align 4
  %16 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %d_name, align 8
  %len18 = getelementptr inbounds %struct.nfs3_createdata, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 2
  %18 = ptrtoint ptr %len18 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %len18, align 8
  %sattr20 = getelementptr inbounds %struct.nfs3_createdata, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 3
  %19 = ptrtoint ptr %sattr20 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %sattr, ptr %sattr20, align 4
  %i_sb.i.i.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %20 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_fs_info.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %21, i32 0, i32 33
  %22 = ptrtoint ptr %s_fs_info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_fs_info.i.i.i.i, align 16
  %client.i.i = getelementptr inbounds %struct.nfs_server, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %client.i.i, align 4
  %call1.i = call fastcc i32 @nfs3_rpc_wrapper(ptr noundef %25, ptr noundef nonnull %call7.i.i.i, i32 noundef 0) #11
  %26 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %res.i, align 4
  %call2.i = call i32 @nfs_post_op_update_inode(ptr noundef %dir, ptr noundef %27) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.not.i71 = icmp eq i32 %call1.i, 0
  br i1 %cmp.not.i71, label %if.end.i, label %if.then.i72

if.then.i72:                                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %28 = inttoptr i32 %call1.i to ptr
  br label %nfs3_do_create.exit

if.end.i:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %fh3.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fh3.i, align 8
  %31 = ptrtoint ptr %fattr5.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fattr5.i, align 4
  %call6.i = call ptr @nfs_add_or_obtain(ptr noundef %dentry, ptr noundef %30, ptr noundef %32) #11
  br label %nfs3_do_create.exit

nfs3_do_create.exit:                              ; preds = %if.end.i, %if.then.i72
  %retval.0.i = phi ptr [ %28, %if.then.i72 ], [ %call6.i, %if.end.i ]
  %cmp.i.i.not = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  %33 = ptrtoint ptr %retval.0.i to i32
  br i1 %cmp.i.i.not, label %nfs3_do_create.exit.out_release_acls_crit_edge, label %if.end25

nfs3_do_create.exit.out_release_acls_crit_edge:   ; preds = %nfs3_do_create.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_release_acls

if.end25:                                         ; preds = %nfs3_do_create.exit
  call void @__sanitizer_cov_trace_pc() #13
  %tobool26.not = icmp eq ptr %retval.0.i, null
  %spec.select = select i1 %tobool26.not, ptr %dentry, ptr %retval.0.i
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %spec.select, i32 0, i32 5
  %34 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %d_inode.i, align 8
  %36 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %acl, align 4
  %38 = ptrtoint ptr %default_acl to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %default_acl, align 4
  %call30 = call i32 @nfs3_proc_setacls(ptr noundef %35, ptr noundef %37, ptr noundef %39) #11
  call void @dput(ptr noundef %retval.0.i) #11
  br label %out_release_acls

out_release_acls:                                 ; preds = %if.end25, %nfs3_do_create.exit.out_release_acls_crit_edge
  %status.0 = phi i32 [ %33, %nfs3_do_create.exit.out_release_acls_crit_edge ], [ %call30, %if.end25 ]
  %40 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %acl, align 4
  %tobool.not.i = icmp eq ptr %41, null
  br i1 %tobool.not.i, label %out_release_acls.posix_acl_release.exit_crit_edge, label %land.lhs.true.i

out_release_acls.posix_acl_release.exit_crit_edge: ; preds = %out_release_acls
  call void @__sanitizer_cov_trace_pc() #13
  br label %posix_acl_release.exit

land.lhs.true.i:                                  ; preds = %out_release_acls
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %41, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !191
  call void @llvm.prefetch.p0(ptr nonnull %41, i32 1, i32 3, i32 1) #11
  %42 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %41, ptr nonnull %41, i32 1, ptr nonnull elementtype(i32) %41) #11, !srcloc !192
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %42, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %do.end.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.posix_acl_release.exit_crit_edge, label %if.then10.i.i.i.i, !prof !189

if.end5.i.i.i.i.posix_acl_release.exit_crit_edge: ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %posix_acl_release.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef nonnull %41, i32 noundef 3) #11
  br label %posix_acl_release.exit

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !193
  %a_rcu.i = getelementptr inbounds %struct.posix_acl, ptr %41, i32 0, i32 1
  call void @kvfree_call_rcu(ptr noundef %a_rcu.i, ptr noundef nonnull inttoptr (i32 4 to ptr)) #11
  br label %posix_acl_release.exit

posix_acl_release.exit:                           ; preds = %do.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.posix_acl_release.exit_crit_edge, %out_release_acls.posix_acl_release.exit_crit_edge
  %43 = ptrtoint ptr %default_acl to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %default_acl, align 4
  %tobool.not.i75 = icmp eq ptr %44, null
  br i1 %tobool.not.i75, label %posix_acl_release.exit.out_crit_edge, label %land.lhs.true.i79

posix_acl_release.exit.out_crit_edge:             ; preds = %posix_acl_release.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

land.lhs.true.i79:                                ; preds = %posix_acl_release.exit
  %call.i.i.i.i.i.i76 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %44, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !191
  call void @llvm.prefetch.p0(ptr nonnull %44, i32 1, i32 3, i32 1) #11
  %45 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %44, ptr nonnull %44, i32 1, ptr nonnull elementtype(i32) %44) #11, !srcloc !192
  %asmresult.i.i.i.i.i.i.i77 = extractvalue { i32, i32, i32 } %45, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i77)
  %cmp.i.i.i.i78 = icmp eq i32 %asmresult.i.i.i.i.i.i.i77, 1
  br i1 %cmp.i.i.i.i78, label %do.end.i84, label %if.end5.i.i.i.i81

if.end5.i.i.i.i81:                                ; preds = %land.lhs.true.i79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i77)
  %.not.i.i.i.i80 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i77, 0
  br i1 %.not.i.i.i.i80, label %if.end5.i.i.i.i81.out_crit_edge, label %if.then10.i.i.i.i82, !prof !189

if.end5.i.i.i.i81.out_crit_edge:                  ; preds = %if.end5.i.i.i.i81
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then10.i.i.i.i82:                              ; preds = %if.end5.i.i.i.i81
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef nonnull %44, i32 noundef 3) #11
  br label %out

do.end.i84:                                       ; preds = %land.lhs.true.i79
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !193
  %a_rcu.i83 = getelementptr inbounds %struct.posix_acl, ptr %44, i32 0, i32 1
  call void @kvfree_call_rcu(ptr noundef %a_rcu.i83, ptr noundef nonnull inttoptr (i32 4 to ptr)) #11
  br label %out

out:                                              ; preds = %do.end.i84, %if.then10.i.i.i.i82, %if.end5.i.i.i.i81.out_crit_edge, %posix_acl_release.exit.out_crit_edge, %if.end8.out_crit_edge, %do.end5.out_crit_edge
  %status.1 = phi i32 [ %call9, %if.end8.out_crit_edge ], [ %status.0, %posix_acl_release.exit.out_crit_edge ], [ %status.0, %if.end5.i.i.i.i81.out_crit_edge ], [ %status.0, %if.then10.i.i.i.i82 ], [ %status.0, %do.end.i84 ], [ -12, %do.end5.out_crit_edge ]
  call void @kfree(ptr noundef %call7.i.i.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %46 = load i32, ptr @nfs_debug, align 4
  %and32 = and i32 %46, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %out.do.end48_crit_edge, label %do.end43, !prof !189

out.do.end48_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end48

do.end43:                                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  %call45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef %status.1) #14
  br label %do.end48

do.end48:                                         ; preds = %do.end43, %out.do.end48_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %acl) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %default_acl) #11
  ret i32 %status.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs3_proc_rmdir(ptr noundef %dir, ptr nocapture noundef readonly %name) #0 align 64 {
entry:
  %arg = alloca %struct.nfs3_diropargs, align 4
  %msg = alloca %struct.rpc_message, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %arg) #11
  %0 = getelementptr inbounds %struct.nfs3_diropargs, ptr %arg, i32 0, i32 1
  %1 = getelementptr inbounds %struct.nfs3_diropargs, ptr %arg, i32 0, i32 2
  %fh.i = getelementptr i8, ptr %dir, i32 -440
  %2 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %fh.i, ptr %arg, align 4
  %name2 = getelementptr inbounds %struct.qstr, ptr %name, i32 0, i32 1
  %3 = ptrtoint ptr %name2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name2, align 8
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %0, align 4
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %name, align 8
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg) #11
  %9 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 1
  %10 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 2
  %11 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 3
  %12 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs3_procedures, i32 0, i32 13), ptr %msg, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %arg, ptr %9, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %10, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %11, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %16 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %16, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.end, !prof !189

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef %4) #14
  br label %do.end10

do.end10:                                         ; preds = %do.end, %entry.do.end10_crit_edge
  %call11 = call ptr @nfs_alloc_fattr() #11
  %cmp = icmp eq ptr %call11, null
  br i1 %cmp, label %do.end10.do.body18_crit_edge, label %if.then.i

do.end10.do.body18_crit_edge:                     ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body18

if.then.i:                                        ; preds = %do.end10
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call11, ptr %10, align 4
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %18 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 33
  %20 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %client.i = getelementptr inbounds %struct.nfs_server, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %client.i, align 4
  %call16 = call fastcc i32 @nfs3_rpc_wrapper(ptr noundef %23, ptr noundef nonnull %msg, i32 noundef 0)
  %call17 = call i32 @nfs_post_op_update_inode(ptr noundef %dir, ptr noundef nonnull %call11) #11
  %label.i = getelementptr inbounds %struct.nfs_fattr, ptr %call11, i32 0, i32 24
  %24 = ptrtoint ptr %label.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %label.i, align 4
  %tobool.not.i.i = icmp eq ptr %25, null
  br i1 %tobool.not.i.i, label %if.then.i.nfs_free_fattr.exit_crit_edge, label %if.then.i.i

if.then.i.nfs_free_fattr.exit_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfs_free_fattr.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %label1.i.i = getelementptr inbounds %struct.nfs4_label, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %label1.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %label1.i.i, align 4
  call void @kfree(ptr noundef %27) #11
  call void @kfree(ptr noundef nonnull %25) #11
  br label %nfs_free_fattr.exit

nfs_free_fattr.exit:                              ; preds = %if.then.i.i, %if.then.i.nfs_free_fattr.exit_crit_edge
  call void @kfree(ptr noundef nonnull %call11) #11
  br label %do.body18

do.body18:                                        ; preds = %nfs_free_fattr.exit, %do.end10.do.body18_crit_edge
  %status.0 = phi i32 [ -12, %do.end10.do.body18_crit_edge ], [ %call16, %nfs_free_fattr.exit ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %28 = load i32, ptr @nfs_debug, align 4
  %and19 = and i32 %28, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %do.body18.do.end35_crit_edge, label %do.end30, !prof !189

do.body18.do.end35_crit_edge:                     ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end35

do.end30:                                         ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #13
  %call32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, i32 noundef %status.0) #14
  br label %do.end35

do.end35:                                         ; preds = %do.end30, %do.body18.do.end35_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %arg) #11
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs3_proc_readdir(ptr nocapture noundef readonly %nr_arg, ptr nocapture noundef readonly %nr_res) #0 align 64 {
entry:
  %arg = alloca %struct.nfs3_readdirargs, align 8
  %res = alloca %struct.nfs3_readdirres, align 4
  %msg = alloca %struct.rpc_message, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %nr_arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nr_arg, align 8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %arg) #11
  %4 = call ptr @memset(ptr %arg, i32 255, i32 40)
  %fh.i = getelementptr i8, ptr %3, i32 -440
  %5 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %fh.i, ptr %arg, align 8
  %cookie = getelementptr inbounds %struct.nfs3_readdirargs, ptr %arg, i32 0, i32 1
  %cookie2 = getelementptr inbounds %struct.nfs_readdir_arg, ptr %nr_arg, i32 0, i32 3
  %6 = ptrtoint ptr %cookie2 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %cookie2, align 8
  %8 = ptrtoint ptr %cookie to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %cookie, align 8
  %verf = getelementptr inbounds %struct.nfs3_readdirargs, ptr %arg, i32 0, i32 2
  %9 = ptrtoint ptr %verf to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 0, ptr %verf, align 8
  %plus = getelementptr inbounds %struct.nfs3_readdirargs, ptr %arg, i32 0, i32 3
  %plus3 = getelementptr inbounds %struct.nfs_readdir_arg, ptr %nr_arg, i32 0, i32 6
  %10 = ptrtoint ptr %plus3 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %plus3, align 8, !range !198
  %12 = ptrtoint ptr %plus to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %plus, align 8
  %count = getelementptr inbounds %struct.nfs3_readdirargs, ptr %arg, i32 0, i32 4
  %page_len = getelementptr inbounds %struct.nfs_readdir_arg, ptr %nr_arg, i32 0, i32 5
  %13 = ptrtoint ptr %page_len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %page_len, align 4
  %15 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %count, align 4
  %pages = getelementptr inbounds %struct.nfs3_readdirargs, ptr %arg, i32 0, i32 5
  %pages4 = getelementptr inbounds %struct.nfs_readdir_arg, ptr %nr_arg, i32 0, i32 4
  %16 = ptrtoint ptr %pages4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pages4, align 8
  %18 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %pages, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %res) #11
  %19 = getelementptr inbounds i8, ptr %res, i32 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %19, align 4
  %21 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %res, align 4
  %verf5 = getelementptr inbounds %struct.nfs3_readdirres, ptr %res, i32 0, i32 1
  %22 = ptrtoint ptr %nr_res to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %nr_res, align 4
  %24 = ptrtoint ptr %verf5 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %verf5, align 4
  %plus7 = getelementptr inbounds %struct.nfs3_readdirres, ptr %res, i32 0, i32 2
  %25 = ptrtoint ptr %plus7 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %11, ptr %plus7, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg) #11
  %26 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 1
  %27 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 2
  %28 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 3
  %29 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs3_procedures, i32 0, i32 16), ptr %msg, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %arg, ptr %26, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %res, ptr %27, align 4
  %cred = getelementptr inbounds %struct.nfs_readdir_arg, ptr %nr_arg, i32 0, i32 1
  %32 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cred, align 4
  %34 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %28, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool12.not = icmp eq i8 %11, 0
  br i1 %tobool12.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs3_procedures, i32 0, i32 17), ptr %msg, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %tobool15.not = icmp eq i64 %7, 0
  br i1 %tobool15.not, label %if.end.do.body_crit_edge, label %if.then16

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %verf18 = getelementptr inbounds %struct.nfs_readdir_arg, ptr %nr_arg, i32 0, i32 2
  %36 = ptrtoint ptr %verf18 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %verf18, align 8
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 8)
  %39 = load i64, ptr %37, align 4
  %40 = ptrtoint ptr %verf to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %verf, align 8
  br label %do.body

do.body:                                          ; preds = %if.then16, %if.end.do.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %41 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %41, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not = icmp eq i32 %and, 0
  br i1 %tobool20.not, label %do.body.do.end31_crit_edge, label %do.end, !prof !189

do.body.do.end31_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end31

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %cond = select i1 %tobool12.not, ptr @.str.73, ptr @.str.72
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef nonnull %cond, i64 noundef %7) #14
  br label %do.end31

do.end31:                                         ; preds = %do.end, %do.body.do.end31_crit_edge
  %call32 = call ptr @nfs_alloc_fattr() #11
  %42 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call32, ptr %res, align 4
  %cmp = icmp eq ptr %call32, null
  br i1 %cmp, label %do.end31.do.body42_crit_edge, label %if.end36

do.end31.do.body42_crit_edge:                     ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body42

if.end36:                                         ; preds = %do.end31
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %43 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %44, i32 0, i32 33
  %45 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %client.i = getelementptr inbounds %struct.nfs_server, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %client.i, align 4
  %call38 = call fastcc i32 @nfs3_rpc_wrapper(ptr noundef %48, ptr noundef nonnull %msg, i32 noundef 0)
  call void @nfs_invalidate_atime(ptr noundef %3) #11
  %49 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %res, align 4
  %call40 = call i32 @nfs_refresh_inode(ptr noundef %3, ptr noundef %50) #11
  %51 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %res, align 4
  %tobool.not.i = icmp eq ptr %52, null
  br i1 %tobool.not.i, label %if.end36.nfs_free_fattr.exit_crit_edge, label %if.then.i

if.end36.nfs_free_fattr.exit_crit_edge:           ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfs_free_fattr.exit

if.then.i:                                        ; preds = %if.end36
  %label.i = getelementptr inbounds %struct.nfs_fattr, ptr %52, i32 0, i32 24
  %53 = ptrtoint ptr %label.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %label.i, align 4
  %tobool.not.i.i = icmp eq ptr %54, null
  br i1 %tobool.not.i.i, label %if.then.i.nfs_free_fattr.exit_crit_edge, label %if.then.i.i

if.then.i.nfs_free_fattr.exit_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfs_free_fattr.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %label1.i.i = getelementptr inbounds %struct.nfs4_label, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %label1.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %label1.i.i, align 4
  call void @kfree(ptr noundef %56) #11
  call void @kfree(ptr noundef nonnull %54) #11
  br label %nfs_free_fattr.exit

nfs_free_fattr.exit:                              ; preds = %if.then.i.i, %if.then.i.nfs_free_fattr.exit_crit_edge, %if.end36.nfs_free_fattr.exit_crit_edge
  call void @kfree(ptr noundef %52) #11
  br label %do.body42

do.body42:                                        ; preds = %nfs_free_fattr.exit, %do.end31.do.body42_crit_edge
  %status.0 = phi i32 [ -12, %do.end31.do.body42_crit_edge ], [ %call38, %nfs_free_fattr.exit ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %57 = load i32, ptr @nfs_debug, align 4
  %and43 = and i32 %57, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %do.body42.do.end62_crit_edge, label %do.end54, !prof !189

do.body42.do.end62_crit_edge:                     ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end62

do.end54:                                         ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #13
  %58 = ptrtoint ptr %plus3 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %plus3, align 8, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool57.not = icmp eq i8 %59, 0
  %cond58 = select i1 %tobool57.not, ptr @.str.73, ptr @.str.72
  %call59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef nonnull %cond58, i32 noundef %status.0) #14
  br label %do.end62

do.end62:                                         ; preds = %do.end54, %do.body42.do.end62_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %res) #11
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %arg) #11
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs3_proc_mknod(ptr noundef %dir, ptr noundef %dentry, ptr noundef %sattr, i32 noundef %rdev) #0 align 64 {
entry:
  %default_acl = alloca ptr, align 4
  %acl = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %default_acl) #11
  %0 = ptrtoint ptr %default_acl to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %default_acl, align 4, !annotation !190
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %acl) #11
  %1 = ptrtoint ptr %acl to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %acl, align 4, !annotation !190
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %2 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !189

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %shr = lshr i32 %rdev, 20
  %and4 = and i32 %rdev, 1048575
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef %dentry, i32 noundef %shr, i32 noundef %and4) #14
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 592) #16
  %cmp.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.not.i, label %do.end6.out_crit_edge, label %if.end9

do.end6.out_crit_edge:                            ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end9:                                          ; preds = %do.end6
  %arg.i = getelementptr inbounds %struct.nfs3_createdata, ptr %call7.i.i.i, i32 0, i32 1
  %rpc_argp.i = getelementptr inbounds %struct.rpc_message, ptr %call7.i.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %rpc_argp.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %arg.i, ptr %rpc_argp.i, align 4
  %res.i = getelementptr inbounds %struct.nfs3_createdata, ptr %call7.i.i.i, i32 0, i32 2
  %rpc_resp.i = getelementptr inbounds %struct.rpc_message, ptr %call7.i.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %rpc_resp.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %res.i, ptr %rpc_resp.i, align 8
  %fh.i = getelementptr inbounds %struct.nfs3_createdata, ptr %call7.i.i.i, i32 0, i32 3
  %fh3.i = getelementptr inbounds %struct.nfs3_createdata, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %fh3.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %fh.i, ptr %fh3.i, align 8
  %fattr.i = getelementptr inbounds %struct.nfs3_createdata, ptr %call7.i.i.i, i32 0, i32 4
  %fattr5.i = getelementptr inbounds %struct.nfs3_createdata, ptr %call7.i.i.i, i32 0, i32 2, i32 2
  %7 = ptrtoint ptr %fattr5.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %fattr.i, ptr %fattr5.i, align 4
  %dir_attr.i = getelementptr inbounds %struct.nfs3_createdata, ptr %call7.i.i.i, i32 0, i32 5
  %8 = ptrtoint ptr %res.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dir_attr.i, ptr %res.i, align 4
  tail call void @nfs_fattr_init(ptr noundef %fattr.i) #11
  %9 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %res.i, align 4
  tail call void @nfs_fattr_init(ptr noundef %10) #11
  %ia_mode = getelementptr inbounds %struct.iattr, ptr %sattr, i32 0, i32 1
  %call10 = call i32 @posix_acl_create(ptr noundef %dir, ptr noundef %ia_mode, ptr noundef nonnull %default_acl, ptr noundef nonnull %acl) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.out_crit_edge

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end13:                                         ; preds = %if.end9
  %11 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs3_procedures, i32 0, i32 11), ptr %call7.i.i.i, align 8
  %fh.i93 = getelementptr i8, ptr %dir, i32 -440
  %12 = ptrtoint ptr %arg.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %fh.i93, ptr %arg.i, align 8
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name, align 8
  %name16 = getelementptr inbounds %struct.nfs3_createdata, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 1
  %15 = ptrtoint ptr %name16 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %name16, align 4
  %16 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %d_name, align 8
  %len19 = getelementptr inbounds %struct.nfs3_createdata, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 2
  %18 = ptrtoint ptr %len19 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %len19, align 8
  %sattr21 = getelementptr inbounds %struct.nfs3_createdata, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 4
  %19 = ptrtoint ptr %sattr21 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %sattr, ptr %sattr21, align 8
  %rdev23 = getelementptr inbounds %struct.nfs3_createdata, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 5
  %20 = ptrtoint ptr %rdev23 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %rdev, ptr %rdev23, align 4
  %21 = ptrtoint ptr %ia_mode to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %ia_mode, align 4
  %23 = and i16 %22, -4096
  %24 = zext i16 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.98)
  switch i16 %23, label %if.end13.out_release_acls_crit_edge [
    i16 24576, label %if.end13.sw.epilog_crit_edge
    i16 8192, label %sw.bb27
    i16 4096, label %sw.bb30
    i16 -16384, label %sw.bb33
  ]

if.end13.sw.epilog_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end13.out_release_acls_crit_edge:              ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_release_acls

sw.bb27:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb30:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb33, %sw.bb30, %sw.bb27, %if.end13.sw.epilog_crit_edge
  %.sink = phi i32 [ 6, %sw.bb33 ], [ 7, %sw.bb30 ], [ 4, %sw.bb27 ], [ 3, %if.end13.sw.epilog_crit_edge ]
  %type35 = getelementptr inbounds %struct.nfs3_createdata, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 3
  %25 = ptrtoint ptr %type35 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %.sink, ptr %type35, align 4
  %i_sb.i.i.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %26 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_fs_info.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %27, i32 0, i32 33
  %28 = ptrtoint ptr %s_fs_info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %s_fs_info.i.i.i.i, align 16
  %client.i.i = getelementptr inbounds %struct.nfs_server, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %client.i.i, align 4
  %call1.i = call fastcc i32 @nfs3_rpc_wrapper(ptr noundef %31, ptr noundef nonnull %call7.i.i.i, i32 noundef 0) #11
  %32 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %res.i, align 4
  %call2.i = call i32 @nfs_post_op_update_inode(ptr noundef %dir, ptr noundef %33) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.not.i95 = icmp eq i32 %call1.i, 0
  br i1 %cmp.not.i95, label %if.end.i, label %if.then.i96

if.then.i96:                                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %34 = inttoptr i32 %call1.i to ptr
  br label %nfs3_do_create.exit

if.end.i:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %fh3.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fh3.i, align 8
  %37 = ptrtoint ptr %fattr5.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %fattr5.i, align 4
  %call6.i = call ptr @nfs_add_or_obtain(ptr noundef %dentry, ptr noundef %36, ptr noundef %38) #11
  br label %nfs3_do_create.exit

nfs3_do_create.exit:                              ; preds = %if.end.i, %if.then.i96
  %retval.0.i = phi ptr [ %34, %if.then.i96 ], [ %call6.i, %if.end.i ]
  %cmp.i.i.not = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  %39 = ptrtoint ptr %retval.0.i to i32
  br i1 %cmp.i.i.not, label %nfs3_do_create.exit.out_release_acls_crit_edge, label %if.end41

nfs3_do_create.exit.out_release_acls_crit_edge:   ; preds = %nfs3_do_create.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_release_acls

if.end41:                                         ; preds = %nfs3_do_create.exit
  call void @__sanitizer_cov_trace_pc() #13
  %tobool42.not = icmp eq ptr %retval.0.i, null
  %spec.select = select i1 %tobool42.not, ptr %dentry, ptr %retval.0.i
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %spec.select, i32 0, i32 5
  %40 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %d_inode.i, align 8
  %42 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %acl, align 4
  %44 = ptrtoint ptr %default_acl to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %default_acl, align 4
  %call46 = call i32 @nfs3_proc_setacls(ptr noundef %41, ptr noundef %43, ptr noundef %45) #11
  call void @dput(ptr noundef %retval.0.i) #11
  br label %out_release_acls

out_release_acls:                                 ; preds = %if.end41, %nfs3_do_create.exit.out_release_acls_crit_edge, %if.end13.out_release_acls_crit_edge
  %status.0 = phi i32 [ %39, %nfs3_do_create.exit.out_release_acls_crit_edge ], [ %call46, %if.end41 ], [ -22, %if.end13.out_release_acls_crit_edge ]
  %46 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %acl, align 4
  %tobool.not.i = icmp eq ptr %47, null
  br i1 %tobool.not.i, label %out_release_acls.posix_acl_release.exit_crit_edge, label %land.lhs.true.i

out_release_acls.posix_acl_release.exit_crit_edge: ; preds = %out_release_acls
  call void @__sanitizer_cov_trace_pc() #13
  br label %posix_acl_release.exit

land.lhs.true.i:                                  ; preds = %out_release_acls
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %47, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !191
  call void @llvm.prefetch.p0(ptr nonnull %47, i32 1, i32 3, i32 1) #11
  %48 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %47, ptr nonnull %47, i32 1, ptr nonnull elementtype(i32) %47) #11, !srcloc !192
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %48, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %do.end.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.posix_acl_release.exit_crit_edge, label %if.then10.i.i.i.i, !prof !189

if.end5.i.i.i.i.posix_acl_release.exit_crit_edge: ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %posix_acl_release.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef nonnull %47, i32 noundef 3) #11
  br label %posix_acl_release.exit

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !193
  %a_rcu.i = getelementptr inbounds %struct.posix_acl, ptr %47, i32 0, i32 1
  call void @kvfree_call_rcu(ptr noundef %a_rcu.i, ptr noundef nonnull inttoptr (i32 4 to ptr)) #11
  br label %posix_acl_release.exit

posix_acl_release.exit:                           ; preds = %do.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.posix_acl_release.exit_crit_edge, %out_release_acls.posix_acl_release.exit_crit_edge
  %49 = ptrtoint ptr %default_acl to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %default_acl, align 4
  %tobool.not.i99 = icmp eq ptr %50, null
  br i1 %tobool.not.i99, label %posix_acl_release.exit.out_crit_edge, label %land.lhs.true.i103

posix_acl_release.exit.out_crit_edge:             ; preds = %posix_acl_release.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

land.lhs.true.i103:                               ; preds = %posix_acl_release.exit
  %call.i.i.i.i.i.i100 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %50, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !191
  call void @llvm.prefetch.p0(ptr nonnull %50, i32 1, i32 3, i32 1) #11
  %51 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %50, ptr nonnull %50, i32 1, ptr nonnull elementtype(i32) %50) #11, !srcloc !192
  %asmresult.i.i.i.i.i.i.i101 = extractvalue { i32, i32, i32 } %51, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i101)
  %cmp.i.i.i.i102 = icmp eq i32 %asmresult.i.i.i.i.i.i.i101, 1
  br i1 %cmp.i.i.i.i102, label %do.end.i108, label %if.end5.i.i.i.i105

if.end5.i.i.i.i105:                               ; preds = %land.lhs.true.i103
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i101)
  %.not.i.i.i.i104 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i101, 0
  br i1 %.not.i.i.i.i104, label %if.end5.i.i.i.i105.out_crit_edge, label %if.then10.i.i.i.i106, !prof !189

if.end5.i.i.i.i105.out_crit_edge:                 ; preds = %if.end5.i.i.i.i105
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then10.i.i.i.i106:                             ; preds = %if.end5.i.i.i.i105
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef nonnull %50, i32 noundef 3) #11
  br label %out

do.end.i108:                                      ; preds = %land.lhs.true.i103
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !193
  %a_rcu.i107 = getelementptr inbounds %struct.posix_acl, ptr %50, i32 0, i32 1
  call void @kvfree_call_rcu(ptr noundef %a_rcu.i107, ptr noundef nonnull inttoptr (i32 4 to ptr)) #11
  br label %out

out:                                              ; preds = %do.end.i108, %if.then10.i.i.i.i106, %if.end5.i.i.i.i105.out_crit_edge, %posix_acl_release.exit.out_crit_edge, %if.end9.out_crit_edge, %do.end6.out_crit_edge
  %status.1 = phi i32 [ %call10, %if.end9.out_crit_edge ], [ %status.0, %posix_acl_release.exit.out_crit_edge ], [ %status.0, %if.end5.i.i.i.i105.out_crit_edge ], [ %status.0, %if.then10.i.i.i.i106 ], [ %status.0, %do.end.i108 ], [ -12, %do.end6.out_crit_edge ]
  call void @kfree(ptr noundef %call7.i.i.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %52 = load i32, ptr @nfs_debug, align 4
  %and48 = and i32 %52, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %out.do.end64_crit_edge, label %do.end59, !prof !189

out.do.end64_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end64

do.end59:                                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  %call61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, i32 noundef %status.1) #14
  br label %do.end64

do.end64:                                         ; preds = %do.end59, %out.do.end64_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %acl) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %default_acl) #11
  ret i32 %status.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs3_proc_statfs(ptr nocapture noundef readonly %server, ptr noundef %fhandle, ptr noundef %stat) #0 align 64 {
entry:
  %msg = alloca %struct.rpc_message, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg) #11
  %0 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 1
  %1 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 2
  %2 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 3
  %3 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs3_procedures, i32 0, i32 18), ptr %msg, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %fhandle, ptr %0, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %stat, ptr %1, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %7 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end, !prof !189

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82) #14
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %8 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stat, align 8
  tail call void @nfs_fattr_init(ptr noundef %9) #11
  %client = getelementptr inbounds %struct.nfs_server, ptr %server, i32 0, i32 3
  %10 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %client, align 4
  %call6 = call fastcc i32 @nfs3_rpc_wrapper(ptr noundef %11, ptr noundef nonnull %msg, i32 noundef 0)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %12 = load i32, ptr @nfs_debug, align 4
  %and8 = and i32 %12, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %do.end5.do.end24_crit_edge, label %do.end19, !prof !189

do.end5.do.end24_crit_edge:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end24

do.end19:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #13
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, i32 noundef %call6) #14
  br label %do.end24

do.end24:                                         ; preds = %do.end19, %do.end5.do.end24_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg) #11
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs3_proc_fsinfo(ptr nocapture noundef readonly %server, ptr noundef %fhandle, ptr noundef %info) #0 align 64 {
entry:
  %msg.i11 = alloca %struct.rpc_message, align 4
  %msg.i = alloca %struct.rpc_message, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %client = getelementptr inbounds %struct.nfs_server, ptr %server, i32 0, i32 3
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg.i) #11
  %2 = getelementptr inbounds %struct.rpc_message, ptr %msg.i, i32 0, i32 1
  %3 = getelementptr inbounds %struct.rpc_message, ptr %msg.i, i32 0, i32 2
  %4 = getelementptr inbounds %struct.rpc_message, ptr %msg.i, i32 0, i32 3
  %5 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs3_procedures, i32 0, i32 19), ptr %msg.i, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %fhandle, ptr %2, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %info, ptr %3, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %4, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %9 = load i32, ptr @nfs_debug, align 4
  %and.i = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.do.end5.i_crit_edge, label %do.end.i, !prof !189

entry.do.end5.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end5.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87) #14
  br label %do.end5.i

do.end5.i:                                        ; preds = %do.end.i, %entry.do.end5.i_crit_edge
  %10 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %info, align 8
  tail call void @nfs_fattr_init(ptr noundef %11) #11
  %call6.i = call fastcc i32 @nfs3_rpc_wrapper(ptr noundef %1, ptr noundef nonnull %msg.i, i32 noundef 0) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %12 = load i32, ptr @nfs_debug, align 4
  %and8.i = and i32 %12, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %do.end5.i.do_proc_fsinfo.exit_crit_edge, label %do.end19.i, !prof !189

do.end5.i.do_proc_fsinfo.exit_crit_edge:          ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do_proc_fsinfo.exit

do.end19.i:                                       ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  %call21.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, i32 noundef %call6.i) #14
  br label %do_proc_fsinfo.exit

do_proc_fsinfo.exit:                              ; preds = %do.end19.i, %do.end5.i.do_proc_fsinfo.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not = icmp eq i32 %call6.i, 0
  br i1 %tobool.not, label %do_proc_fsinfo.exit.if.end_crit_edge, label %land.lhs.true

do_proc_fsinfo.exit.if.end_crit_edge:             ; preds = %do_proc_fsinfo.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %do_proc_fsinfo.exit
  %13 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %server, align 8
  %cl_rpcclient = getelementptr inbounds %struct.nfs_client, ptr %14, i32 0, i32 11
  %15 = ptrtoint ptr %cl_rpcclient to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cl_rpcclient, align 8
  %17 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %client, align 4
  %cmp.not = icmp eq ptr %16, %18
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg.i11) #11
  %19 = getelementptr inbounds %struct.rpc_message, ptr %msg.i11, i32 0, i32 1
  %20 = getelementptr inbounds %struct.rpc_message, ptr %msg.i11, i32 0, i32 2
  %21 = getelementptr inbounds %struct.rpc_message, ptr %msg.i11, i32 0, i32 3
  %22 = ptrtoint ptr %msg.i11 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs3_procedures, i32 0, i32 19), ptr %msg.i11, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %fhandle, ptr %19, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %info, ptr %20, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %21, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %26 = load i32, ptr @nfs_debug, align 4
  %and.i12 = and i32 %26, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i12)
  %tobool.not.i13 = icmp eq i32 %and.i12, 0
  br i1 %tobool.not.i13, label %if.then.do.end5.i19_crit_edge, label %do.end.i15, !prof !189

if.then.do.end5.i19_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end5.i19

do.end.i15:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %call.i14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87) #14
  br label %do.end5.i19

do.end5.i19:                                      ; preds = %do.end.i15, %if.then.do.end5.i19_crit_edge
  %27 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %info, align 8
  call void @nfs_fattr_init(ptr noundef %28) #11
  %call6.i16 = call fastcc i32 @nfs3_rpc_wrapper(ptr noundef %16, ptr noundef nonnull %msg.i11, i32 noundef 0) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %29 = load i32, ptr @nfs_debug, align 4
  %and8.i17 = and i32 %29, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i17)
  %tobool9.not.i18 = icmp eq i32 %and8.i17, 0
  br i1 %tobool9.not.i18, label %do.end5.i19.do_proc_fsinfo.exit22_crit_edge, label %do.end19.i21, !prof !189

do.end5.i19.do_proc_fsinfo.exit22_crit_edge:      ; preds = %do.end5.i19
  call void @__sanitizer_cov_trace_pc() #13
  br label %do_proc_fsinfo.exit22

do.end19.i21:                                     ; preds = %do.end5.i19
  call void @__sanitizer_cov_trace_pc() #13
  %call21.i20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, i32 noundef %call6.i16) #14
  br label %do_proc_fsinfo.exit22

do_proc_fsinfo.exit22:                            ; preds = %do.end19.i21, %do.end5.i19.do_proc_fsinfo.exit22_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg.i11) #11
  br label %if.end

if.end:                                           ; preds = %do_proc_fsinfo.exit22, %land.lhs.true.if.end_crit_edge, %do_proc_fsinfo.exit.if.end_crit_edge
  %status.0 = phi i32 [ %call6.i16, %do_proc_fsinfo.exit22 ], [ %call6.i, %land.lhs.true.if.end_crit_edge ], [ 0, %do_proc_fsinfo.exit.if.end_crit_edge ]
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs3_proc_pathconf(ptr nocapture noundef readonly %server, ptr noundef %fhandle, ptr noundef %info) #0 align 64 {
entry:
  %msg = alloca %struct.rpc_message, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg) #11
  %0 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 1
  %1 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 2
  %2 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 3
  %3 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs3_procedures, i32 0, i32 20), ptr %msg, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %fhandle, ptr %0, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %info, ptr %1, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %7 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end, !prof !189

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92) #14
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %8 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %info, align 4
  tail call void @nfs_fattr_init(ptr noundef %9) #11
  %client = getelementptr inbounds %struct.nfs_server, ptr %server, i32 0, i32 3
  %10 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %client, align 4
  %call6 = call fastcc i32 @nfs3_rpc_wrapper(ptr noundef %11, ptr noundef nonnull %msg, i32 noundef 0)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %12 = load i32, ptr @nfs_debug, align 4
  %and8 = and i32 %12, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %do.end5.do.end24_crit_edge, label %do.end19, !prof !189

do.end5.do.end24_crit_edge:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end24

do.end19:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #13
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, i32 noundef %call6) #14
  br label %do.end24

do.end24:                                         ; preds = %do.end19, %do.end5.do.end24_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg) #11
  ret i32 %call6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs3_decode_dirent(ptr noundef, ptr noundef, i1 noundef zeroext) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs3_proc_pgio_rpc_prepare(ptr noundef %task, ptr nocapture noundef readnone %hdr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rpc_call_start(ptr noundef %task) #11
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @nfs3_proc_read_setup(ptr nocapture noundef %hdr, ptr nocapture noundef writeonly %msg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs3_procedures, i32 0, i32 6), ptr %msg, align 4
  %1 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hdr, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info.i.i, align 16
  %read_hdrsize = getelementptr inbounds %struct.nfs_server, ptr %6, i32 0, i32 66
  %7 = ptrtoint ptr %read_hdrsize to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %read_hdrsize, align 4
  %9 = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 20, i32 9
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %8, ptr %9, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs3_read_done(ptr noundef %task, ptr noundef %hdr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdr, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i.i, align 16
  %pgio_done_cb = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 23
  %6 = ptrtoint ptr %pgio_done_cb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pgio_done_cb, align 4
  %cmp.not = icmp eq ptr %7, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call3 = tail call i32 %7(ptr noundef %task, ptr noundef %hdr) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %tk_status.i = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 1
  %8 = ptrtoint ptr %tk_status.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tk_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -528, i32 %9)
  %cmp.not.i = icmp eq i32 %9, -528
  br i1 %cmp.not.i, label %if.end.i, label %if.end6

if.end.i:                                         ; preds = %if.end
  %10 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !194
  %io_stats.i.i.i = getelementptr inbounds %struct.nfs_server, ptr %5, i32 0, i32 6
  %11 = ptrtoint ptr %io_stats.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %io_stats.i.i.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.nfs_iostats, ptr %12, i32 0, i32 2, i32 24
  %13 = ptrtoint ptr %arrayidx.i.i.i to i32
  %14 = tail call i32 @llvm.read_register.i32(metadata !179) #11
  %and.i.i.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx13.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx13.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx13.i.i.i, align 4
  %add.i.i.i = add i32 %19, %13
  %20 = inttoptr i32 %add.i.i.i to ptr
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %add14.i.i.i = add i32 %22, 1
  store i32 %add14.i.i.i, ptr %20, align 4
  %23 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !195
  %and.i.i.i.i.i = and i32 %23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.end.i.nfs3_async_handle_jukebox.exit_crit_edge, !prof !196

if.end.i.nfs3_async_handle_jukebox.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfs3_async_handle_jukebox.exit

if.then.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %nfs3_async_handle_jukebox.exit

nfs3_async_handle_jukebox.exit:                   ; preds = %if.then.i.i.i, %if.end.i.nfs3_async_handle_jukebox.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %10) #11, !srcloc !197
  %24 = ptrtoint ptr %tk_status.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %tk_status.i, align 4
  %call.i41 = tail call i32 @rpc_restart_call(ptr noundef %task) #11
  tail call void @rpc_delay(ptr noundef %task, i32 noundef 500) #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %25 = ptrtoint ptr %tk_status.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tk_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %cmp7 = icmp sgt i32 %26, -1
  br i1 %cmp7, label %land.lhs.true, label %if.end6.if.end26_crit_edge

if.end6.if.end26_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

land.lhs.true:                                    ; preds = %if.end6
  %read_hdrsize = getelementptr inbounds %struct.nfs_server, ptr %5, i32 0, i32 66
  %27 = ptrtoint ptr %read_hdrsize to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %read_hdrsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool8.not = icmp eq i32 %28, 0
  br i1 %tobool8.not, label %if.then9, label %land.lhs.true.if.end26_crit_edge

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then9:                                         ; preds = %land.lhs.true
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %read_hdrsize, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !199
  %29 = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 21, i32 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  tail call void @llvm.prefetch.p0(ptr %read_hdrsize, i32 1, i32 3, i32 1) #11
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.then9
  %32 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %read_hdrsize, i32 0, i32 %31) #11, !srcloc !200
  %asmresult.i = extractvalue { i32, i32 } %32, 0
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %__cmpxchg.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !201
  br label %if.end26

if.end26:                                         ; preds = %__cmpxchg.exit, %land.lhs.true.if.end26_crit_edge, %if.end6.if.end26_crit_edge
  tail call void @nfs_invalidate_atime(ptr noundef %1) #11
  %fattr = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 19
  %call27 = tail call i32 @nfs_refresh_inode(ptr noundef %1, ptr noundef %fattr) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %nfs3_async_handle_jukebox.exit, %if.then
  %retval.0 = phi i32 [ %call3, %if.then ], [ 0, %if.end26 ], [ -11, %nfs3_async_handle_jukebox.exit ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @nfs3_proc_write_setup(ptr nocapture noundef readnone %hdr, ptr nocapture noundef writeonly %msg, ptr nocapture noundef readnone %clnt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs3_procedures, i32 0, i32 7), ptr %msg, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs3_write_done(ptr noundef %task, ptr noundef %hdr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pgio_done_cb = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 23
  %0 = ptrtoint ptr %pgio_done_cb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pgio_done_cb, align 4
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 %1(ptr noundef %task, ptr noundef %hdr) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %tk_status.i = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 1
  %2 = ptrtoint ptr %tk_status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tk_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -528, i32 %3)
  %cmp.not.i = icmp eq i32 %3, -528
  br i1 %cmp.not.i, label %if.end.i, label %if.end5

if.end.i:                                         ; preds = %if.end
  %4 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdr, align 8
  %i_sb.i.i.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_fs_info.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i.i.i.i, align 16
  %10 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !194
  %io_stats.i.i.i = getelementptr inbounds %struct.nfs_server, ptr %9, i32 0, i32 6
  %11 = ptrtoint ptr %io_stats.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %io_stats.i.i.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.nfs_iostats, ptr %12, i32 0, i32 2, i32 24
  %13 = ptrtoint ptr %arrayidx.i.i.i to i32
  %14 = tail call i32 @llvm.read_register.i32(metadata !179) #11
  %and.i.i.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx13.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx13.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx13.i.i.i, align 4
  %add.i.i.i = add i32 %19, %13
  %20 = inttoptr i32 %add.i.i.i to ptr
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %add14.i.i.i = add i32 %22, 1
  store i32 %add14.i.i.i, ptr %20, align 4
  %23 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !195
  %and.i.i.i.i.i = and i32 %23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.end.i.nfs3_async_handle_jukebox.exit_crit_edge, !prof !196

if.end.i.nfs3_async_handle_jukebox.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfs3_async_handle_jukebox.exit

if.then.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %nfs3_async_handle_jukebox.exit

nfs3_async_handle_jukebox.exit:                   ; preds = %if.then.i.i.i, %if.end.i.nfs3_async_handle_jukebox.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %10) #11, !srcloc !197
  %24 = ptrtoint ptr %tk_status.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %tk_status.i, align 4
  %call.i = tail call i32 @rpc_restart_call(ptr noundef %task) #11
  tail call void @rpc_delay(ptr noundef %task, i32 noundef 500) #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %25 = ptrtoint ptr %tk_status.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tk_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %cmp6 = icmp sgt i32 %26, -1
  br i1 %cmp6, label %if.then7, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @nfs_writeback_update_inode(ptr noundef %hdr) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end5.cleanup_crit_edge, %nfs3_async_handle_jukebox.exit, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ -11, %nfs3_async_handle_jukebox.exit ], [ 0, %if.then7 ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @nfs3_proc_commit_setup(ptr nocapture noundef readnone %data, ptr nocapture noundef writeonly %msg, ptr nocapture noundef readnone %clnt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs3_procedures, i32 0, i32 21), ptr %msg, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs3_proc_commit_rpc_prepare(ptr noundef %task, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rpc_call_start(ptr noundef %task) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs3_commit_done(ptr noundef %task, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %commit_done_cb = getelementptr inbounds %struct.nfs_commit_data, ptr %data, i32 0, i32 17
  %0 = ptrtoint ptr %commit_done_cb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %commit_done_cb, align 8
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 %1(ptr noundef %task, ptr noundef %data) #11
  br label %return

if.end:                                           ; preds = %entry
  %inode = getelementptr inbounds %struct.nfs_commit_data, ptr %data, i32 0, i32 1
  %tk_status.i = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 1
  %2 = ptrtoint ptr %tk_status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tk_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -528, i32 %3)
  %cmp.not.i = icmp eq i32 %3, -528
  %4 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %inode, align 8
  br i1 %cmp.not.i, label %if.end.i, label %if.end4

if.end.i:                                         ; preds = %if.end
  %i_sb.i.i.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_fs_info.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i.i.i.i, align 16
  %10 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !194
  %io_stats.i.i.i = getelementptr inbounds %struct.nfs_server, ptr %9, i32 0, i32 6
  %11 = ptrtoint ptr %io_stats.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %io_stats.i.i.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.nfs_iostats, ptr %12, i32 0, i32 2, i32 24
  %13 = ptrtoint ptr %arrayidx.i.i.i to i32
  %14 = tail call i32 @llvm.read_register.i32(metadata !179) #11
  %and.i.i.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx13.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx13.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx13.i.i.i, align 4
  %add.i.i.i = add i32 %19, %13
  %20 = inttoptr i32 %add.i.i.i to ptr
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %add14.i.i.i = add i32 %22, 1
  store i32 %add14.i.i.i, ptr %20, align 4
  %23 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !195
  %and.i.i.i.i.i = and i32 %23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.end.i.nfs3_async_handle_jukebox.exit_crit_edge, !prof !196

if.end.i.nfs3_async_handle_jukebox.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfs3_async_handle_jukebox.exit

if.then.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %nfs3_async_handle_jukebox.exit

nfs3_async_handle_jukebox.exit:                   ; preds = %if.then.i.i.i, %if.end.i.nfs3_async_handle_jukebox.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %10) #11, !srcloc !197
  %24 = ptrtoint ptr %tk_status.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %tk_status.i, align 4
  %call.i = tail call i32 @rpc_restart_call(ptr noundef %task) #11
  tail call void @rpc_delay(ptr noundef %task, i32 noundef 500) #11
  br label %return

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %fattr = getelementptr inbounds %struct.nfs_commit_data, ptr %data, i32 0, i32 9, i32 2
  %25 = ptrtoint ptr %fattr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fattr, align 4
  %call6 = tail call i32 @nfs_refresh_inode(ptr noundef %5, ptr noundef %26) #11
  br label %return

return:                                           ; preds = %if.end4, %nfs3_async_handle_jukebox.exit, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %if.end4 ], [ -11, %nfs3_async_handle_jukebox.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs3_proc_lock(ptr nocapture noundef readonly %filp, i32 noundef %cmd, ptr noundef %fl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %private_data.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 4
  %fl_flags = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 6
  %4 = ptrtoint ptr %fl_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fl_flags, align 8
  %and = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then:                                          ; preds = %entry
  %call2 = tail call ptr @nfs_get_lock_context(ptr noundef %3) #11
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then.if.end5_crit_edge, label %if.else

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %flags = getelementptr inbounds %struct.nfs_open_context, ptr %3, i32 0, i32 7
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags) #11
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %l_ctx.0 = phi ptr [ %call2, %if.else ], [ null, %entry.if.end5_crit_edge ], [ null, %if.then.if.end5_crit_edge ]
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i.i, align 16
  %nlm_host = getelementptr inbounds %struct.nfs_server, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %nlm_host to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %nlm_host, align 4
  %call7 = tail call i32 @nlmclnt_proc(ptr noundef %11, i32 noundef %cmd, ptr noundef %fl, ptr noundef %l_ctx.0) #11
  %tobool8.not = icmp eq ptr %l_ctx.0, null
  br i1 %tobool8.not, label %if.end5.if.end10_crit_edge, label %if.then9

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @nfs_put_lock_context(ptr noundef nonnull %l_ctx.0) #11
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end5.if.end10_crit_edge
  ret i32 %call7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @forget_all_cached_acls(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_close_context(ptr noundef, i32 noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nfs3_have_delegation(ptr nocapture noundef readnone %inode, i32 noundef %flags) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_alloc_client(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_init_client(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_free_client(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs3_create_server(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs3_clone_server(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_lookup(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_permission(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs3_get_acl(ptr noundef, i32 noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_create(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_link(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_unlink(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_symlink(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_mkdir(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_rmdir(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_mknod(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_rename(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_setattr(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_getattr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs3_listxattr(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs3_set_acl(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs3_nlm_alloc_call(ptr noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %data, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %open_context = getelementptr inbounds %struct.nfs_lock_context, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %open_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %open_context, align 4
  %flags = getelementptr inbounds %struct.nfs_open_context, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %4 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.not = icmp eq i32 %4, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %call3 = tail call ptr @get_nfs_open_context(ptr noundef %1) #11
  %5 = ptrtoint ptr %open_context to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %open_context, align 4
  %call5 = tail call ptr @nfs_get_lock_context(ptr noundef %6) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @nfs3_nlm_unlock_prepare(ptr noundef %task, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %data, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %open_context = getelementptr inbounds %struct.nfs_lock_context, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %open_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %open_context, align 4
  %flags = getelementptr inbounds %struct.nfs_open_context, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %4 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.not = icmp eq i32 %4, 0
  br i1 %tobool1.not, label %land.lhs.true.cleanup_crit_edge, label %if.then

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = tail call zeroext i1 @nfs_async_iocounter_wait(ptr noundef %task, ptr noundef nonnull %data) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %call2, %if.then ], [ false, %land.lhs.true.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs3_nlm_release_call(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %data, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %open_context = getelementptr inbounds %struct.nfs_lock_context, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %open_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %open_context, align 4
  %flags = getelementptr inbounds %struct.nfs_open_context, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %4 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.not = icmp eq i32 %4, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @nfs_put_lock_context(ptr noundef nonnull %data) #11
  tail call void @put_nfs_open_context(ptr noundef %1) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_nfs_open_context(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_get_lock_context(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfs_async_iocounter_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_put_lock_context(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_nfs_open_context(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_proc_get_root(ptr noundef %client, ptr noundef %fhandle, ptr noundef %info) unnamed_addr #0 align 64 {
entry:
  %msg = alloca %struct.rpc_message, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg) #11
  %0 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 1
  %1 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 2
  %2 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 3
  %3 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs3_procedures, i32 0, i32 19), ptr %msg, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %fhandle, ptr %0, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %info, ptr %1, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %7 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end, !prof !189

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #14
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %8 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %info, align 8
  tail call void @nfs_fattr_init(ptr noundef %9) #11
  %call6 = call fastcc i32 @nfs3_rpc_wrapper(ptr noundef %client, ptr noundef nonnull %msg, i32 noundef 0)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %10 = load i32, ptr @nfs_debug, align 4
  %and8 = and i32 %10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %do.end5.do.end24_crit_edge, label %do.end19, !prof !189

do.end5.do.end24_crit_edge:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end24

do.end19:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #13
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %call6) #14
  br label %do.end24

do.end24:                                         ; preds = %do.end19, %do.end5.do.end24_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp eq i32 %call6, 0
  br i1 %cmp, label %land.lhs.true, label %do.end24.if.end51_crit_edge

do.end24.if.end51_crit_edge:                      ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51

land.lhs.true:                                    ; preds = %do.end24
  %11 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %info, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 8
  %and26 = and i32 %14, 162943
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.then28, label %land.lhs.true.if.end51_crit_edge

land.lhs.true.if.end51_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51

if.then28:                                        ; preds = %land.lhs.true
  %15 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs3_procedures, i32 0, i32 1), ptr %msg, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %12, ptr %1, align 4
  %call32 = call fastcc i32 @nfs3_rpc_wrapper(ptr noundef %client, ptr noundef nonnull %msg, i32 noundef 0)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %17 = load i32, ptr @nfs_debug, align 4
  %and34 = and i32 %17, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.then28.if.end51_crit_edge, label %do.end45, !prof !189

if.then28.if.end51_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51

do.end45:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #13
  %call47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef %call32) #14
  br label %if.end51

if.end51:                                         ; preds = %do.end45, %if.then28.if.end51_crit_edge, %land.lhs.true.if.end51_crit_edge, %do.end24.if.end51_crit_edge
  %status.0 = phi i32 [ 0, %land.lhs.true.if.end51_crit_edge ], [ %call32, %do.end45 ], [ %call32, %if.then28.if.end51_crit_edge ], [ %call6, %do.end24.if.end51_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg) #11
  ret i32 %status.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_fattr_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfs3_rpc_wrapper(ptr noundef %clnt, ptr noundef %msg, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  br label %do.body

do.body:                                          ; preds = %fatal_signal_pending.exit.do.body_crit_edge, %entry
  %call = tail call i32 @rpc_call_sync(ptr noundef %clnt, ptr noundef %msg, i32 noundef %flags) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -528, i32 %call)
  %cmp.not = icmp eq i32 %call, -528
  br i1 %cmp.not, label %if.end, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end:                                           ; preds = %do.body
  %0 = tail call i32 @llvm.read_register.i32(metadata !179) #11
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i.i, align 4
  %or.i.i = or i32 %5, 1073741824
  store i32 %or.i.i, ptr %flags.i.i, align 4
  %call.i = tail call i32 @schedule_timeout_killable(i32 noundef 500) #11
  %6 = tail call i32 @llvm.read_register.i32(metadata !179) #11
  %and.i.i1.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i1.i to ptr
  %task.i2.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task.i2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task.i2.i, align 8
  %flags.i3.i = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %flags.i3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i3.i, align 4
  %and.i.i = and i32 %11, -1073741825
  store i32 %and.i.i, ptr %flags.i3.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !202
  tail call void @__might_sleep(ptr noundef nonnull @.str.9, i32 noundef 57) #11
  %12 = tail call i32 @llvm.read_register.i32(metadata !179) #11
  %and.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task.i.i.i, align 8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %16 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i.i.i.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.freezable_schedule_timeout_killable_unsafe.exit_crit_edge, label %freezing.exit.i.i.i, !prof !189

if.end.freezable_schedule_timeout_killable_unsafe.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %freezable_schedule_timeout_killable_unsafe.exit

freezing.exit.i.i.i:                              ; preds = %if.end
  %call4.i.i.i.i = tail call zeroext i1 @freezing_slow_path(ptr noundef %15) #11
  br i1 %call4.i.i.i.i, label %if.end.i.i.i, label %freezing.exit.i.i.i.freezable_schedule_timeout_killable_unsafe.exit_crit_edge, !prof !196

freezing.exit.i.i.i.freezable_schedule_timeout_killable_unsafe.exit_crit_edge: ; preds = %freezing.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %freezable_schedule_timeout_killable_unsafe.exit

if.end.i.i.i:                                     ; preds = %freezing.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call6.i.i.i = tail call zeroext i1 @__refrigerator(i1 noundef zeroext false) #11
  br label %freezable_schedule_timeout_killable_unsafe.exit

freezable_schedule_timeout_killable_unsafe.exit:  ; preds = %if.end.i.i.i, %freezing.exit.i.i.i.freezable_schedule_timeout_killable_unsafe.exit_crit_edge, %if.end.freezable_schedule_timeout_killable_unsafe.exit_crit_edge
  %17 = tail call i32 @llvm.read_register.i32(metadata !179) #11
  %and.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %stack.i.i.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %22, align 4
  %and1.i.i.i.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool.not.i, label %freezable_schedule_timeout_killable_unsafe.exit.fatal_signal_pending.exit_crit_edge, label %land.rhs.i

freezable_schedule_timeout_killable_unsafe.exit.fatal_signal_pending.exit_crit_edge: ; preds = %freezable_schedule_timeout_killable_unsafe.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %fatal_signal_pending.exit

land.rhs.i:                                       ; preds = %freezable_schedule_timeout_killable_unsafe.exit
  call void @__sanitizer_cov_trace_pc() #13
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 116, i32 1
  %25 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %signal.i.i, align 4
  %27 = lshr i32 %26, 8
  %.lobit.i = and i32 %27, 1
  br label %fatal_signal_pending.exit

fatal_signal_pending.exit:                        ; preds = %land.rhs.i, %freezable_schedule_timeout_killable_unsafe.exit.fatal_signal_pending.exit_crit_edge
  %28 = phi i32 [ 0, %freezable_schedule_timeout_killable_unsafe.exit.fatal_signal_pending.exit_crit_edge ], [ %.lobit.i, %land.rhs.i ]
  %tobool.not = icmp eq i32 %28, 0
  br i1 %tobool.not, label %fatal_signal_pending.exit.do.body_crit_edge, label %fatal_signal_pending.exit.do.end_crit_edge

fatal_signal_pending.exit.do.end_crit_edge:       ; preds = %fatal_signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

fatal_signal_pending.exit.do.body_crit_edge:      ; preds = %fatal_signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.end:                                           ; preds = %fatal_signal_pending.exit.do.end_crit_edge, %do.body.do.end_crit_edge
  %res.0 = phi i32 [ %call, %do.body.do.end_crit_edge ], [ -512, %fatal_signal_pending.exit.do.end_crit_edge ]
  ret i32 %res.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_call_sync(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_killable(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__refrigerator(i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freezing_slow_path(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_setattr_update_inode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_zap_acl_cache(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__nfs3_proc_lookup(ptr noundef %dir, ptr noundef %name, i32 noundef %len, ptr noundef %fhandle, ptr noundef %fattr, i16 noundef zeroext %task_flags) unnamed_addr #0 align 64 {
entry:
  %arg = alloca %struct.nfs3_diropargs, align 4
  %res = alloca %struct.nfs3_diropres, align 4
  %msg = alloca %struct.rpc_message, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %arg) #11
  %0 = getelementptr inbounds %struct.nfs3_diropargs, ptr %arg, i32 0, i32 1
  %1 = getelementptr inbounds %struct.nfs3_diropargs, ptr %arg, i32 0, i32 2
  %fh.i = getelementptr i8, ptr %dir, i32 -440
  %2 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %fh.i, ptr %arg, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %name, ptr %0, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %len, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %res) #11
  %5 = getelementptr inbounds %struct.nfs3_diropres, ptr %res, i32 0, i32 1
  %6 = getelementptr inbounds %struct.nfs3_diropres, ptr %res, i32 0, i32 2
  %7 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %res, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %fhandle, ptr %5, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %fattr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg) #11
  %10 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 1
  %11 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 2
  %12 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 3
  %13 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs3_procedures, i32 0, i32 3), ptr %msg, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %arg, ptr %10, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %res, ptr %11, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %12, align 4
  %call5 = call ptr @nfs_alloc_fattr() #11
  %17 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call5, ptr %res, align 4
  %cmp = icmp eq ptr %call5, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @nfs_fattr_init(ptr noundef %fattr) #11
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %18 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 33
  %20 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %client.i = getelementptr inbounds %struct.nfs_server, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %client.i, align 4
  %conv = zext i16 %task_flags to i32
  %call9 = call fastcc i32 @nfs3_rpc_wrapper(ptr noundef %23, ptr noundef nonnull %msg, i32 noundef %conv)
  %24 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %res, align 4
  %call11 = call i32 @nfs_refresh_inode(ptr noundef %dir, ptr noundef %25) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9)
  %cmp12 = icmp sgt i32 %call9, -1
  br i1 %cmp12, label %land.lhs.true, label %if.end.if.end21_crit_edge

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

land.lhs.true:                                    ; preds = %if.end
  %26 = ptrtoint ptr %fattr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fattr, align 8
  %and = and i32 %27, 162943
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then14, label %land.lhs.true.if.end21_crit_edge

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then14:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs3_procedures, i32 0, i32 1), ptr %msg, align 4
  %29 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %fhandle, ptr %10, align 4
  %30 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %fattr, ptr %11, align 4
  %31 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i47 = getelementptr inbounds %struct.super_block, ptr %32, i32 0, i32 33
  %33 = ptrtoint ptr %s_fs_info.i.i.i47 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %s_fs_info.i.i.i47, align 16
  %client.i48 = getelementptr inbounds %struct.nfs_server, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %client.i48 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %client.i48, align 4
  %call20 = call fastcc i32 @nfs3_rpc_wrapper(ptr noundef %36, ptr noundef nonnull %msg, i32 noundef %conv)
  br label %if.end21

if.end21:                                         ; preds = %if.then14, %land.lhs.true.if.end21_crit_edge, %if.end.if.end21_crit_edge
  %status.0 = phi i32 [ %call9, %land.lhs.true.if.end21_crit_edge ], [ %call20, %if.then14 ], [ %call9, %if.end.if.end21_crit_edge ]
  %37 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %res, align 4
  %tobool.not.i = icmp eq ptr %38, null
  br i1 %tobool.not.i, label %if.end21.nfs_free_fattr.exit_crit_edge, label %if.then.i

if.end21.nfs_free_fattr.exit_crit_edge:           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfs_free_fattr.exit

if.then.i:                                        ; preds = %if.end21
  %label.i = getelementptr inbounds %struct.nfs_fattr, ptr %38, i32 0, i32 24
  %39 = ptrtoint ptr %label.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %label.i, align 4
  %tobool.not.i.i = icmp eq ptr %40, null
  br i1 %tobool.not.i.i, label %if.then.i.nfs_free_fattr.exit_crit_edge, label %if.then.i.i

if.then.i.nfs_free_fattr.exit_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfs_free_fattr.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %label1.i.i = getelementptr inbounds %struct.nfs4_label, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %label1.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %label1.i.i, align 4
  call void @kfree(ptr noundef %42) #11
  call void @kfree(ptr noundef nonnull %40) #11
  br label %nfs_free_fattr.exit

nfs_free_fattr.exit:                              ; preds = %if.then.i.i, %if.then.i.nfs_free_fattr.exit_crit_edge, %if.end21.nfs_free_fattr.exit_crit_edge
  call void @kfree(ptr noundef %38) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %43 = load i32, ptr @nfs_debug, align 4
  %and23 = and i32 %43, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %nfs_free_fattr.exit.cleanup_crit_edge, label %do.end, !prof !189

nfs_free_fattr.exit.cleanup_crit_edge:            ; preds = %nfs_free_fattr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %nfs_free_fattr.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %status.0) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %nfs_free_fattr.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %status.0, %do.end ], [ %status.0, %nfs_free_fattr.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %res) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %arg) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_alloc_fattr() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_refresh_inode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_access_set_mask(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @posix_acl_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_post_op_update_inode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs3_proc_setacls(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_add_or_obtain(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_call_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_restart_call(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_invalidate_atime(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_writeback_update_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nlmclnt_proc(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 97)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 97)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nobuiltin }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !26, !27, !28, !29, !31, !32, !33, !35, !36, !37, !38, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70, !72, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !92, !94, !95, !96, !98, !99, !100, !101, !103, !104, !105, !107, !108, !109, !110, !112, !113, !114, !116, !117, !118, !119, !121, !122, !123, !125, !126, !127, !128, !130, !131, !132, !134, !135, !136, !137, !138, !139, !141, !142, !143, !145, !146, !147, !148, !150, !151, !152, !154, !155, !156, !157, !159, !160, !161, !163, !164, !165, !166, !168, !169, !170, !172, !173, !174, !175, !177, !178}
!llvm.named.register.sp = !{!179}
!llvm.module.flags = !{!180, !181, !182, !183, !184, !185, !186, !187}
!llvm.ident = !{!188}

!0 = !{ptr @nfs_v3_clientops, !1, !"nfs_v3_clientops", i1 false, i1 false}
!1 = !{!"../fs/nfs/nfs3proc.c", i32 1016, i32 26}
!2 = !{ptr @nfs3_dir_inode_operations, !3, !"nfs3_dir_inode_operations", i1 false, i1 false}
!3 = !{!"../fs/nfs/nfs3proc.c", i32 985, i32 38}
!4 = !{ptr @nfs3_file_inode_operations, !5, !"nfs3_file_inode_operations", i1 false, i1 false}
!5 = !{!"../fs/nfs/nfs3proc.c", i32 1005, i32 38}
!6 = !{ptr @nlmclnt_fl_close_lock_ops, !7, !"nlmclnt_fl_close_lock_ops", i1 false, i1 false}
!7 = !{!"../fs/nfs/nfs3proc.c", i32 950, i32 40}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/nfs/nfs3proc.c", i32 70, i32 2}
!10 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @do_proc_get_root._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @do_proc_get_root._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/nfs/nfs3proc.c", i32 73, i32 2}
!16 = !{ptr @do_proc_get_root._entry.3, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @do_proc_get_root._entry_ptr.5, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/nfs/nfs3proc.c", i32 78, i32 3}
!20 = !{ptr @do_proc_get_root._entry.6, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @do_proc_get_root._entry_ptr.8, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../include/linux/freezer.h", i32 57, i32 2}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/nfs/nfs3proc.c", i32 117, i32 2}
!26 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @nfs3_proc_getattr._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @nfs3_proc_getattr._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/nfs/nfs3proc.c", i32 120, i32 2}
!31 = !{ptr @nfs3_proc_getattr._entry.12, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @nfs3_proc_getattr._entry_ptr.14, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/nfs/nfs3proc.c", i32 140, i32 2}
!35 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @nfs3_proc_setattr._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @nfs3_proc_setattr._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/nfs/nfs3proc.c", i32 150, i32 2}
!40 = !{ptr @nfs3_proc_setattr._entry.17, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @nfs3_proc_setattr._entry_ptr.19, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/nfs/nfs3proc.c", i32 203, i32 2}
!44 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @nfs3_proc_lookup._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @nfs3_proc_lookup._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/nfs/nfs3proc.c", i32 189, i32 2}
!49 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @__nfs3_proc_lookup._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @__nfs3_proc_lookup._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/nfs/nfs3proc.c", i32 239, i32 2}
!54 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @nfs3_proc_access._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @nfs3_proc_access._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/nfs/nfs3proc.c", i32 250, i32 2}
!59 = !{ptr @nfs3_proc_access._entry.26, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @nfs3_proc_access._entry_ptr.28, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/nfs/nfs3proc.c", i32 270, i32 2}
!63 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @nfs3_proc_readlink._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @nfs3_proc_readlink._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/nfs/nfs3proc.c", i32 280, i32 2}
!68 = !{ptr @nfs3_proc_readlink._entry.31, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @nfs3_proc_readlink._entry_ptr.33, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/nfs/nfs3proc.c", i32 345, i32 2}
!72 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @nfs3_proc_create._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @nfs3_proc_create._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/nfs/nfs3proc.c", i32 401, i32 3}
!77 = !{ptr @nfs3_proc_create._entry.36, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @nfs3_proc_create._entry_ptr.38, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.40, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../fs/nfs/nfs3proc.c", i32 413, i32 3}
!81 = !{ptr @nfs3_proc_create._entry.39, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @nfs3_proc_create._entry_ptr.41, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.43, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../fs/nfs/nfs3proc.c", i32 427, i32 2}
!85 = !{ptr @nfs3_proc_create._entry.42, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @nfs3_proc_create._entry_ptr.44, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.45, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../fs/nfs/nfs3proc.c", i32 446, i32 2}
!89 = !{ptr @.str.46, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @nfs3_proc_remove._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @nfs3_proc_remove._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.48, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../fs/nfs/nfs3proc.c", i32 455, i32 2}
!94 = !{ptr @nfs3_proc_remove._entry.47, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @nfs3_proc_remove._entry_ptr.49, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.50, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../fs/nfs/nfs3proc.c", i32 528, i32 2}
!98 = !{ptr @.str.51, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @nfs3_proc_link._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @nfs3_proc_link._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.53, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../fs/nfs/nfs3proc.c", i32 540, i32 2}
!103 = !{ptr @nfs3_proc_link._entry.52, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @nfs3_proc_link._entry_ptr.54, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.55, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../fs/nfs/nfs3proc.c", i32 555, i32 2}
!107 = !{ptr @.str.56, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @nfs3_proc_symlink._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @nfs3_proc_symlink._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.58, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../fs/nfs/nfs3proc.c", i32 576, i32 2}
!112 = !{ptr @nfs3_proc_symlink._entry.57, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @nfs3_proc_symlink._entry_ptr.59, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.60, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../fs/nfs/nfs3proc.c", i32 588, i32 2}
!116 = !{ptr @.str.61, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @nfs3_proc_mkdir._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @nfs3_proc_mkdir._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.63, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../fs/nfs/nfs3proc.c", i32 621, i32 2}
!121 = !{ptr @nfs3_proc_mkdir._entry.62, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @nfs3_proc_mkdir._entry_ptr.64, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.65, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../fs/nfs/nfs3proc.c", i32 640, i32 2}
!125 = !{ptr @.str.66, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @nfs3_proc_rmdir._entry, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @nfs3_proc_rmdir._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.68, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../fs/nfs/nfs3proc.c", i32 650, i32 2}
!130 = !{ptr @nfs3_proc_rmdir._entry.67, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @nfs3_proc_rmdir._entry_ptr.69, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.70, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../fs/nfs/nfs3proc.c", i32 691, i32 2}
!134 = !{ptr @.str.71, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @nfs3_proc_readdir._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @nfs3_proc_readdir._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.72, !133, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @.str.73, !133, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @.str.75, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../fs/nfs/nfs3proc.c", i32 705, i32 2}
!141 = !{ptr @nfs3_proc_readdir._entry.74, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @nfs3_proc_readdir._entry_ptr.76, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.77, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../fs/nfs/nfs3proc.c", i32 719, i32 2}
!145 = !{ptr @.str.78, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @nfs3_proc_mknod._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @nfs3_proc_mknod._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.80, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../fs/nfs/nfs3proc.c", i32 771, i32 2}
!150 = !{ptr @nfs3_proc_mknod._entry.79, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @nfs3_proc_mknod._entry_ptr.81, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.82, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../fs/nfs/nfs3proc.c", i32 786, i32 2}
!154 = !{ptr @.str.83, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @nfs3_proc_statfs._entry, !153, !"_entry", i1 false, i1 false}
!156 = !{ptr @nfs3_proc_statfs._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.85, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../fs/nfs/nfs3proc.c", i32 789, i32 2}
!159 = !{ptr @nfs3_proc_statfs._entry.84, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @nfs3_proc_statfs._entry_ptr.86, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.87, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../fs/nfs/nfs3proc.c", i32 804, i32 2}
!163 = !{ptr @.str.88, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @do_proc_fsinfo._entry, !162, !"_entry", i1 false, i1 false}
!165 = !{ptr @do_proc_fsinfo._entry_ptr, !162, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.90, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../fs/nfs/nfs3proc.c", i32 807, i32 2}
!168 = !{ptr @do_proc_fsinfo._entry.89, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @do_proc_fsinfo._entry_ptr.91, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.92, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../fs/nfs/nfs3proc.c", i32 838, i32 2}
!172 = !{ptr @.str.93, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @nfs3_proc_pathconf._entry, !171, !"_entry", i1 false, i1 false}
!174 = !{ptr @nfs3_proc_pathconf._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.95, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../fs/nfs/nfs3proc.c", i32 841, i32 2}
!177 = !{ptr @nfs3_proc_pathconf._entry.94, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @nfs3_proc_pathconf._entry_ptr.96, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{!"sp"}
!180 = !{i32 1, !"wchar_size", i32 2}
!181 = !{i32 1, !"min_enum_size", i32 4}
!182 = !{i32 8, !"branch-target-enforcement", i32 0}
!183 = !{i32 8, !"sign-return-address", i32 0}
!184 = !{i32 8, !"sign-return-address-all", i32 0}
!185 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!186 = !{i32 7, !"uwtable", i32 1}
!187 = !{i32 7, !"frame-pointer", i32 2}
!188 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!189 = !{!"branch_weights", i32 2000, i32 1}
!190 = !{!"auto-init"}
!191 = !{i64 2148779858}
!192 = !{i64 2148694298, i64 2148694330, i64 2148694359, i64 2148694393, i64 2148694424, i64 2148694447}
!193 = !{i64 2149976093}
!194 = !{i64 1094983, i64 1095044}
!195 = !{i64 1097715}
!196 = !{!"branch_weights", i32 1, i32 2000}
!197 = !{i64 1098000}
!198 = !{i8 0, i8 2}
!199 = !{i64 2157764727}
!200 = !{i64 1199795, i64 1199816, i64 1199839, i64 1199858, i64 1199877}
!201 = !{i64 2157765142}
!202 = !{i64 2157508287}
